package com.cwsj.ctrl.nssb.qysdsnd;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.nssb.qysdsnd.QysdsndIndexService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/qysdsndIndexCtrl")
public class QysdsndIndexCtrl  extends BaseCtrl{
	@Resource(name="qysdsndIndexService")
	private QysdsndIndexService service;
	
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.init(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/jgSbb")
	public ModelAndView  jgSbb(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.jgSbb(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/jsSbb")
	public ModelAndView  jsSbb(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.jsSbb(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/tsshSbb")
	public ModelAndView  tsshSbb(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.tsshSbb(req);
        return this.doCtrlAfter(res, response);		
	}
}
