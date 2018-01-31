package com.cwsj.ctrl.zbgl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.zbgl.ZbxxylService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/zbxxylCtrl")
public class ZbxxylCtrl extends BaseCtrl {
	@Resource(name="zbxxylService")
	private ZbxxylService zbxxylService;
	
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbxxylService.init(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initQyth")
	public ModelAndView  initQyth(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbxxylService.initQyth(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initZbsjsh")
	public ModelAndView  initZbsjsh(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbxxylService.initZbsjsh(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initZbsjtz")
	public ModelAndView  initZbsjtz(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbxxylService.initZbsjtz(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initSjcyZbsjsh")
	public ModelAndView  initSjcyZbsjsh(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbxxylService.initSjcyZbsjsh(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/qyyjth")
	public ModelAndView  qyyjth(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbxxylService.qyyjth(req);
        return this.doCtrlAfter(res, response);		
	}
}
