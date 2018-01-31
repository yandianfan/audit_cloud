package com.platform.ctrl;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.ezmorph.bean.MorphDynaBean;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;
import net.sf.json.JsonConfig;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.util.StringUtil;
import com.fh.controller.base.BaseController;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.JsonReqData;
import com.platform.event.JsonResData;
import com.platform.event.ZTreeVO;
import com.platform.tool.JsonDateValueProcessor;
import com.platform.tool.JsonHelp;
/**
 * 公共处理Ctrl
 * 前端调用时对json对象的统一处理和统一返回
 * @author yan
 *
 */
public class BaseCtrl   extends BaseController{
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
		
	public BaseRequestEvent doCtrlBefore(HttpServletRequest request)throws Exception{

		BaseRequestEvent req=new BaseRequestEvent(reqMethod,UUID.randomUUID().toString());
		//get方式时获取请求参数
		req=setBaseReq(request,req);
		//begin-------post方式时获取请求参数----------
		JsonResData resData = new JsonResData();
		JsonReqData jsonReqData = new JsonReqData();
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
		PageData pageData = new PageData();
		pageData = this.getPageData();
		req.setPageData(pageData);		
        return req;
		//end----------------------------------
		
	}
	
	public ModelAndView doCtrlAfter(BaseResponseEvent res,HttpServletResponse response)throws Exception{
		JsonResData resData = new JsonResData();
		ModelAndView mv = this.getModelAndView();
		PageData pageData = new PageData();
		pageData = this.getPageData();
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
	
	public BaseRequestEvent setBaseReq(HttpServletRequest request,BaseRequestEvent req){
		Map properties = request.getParameterMap();
		Map returnMap = new HashMap(); 
		Iterator entries = properties.entrySet().iterator(); 
		Map.Entry entry; 
		String name = "";  
		String value = "";  
		while (entries.hasNext()) {
			entry = (Map.Entry) entries.next(); 
			name = (String) entry.getKey(); 
			Object valueObj = entry.getValue(); 
			if(null == valueObj){ 
				value = ""; 
			}else if(valueObj instanceof String[]){ 
				String[] values = (String[])valueObj;
				for(int i=0;i<values.length;i++){ 
					 value = values[i] + ",";
				}
				value = value.substring(0, value.length()-1); 
			}else{
				value = valueObj.toString(); 
			}
			req.addAttr(name,value);
		}
		return req;
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
