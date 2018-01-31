package com.cwsj.blh.dggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.cwsj.util.Const;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
import com.platform.tool.PlatformUtil;


public class Tsdg0102 extends BaseBLH{
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();

		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		String DG_DM=(String) req.getAttr("DG_DM");
		
		Map qumap=new HashMap();
		qumap.put("LSH", LSH);
		qumap.put("DJXH", DJXH);
		qumap.put("DG_DM", DG_DM);
		res.addForm("formmap", qumap);

		Map Tsdg_0102form =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0102", qumap);
		res.addForm("Tsdg_0102form", Tsdg_0102form);

			
		res.addPage("dggl/tsdg/Tsdg_0102");
		return res;
	}
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();

		//保存表单1
		Map formmap1=req.getForm("formmap");
		persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0102", formmap1);
		Map mapobj1=req.getForm("Tsdg_0102form");
		formmap1.putAll(mapobj1);
		persistenceDAO.save("GzdgzhlMapper.insertTsdg0102",formmap1);
			
        res.addMessage("保存成功");
		return res;
	}		
}
