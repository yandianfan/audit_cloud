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
@Service("wb395A109000Service")
public class Wb395A109000Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		HashMap A109000 =(HashMap) dao.findForObject("AqysdsMapper.formQuerryA109000", pageData);
		res.addForm("A109000form", A109000);
		
		res.addPage("nssb/qysdsnd/wb395_A109000");
		return res;
	}
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A109000form=req.getForm("A109000form");    //修改form编号（2处）

		dao.update("GxqysdsMapper.updateA109000", A109000form);   //修改form编号（2处）
        res.addMessage("保存成功");
		return res;
	}
}
