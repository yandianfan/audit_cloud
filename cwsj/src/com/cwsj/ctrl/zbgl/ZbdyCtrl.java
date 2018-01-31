package com.cwsj.ctrl.zbgl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.zbgl.ZbdyService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Controller
@RequestMapping(value="/zbdyCtrl")
public class ZbdyCtrl extends BaseCtrl {
	@Resource(name="zbdyService")
	private ZbdyService zbdyService;
	
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.init(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/zbinit")
	public ModelAndView  zbinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.zbinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/zbdyinit")
	public ModelAndView  zbdyinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.zbdyinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/querryZb")
	public ModelAndView  querryZb(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.querryZb(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initZhgs")
	public ModelAndView  initZhgs(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.initZhgs(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveZbxx")
	public ModelAndView  saveZbxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.saveZbxx(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/insertSjly")
	public ModelAndView  insertSjly(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.insertSjly(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/deleteSjly")
	public ModelAndView  deleteSjly(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=zbdyService.deleteSjly(req);
        return this.doCtrlAfter(res, response);		
	}
}
