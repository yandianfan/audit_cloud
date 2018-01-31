package com.cwsj.ctrl.login;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.login.RegisterService;
import com.cwsj.util.Const;
import com.fh.controller.base.BaseController;
//import com.fh.util.Const;
import com.fh.util.PageData;
import com.fh.util.Tools;
/*
 * 总入口
 */
@Controller
@RequestMapping(value="/RegisterCtrl")
public class RegisterCtrl extends BaseController {

	@Resource(name="registerService")
	private RegisterService registerService;
		
	/**
	 * 访问注册页
	 * @return
	 */
	@RequestMapping(value="/register_toQy")
	public ModelAndView register_toQy()throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd.put("SYSNAME", Tools.readTxtFile(Const.SYSNAME)); //读取系统名称
		mv.setViewName("login/registerqy");
		mv.addObject("pd",pd);
		return mv;
	}
	
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/saveRegister")
	public void saveRegister(HttpServletResponse response)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = registerService.saveRegister(pd);
		JSONArray arr = JSONArray.fromObject(pd);
		PrintWriter out;
		
		response.setCharacterEncoding("utf-8");
		out = response.getWriter();
		String json = arr.toString();
		out.write(json);
		out.flush();
		out.close();
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	@RequestMapping(value="/modifyPassword")
	public void modifyPassword(HttpServletResponse response)throws Exception{
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		pd = registerService.modifyPassword(pd);
		JSONArray arr = JSONArray.fromObject(pd);
		PrintWriter out;
		
		response.setCharacterEncoding("utf-8");
		out = response.getWriter();
		String json = arr.toString();
		out.write(json);
		out.flush();
		out.close();
	}
}
