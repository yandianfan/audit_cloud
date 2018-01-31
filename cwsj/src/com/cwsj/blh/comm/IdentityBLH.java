package com.cwsj.blh.comm;

import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class IdentityBLH   extends BaseBLH{
	public BaseResponseEvent confirmIdentity (BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String DJXH=user.getUSER_ID();
		Map identytyMap=(Map) BaseDAO.getInstance().findForObject("YsjglMapper.mapQuerryQyjbxx", DJXH);
		if(identytyMap!=null&&identytyMap.containsKey("DJXH")){
			res.addObject("identityBj", "qyyh");
		}else{
			res.addObject("identityBj", "xtyh");
		}
		
		return res;	
	}
}
