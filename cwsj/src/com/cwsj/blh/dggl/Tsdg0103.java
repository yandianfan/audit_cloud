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

public class Tsdg0103 extends BaseBLH{
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
		res.addForm("formmap", qumap);
		
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
		
		Map formmap0103_1 =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0103_1", qumap);
		res.addForm("Tsdg_0103_1form", formmap0103_1);
		
		Map formmap0103_2 =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0103_1", qumap);
		res.addForm("Tsdg_0103_2form", formmap0103_2);		
		
		List<Map> gridlist1 =(List<Map>) persistenceDAO.findForList("GzdgzhlMapper.QuerryTsdg0103_2", qumap);		 
		res.addGrid("gridlist_1", gridlist1);
		
		List<Map> gridlist2 =(List<Map>) persistenceDAO.findForList("GzdgzhlMapper.QuerryTsdg0103_3", qumap);		 
		res.addGrid("gridlist_2", gridlist2);
		
		List<Map> gridlist3 =(List<Map>) persistenceDAO.findForList("GzdgzhlMapper.QuerryTsdg0103_4", qumap);		 
		res.addGrid("gridlist_3", gridlist3);
			
		res.addPage("dggl/tsdg/Tsdg_0103");
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
		String GXJDSMJL=(String) formmap.get("JDSMJL");   //新增
		
		//保存表单1
		persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0103_1", formmap);
		Map mapobj1=req.getForm("Tsdg_0103_1form");
		Map mapobj2=req.getForm("Tsdg_0103_2form");
		
		formmap.putAll(mapobj1);
		formmap.putAll(mapobj2);
		
		persistenceDAO.save("GzdgzhlMapper.insertTsdg0103_1",formmap);
			
		
		//保存表格1
		Map formmap2=req.getForm("formmap");
		String LSH=(String) formmap2.get("LSH");
		String DJXH=(String) formmap2.get("DJXH");
		String DG_DM=(String) formmap2.get("DG_DM");
		
		
		List<Map> gridlist1=req.getGrid("gridlist_1");
		gridlist1=PlatformUtil.addGridcolvalue(gridlist1, "LSH", LSH);
		gridlist1=PlatformUtil.addGridcolvalue(gridlist1, "DJXH", DJXH);
		gridlist1=PlatformUtil.addGridcolvalue(gridlist1, "DG_DM", DG_DM);

		persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0103_2", formmap2);
		persistenceDAO.batchSave("GzdgzhlMapper.insertTsdg0103_2",gridlist1);	
		
		//保存表格2
		List<Map> gridlist2=req.getGrid("gridlist_2");
		gridlist2=PlatformUtil.addGridcolvalue(gridlist2, "LSH", LSH);
		gridlist2=PlatformUtil.addGridcolvalue(gridlist2, "DJXH", DJXH);
		gridlist2=PlatformUtil.addGridcolvalue(gridlist2, "DG_DM", DG_DM);

		persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0103_3", formmap2);
		persistenceDAO.batchSave("GzdgzhlMapper.insertTsdg0103_3",gridlist2);	
		
		//保存表格3
		List<Map> gridlist3=req.getGrid("gridlist_3");
		gridlist3=PlatformUtil.addGridcolvalue(gridlist3, "LSH", LSH);
		gridlist3=PlatformUtil.addGridcolvalue(gridlist3, "DJXH", DJXH);
		gridlist3=PlatformUtil.addGridcolvalue(gridlist3, "DG_DM", DG_DM);

		persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0103_4", formmap2);
		persistenceDAO.batchSave("GzdgzhlMapper.insertTsdg0103_4",gridlist3);			
		
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
}
