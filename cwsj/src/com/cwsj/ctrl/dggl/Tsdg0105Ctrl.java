package com.cwsj.ctrl.dggl;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.dggl.Tsdg0105Service;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.tool.PlatformUtil;
@Controller
@RequestMapping(value="/tsdg0105Ctrl")
public class Tsdg0105Ctrl extends BaseCtrl{
	@Resource(name="tsdg0105Service")
	private Tsdg0105Service service;
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
