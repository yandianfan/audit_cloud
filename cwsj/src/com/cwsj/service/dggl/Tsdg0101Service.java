package com.cwsj.service.dggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.util.DateUtil;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.tool.PlatformUtil;
@Service("tsdg0101Service")
public class Tsdg0101Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		
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
		Map formmap =(Map) dao.findForObject("GzdgbgMapper.mapQuerryJdsmjl", qumap);
		if(formmap==null){
			formmap=new HashMap();
		}
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

		Map formmap0101_1 =(Map) dao.findForObject("GzdgzhlMapper.QuerryTsdg0101_1", qumap);
		res.addForm("Tsdg_0101_1form", formmap0101_1);
		res.addForm("Tsdg_0101_2form", formmap0101_1);
		
		List<Map> gridlist =(List<Map>) dao.findForList("GzdgzhlMapper.QuerryTsdg0101_2", qumap);		 
		res.addGrid("gridlist_1", gridlist);
		if("1".equals(req.getAttr("printBj"))){
			res.addPage("dggl/print/Tsdg_0101");	
		}else{
			res.addPage("dggl/tsdg/Tsdg_0101");	
		}
		return res;
	}
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);        				
		//保存表单1
		Map formmap1=req.getForm("formmap");
		dao.delete("GzdgzhlMapper.deleteTsdg0101_1", formmap1);
		Map mapobj1=req.getForm("Tsdg_0101_1form");
		Map mapobj2=req.getForm("Tsdg_0101_2form");
		formmap1.putAll(mapobj1);
		formmap1.putAll(mapobj2);
		
		dao.save("GzdgzhlMapper.insertTsdg0101_1",formmap1);
					
		//保存表格
		Map formmap=req.getForm("formmap");
		String LSH=(String) formmap.get("LSH");
		String DJXH=(String) formmap.get("DJXH");
		String DG_DM=(String) formmap.get("DG_DM"); 
		String GXJDSMJL=(String) formmap.get("JDSMJL");   //新增
		List<Map> gridlist=req.getGrid("gridlist_1");
		
		gridlist=PlatformUtil.addGridcolvalue(gridlist, "LSH", LSH);
		gridlist=PlatformUtil.addGridcolvalue(gridlist, "DJXH", DJXH);
		gridlist=PlatformUtil.addGridcolvalue(gridlist, "DG_DM", DG_DM);

		dao.delete("GzdgzhlMapper.deleteTsdg0101_2", formmap);
		dao.batchSave("GzdgzhlMapper.insertTsdg0101_2",gridlist);	
		
		/*****************公共部分*********************************/
		Map jdsmjlmap =(Map) dao.findForObject("GzdgbgMapper.mapQuerryJdsmjl", formmap);
		if(jdsmjlmap==null){
			jdsmjlmap=new HashMap();
		}
		jdsmjlmap.put("LSH", LSH);
		jdsmjlmap.put("DJXH", DJXH);
		jdsmjlmap.put("DG_DM", DG_DM);	
		jdsmjlmap.put("GXJDSMJL", GXJDSMJL);	
		String BZRDM=(String) jdsmjlmap.get("BZRDM");
		String LCSLH=(String) formmap.get("LCSLH");
		Map slmap=(Map) dao.findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
		if(slmap==null){
			slmap=new HashMap();
		}
		if("".equals(LCSLH)||LCSLH==null||(slmap!=null&&"SJ_02".equals(slmap.get("YWLC_DM")))){
			jdsmjlmap.put("BZRDM", user.getUSER_ID());	
			jdsmjlmap.put("BZRQ", DateUtil.getNowSqlDate());	
		}	
		if(slmap!=null&&"SJ_01".equals(slmap.get("YWLC_DM"))&&"1".equals(slmap.get("YWHJ_DM"))){
			jdsmjlmap.put("FHRDM", user.getUSER_ID());	
			jdsmjlmap.put("FHRQ", DateUtil.getNowSqlDate());	
		}	
		if("".equals(BZRDM)||BZRDM==null){
			dao.delete("GzdgbgMapper.deleteJdsmjl", formmap);
			dao.save("GzdgbgMapper.insertJdsmjl", jdsmjlmap);				
		}else{
			dao.save("GzdgbgMapper.updateJdsmjl", jdsmjlmap);
		}
		/******************************************************/
        res.addMessage("保存成功");
		return res;
	}	
	
	public BaseResponseEvent fpgzjh(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();       

		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		//保存表格
		Map formmap=req.getForm("formmap");
		String LSH=(String) formmap.get("LSH");
		String DJXH=(String) formmap.get("DJXH");
		String USERID=user.getUSER_ID();
		String LCSLH=(String) req.getAttr("LCSLH");
		if("".equals(LSH)){
			res.addMessage("流水号不能为空");
			return res;
		}
		String YWLC_DM="SJ_02";
		String YWHJ_DM="1";
		String QYMC=(String) req.getAttr("QYMC");
		Map qyjbxxmap=(Map) dao.findForObject("GzlXMapper.QuerryQyjbxx", DJXH);
		if(qyjbxxmap!=null){
			QYMC=(String) qyjbxxmap.get("QYMC");
		}	
		List<Map> gridlist=req.getGrid("gridlist_1");
		for(int i=0;i<gridlist.size();i++){
			Map dgfpmap=gridlist.get(i);
			String rydm=(String) dgfpmap.get("COL2");
			String zzjgdm=(String) dgfpmap.get("COL7");
			LCSLH=XtbmUtil.getXtnumberbm();
			
	
			HashMap param=new HashMap();
			param.put("LSH", LSH);
			param.put("LCSLH", LCSLH);
			param.put("SLRY_DM", rydm);
			param.put("YWLC_DM", YWLC_DM);
			param.put("YWHJ_DM", YWHJ_DM);
			param.put("ZZJGDM", zzjgdm);
			param.put("DJXH", DJXH);
			param.put("QYMC", QYMC);
			param.put("LRRY_DM", USERID);
			param.put("TSRY_DM", USERID);
			Map slmap=(Map) dao.findForObject("SjsjtsMapper.listQuerryLcslxx", param);
			if(slmap==null){
				slmap=new HashMap();
			}
			LCSLH=(String) slmap.get("LCSLH");
			if("".equals(LCSLH)||LCSLH==null){
				dao.save("GzlXMapper.insertLcslxx", param);
				Integer lzobj=(Integer)dao.save("GzlXMapper.insertLzxx2", param);
			}		
		}

        res.addMessage("分配成功");
		return res;       
	}	
	
	public BaseResponseEvent jslc(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();       

		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		HashMap param=new HashMap();
		param.put("LCSLH", LCSLH);
		param.put("lastHj", 1);
		dao.save("GzlXMapper.endLcslxx", param);

        res.addMessage("分配成功");
		return res;       
	}	
}
