package com.platform.interceptor;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fh.entity.system.Menu;
import com.cwsj.vo.login.User;
import com.cwsj.util.Const;
import com.fh.util.Jurisdiction;
import com.fh.util.RightsHelper;
/**
 * 
* 类名称：LoginHandlerInterceptor.java
* 类描述： 
* @author FH
* 作者单位： 
* 联系方式：
* 创建时间：2015年1月1日
* @version 1.6
 */
public class LoginHandlerInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		String path = request.getServletPath();
//		response.setHeader("Access-Control-Allow-Origin","*");
//		response.setHeader("Access-Control-Allow-Methods","POST");
//		response.setHeader("Access-Control-Allow-Headers","Access-Control");
//		response.setHeader("Allow","POST");
		response.setHeader("Cache-Control", "no-cache");
		if(path.matches(Const.NO_INTERCEPTOR_PATH)){
			return true;
		}else{
			//shiro管理的session
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();
			User user = (User)session.getAttribute(Const.SESSION_USER);
			if("".equals(user)||user==null){
				response.sendRedirect(request.getContextPath() + Const.LOGIN);
				return false;	
			}else{
				return true;
			}
		}
	}
	
}
