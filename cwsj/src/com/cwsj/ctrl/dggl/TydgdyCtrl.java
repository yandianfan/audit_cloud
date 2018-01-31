package com.cwsj.ctrl.dggl;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.dggl.TydgdyService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/tydgdyCtrl")
public class TydgdyCtrl  extends BaseCtrl{
	@Resource(name="tydgdyService")
	private TydgdyService tydgdyService;
	
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.init(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initDgdy")
	public ModelAndView  initDgdy(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.initDgdy(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initTydgmain")
	public ModelAndView  initTydgmain(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.initTydgmain(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/querryDg")
	public ModelAndView  querryDg(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.querryDg(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveDg")
	public ModelAndView  saveDg(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.saveDg(req);
        return this.doCtrlAfter(res, response);		
	}
	@RequestMapping(value="/saveMyDg")
	public ModelAndView  saveMyDg(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.saveMyDg(req);
        return this.doCtrlAfter(res, response);		
	}	
	@RequestMapping(value="/initMytydgmain")
	public ModelAndView  initMytydgmain(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.initMytydgmain(req);
        return this.doCtrlAfter(res, response);		
	}
	@RequestMapping(value="/deleteDg")
	public ModelAndView  deleteDg(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=tydgdyService.deleteDg(req);
        return this.doCtrlAfter(res, response);		
	}
}
