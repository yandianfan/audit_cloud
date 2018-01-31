package com.cwsj.service.comm;

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
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("identityService")
public class IdentityService{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent confirmIdentity (BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String DJXH=user.getUSER_ID();
		Map identytyMap=(Map) dao.findForObject("YsjglMapper.mapQuerryQyjbxx", DJXH);
		if(identytyMap!=null&&identytyMap.containsKey("DJXH")){
			res.addObject("identityBj", "qyyh");
		}else{
			res.addObject("identityBj", "xtyh");
		}
		
		return res;	
	}
}
