package com.cwsj.ctrl.query;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.query.CwsjcxService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Controller
@RequestMapping(value="/cwsjcxCtrl")
public class CwsjcxCtrl  extends BaseCtrl  {
	@Resource(name="cwsjcxService")
	private CwsjcxService cwsjcxService;
	
	@RequestMapping(value="/initQyjcxxcx")
	public ModelAndView  initQyjcxxcx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=cwsjcxService.initQyjcxxcx(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/cxQyjcxxcx")
	public ModelAndView  cxQyjcxxcx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=cwsjcxService.cxQyjcxxcx(req);
        return this.doCtrlAfter(res, response);		
	}	
}
