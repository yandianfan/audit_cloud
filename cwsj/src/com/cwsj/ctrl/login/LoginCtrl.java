package com.cwsj.ctrl.login;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.login.LoginService;
import com.cwsj.util.Const;
import com.cwsj.vo.login.Gnzy;
import com.cwsj.vo.login.User;
import com.fh.controller.base.BaseController;
import com.fh.util.AppUtil;
//import com.fh.util.Const;
import com.fh.util.MD5;
import com.fh.util.PageData;
import com.fh.util.Tools;
/*
 * 总入口
 */
@Controller
public class LoginCtrl extends BaseController {

	@Resource(name="loginService")
	private LoginService loginService;
		
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/login_toLogin")
	public ModelAndView toLogin()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("login/login");
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**
	 * 请求登录，验证用户
	 */
	@RequestMapping(value="/login_login")
	@ResponseBody
	public Object login()throws Exception{
		Map<String,String> map = new HashMap<String,String>();
		PageData pd = new PageData();
		pd = this.getPageData();
		String errInfo = "";
		String KEYDATA[] = pd.getString("KEYDATA").replaceAll("qq313596790fh", "").replaceAll("QQ978336446fh", "").split(",fh,");
		
		if(null != KEYDATA && KEYDATA.length == 3){
			//shiro管理的session
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();
			String sessionCode = (String)session.getAttribute(Const.SESSION_SECURITY_CODE);		//获取session中的验证码
			
			String code = KEYDATA[2];
			if(null == code || "".equals(code)){
				errInfo = "nullcode"; //验证码为空
			}else{
				String USERNAME = KEYDATA[0];
				String PASSWORD  = KEYDATA[1];
				pd.put("USERNAME", USERNAME);
				pd.put("USER_ID", USERNAME);
				if(Tools.notEmpty(sessionCode) && sessionCode.equalsIgnoreCase(code)){
					//String passwd = new SimpleHash("SHA-1", USERNAME, PASSWORD).toString();	//密码加密
					String passwd =MD5.md5(PASSWORD);
					pd.put("PASSWORD", passwd);
					pd = loginService.getUserByNameAndPwd(pd);
					if(pd != null){
//						pd.put("LAST_LOGIN",DateUtil.getTime().toString());
//						userBLH.updateLastLogin(pd);
						User user = new User();
						user.setUSER_ID(pd.getString("USER_ID"));
						user.setUSERNAME(pd.getString("USER_NAME"));
						user.setPASSWORD(pd.getString("PASSWORD"));
						user.setNAME(pd.getString("XM"));
						user.setZZJG_ID(pd.getString("ZZJG_ID"));
						user.setDJXH(pd.getString("DJXH"));
						user.setZZJG_JC(pd.getString("ZZJG_JC"));
						//user.setRIGHTS(pd.getString("RIGHTS"));
						//user.setROLE_ID(pd.getString("ROLE_ID"));
						//user.setLAST_LOGIN(pd.getString("LAST_LOGIN"));
						//user.setIP(pd.getString("IP"));
						//user.setSTATUS(pd.getString("STATUS"));
						session.setAttribute(Const.SESSION_USER, user);
						session.setAttribute(Const.SESSION_USERNAME, user.getUSERNAME());
						session.removeAttribute(Const.SESSION_SECURITY_CODE);
						
						//开始封装角色代码
						List<Map> list=loginService.listRoleByUserId(pd.getString("USER_ID"));
						if("".equals(list)||list==null||list.size()==0){
							errInfo ="未配置相应的权限!";
						}
						//shiro加入身份验证
						Subject subject = SecurityUtils.getSubject(); 
					    UsernamePasswordToken token = new UsernamePasswordToken(USERNAME, PASSWORD); 
					    try { 
					        subject.login(token); 
					    } catch (AuthenticationException e) { 
					    	errInfo = "身份验证失败！";
					    }
					    
					}else{
						errInfo = "usererror"; 				//用户名或密码有误
					}
				}else{
					errInfo = "codeerror";				 	//验证码输入有误
				}
				if(Tools.isEmpty(errInfo)){
					errInfo = "success";					//验证成功
				}
			}
		}else{
			errInfo = "error";	//缺少参数
		}
		map.put("result", errInfo);
		return AppUtil.returnObject(new PageData(), map);
	}
	
	/**
	 * 访问系统首页
	 */
	@RequestMapping(value="/main/{changeMenu}")
	public ModelAndView login_index(@PathVariable("changeMenu") String changeMenu){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			
			//shiro管理的session
			Subject currentUser = SecurityUtils.getSubject();  
			Session session = currentUser.getSession();
			
			User user = (User)session.getAttribute(Const.SESSION_USER);
			if (user != null) {
				
//				User userr = (User)session.getAttribute(Const.SESSION_USERROL);
//				if(null == userr){
//					user = loginService.getUserAndRoleById(user.getUSER_ID());
//					session.setAttribute(Const.SESSION_USERROL, user);
//				}else{
//					user = userr;
//				}
//				Role role = user.getRole();
//				String roleRights = role!=null ? role.getRIGHTS() : "";
//				//避免每次拦截用户操作时查询数据库，以下将用户所属角色权限、用户权限限都存入session
//				session.setAttribute(Const.SESSION_ROLE_RIGHTS, roleRights); 		//将角色权限存入session
				session.setAttribute(Const.SESSION_USERNAME, user.getUSERNAME());	//放入用户名
				
				List<Gnzy> allmenuList = new ArrayList<Gnzy>();
				Map usermap=new HashMap();
				usermap.put("USER_ID", user.getUSER_ID());
				if(null == session.getAttribute(Const.SESSION_allmenuList)){
					allmenuList = loginService.listAllMenu(usermap);
//					if(Tools.notEmpty(roleRights)){
//						for(Menu menu : allmenuList){
//							menu.setHasMenu(RightsHelper.testRights(roleRights, menu.getMENU_ID()));
//							if(menu.isHasMenu()){
//								List<Menu> subMenuList = menu.getSubMenu();
//								for(Menu sub : subMenuList){
//									sub.setHasMenu(RightsHelper.testRights(roleRights, sub.getMENU_ID()));
//								}
//							}
//						}
//					}
					session.setAttribute(Const.SESSION_allmenuList, allmenuList);			//菜单权限放入session中
				}else{
					allmenuList = (List<Gnzy>)session.getAttribute(Const.SESSION_allmenuList);
				}
				
				//切换菜单=====
//				List<Gnzy> menuList = new ArrayList<Gnzy>();
//				//if(null == session.getAttribute(Const.SESSION_menuList) || ("yes".equals(pd.getString("changeMenu")))){
//				if(null == session.getAttribute(Const.SESSION_menuList) || ("yes".equals(changeMenu))){
//					List<Gnzy> menuList1 = new ArrayList<Gnzy>();
//					List<Gnzy> menuList2 = new ArrayList<Gnzy>();
//					
//					//拆分菜单
//					for(int i=0;i<allmenuList.size();i++){
//						Gnzy menu = allmenuList.get(i);
//						if("1".equals(menu.getMENU_TYPE())){
//							menuList1.add(menu);
//						}else{
//							menuList2.add(menu);
//						}
//					}
//					
//					session.removeAttribute(Const.SESSION_menuList);
//					if("2".equals(session.getAttribute("changeMenu"))){
//						session.setAttribute(Const.SESSION_menuList, menuList1);
//						session.removeAttribute("changeMenu");
//						session.setAttribute("changeMenu", "1");
//						menuList = menuList1;
//					}else{
//						session.setAttribute(Const.SESSION_menuList, menuList2);
//						session.removeAttribute("changeMenu");
//						session.setAttribute("changeMenu", "2");
//						menuList = menuList2;
//					}
//				}else{
//					menuList = (List<Gnzy>)session.getAttribute(Const.SESSION_menuList);
//				}
				//切换菜单=====
				
//				if(null == session.getAttribute(Const.SESSION_QX)){
//					session.setAttribute(Const.SESSION_QX, this.getUQX(session));	//按钮权限放到session中
//				}
				
				//FusionCharts 报表
			 	String strXML = "<graph caption='前12个月订单销量柱状图' xAxisName='月份' yAxisName='值' decimalPrecision='0' formatNumberScale='0'><set name='2013-05' value='4' color='AFD8F8'/><set name='2013-04' value='0' color='AFD8F8'/><set name='2013-03' value='0' color='AFD8F8'/><set name='2013-02' value='0' color='AFD8F8'/><set name='2013-01' value='0' color='AFD8F8'/><set name='2012-01' value='0' color='AFD8F8'/><set name='2012-11' value='0' color='AFD8F8'/><set name='2012-10' value='0' color='AFD8F8'/><set name='2012-09' value='0' color='AFD8F8'/><set name='2012-08' value='0' color='AFD8F8'/><set name='2012-07' value='0' color='AFD8F8'/><set name='2012-06' value='0' color='AFD8F8'/></graph>" ;
			 	mv.addObject("strXML", strXML);
			 	//FusionCharts 报表
			 	String DJXH=user.getDJXH();
			 	if(DJXH!=null&&!"".equals(DJXH)){
			 		mv.setViewName("login/qyindex");
			 	}else{
			 		mv.setViewName("login/index");
			 	}				
				mv.addObject("user", user);
				mv.addObject("menuList", allmenuList);
			}else {
				mv.setViewName("login/login");//session失效后跳转登录页面
			}
			
			
		} catch(Exception e){
			mv.setViewName("login/login");
			logger.error(e.getMessage(), e);
		}
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**
	 * 进入tab标签
	 * @return
	 */
	@RequestMapping(value="/tabs")
	public String tab(){
		return "login/tab";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/login_default")
	public String defaultPage(){
		return "login/default";
	}
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/modifyPassword")
	public String modifyPassword(){
		return "login/modifypassword";
	}	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public ModelAndView logout(){
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		
		//shiro管理的session
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		
		session.removeAttribute(Const.SESSION_USER);
		session.removeAttribute(Const.SESSION_ROLE_RIGHTS);
		session.removeAttribute(Const.SESSION_allmenuList);
		session.removeAttribute(Const.SESSION_menuList);
		session.removeAttribute(Const.SESSION_QX);
		session.removeAttribute(Const.SESSION_userpds);
		session.removeAttribute(Const.SESSION_USERNAME);
		session.removeAttribute(Const.SESSION_USERROL);
		session.removeAttribute("changeMenu");
		
		//shiro销毁登录
		Subject subject = SecurityUtils.getSubject(); 
		subject.logout();
		
		pd = this.getPageData();
		String  msg = pd.getString("msg");
		pd.put("msg", msg);
		
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("login/login");
		mv.addObject("pd",pd);
		return mv;
	}
	
//	/**
//	 * 获取用户权限
//	 */
//	public Map<String, String> getUQX(Session session){
//		PageData pd = new PageData();
//		Map<String, String> map = new HashMap<String, String>();
//		try {
//			String USERNAME = session.getAttribute(Const.SESSION_USERNAME).toString();
//			pd.put(Const.SESSION_USERNAME, USERNAME);
//			String ROLE_ID = userBLH.findByUId(pd).get("ROLE_ID").toString();
//			
//			pd.put("ROLE_ID", ROLE_ID);
//			
//			PageData pd2 = new PageData();
//			pd2.put(Const.SESSION_USERNAME, USERNAME);
//			pd2.put("ROLE_ID", ROLE_ID);
//			
//			pd = roleBLH.findObjectById(pd);																
//				
//			pd2 = roleBLH.findGLbyrid(pd2);
//			if(null != pd2){
//				map.put("FX_QX", pd2.get("FX_QX").toString());
//				map.put("FW_QX", pd2.get("FW_QX").toString());
//				map.put("QX1", pd2.get("QX1").toString());
//				map.put("QX2", pd2.get("QX2").toString());
//				map.put("QX3", pd2.get("QX3").toString());
//				map.put("QX4", pd2.get("QX4").toString());
//			
//				pd2.put("ROLE_ID", ROLE_ID);
//				pd2 = roleBLH.findYHbyrid(pd2);
//				map.put("C1", pd2.get("C1").toString());
//				map.put("C2", pd2.get("C2").toString());
//				map.put("C3", pd2.get("C3").toString());
//				map.put("C4", pd2.get("C4").toString());
//				map.put("Q1", pd2.get("Q1").toString());
//				map.put("Q2", pd2.get("Q2").toString());
//				map.put("Q3", pd2.get("Q3").toString());
//				map.put("Q4", pd2.get("Q4").toString());
//			}
//			
//			map.put("adds", pd.getString("ADD_QX"));
//			map.put("dels", pd.getString("DEL_QX"));
//			map.put("edits", pd.getString("EDIT_QX"));
//			map.put("chas", pd.getString("CHA_QX"));
//			
//			//System.out.println(map);
//			
//			this.getRemortIP(USERNAME);
//		} catch (Exception e) {
//			logger.error(e.toString(), e);
//		}	
//		return map;
//	}

}
