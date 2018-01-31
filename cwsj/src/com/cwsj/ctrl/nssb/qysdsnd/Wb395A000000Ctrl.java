package com.cwsj.ctrl.nssb.qysdsnd;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.nssb.qysdsnd.Wb395A000000Service;

import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/wb395A000000Ctrl")
public class Wb395A000000Ctrl extends BaseCtrl{
	
	@Resource(name="wb395A000000Service")
	private Wb395A000000Service service;
	
	@RequestMapping(value="/queryData")
	public ModelAndView  queryData(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.queryData(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/update")
	public ModelAndView  update(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=service.update(req);
        return this.doCtrlAfter(res, response);		
	}
}
