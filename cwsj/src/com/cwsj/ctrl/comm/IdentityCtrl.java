package com.cwsj.ctrl.comm;

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
import com.cwsj.service.comm.IdentityService;
import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Controller
@RequestMapping(value="/identityCtrl")
public class IdentityCtrl   extends BaseCtrl{
	@Resource(name="identityService")
	private IdentityService identityService;

	@RequestMapping(value="/confirmIdentity")
	public ModelAndView  confirmIdentity(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=identityService.confirmIdentity(req);
        return this.doCtrlAfter(res, response);		
	}
}
