package com.cwsj.ctrl.rwts;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.rwts.RwfpService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/rwfpCtrl")
public class RwfpCtrl extends BaseCtrl {
	@Resource(name="rwfpService")
	private RwfpService rwfpService;
	
	@RequestMapping(value="/rwfpinit")
	public ModelAndView  rwfpinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.rwfpinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/querry")
	public ModelAndView  querry(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.querry(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/ryinit")
	public ModelAndView  ryinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.ryinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/fpryinit")
	public ModelAndView  fpryinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.fpryinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/selectryinit")
	public ModelAndView  selectryinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.selectryinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/dginit")
	public ModelAndView  dginit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.dginit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/rwfp")
	public ModelAndView  rwfp(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.rwfp(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/selectTsry")
	public ModelAndView  selectTsry(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.selectTsry(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/rwrgfp")
	public ModelAndView  rwrgfp(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=rwfpService.rwrgfp(req);
        return this.doCtrlAfter(res, response);		
	}
}
