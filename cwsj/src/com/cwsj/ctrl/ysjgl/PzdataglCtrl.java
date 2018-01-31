package com.cwsj.ctrl.ysjgl;

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

import com.cwsj.service.ysjgl.GdzczjService;
import com.cwsj.service.ysjgl.PzdataglService;
import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Controller
@RequestMapping(value="/pzdataglCtrl")
public class PzdataglCtrl   extends BaseCtrl {
	@Resource(name="pzdataglService")
	private PzdataglService pzdataglService;
	
	@RequestMapping(value="/initSjqy")
	public ModelAndView  initSjqy(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=pzdataglService.initSjqy(req);
        return this.doCtrlAfter(res, response);		
	}
	@RequestMapping(value="/cxpageinit")
	public ModelAndView  cxpageinit(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=pzdataglService.cxpageinit(req);
        return this.doCtrlAfter(res, response);		
	}
}
