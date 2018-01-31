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
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Service("tsdg050502Service")
public class Tsdg050502Service{
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
		
	    /******新增显示******/
		Map jdxxform =(Map)dao.findForObject("GzdgbgMapper.mapQuerryDgzdbg", formmap);
		if(jdxxform==null){
			jdxxform=new HashMap();
		}
		String JDSMJLFX=(String) jdxxform.get("JDSMJLFX");
		formmap.put("JDSMJLFX", JDSMJLFX);		
		
		res.addForm("formmap", formmap);		
		/******************************************************/
		
		Map formmap050502 =(Map) dao.findForObject("GzdgzhlMapper.QuerryTsdg050502", qumap);
		res.addForm("Tsdg_050502form", formmap050502);

		List<Map> SFselect =(List<Map>)dao.findForList("GzdgzhlMapper.selectQuerrySF", null);
		res.addSelect("COL4", SFselect);
		res.addSelect("COL5", SFselect);
		res.addSelect("COL6", SFselect);
		
		res.addPage("dggl/tsdg/Tsdg_050502");
		return res;
	}
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
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
		
		dao.delete("GzdgzhlMapper.deleteTsdg050502", formmap);
		
		Map mapobj=req.getForm("Tsdg_050502form");
		formmap.putAll(mapobj);
		dao.save("GzdgzhlMapper.insertTsdg050502",formmap);
		
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
		if("".equals(LCSLH)||LCSLH==null||"SJ_02".equals(slmap.get("YWLC_DM"))){
			jdsmjlmap.put("BZRDM", user.getUSER_ID());	
			jdsmjlmap.put("BZRQ", DateUtil.getNowSqlDate());	
		}	
		if("SJ_01".equals(slmap.get("YWLC_DM"))&&"1".equals(slmap.get("YWHJ_DM"))){
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
}
