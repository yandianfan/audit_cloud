package com.cwsj.service.login;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cwsj.vo.login.Gnzy;
import com.fh.dao.DaoSupport;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;


@Service("loginService")
public class LoginService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	//======================================================================================
	
	/*
	*通过id获取数据
	*/
	public User getUserAndRoleById(String USER_ID) throws Exception {
		return (User) dao.findForObject("SysXMapper.getUserAndRoleById", USER_ID);
	}

	public List<Map> listRoleByUserId(String userId) throws Exception {
		return (List) dao.findForList("SysXMapper.getRoleByUserId", userId);		
	}	
	
	/*
	* 登录判断
	*/
	public PageData getUserByNameAndPwd(PageData pd)throws Exception{
		return (PageData)dao.findForObject("SysXMapper.getUserInfo", pd);
	}
	
	public List<Gnzy> listAllParentMenu(Map usermap) throws Exception {
		return (List<Gnzy>) dao.findForList("SysXMapper.listAllParentMenu", usermap);
		
	}

	public List<Gnzy> listSubMenuByParentId(Map usermap) throws Exception {
		return (List<Gnzy>) dao.findForList("SysXMapper.listSubMenuByParentId", usermap);
		
	}
	
	public List<Gnzy> listAllMenu(Map usermap) throws Exception {
		List<Gnzy> rl = this.listAllParentMenu(usermap);
		for(Gnzy menu : rl){
			usermap.put("parentId", menu.getMENU_ID());
			List<Gnzy> subList = this.listSubMenuByParentId(usermap);
			menu.setSubMenu(subList);
		}
		return rl;
	}
	
	
	/*
	* 通过loginname获取数据
	*/
	public PageData findByUId(PageData pd)throws Exception{
		return (PageData)dao.findForObject("SysXMapper.findByUId", pd);
	}
		
}
