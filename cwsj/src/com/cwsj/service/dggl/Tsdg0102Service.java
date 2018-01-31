package com.cwsj.service.dggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Service("tsdg0102Service")
public class Tsdg0102Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();

		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		String DG_DM=(String) req.getAttr("DG_DM");
		
		Map qumap=new HashMap();
		qumap.put("LSH", LSH);
		qumap.put("DJXH", DJXH);
		qumap.put("DG_DM", DG_DM);
		res.addForm("formmap", qumap);
		Map jcsxform =(Map) dao.findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
		Map Tsdg_0102form =(Map) dao.findForObject("GzdgzhlMapper.QuerryTsdg0102", qumap);
		if(Tsdg_0102form!=null){
			Tsdg_0102form.put("COL2", jcsxform.get("SSSQ"));
			Tsdg_0102form.put("COL2", jcsxform.get("SSSQ"));		
		}
		res.addForm("Tsdg_0102form", Tsdg_0102form);

			
		res.addPage("dggl/tsdg/Tsdg_0102");
		return res;
	}
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();

		//保存表单1
		Map formmap1=req.getForm("formmap");
		dao.delete("GzdgzhlMapper.deleteTsdg0102", formmap1);
		Map mapobj1=req.getForm("Tsdg_0102form");
		formmap1.putAll(mapobj1);
		dao.save("GzdgzhlMapper.insertTsdg0102",formmap1);
			
        res.addMessage("保存成功");
		return res;
	}		
}
