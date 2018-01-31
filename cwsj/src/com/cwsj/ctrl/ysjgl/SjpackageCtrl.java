package com.cwsj.ctrl.ysjgl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.ysjgl.SjpackageService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/sjpackageCtrl")
public class SjpackageCtrl extends BaseCtrl {
	@Resource(name="sjpackageService")
	private SjpackageService sjpackageService;
	
	@RequestMapping(value="/initSjpackage")
	public ModelAndView  initSjpackage(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjpackageService.initSjpackage(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initPackagenr")
	public ModelAndView  initPackagenr(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjpackageService.initPackagenr(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/yjjhqdInit")
	public ModelAndView  yjjhqdInit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjpackageService.yjjhqdInit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveSjb")
	public ModelAndView  saveSjb(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjpackageService.saveSjb(req);
        return this.doCtrlAfter(res, response);		
	}
}
