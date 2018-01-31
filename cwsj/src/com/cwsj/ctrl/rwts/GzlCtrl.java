package com.cwsj.ctrl.rwts;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.rwts.GzlService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Controller
@RequestMapping(value="/gzlCtrl")
public class GzlCtrl extends BaseCtrl {
	@Resource(name="gzlService")
	private GzlService gzlService;
	
	@RequestMapping(value="/initrwxx")
	public ModelAndView  initrwxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=gzlService.initrwxx(req);
        return this.doCtrlAfter(res, response);		
	}	
	
	@RequestMapping(value="/openGzl")
	public ModelAndView  openGzl(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=gzlService.openGzl(req);
        return this.doCtrlAfter(res, response);		
	}	
	
	@RequestMapping(value="/determineEnd")
	public ModelAndView  determineEnd(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=gzlService.determineEnd(req);
        return this.doCtrlAfter(res, response);		
	}	
	
	@RequestMapping(value="/viewLcxx")
	public ModelAndView  viewLcxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=gzlService.viewLcxx(req);
        return this.doCtrlAfter(res, response);		
	}	
}
