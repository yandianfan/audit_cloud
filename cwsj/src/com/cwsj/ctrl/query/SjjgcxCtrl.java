package com.cwsj.ctrl.query;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.cwsj.service.query.SjjgcxService;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Controller
@RequestMapping(value="/sjjgcxCtrl")
public class SjjgcxCtrl extends BaseCtrl  {
	@Resource(name="sjjgcxService")
	private SjjgcxService sjjgcxService;
	
	@RequestMapping(value="/initQysqxx")
	public ModelAndView  initrwxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjjgcxService.initQysqxx(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initKhsqxx")
	public ModelAndView  initKhsqxx(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjjgcxService.initKhsqxx(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/qyinit")
	public ModelAndView  qyinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjjgcxService.qyinit(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initQyZbsjsh")
	public ModelAndView  initQyZbsjsh(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjjgcxService.initQyZbsjsh(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/initQysjsj")
	public ModelAndView  initQysjsj(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjjgcxService.initQysjsj(req);
        return this.doCtrlAfter(res, response);		
	}
	
	@RequestMapping(value="/qysdsinit")
	public ModelAndView  qysdsinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=sjjgcxService.qysdsinit(req);
        return this.doCtrlAfter(res, response);		
	} 

}
