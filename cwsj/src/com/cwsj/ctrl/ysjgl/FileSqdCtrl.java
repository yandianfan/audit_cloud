package com.cwsj.ctrl.ysjgl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.bggl.NstzbgService;
import com.cwsj.service.ysjgl.FileSqdService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/fileSqdCtrl")
public class FileSqdCtrl   extends BaseCtrl {
	@Resource(name="fileSqdService")
	private FileSqdService fileSqdService;
	
	@RequestMapping(value="/initFileupload")
	public ModelAndView  initFileupload(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=fileSqdService.initFileupload(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initFiledownload")
	public ModelAndView  initFiledownload(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=fileSqdService.initFiledownload(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/saveSqd")
	public ModelAndView  saveSqd(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=fileSqdService.saveSqd(req);
        return this.doCtrlAfter(res, response);		
	}
}
