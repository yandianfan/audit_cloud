package com.cwsj.ctrl.nssb.qysdsnd;

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

import com.cwsj.service.nssb.qysdsnd.Wb395A108020Service;
import com.cwsj.service.nssb.qysdsnd.Wb395A108030Service;
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
@RequestMapping(value="/wb395A108030Ctrl")
public class Wb395A108030Ctrl extends BaseCtrl{
	@Resource(name="wb395A108030Service")
	private Wb395A108030Service service;
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

