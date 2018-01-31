package com.cwsj.ctrl.dggl;

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

import com.cwsj.service.dggl.Tsdg0101Service;
import com.cwsj.service.dggl.Tsdg0102Service;
import com.cwsj.util.Const;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
import com.platform.tool.PlatformUtil;
@Controller
@RequestMapping(value="/tsdg0102Ctrl")
public class Tsdg0102Ctrl extends BaseCtrl{
	@Resource(name="tsdg0102Service")
	private Tsdg0102Service service;
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
