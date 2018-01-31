package com.cwsj.blh.dggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.cwsj.util.Const;
import com.cwsj.util.DateUtil;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
import com.platform.tool.PlatformUtil;

public class Tsdgcomm  extends BaseBLH{
	/**
	 * 特殊底稿鉴定初始化(只要一个表格的底稿)
	 * @param req
	 * @return
	 * @throws Exception
	 */
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		String DG_DM=(String) req.getAttr("DG_DM");
		String LCSLH=(String) req.getAttr("LCSLH");
		Map qumap=new HashMap();
		qumap.put("LSH", LSH);
		qumap.put("DG_DM", DG_DM);
		qumap.put("DJXH", DJXH);
		/*****************生成鉴定说明结论*********************************/
		Map formmap =(Map) persistenceDAO.findForObject("GzdgbgMapper.mapQuerryJdsmjl", qumap);
		formmap.put("LSH", LSH);
		formmap.put("DJXH", DJXH);
		formmap.put("DG_DM", DG_DM);
		formmap.put("LCSLH", LCSLH);

		String BZR=(String) formmap.get("BZR");
		String BZRQ=(String) formmap.get("BZRQ");
		String FHR=(String) formmap.get("FHR");
		String FHRQ=(String) formmap.get("FHRQ");
		String QYMC=(String) formmap.get("QYMC");
		String KJQJ=(String) formmap.get("KJQJ");
		if("".equals(BZR)||BZR==null){
			formmap.put("BZR", user.getUSER_ID());
		}
		if("".equals(BZRQ)||BZRQ==null){
			formmap.put("BZRQ",DateUtil.getNowString("yyyy-MM-dd"));
		}
		if("".equals(FHR)||FHR==null){
			formmap.put("FHR", user.getUSER_ID());
		}
		if("".equals(FHRQ)||FHRQ==null){
			formmap.put("FHRQ",DateUtil.getNowString("yyyy-MM-dd"));
		}

		res.addObject("BZR", BZR);
		res.addObject("BZRQ", BZRQ);
		res.addObject("FHR", FHR);
		res.addObject("FHRQ", FHRQ);
		res.addObject("QYMC", QYMC);
		res.addObject("KJQJ", KJQJ);
	
		//新增显示
		Map jdxxform =(Map)persistenceDAO.findForObject("GzdgbgMapper.mapQuerryDgzdbg", formmap);
		String JDSMJLFX=(String) jdxxform.get("JDSMJLFX");
		formmap.put("JDSMJLFX", JDSMJLFX);
		
		res.addForm("formmap", formmap);
		
		/******************************************************/
		String sjbBz=(String) req.getAttr("sjbBz");
		if("1".equals(sjbBz)){
			List<Map> gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerryTsdg"+DG_DM+"_sjb", qumap);
			if(gridlist.size()==0){
				persistenceDAO.save("GzdgbgMapper.insertTsdgInit_sjb",formmap);//调用初始化特殊底稿(公共方法)
				gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerryTsdg"+DG_DM+"_sjb", qumap);
			}			 
			res.addGrid("gridlist", gridlist);
			res.addPage("dggl/tsdg/Tsdg_"+DG_DM+"_sjb");
		}else{			
			List<Map> gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerryTsdg"+DG_DM, qumap);
			if(gridlist.size()==0){
				persistenceDAO.save("GzdgbgMapper.insertTsdgInit",formmap);//调用初始化特殊底稿(公共方法)
				gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerryTsdg"+DG_DM, qumap);
			}			 
			res.addGrid("gridlist", gridlist);
			if("1".equals(req.getAttr("printBj"))){
				res.addPage("dggl/print/Tsdg_"+DG_DM);	
			}else{
				res.addPage("dggl/tsdg/Tsdg_"+DG_DM);	
			}
					
	    }
		return res;
	}
/**
 *  特殊底稿鉴定保存(只要一个表格的底稿)
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		PageData pageData=req.getPageData();
		Map formmap=req.getForm("formmap");
		String LSH=(String) formmap.get("LSH");
		String DJXH=(String) formmap.get("DJXH");
		String DG_DM=(String) formmap.get("DG_DM");
		String GXJDSMJL=(String) formmap.get("JDSMJL");
		List<Map> gridlist=req.getGrid("gridlist");
		gridlist=PlatformUtil.addGridcolvalue(gridlist, "LSH", LSH);
		gridlist=PlatformUtil.addGridcolvalue(gridlist, "DJXH", DJXH);
		gridlist=PlatformUtil.addGridcolvalue(gridlist, "DG_DM", DG_DM);
		persistenceDAO.delete("GzdgbgMapper.deleteTsdg", formmap);
		if("".equals(LSH)||LSH==null){
			persistenceDAO.batchSave("GzdgbgMapper.insertTsdg"+formmap.get("DG_DM")+"_sjb",gridlist);				
		}else{
			persistenceDAO.batchSave("GzdgbgMapper.insertTsdg"+formmap.get("DG_DM"),gridlist);	
			/*****************公共部分*********************************/
			Map jdsmjlmap =(Map) persistenceDAO.findForObject("GzdgbgMapper.mapQuerryJdsmjl", formmap);
			jdsmjlmap.put("LSH", LSH);
			jdsmjlmap.put("DJXH", DJXH);
			jdsmjlmap.put("DG_DM", DG_DM);	
			jdsmjlmap.put("GXJDSMJL", GXJDSMJL);	
			String BZRDM=(String) jdsmjlmap.get("BZRDM");
			String LCSLH=(String) formmap.get("LCSLH");
			Map slmap=(Map) persistenceDAO.findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
			if("".equals(LCSLH)||LCSLH==null||"SJ_02".equals(slmap.get("YWLC_DM"))){
				jdsmjlmap.put("BZRDM", user.getUSER_ID());	
				jdsmjlmap.put("BZRQ", DateUtil.getNowSqlDate());	
			}	
			if("SJ_01".equals(slmap.get("YWLC_DM"))&&"1".equals(slmap.get("YWHJ_DM"))){
				jdsmjlmap.put("FHRDM", user.getUSER_ID());	
				jdsmjlmap.put("FHRQ", DateUtil.getNowSqlDate());	
			}	
			if("".equals(BZRDM)||BZRDM==null){
				persistenceDAO.delete("GzdgbgMapper.deleteJdsmjl", formmap);
				persistenceDAO.save("GzdgbgMapper.insertJdsmjl", jdsmjlmap);				
			}else{
				persistenceDAO.save("GzdgbgMapper.updateJdsmjl", jdsmjlmap);
			}
			/******************************************************/
		}
        res.addMessage("保存成功");
		return res;
	}	
	
	/**
	 * 特殊底稿鉴定初始化(存在多个表格的底稿)
	 * @param req
	 * @return
	 * @throws Exception
	 */
	public BaseResponseEvent proinit(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		String DG_DM=(String) req.getAttr("DG_DM");
		String LCSLH=(String) req.getAttr("LCSLH");
		Map qumap=new HashMap();
		qumap.put("LSH", LSH);
		qumap.put("DG_DM", DG_DM);
		qumap.put("DJXH", DJXH);
		/*****************生成鉴定说明结论*********************************/
		Map formmap =(Map) persistenceDAO.findForObject("GzdgbgMapper.mapQuerryJdsmjl", qumap);
		formmap.put("LSH", LSH);
		formmap.put("DJXH", DJXH);
		formmap.put("DG_DM", DG_DM);
		formmap.put("LCSLH", LCSLH);
		String BZR=(String) formmap.get("BZR");
		String BZRQ=(String) formmap.get("BZRQ");
		String FHR=(String) formmap.get("FHR");
		String FHRQ=(String) formmap.get("FHRQ");
		String QYMC=(String) formmap.get("QYMC");
		String KJQJ=(String) formmap.get("KJQJ");
		if("".equals(BZR)||BZR==null){
			formmap.put("BZR", user.getUSER_ID());
		}
		if("".equals(BZRQ)||BZRQ==null){
			formmap.put("BZRQ",DateUtil.getNowString("yyyy-MM-dd"));
		}
		if("".equals(FHR)||FHR==null){
			formmap.put("FHR", user.getUSER_ID());
		}
		if("".equals(FHRQ)||FHRQ==null){
			formmap.put("FHRQ",DateUtil.getNowString("yyyy-MM-dd"));
		}
		res.addObject("BZR", BZR);
		res.addObject("BZRQ", BZRQ);
		res.addObject("FHR", FHR);
		res.addObject("FHRQ", FHRQ);
		res.addObject("QYMC", QYMC);
		res.addObject("KJQJ", KJQJ);
		res.addForm("formmap", formmap);
		/******************************************************/
		List<Map> ngdrdylist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerryDgnrdy", qumap);
		String DGNR_XH="";
		String DGNRLX_DM="";
		String sjbBz=(String) req.getAttr("sjbBz");
		if(ngdrdylist.size()>0){
			for(int i=0;i<ngdrdylist.size();i++){
				DGNR_XH=ngdrdylist.get(i).get("DGNR_XH").toString();
				DGNRLX_DM=(String) ngdrdylist.get(i).get("DGNRLX_DM");
				formmap.put("DGNR_XH", DGNR_XH);
				formmap.put("DGNRLX_DM", DGNRLX_DM);
				if("1".equals(sjbBz)){
					if("1".equals(DGNRLX_DM)){//表格模式
						List<Map> gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.QuerryTsdg"+DG_DM+"_"+DGNR_XH+"_sjb", qumap);
						if(gridlist.size()==0){
							persistenceDAO.save("GzdgbgMapper.insertproTsdgInit_sjb",formmap);//调用初始化特殊底稿(公共方法)
							gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.QuerryTsdg"+DG_DM+"_"+DGNR_XH+"_sjb", qumap);
						}				
						res.addGrid("gridlist_"+DGNR_XH, gridlist);
					}else if("2".equals(DGNRLX_DM)){//表单模式
						Map formnr =(Map) persistenceDAO.findForObject("GzdgbgMapper.QuerryTsdg"+DG_DM+"_"+DGNR_XH+"_sjb", qumap);
						res.addForm("formmap_"+DGNR_XH, formnr);
					}						
				}else{
					if("1".equals(DGNRLX_DM)){//表格模式
						List<Map> gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.QuerryTsdg"+DG_DM+"_"+DGNR_XH, qumap);
						if(gridlist.size()==0){
							persistenceDAO.save("GzdgbgMapper.insertproTsdgInit",formmap);//调用初始化特殊底稿(公共方法)
							gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.QuerryTsdg"+DG_DM+"_"+DGNR_XH, qumap);
						}				
						res.addGrid("gridlist_"+DGNR_XH, gridlist);
					}else if("2".equals(DGNRLX_DM)){//表单模式
						Map formnr =(Map) persistenceDAO.findForObject("GzdgbgMapper.QuerryTsdg"+DG_DM+"_"+DGNR_XH, qumap);
						res.addForm("formmap_"+DGNR_XH, formnr);
					}						
				}			
			}
		}
		if("1".equals(sjbBz)){
			res.addPage("dggl/tsdg/Tsdg_"+DG_DM+"_sjb");	
			return res;
		}
		if("1".equals(req.getAttr("printBj"))){
			res.addPage("dggl/print/Tsdg_"+DG_DM);	
		}else{
			res.addPage("dggl/tsdg/Tsdg_"+DG_DM);	
		}		
		return res;
	}	
	
	/**
	 *  特殊底稿鉴定保存(存在多个表格的底稿)
	 * @param req
	 * @return
	 * @throws Exception
	 */
		public BaseResponseEvent prosave(BaseRequestEvent req) throws Exception{
			PersistenceDAO persistenceDAO=this.getPersistenceDAO();
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();
			User user = (User) session.getAttribute(Const.SESSION_USER);
			BaseResponseEvent res=new BaseResponseEvent();
			PageData pageData=req.getPageData();
			Map formmap=req.getForm("formmap");
			String LSH=(String) formmap.get("LSH");
			String DJXH=(String) formmap.get("DJXH");
			String DG_DM=(String) formmap.get("DG_DM");
			String GXJDSMJL=(String) formmap.get("JDSMJL");
			List<Map> ngdrdylist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerryDgnrdy", formmap);
			String DGNR_XH="";
			String DGNRLX_DM="";
			if(ngdrdylist.size()>0){
				for(int i=0;i<ngdrdylist.size();i++){
					DGNR_XH=ngdrdylist.get(i).get("DGNR_XH").toString();
					DGNRLX_DM=(String) ngdrdylist.get(i).get("DGNRLX_DM");
					if("1".equals(DGNRLX_DM)){//表格模式
						List<Map> gridlist=req.getGrid("gridlist_"+DGNR_XH);
						gridlist=PlatformUtil.addGridcolvalue(gridlist, "LSH", LSH);
						gridlist=PlatformUtil.addGridcolvalue(gridlist, "DJXH", DJXH);
						gridlist=PlatformUtil.addGridcolvalue(gridlist, "DG_DM", DG_DM);
						formmap.put("DGNR_XH", DGNR_XH);
						if("".equals(LSH)||LSH==null){
							persistenceDAO.delete("GzdgbgMapper.deleteproTsdg_sjb", formmap);
							persistenceDAO.batchSave("GzdgbgMapper.insertTsdg"+formmap.get("DG_DM")+"_"+DGNR_XH+"_sjb",gridlist);								
						}else{
							persistenceDAO.delete("GzdgbgMapper.deleteproTsdg", formmap);
							persistenceDAO.batchSave("GzdgbgMapper.insertTsdg"+formmap.get("DG_DM")+"_"+DGNR_XH,gridlist);								
						}
					}else if("2".equals(DGNRLX_DM)){//表单模式
						Map mapobj=req.getForm("formmap_"+DGNR_XH);
						formmap.put("DGNR_XH", DGNR_XH);
						if("".equals(LSH)||LSH==null){
							persistenceDAO.delete("GzdgbgMapper.deleteproTsdg_sjb", formmap);
							formmap.putAll(mapobj);
							persistenceDAO.save("GzdgbgMapper.insertTsdg"+formmap.get("DG_DM")+"_"+DGNR_XH+"_sjb",formmap);								
						}else{
							persistenceDAO.delete("GzdgbgMapper.deleteproTsdg", formmap);
							formmap.putAll(mapobj);
							persistenceDAO.save("GzdgbgMapper.insertTsdg"+formmap.get("DG_DM")+"_"+DGNR_XH,formmap);							
						}
					}				
				}				
			}
			/*****************公共部分*********************************/
			Map jdsmjlmap =(Map) persistenceDAO.findForObject("GzdgbgMapper.mapQuerryJdsmjl", formmap);
			jdsmjlmap.put("LSH", LSH);
			jdsmjlmap.put("DJXH", DJXH);
			jdsmjlmap.put("DG_DM", DG_DM);	
			jdsmjlmap.put("GXJDSMJL", GXJDSMJL);	
			String BZRDM=(String) jdsmjlmap.get("BZRDM");
			String LCSLH=(String) formmap.get("LCSLH");
			Map slmap=(Map) persistenceDAO.findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
			if("".equals(LCSLH)||LCSLH==null||"SJ_02".equals(slmap.get("YWLC_DM"))){
				jdsmjlmap.put("BZRDM", user.getUSER_ID());	
				jdsmjlmap.put("BZRQ", DateUtil.getNowSqlDate());	
			}	
			if("SJ_01".equals(slmap.get("YWLC_DM"))&&"1".equals(slmap.get("YWHJ_DM"))){
				jdsmjlmap.put("FHRDM", user.getUSER_ID());	
				jdsmjlmap.put("FHRQ", DateUtil.getNowSqlDate());	
			}	
			if("".equals(BZRDM)||BZRDM==null){
				persistenceDAO.delete("GzdgbgMapper.deleteJdsmjl", formmap);
				persistenceDAO.save("GzdgbgMapper.insertJdsmjl", jdsmjlmap);				
			}else{
				persistenceDAO.save("GzdgbgMapper.updateJdsmjl", jdsmjlmap);
			}
			/******************************************************/
	        res.addMessage("保存成功");
			return res;
		}	
/**
 * 底稿内容匹配初始化
 * @param req
 * @return
 * @throws Exception
 */
		public BaseResponseEvent dgppinit(BaseRequestEvent req) throws Exception{
			PersistenceDAO persistenceDAO=this.getPersistenceDAO();
			BaseResponseEvent res=new BaseResponseEvent();
			PageData pageData=req.getPageData();
			Map map=new HashMap();
			String LSH=(String) req.get("LSH");
			String DJXH=(String) req.get("DJXH");
			String DG_DM=(String) req.get("DG_DM");
			map.put("LSH", LSH);
			map.put("DG_DM", DG_DM);
			List<Map> gridlist =(List<Map>) persistenceDAO.findForList("GzdgbgMapper.listQuerrydgpp", map);
			res.addGrid("gridlist", gridlist);
			res.addPage("dggl/tsdg/dgnrpp");
			return res;
		}	
			
		/**
		 * 	加工工作底稿
		 * @param req
		 * @param persistenceDAO
		 * @param jcsxform
		 * @return
		 * @throws Exception
		 */
			public BaseResponseEvent scData(BaseRequestEvent req) throws Exception{
				BaseResponseEvent res=new BaseResponseEvent();
				PersistenceDAO persistenceDAO=this.getPersistenceDAO();
				PageData pageData=req.getPageData();
				String LSH=(String) req.getAttr("LSH");
				String DGDM=(String) req.getAttr("DGDM");
				//------加工工作底稿----------------
				List<Map> sjzhlist=null;
				Map<String, Object> promap =null;
				String sucbj=null;
				String msg=null;
				promap = new HashMap<String, Object>();  
				promap.put("V_LSH", LSH);     
				promap.put("V_DGDM",DGDM);  
		        persistenceDAO.callProcedere("ZbjgrwMapper.P_SJ_DG_TSDGSC", promap);  
		        msg=(String) promap.get("V_MSG");
		        sucbj=(String) promap.get("V_SUCBJ");	
		        res.addCode(sucbj);
				res.addMessage(msg);
				return res;
			}	
/**
 * 计算底稿数据			
 * @param req
 * @return
 * @throws Exception
 */
			public BaseResponseEvent jsAuto(BaseRequestEvent req) throws Exception{
				BaseResponseEvent res=new BaseResponseEvent();
				PersistenceDAO persistenceDAO=this.getPersistenceDAO();
				PageData pageData=req.getPageData();
				String LSH=(String) req.getAttr("LSH");
				String DGDM=(String) req.getAttr("DGDM");
				//------加工工作底稿----------------
				List<Map> sjzhlist=null;
				Map<String, Object> promap =null;
				String sucbj=null;
				String msg=null;
				promap = new HashMap<String, Object>();  
				promap.put("V_LSH", LSH);     
				promap.put("V_DGDM",DGDM);  
		        persistenceDAO.callProcedere("ZbjgrwMapper.P_SJ_DG_TSDGJS", promap);  
		        msg=(String) promap.get("V_MSG");
		        sucbj=(String) promap.get("V_SUCBJ");	
		        res.addCode(sucbj);
				res.addMessage(msg);
				return res;
			}			
}
