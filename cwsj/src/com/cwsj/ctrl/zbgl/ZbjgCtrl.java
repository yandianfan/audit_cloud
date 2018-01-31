package com.cwsj.ctrl.zbgl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.zbgl.ZbjgService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/zbjgCtrl")
public class ZbjgCtrl extends BaseCtrl {
	@Resource(name="zbjgService")
	private ZbjgService zbjgService;
	
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbjgService.init(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/zbjginit")
	public ModelAndView  zbjginit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbjgService.zbjginit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveRwxx")
	public ModelAndView  saveRwxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbjgService.saveRwxx(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/jgGzdg")
	public ModelAndView  jgGzdg(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbjgService.jgGzdg(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/jgSbb")
	public ModelAndView  jgSbb(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbjgService.jgSbb(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/doAction")
	public ModelAndView  doAction(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbjgService.doAction(req);
        return this.doCtrlAfter(res, response);		
	}
}
