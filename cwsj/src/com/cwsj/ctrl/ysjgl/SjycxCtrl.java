package com.cwsj.ctrl.ysjgl;

import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.service.TreeService;
import com.cwsj.service.ysjgl.AuditService;
import com.cwsj.util.DateUtil;
import com.cwsj.vo.ysjgl.BzsjxVO;
/** 
 * 类名称：sjywhCtrl
 * 创建人：ydf 
 * 创建时间：2014年7月1日
 * @version
 */
@Controller
@RequestMapping(value="/SjycxCtrl")
public class SjycxCtrl extends BaseController {

	@Resource(name="auditService")
	private AuditService auditService;
	@Resource(name="TreeService")
	private TreeService TreeService;
	
	/**
	 * 显示标准数据项列表
	 * @param model
	 * @return
	 */
	@RequestMapping
	public ModelAndView list(String LSH,String CWBBDL_DM,String SSSQ,String PPLX)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd.put("LSH", LSH);
		pd.put("CWBBDL_DM", CWBBDL_DM);
		pd.put("PPLX", PPLX);
		try{
			Map jcsxform =(Map) BaseDAO.getInstance().findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
			List<BzsjxVO> bzsjxList = auditService.listAllParentYsSjx(pd);
			mv.addObject("bzsjxList", bzsjxList);
			mv.addObject("SSSQ", SSSQ);
			mv.addObject("CWBBDL_DM", CWBBDL_DM);
			mv.addObject("LSH", LSH);
			mv.addObject("PPLX", PPLX);
			mv.addObject("QYMC", jcsxform.get("QYMC"));
			mv.addObject("SQRQ", jcsxform.get("SQRQ"));
			mv.addObject("DJXH", jcsxform.get("DJXH"));
			mv.setViewName("ysjgl/zzmxmain");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
		return mv;
	}	
	
	/**
	 * 请求编辑菜单页面
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/toEdit")
	public ModelAndView toEdit(String SJX_XH)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String LSH=pd.getString("LSH");
			pd.put("SJX_XH",SJX_XH);
			pd.put("LSH",LSH);
			//pd = auditService.getMenuById(pd);
			List<BzsjxVO> bzsjxList = auditService.listAllParentYsSjx(pd);
			mv.addObject("bzsjxList", bzsjxList);
			mv.addObject("pd", pd);
			mv.setViewName("pages/ysjgl/ysj_select");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}


	
	/**
	 * 获取当前菜单的所有子菜单
	 * @param menuId
	 * @param response
	 */
	@RequestMapping(value="/sub")
	public void getSub(@RequestParam String SJX_XH,@RequestParam String LSH,HttpServletResponse response)throws Exception{
		try {
			PageData pd = new PageData();
			int level=getOccur(SJX_XH,"-");
			SJX_XH=SJX_XH.replace("-", ".");
			pd.put("LSH",LSH);
			pd.put("SJSJX_XH",SJX_XH);	
			pd.put("level",level);
			List<BzsjxVO> subSjx = auditService.listSubYsSjxByParentId(pd);
			JSONArray arr = JSONArray.fromObject(subSjx);
			PrintWriter out;
			
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			String json = arr.toString();
			out.write(json);
			out.flush();
			out.close();
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
	}
	/**
	 * 查询原始凭证数据
	 * @param SJX_XH
	 * @param LSH
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/initPzdata")
	public ModelAndView initPzdata(@RequestParam String KMCODE,@RequestParam String LSH,@RequestParam String SSSQ,HttpServletResponse response)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try {
			
			PageData pd = new PageData();
//			KMCODE=KMCODE.replace("-", ".");
			pd.put("LSH",LSH);
			pd.put("KMCODE",KMCODE);
			pd.put("SSSQ",SSSQ);
			Map kmdefine=auditService.mapQuerrkm(pd);
			pd.put("KMNAME", kmdefine.get("KMNAME"));
			List<Map> pzdefinedata=new ArrayList<Map>();
			//List<Map> pzdefineList = auditService.listQuerypzdefine(pd);
			Map datamap=null;
			datamap=new HashMap();
			datamap.put("data", "PZRQ");
			pzdefinedata.add(datamap);
			datamap=new HashMap();
			datamap.put("data", "PZXH");
			pzdefinedata.add(datamap);
			datamap=new HashMap();
			datamap.put("data", "ZY");
			pzdefinedata.add(datamap);
			datamap=new HashMap();
			datamap.put("data", "JFYE");
			pzdefinedata.add(datamap);
			datamap=new HashMap();
			datamap.put("data", "DFYE");
			pzdefinedata.add(datamap);
			datamap=new HashMap();
			datamap.put("data", "FX");
			pzdefinedata.add(datamap);
//			for(int i=0;i<pzdefineList.size();i++){
//				datamap=new HashMap();
//				datamap.put("data", pzdefineList.get(i).get("SJXXH"));
//				pzdefinedata.add(datamap);
//			}
			//List<Map> pzdataList = auditService.listQuerrpzdata(pd);
//			mv.addObject("pzdefineList", pzdefineList);
			JSONArray pzdefineobj = JSONArray.fromObject(pzdefinedata);
			List<BzsjxVO> kmSelect = auditService.listAllParentYsSjx(pd);
			mv.addObject("kmSelect", kmSelect);
			//mv.addObject("pzdataList", pzdataList);
			mv.addObject("pd", pd);
			mv.addObject("pzdefineobj", pzdefineobj);
			mv.setViewName("ysjgl/pzmxcx");          
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}
/**
 * 
 * @param KMCODE
 * @param LSH
 * @param response
 * @return
 * @throws Exception
 */
	@RequestMapping(value="/cxPzdata")
	public void cxPzdata(@RequestParam String KMCODE,@RequestParam String LSH,@RequestParam String SSSQ,HttpServletResponse response)throws Exception{
		try {
			
			PageData pd = new PageData();
			Map jsonmap=new HashMap();
			pd.put("LSH",LSH);
			pd.put("KMCODE",KMCODE);	
			Map kmdefine=auditService.mapQuerrkm(pd);
			pd.put("KMNAME", kmdefine.get("KMNAME"));
			//List<Map> pzdefineList = auditService.listQuerypzdefine(pd);
			//此处可能存在sql注入
			if(SSSQ.equals(DateUtil.getNowString("yyyy"))){
				pd.put("tableName","t_sj_ysj_grid_pzdata");
			}else{
				pd.put("tableName","t_sj_ysj_grid_pzdata_"+SSSQ);
			}	
			List<Map> pzdataList = auditService.listQuerrpzdata(pd);
			//mv.addObject("pzdefineList", pzdefineList);
			//mv.addObject("pzdataList", pzdataList);
			//mv.setViewName("ysjgl/pzmxcx");   
			JSONArray arr = JSONArray.fromObject(pzdataList);
			PrintWriter out;			
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			String json = arr.toString();
			out.write(json);
			out.flush();
			out.close();	
//			jsonmap.put("aaData", pzdataList);
//			jsonmap.put("iTotalRecords", 100);
//			jsonmap.put("iTotalDisplayRecords", 50);
		//	return jsonmap;
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		//return null;
	}  	
/**
 * 
 * @param KMCODE
 * @param LSH
 * @param SSSQ
 * @param YF
 * @param response
 * @throws Exception
 */
		@RequestMapping(value="/cxPzdatahz")
		public void cxPzdatahz(@RequestParam String KMCODE,@RequestParam String LSH,@RequestParam String SSSQ,@RequestParam String YF,HttpServletResponse response)throws Exception{
			try {
				
				PageData pd = new PageData();
				Map jsonmap=new HashMap();
				pd.put("LSH",LSH);
				pd.put("KMCODE",KMCODE);	
				Map kmdefine=auditService.mapQuerrkm(pd);
				pd.put("KMNAME", kmdefine.get("KMNAME"));
				pd.put("JDFX", kmdefine.get("JDFX"));
				pd.put("PZRQ", SSSQ+YF);
				pd.put("SSSQ", SSSQ);
				if("".equals(YF)||YF==null){
					pd.put("SSQQ", SSSQ+"0101");
					pd.put("SSQZ", SSSQ+"1231");
				}else{
					pd.put("SSQQ", SSSQ+"01");
					pd.put("SSQZ", SSSQ+"31");					
				}
				//List<Map> pzdefineList = auditService.listQuerypzdefine(pd);
				//此处可能存在sql注入
				if(SSSQ.equals(DateUtil.getNowString("yyyy"))){
					pd.put("tableName","t_sj_ysj_grid_pzdata");
				}else{
					pd.put("tableName","t_sj_ysj_grid_pzdata_"+SSSQ);
				}	
				DecimalFormat format = new DecimalFormat("#.00");
				Map Bqhjmap = auditService.listQuerrpzdatahz(pd);
				Double JFJE=0.00;
				Double DFJE=0.00;
				if(!"".equals(Bqhjmap)&&Bqhjmap!=null){
					JFJE=(Double) Bqhjmap.get("JFJE");
					DFJE=(Double)Bqhjmap.get("DFJE");
				}
				Map Qchjmap = auditService.listQuerrpzdataqchz(pd);
				Double QCYE=0.00;
				if(!"".equals(Qchjmap)&&Qchjmap!=null){
					QCYE=(Double) Qchjmap.get("QCYE");	
				}
				Map Qmhjmap = auditService.listQuerrpzdataqmhz(pd);
				Double QMYE=0.00;
				if(!"".equals(Qmhjmap)&&Qmhjmap!=null){
					QMYE=(Double) Qmhjmap.get("QMYE");	
				}
				//mv.addObject("pzdefineList", pzdefineList);
				//mv.addObject("pzdataList", pzdataList);
				//mv.setViewName("ysjgl/pzmxcx");   
				String retms="凭证日期："+SSSQ+YF+",期初余额"+format.format(QCYE)+",本期借方合计"+format.format(JFJE)+",本期贷方合计"+format.format(DFJE)+",期末余额"+format.format(QMYE);
				
				//JSONArray arr = JSONArray.fromObject(retms);
				PrintWriter out;			
				response.setCharacterEncoding("utf-8");
				out = response.getWriter();
				out.write(retms);
				out.flush();
				out.close();	
//				jsonmap.put("aaData", pzdataList);
//				jsonmap.put("iTotalRecords", 100);
//				jsonmap.put("iTotalDisplayRecords", 50);
			//	return jsonmap;
			} catch (Exception e) {
				logger.error(e.toString(), e);
			}
			//return null;
		}  		
	/**
	 * 查询原始凭证数据的内容（具体某个凭证）
	 * @param SJX_XH
	 * @param LSH
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping(value="/initPznr")
/**	public ModelAndView initPznr(@RequestParam String PZXH,@RequestParam String LSH,HttpServletResponse response)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try {
			
			PageData pd = new PageData();
			pd.put("LSH",LSH);
			pd.put("PZXH",PZXH);		
			List<Map> pzdefinedata=new ArrayList<Map>();
			List<Map> pznrlist = auditService.listQuerrpznr(pd);
			mv.addObject("pznrlist", pznrlist);
			mv.addObject("pd", pd);
			mv.setViewName("ysjgl/pzmxnr");          
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}	**/
	public ModelAndView initPznr(@RequestParam String PZXH,@RequestParam String LSH,@RequestParam String PZRQ,@RequestParam String SSSQ,HttpServletResponse response)throws Exception{
		ModelAndView mv = this.getModelAndView();
		try {			
			PageData pd = new PageData();
			pd.put("LSH",LSH);
			pd.put("PZXH",PZXH);	
			pd.put("PZRQ",PZRQ);
			pd.put("SSSQ",SSSQ);
			if(SSSQ.equals(DateUtil.getNowString("yyyy"))){
				pd.put("tableName","t_sj_ysj_grid_pzdata");
			}else{
				pd.put("tableName","t_sj_ysj_grid_pzdata_"+SSSQ);
			}	
			List<Map> pzdefinedata=new ArrayList<Map>();
			List<Map> pzdefineList = auditService.listQuerypzdefine(pd);
			mv.addObject("pzdefineList", pzdefineList);
			JSONArray pzdefineobj = JSONArray.fromObject(pzdefinedata);
			List<Map> pzdataList = auditService.listQuerrpznrdatamx(pd);
			mv.addObject("pzdataList", pzdataList);
			mv.addObject("pzdefineobj", pzdefineobj);
			pd.put("PZRQ_FORMATE",PZRQ.substring(0, 4)+"年"+PZRQ.substring(4, 6)+"月"+PZRQ.substring(6)+"日");
			mv.addObject("pd", pd);
			mv.setViewName("ysjgl/pzmxnr");          
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		return mv;
	}	
	@RequestMapping(value="/cxPznrdata")
	public void cxPznrdata(@RequestParam String PZXH,@RequestParam String LSH,@RequestParam String PZRQ,@RequestParam String SSSQ,HttpServletResponse response)throws Exception{
		try {
			
			PageData pd = new PageData();
			Map jsonmap=new HashMap();
			pd.put("LSH",LSH);
			pd.put("PZXH",PZXH);
			pd.put("PZRQ",PZRQ);
			if(SSSQ.equals(DateUtil.getNowString("yyyy"))){
				pd.put("tableName","t_sj_ysj_grid_pzdata");
			}else{
				pd.put("tableName","t_sj_ysj_grid_pzdata_"+SSSQ);
			}	
			//List<Map> pzdefineList = auditService.listQuerypzdefine(pd);
			List<Map> pzdataList = auditService.listQuerrpznrdata(pd);
			//mv.addObject("pzdefineList", pzdefineList);
			//mv.addObject("pzdataList", pzdataList);
			//mv.setViewName("ysjgl/pzmxcx");   
			JSONArray arr = JSONArray.fromObject(pzdataList);
			PrintWriter out;			
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			String json = arr.toString();
			out.write(json);
			out.flush();
			out.close();	
//			jsonmap.put("aaData", pzdataList);
//			jsonmap.put("iTotalRecords", 100);
//			jsonmap.put("iTotalDisplayRecords", 50);
		//	return jsonmap;
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}
		//return null;
	}  		
	
	public static int getOccur(String src,String find){
		  int o = 2;
		  int index=-1;
		  while((index=src.indexOf(find,index))>-1){
		   ++index;
		   ++o;
		  }
		  return o;
		 }
	
	/*
	 * 导出用户信息到EXCEL
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel() throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		//检索条件===
		try{
			String LSH = pd.getString("LSH");
		    String KMCODE = pd.getString("KMCODE");
		    String SSSQ = pd.getString("SSSQ");
		    
		    Map<String,Object> dataMap = new HashMap<String,Object>();
		    List<String> titles = new ArrayList<String>();
//		    KMCODE=KMCODE.replace("-", ".");
		    pd.put("LSH",LSH);
		    pd.put("KMCODE",KMCODE);		
		
		    Map kmdefine=auditService.mapQuerrkm(pd);
		    pd.put("KMNAME", kmdefine.get("KMNAME"));
		    List<Map> pzdefinedata=new ArrayList<Map>();
//		    List<Map> pzdefineList = auditService.listQuerypzdefineexcel(pd);
//		    for(int i=0;i<pzdefineList.size();i++){
//			    titles.add((String) pzdefineList.get(i).get("SJXMC"));
//			    }	
		    titles.add("凭证日期");
		    titles.add("凭证号数");
		    titles.add("摘要");
		    titles.add("借方");
		    titles.add("贷方");
		    titles.add("借贷方向");
		    dataMap.put("titles", titles);
			if(SSSQ.equals(DateUtil.getNowString("yyyy"))){
				pd.put("tableName","t_sj_ysj_grid_pzdata");
			}else{
				pd.put("tableName","t_sj_ysj_grid_pzdata_"+SSSQ);
			}			
		    List<Map> userList = auditService.listQuerrpzdataexcel(pd);
		    List<PageData> varList = new ArrayList<PageData>();
		    for(int i=0;i<userList.size();i++){
			    PageData vpd = new PageData();
//			    for(int j=0;j<pzdefineList.size();j++){
//				    vpd.put("var"+(j+1), userList.get(i).get(pzdefineList.get(j).get("SJXXH")));	
//				    }
			    vpd.put("var1", userList.get(i).get("PZRQ"));	
			    vpd.put("var2", userList.get(i).get("PZXH"));
			    vpd.put("var3", userList.get(i).get("ZY"));
			    vpd.put("var4", userList.get(i).get("JFYE"));
			    vpd.put("var5", userList.get(i).get("DFYE"));			    
			    vpd.put("var6", userList.get(i).get("FX"));
			    varList.add(vpd);
			    }
		    dataMap.put("varList", varList);
		
		    ObjectExcelView erv = new ObjectExcelView();					//执行excel操作
		    mv = new ModelAndView(erv,dataMap);
		/*try{		
		/*String USERNAME = pd.getString("USERNAME");
		if(null != USERNAME && !"".equals(USERNAME)){
			USERNAME = USERNAME.trim();
			pd.put("USERNAME", USERNAME);
		}
		String lastLoginStart = pd.getString("lastLoginStart");
		String lastLoginEnd = pd.getString("lastLoginEnd");
		if(lastLoginStart != null && !"".equals(lastLoginStart)){
			lastLoginStart = lastLoginStart+" 00:00:00";
			pd.put("lastLoginStart", lastLoginStart);
		}
		if(lastLoginEnd != null && !"".equals(lastLoginEnd)){
			lastLoginEnd = lastLoginEnd+" 00:00:00";
			pd.put("lastLoginEnd", lastLoginEnd);
		} 
		//检索条件===
		
		//Map<String,Object> dataMap = new HashMap<String,Object>();
		//List<String> titles = new ArrayList<String>();
		
		titles.add("用户名"); 		//1
		titles.add("编号");  		//2
		titles.add("姓名");			//3
		titles.add("职位");			//4
		titles.add("手机");			//5
		titles.add("邮箱");			//6
		titles.add("最近登录");		//7
		titles.add("上次登录IP");	//8
		
		dataMap.put("titles", titles);
		
		List<PageData> varList = new ArrayList<PageData>();
		PageData vpd = new PageData();
		vpd.put("var1", "1");		//1
		vpd.put("var2", "1");		//2
		vpd.put("var3", "1");			//3
		vpd.put("var4", "1");	//4
		vpd.put("var5", "1");		//5
		vpd.put("var6", "1");		//6
		vpd.put("var7", "1");	//7
		vpd.put("var8", "1");			//8
		varList.add(vpd);
		dataMap.put("varList", varList);
		ObjectExcelView erv = new ObjectExcelView();					//执行excel操作
		mv = new ModelAndView(erv,dataMap);
		}*/ 
		    }
	    catch(Exception e){
		    logger.error(e.toString(), e);
		    }
	    return mv;
	}	
	
	/**
	 * 弹出树控件初始化
	 * @param 
	 * @return
	 */
	@RequestMapping(value="/ppselectInit")
	public ModelAndView ppselectInit()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			String treeKey=pd.getString("treeKey");
			String ljzbj=pd.getString("ljzbj");
			String ID=pd.getString("id");
			String TJ1=pd.getString("TJ1");
			String KM_DEGREE=pd.getString("KM_DEGREE");
			String kmcode=(String) pd.get("KMCODE");
			String bbkm=kmcode.replace("-", "").replace(".", "");	
			//pd = auditService.getMenuById(pd);
			Map kmmap=auditService.mapQuerrkmname(pd);
			String KMNAME=(String) kmmap.get("KMNAME");
			pd.put("KMNAME", KMNAME);
			List<ZTreeVO> treeList = TreeService.listTree(pd);
			List<Map> jybzsjxList = auditService.listJyppSjx(pd);
			List<Map> scbzsjxList = auditService.listScppSjx(pd);		
			if(!"".equals(KM_DEGREE)&&KM_DEGREE!=null&&Integer.parseInt(KM_DEGREE)>1){
				String SJKMCODE=bbkm.substring(0, bbkm.length()-(Integer.parseInt(KM_DEGREE)-1)*2);
				pd.put("SJKMCODE", SJKMCODE);			
			}else{
				String SJKMCODE=bbkm.substring(0, bbkm.length()-2);
				pd.put("SJKMCODE", SJKMCODE);			
			}
			Map sjkmsjxMap = auditService.mapSjkmdyxjkm(pd);
			String sjkmsjx=null;
			if(sjkmsjxMap!=null){
				sjkmsjx=(String) sjkmsjxMap.get("SJX_XH");
			}			
//			JSONObject jsonObject = (JSONObject) JSONSerializer.toJSON(treeList);
			JSONArray arr = JSONArray.fromObject(treeList);
			String treeNode = arr.toString();
			mv.addObject("treeNode", treeNode);
			mv.addObject("jybzsjxList", jybzsjxList);
			mv.addObject("scbzsjxList", scbzsjxList);
			mv.addObject("pd", pd);
			mv.addObject("sjkmsjx",sjkmsjx);
			mv.setViewName("ysjgl/ppselect");
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
}
