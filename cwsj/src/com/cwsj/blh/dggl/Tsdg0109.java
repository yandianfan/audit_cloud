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

public class Tsdg0109 extends BaseBLH{
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{

		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		
		/*****************新增*********************************/
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		/*****************新增*********************************/

		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		String DG_DM=(String) req.getAttr("DG_DM");
		
		Map qumap=new HashMap();
		qumap.put("LSH", LSH);
		qumap.put("DJXH", DJXH);
		qumap.put("DG_DM", DG_DM);
		
		/*****************生成鉴定说明结论*********************************/
		Map formmap =(Map) persistenceDAO.findForObject("GzdgbgMapper.mapQuerryJdsmjl", qumap);
		formmap.put("LSH", LSH);
		formmap.put("DJXH", DJXH);
		formmap.put("DG_DM", DG_DM);		
		/*****************新增*********************************/
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
		/*****************新增*********************************/
		
		res.addForm("formmap", qumap);
		String sjbBz=(String) req.getAttr("sjbBz");
		if("1".equals(sjbBz)){
			Map formmap0109 =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0109_sjb", qumap);
			res.addForm("Tsdg_0109form", formmap0109);	
			res.addPage("dggl/tsdg/Tsdg_0109_sjb");		
		}else{
			Map formmap0109 =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0109", qumap);
			res.addForm("Tsdg_0109form", formmap0109);
					
			res.addPage("dggl/tsdg/Tsdg_0109");					
		}

		return res;
	}
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);   
		Map formmap=req.getForm("formmap");
		String LSH=(String) formmap.get("LSH");
		String DJXH=(String) formmap.get("DJXH");
		String DG_DM=(String) formmap.get("DG_DM");
		String GXJDSMJL=(String) formmap.get("JDSMJL");   //新增
		if("".equals(LSH)||LSH==null){
			persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0109_sjb", formmap);
			
			Map mapobj=req.getForm("Tsdg_0109form");
			formmap.putAll(mapobj);
			persistenceDAO.save("GzdgzhlMapper.insertTsdg0109_sjb",formmap);		
	        res.addMessage("保存成功");
			return res;
		}else{
			persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0109", formmap);
			
			Map mapobj=req.getForm("Tsdg_0109form");
			formmap.putAll(mapobj);
			persistenceDAO.save("GzdgzhlMapper.insertTsdg0109",formmap);
			
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
}
