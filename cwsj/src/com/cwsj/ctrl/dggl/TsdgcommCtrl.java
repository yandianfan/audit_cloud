package com.cwsj.ctrl.dggl;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.dggl.TsdgcommService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/tsdgcommCtrl")
public class TsdgcommCtrl  extends BaseCtrl{
	@Resource(name="tsdgcommService")
	private TsdgcommService service;
	/**
	 * 特殊底稿鉴定初始化(只要一个表格的底稿)
	 * @param req
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.init(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/save")
	public ModelAndView  save(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.save(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/proinit")
	public ModelAndView  proinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.proinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/prosave")
	public ModelAndView  prosave(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.prosave(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/dgppinit")
	public ModelAndView  dgppinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.dgppinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/scData")
	public ModelAndView  scData(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.scData(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/jsAuto")
	public ModelAndView  jsAuto(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.jsAuto(req);
        return this.doCtrlAfter(res, response);		
	}
		
}
