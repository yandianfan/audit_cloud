package com.platform.ctrl;

import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.ezmorph.bean.MorphDynaBean;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsDateJsonBeanProcessor;
import net.sf.json.processors.JsonValueProcessor;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.util.MesUtil;
import com.cwsj.util.StringUtil;
import com.cwsj.vo.login.Gnzy;
import com.fh.controller.base.BaseController;
import com.cwsj.vo.login.User;
import com.fh.service.system.menu.MenuService;
import com.fh.service.system.role.RoleService;
import com.fh.service.system.user.UserService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.MD5;
import com.fh.util.PageData;
import com.fh.util.RightsHelper;
import com.fh.util.Tools;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.IResponseEvent;
import com.platform.event.JsonReqData;
import com.platform.event.JsonResData;
import com.platform.event.ZTreeVO;
import com.platform.tool.JsonDateValueProcessor;
import com.platform.tool.JsonHelp;
/*
 * 总入口(通用ctrl，通过这个来映射到对应的BLH)
 * add by ydf
 */
@Controller
@RequestMapping(value="/BLH")
public class GeneralCtrl extends BaseController {

	//@Resource(name="BLHOBJ")
	public Class<?> BLHOBJ;
	private String BLHNAME;
	private String reqMethod;
	private String[] reqParam;
	private Method method;
	public Method targetBizMethod;
	public Method persistenceMethod;
	public static final String MAP_BLH="MAP_BLH";
	private static Map<String, Object> blhmap=null;
		
	/**
	 * 访问BLH入口
	 * @return
	 */
	@RequestMapping(value="{BLH}")
	public ModelAndView doCtrl(@PathVariable("BLH") String BLHRS,HttpServletResponse response)throws Exception{
		WebApplicationContext webApplicationContext = ContextLoader.getCurrentWebApplicationContext();    
		ServletContext servletContext = webApplicationContext.getServletContext();  
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		blhmap=(Map<String, Object>) servletContext.getAttribute(MAP_BLH);
		BLHNAME=BLHRS.split("_")[0].trim();
		//String reqpara=BLHRS.split("_")[1].trim();
		String reqpara=BLHRS.substring(BLHRS.indexOf("_")+1);
		reqParam=new String[reqpara.split("&").length];
		if(reqpara.indexOf("&")>0){
			reqParam=reqpara.split("&");
			reqMethod=reqParam[0];
		}else{
			reqMethod=BLHRS.split("_")[1].trim();
		}		
		BaseRequestEvent req=new BaseRequestEvent(reqMethod,UUID.randomUUID().toString());
		//get方式时获取请求参数
		if(!"".equals(reqParam)&&reqParam!=null){
			for(int i=1;i<reqParam.length;i++){
				if(reqParam[i].split("=").length==2){
					req.addAttr(reqParam[i].split("=")[0],reqParam[i].split("=")[1]);
				}				
			}			
		}
		//begin-------post方式时获取请求参数----------
		JsonResData resData = new JsonResData();
		JsonReqData jsonReqData = new JsonReqData();
		try{
			Object jsd=request.getParameter("jsonData");
			if(jsd!=null){
				JSONObject jsonObject = (JSONObject) JSONSerializer.toJSON(request.getParameter("jsonData"));
				JsonConfig jsonConfig = new JsonConfig();
				jsonConfig.setRootClass(JsonReqData.class);
				jsonReqData = (JsonReqData) JSONSerializer.toJava(jsonObject,jsonConfig);	
				Map<String, Object> beanParam=jsonReqData.getBean();
				Map<String, Object> dataParam=jsonReqData.getData();
				Map<String, Object> formParam=jsonReqData.getForm();
				Map<String, Object> gridParam=jsonReqData.getGrid();
				Map<String, Object> treeParam=jsonReqData.getTree();
				Object reqobj=null;
				if(dataParam!=null){
		    		Iterator it =dataParam.keySet().iterator();
		    		while (it.hasNext()) {
		    			String key = it.next().toString(); 
		    			reqobj=dataParam.get(key);
		    			req.addAttr(key, reqobj);
		    			//type=reqobj.getClass().get
		    		}       			
				}
				Map<String,Object> formobj=null;
				if(formParam!=null){
					MorphDynaBean formbean=new MorphDynaBean();
		    		Iterator it =formParam.keySet().iterator();
		    		while (it.hasNext()) {
		    			formobj=new HashMap();
		    			String key = it.next().toString(); 
		    			formbean=(MorphDynaBean) formParam.get(key);
		    			ArrayList beankey=(ArrayList)formbean.get("beanKey");
		    			for(int i=0;i<beankey.size();i++){
		    			  if(!"beanKey".equals(beankey.get(i))){
		    				 String objkey=(String) beankey.get(i);
		    				 String value=(String) formbean.get((String) beankey.get(i));
		    				 formobj.put(objkey, StringUtil.stringEmpty(value)); 
		    			  }		    				
		    			}
		    			req.addForm(key, formobj);
		    		}  					
				}
				List<Map> gridobj=null;
				if(gridParam!=null){
//		    		Iterator it =gridParam.keySet().iterator();
//		    		while (it.hasNext()) {
//		    			String key = it.next().toString(); 
//		    			gridobj= (List<Map>) gridParam.get(key);
//		    			req.addGrid(key, gridobj);
//		    		} 
					List<MorphDynaBean> gridbean=new ArrayList<MorphDynaBean>();
					List<String> beankey=null;
					Map newgriline=null;
		    		Iterator it =gridParam.keySet().iterator();
		    		while (it.hasNext()) {
		    			String key = it.next().toString(); 
		    			gridbean= (List<MorphDynaBean>) gridParam.get(key);
		    			beankey=(List)beanParam.get(key);
		    			gridobj=new ArrayList<Map>();
		    			for(MorphDynaBean gridline:gridbean){
		    				newgriline=new HashMap();
			    			for(int i=0;i<beankey.size();i++){
			    				newgriline.put(beankey.get(i),StringUtil.stringEmpty((String)gridline.get(beankey.get(i))));
			    			}
			    			gridobj.add(newgriline);		    				
		    			}
		    			req.addGrid(key, gridobj);
		    		} 					
				}	
				//List<Map> treeobj=null;
				List<MorphDynaBean> treeobj=null;
				if(treeParam!=null){
		    		Iterator it =treeParam.keySet().iterator();
		    		while (it.hasNext()) {
		    			String key = it.next().toString(); 
		    			//treeobj= (List<Map>) treeParam.get(key);		    			
		    			//req.addTree(key, treeobj);
		    			treeobj= (List<MorphDynaBean>) treeParam.get(key);
		    			req.addTree(key, JsonHelp.treetoMap(treeobj));
		    		}  					
				}				
			}
		
		}catch(Exception e){
			resData.setCode(MesUtil.getError("99999"));
			resData.setMsg("系统异常，错误原因：" + e.getMessage());
			try {
				response.setContentType("text/plain;charset=UTF-8");
				response.getWriter().print(JSONSerializer.toJSON(resData).toString());
				response.getWriter().flush();
				return null;
			} catch (Exception e1) {
				logger.error("Ctrl返回消息异常:" + e1.getMessage(), e1);
			}			
		}
		//end----------------------------------
		ModelAndView mv = this.getModelAndView();
		PageData pageData = new PageData();
		pageData = this.getPageData();
		req.setPageData(pageData);
		String classobj=(String) blhmap.get(BLHNAME+".class");
		BLHOBJ=Class.forName(classobj);
		Object  obj=BLHOBJ.newInstance();
		Method[] methods=BLHOBJ.getDeclaredMethods();
		for(int i=0;i<methods.length;i++){
			//System.out.println(methods[i].getName()); 
	        if (methods[i].getName().equalsIgnoreCase(reqMethod)){
	          targetBizMethod = methods[i];
	          break;
	        }
		}
//		if(targetBizMethod == null){
//			methods=null;
//			methods=obj.getClass().getMethods();
//			for(int i=0;i<methods.length;i++){
//				System.out.println(methods[i].getName()); 
//		        if (methods[i].getName().equals(reqMethod)){
//		          targetBizMethod =BLHOBJ.getMethod(reqMethod, PageData.class);
//		          break;
//		        }
//			}			
//		}
		BaseResponseEvent res=null;
		if(targetBizMethod!=null){
			try {
			    res=(BaseResponseEvent)targetBizMethod.invoke(obj,req);
		    } catch (Exception e1) {
				resData.setCode("000017");
				resData.setMsg("调用BLH异常："+e1.getCause());
				response.setContentType("text/plain;charset=UTF-8");
				response.getWriter().print(JSONSerializer.toJSON(resData).toString());
				response.getWriter().flush();	
				//调用逻辑层之后回滚事物
				Class BaseBLH = BaseBLH.class;  
				boolean isFather = BaseBLH.isAssignableFrom(BLHOBJ);  
				if(isFather){  
					persistenceMethod=BLHOBJ.getSuperclass().getMethod("rollbackPersistenceDAO",new Class[]{});
					persistenceMethod.invoke(obj);	 
				} 
				return null;
		    }
		}
		//调用逻辑层之后关闭事物
		Class BaseBLH = BaseBLH.class;  
		boolean isFather = BaseBLH.isAssignableFrom(BLHOBJ);  
		if(isFather){  
			persistenceMethod=BLHOBJ.getSuperclass().getMethod("closePersistenceDAO",new Class[]{});
			persistenceMethod.invoke(obj);	 
		} 
		//System.out.println(System.getProperty("user.dir"));
		String page=(String) res.get("page");
		if(!"".equals(page)&&page!=null){
			mv=this.toPage(res,mv);
			mv.setViewName((String) res.get("page"));
			mv.addObject("pd",pageData);	
			return mv;
		}else{
			resData=this.toPage(res);
			resData.setCode((String) res.get("code"));
			resData.setMsg((String) res.get("msg"));
			response.setContentType("text/plain;charset=UTF-8");
			/****************针对日期的处理*************************/
			JsonConfig config = new JsonConfig();
			config.setIgnoreDefaultExcludes(false);
			config.registerJsonValueProcessor(java.sql.Date.class,new JsonDateValueProcessor()); // 当输出时间格式时，采用和JS兼容的格式输出
			/*********************************/
			response.getWriter().print(JSONSerializer.toJSON(resData,config).toString());
			response.getWriter().flush();
			return null;
		}
		
	}
/**
 * 将逻辑层处理的返回对象转换为页面对象显示到页面上	
 * @param res
 * @param mv
 * @return
 * @throws NoSuchMethodException 
 * @throws SecurityException 
 */
	private ModelAndView toPage(BaseResponseEvent res,ModelAndView mv) throws SecurityException, NoSuchMethodException{
		JsonResData resData = new JsonResData();
		List<Map> formlist=new ArrayList();
		List<Map> gridlist=new ArrayList();
		List<Map> treelist=new ArrayList();
		List<Map> selectlist=new ArrayList();
		HashMap cachemap=(HashMap) res.getCache();
		Field[] field = res.getClass().getDeclaredFields();   
		for(int j=0 ; j<field.length ; j++){ 
			String name = field[j].getName(); 
			String type = field[j].getGenericType().toString(); 
            if(type.equals("class java.util.HashMap")){
        		Map objmap=(HashMap) cachemap.get(name);
        		if(objmap!=null){
            		Iterator it =objmap.keySet().iterator();
            		while (it.hasNext()) {
            			String key = it.next().toString(); 
            			if("object".equals(name)){
            				mv.addObject(key,objmap.get(key));
            			}else if("form".equals(name)){
            				Map formobj=(Map) objmap.get(key);
            				Map formmap=new HashMap();
            				formmap.put("FormName", key);
            				formmap.put("FormData", formobj);
            				formlist.add(formmap);
            			}else if("grid".equals(name)){
            				List<Map> gridObj=(List<Map>) objmap.get(key);
            				Map gridmap=new HashMap();
            				gridmap.put("GridName", key);
            				gridmap.put("GridData", gridObj);
            				gridlist.add(gridmap);            				
            			}else if("tree".equals(name)){
            				List<ZTreeVO> treeObj=(List<ZTreeVO>) objmap.get(key);
            				Map treemap=new HashMap();
            				treemap.put("TreeName", key);
            				treemap.put("TreeData", treeObj);
            				treelist.add(treemap);            				
            			}else if("select".equals(name)){
            				List<Map> selectObj=(List<Map>) objmap.get(key);
            				Map selectmap=new HashMap();
            				selectmap.put("SelectName", key);
            				selectmap.put("SelectData", selectObj);
            				selectlist.add(selectmap);              				
            			}
            		}       			
        		}
            }
		}
		boolean pdtj=false;
		if(formlist.size()>0){
			resData.setForm(formlist);	
			pdtj=true;
		}
		if(gridlist.size()>0){
			resData.setGrid(gridlist);
			pdtj=true;
		}		
		if(treelist.size()>0){
			resData.setTree(treelist);	
			pdtj=true;
		}
		if(selectlist.size()>0){
			resData.setSelect(selectlist);
			pdtj=true;
		}	
		if(pdtj){
			JsonConfig config = new JsonConfig();
			config.setIgnoreDefaultExcludes(false);
			//config.registerJsonBeanProcessor(java.sql.Date.class,new JsDateJsonBeanProcessor()); // 当输出时间格式时，采用和JS兼容的格式输出 
			config.registerJsonValueProcessor(java.sql.Date.class,new JsonDateValueProcessor()); // 当输出时间格式时，采用和JS兼容的格式输出 
			mv.addObject("jsonData",JSONSerializer.toJSON(resData,config).toString());		
		}
		return mv;		
	}
	
	/**
	 * 将逻辑层处理的返回对象转换为页面对象显示到页面上(不定位到页面)	
	 * @param res
	 * @param mv
	 * @return
	 * @throws NoSuchMethodException 
	 * @throws SecurityException 
	 */
		private JsonResData toPage(BaseResponseEvent res) throws SecurityException, NoSuchMethodException{
			JsonResData resData = new JsonResData();
			List<Map> formlist=new ArrayList();
			List<Map> gridlist=new ArrayList();
			List<Map> treelist=new ArrayList();
			List<Map> selectlist=new ArrayList();
			Map resMap=new HashMap();
			HashMap cachemap=(HashMap) res.getCache();
			Field[] field = res.getClass().getDeclaredFields();   
			for(int j=0 ; j<field.length ; j++){ 
				String name = field[j].getName(); 
				String type = field[j].getGenericType().toString(); 
	            if(type.equals("class java.util.HashMap")){
	        		Map objmap=(HashMap) cachemap.get(name);
	        		if(objmap!=null){
	            		Iterator it =objmap.keySet().iterator();
	            		while (it.hasNext()) {
	            			String key = it.next().toString(); 
	            			if("object".equals(name)){
	            				resMap.put(key, objmap.get(key));
	            			}else if("form".equals(name)){
	            				Map formobj=(Map) objmap.get(key);
	            				Map formmap=new HashMap();
	            				formmap.put("FormName", key);
	            				formmap.put("FormData", formobj);
	            				formlist.add(formmap);
	            			}else if("grid".equals(name)){
	            				List<Map> gridObj=(List<Map>) objmap.get(key);
	            				Map gridmap=new HashMap();
	            				gridmap.put("GridName", key);
	            				gridmap.put("GridData", gridObj);
	            				gridlist.add(gridmap);            				
	            			}else if("tree".equals(name)){
	            				List<ZTreeVO> treeObj=(List<ZTreeVO>) objmap.get(key);
	            				Map treemap=new HashMap();
	            				treemap.put("TreeName", key);
	            				treemap.put("TreeData", treeObj);
	            				treelist.add(treemap);            				
	            			}else if("select".equals(name)){
	            				List<Map> selectObj=(List<Map>) objmap.get(key);
	            				Map selectmap=new HashMap();
	            				selectmap.put("SelectName", key);
	            				selectmap.put("SelectData", selectObj);
	            				selectlist.add(selectmap);              				
	            			}
	            		}       			
	        		}
	            }
			}
			if(formlist.size()>0){
				resData.setForm(formlist);	
			}
			if(gridlist.size()>0){
				resData.setGrid(gridlist);
			}		
			if(treelist.size()>0){
				resData.setTree(treelist);	
			}
			if(selectlist.size()>0){
				resData.setSelect(selectlist);
			}
			resData.setData(resMap);
			resData.setCode((String)res.getCache().get("code"));
			resData.setMsg((String)res.getCache().get("msg"));
			return resData;		
		}	
}
