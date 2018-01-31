package com.cwsj.ctrl.ysjgl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.ysjgl.QyjcxxService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/qyjcxxCtrl")
public class QyjcxxCtrl extends BaseCtrl {	
	@Resource(name="qyjcxxService")
	private QyjcxxService qyjcxxService;
	
	@RequestMapping(value="/jcxxInit")
	public ModelAndView  jcxxInit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=qyjcxxService.jcxxInit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/jcxxcxInit")
	public ModelAndView  jcxxcxInit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=qyjcxxService.jcxxcxInit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveJcxx")
	public ModelAndView  saveJcxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=qyjcxxService.saveJcxx(req);
        return this.doCtrlAfter(res, response);		
	}
}
