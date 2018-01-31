package com.cwsj.ctrl.bggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.bggl.NstzbgService;
import com.cwsj.util.Const;
import com.cwsj.util.DateUtil;
import com.cwsj.vo.login.User;
import com.fh.controller.base.BaseController;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Controller
@RequestMapping(value="/nstzbgCtrl")
public class NstzbgCtrl  extends BaseCtrl {
	@Resource(name="nstzbgService")
	private NstzbgService nstzbgService;
	
	@RequestMapping(value="/init")
	public ModelAndView  init(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=nstzbgService.init(req);
        return this.doCtrlAfter(res, response);		
	}
	@RequestMapping(value="/initBgnr")	
	public ModelAndView initBgnr(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=nstzbgService.initBgnr(req);
        return this.doCtrlAfter(res, response);	
	}	
	@RequestMapping(value="/viewBgnr")	
	public ModelAndView viewBgnr(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=nstzbgService.viewBgnr(req);
        return this.doCtrlAfter(res, response);	
	}		
	@RequestMapping(value="/saveBgnr")		
	public ModelAndView saveBgnr(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=nstzbgService.saveBgnr(req);
        return this.doCtrlAfter(res, response);	
	}	
	@RequestMapping(value="/onDefalut")		
	public ModelAndView onDefalut(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=nstzbgService.onDefalut(req);
        return this.doCtrlAfter(res, response);	
	}
	@RequestMapping(value="/tsshBg")	
	public ModelAndView tsshBg(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=nstzbgService.tsshBg(req);
        return this.doCtrlAfter(res, response);	
	}	
}
