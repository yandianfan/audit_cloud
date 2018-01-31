package com.cwsj.service.nssb.qysdsnd;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Service("wb395A105100Service")
public class Wb395A105100Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		res.addObject("PZXH", pzxh);

		HashMap A105100 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA105100", pageData);
		res.addForm("A105100form", A105100);
		
		res.addPage("nssb/qysdsnd/wb395_A105100");
		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A105100form=req.getForm("A105100form");    //修改form编号（2处）

		dao.update("GxqysdsMapper.updateA105100", A105100form);   //修改form编号（2处）
        res.addMessage("保存成功");
		return res;
	}	
}
