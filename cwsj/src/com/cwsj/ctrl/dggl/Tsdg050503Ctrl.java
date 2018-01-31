package com.cwsj.ctrl.dggl;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.dggl.Tsdg050503Service;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/tsdg050503Ctrl")
public class Tsdg050503Ctrl extends BaseCtrl{
	@Resource(name="tsdg050503Service")
	private Tsdg050503Service service;
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
}
