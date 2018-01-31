package com.cwsj.ctrl.ysjgl;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.ysjgl.GdzczjService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/gdzczjCtrl")
public class GdzczjCtrl    extends BaseCtrl {
	@Resource(name="gdzczjService")
	private GdzczjService gdzczjService;
	
	@RequestMapping(value="/initGdzc")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=gdzczjService.initGdzc(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveGdzc")
	public ModelAndView  saveGdzc(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=gdzczjService.saveGdzc(req);
        return this.doCtrlAfter(res, response);		
	}
}
