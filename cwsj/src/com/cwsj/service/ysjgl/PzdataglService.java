package com.cwsj.service.ysjgl;

import java.util.List;
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
@Service("pzdataglService")
public class PzdataglService{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent initSjqy(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> listysj =(List<Map>) dao.findForList("YsjglMapper.listQuerrysjqy", USERID);
		res.addGrid("listysj", listysj);		
		res.addPage("ysjgl/Pzdatagl_qyqdlist");
		return res;
	}
	public BaseResponseEvent cxpageinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
	
		res.addPage("ysjgl/Pzdatagl_cxpage");
		return res;
	}
}
