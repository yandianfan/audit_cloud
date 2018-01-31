package com.cwsj.ctrl.comm;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cwsj.service.bggl.NstzbgService;
import com.cwsj.service.comm.DmbService;
import com.fh.controller.base.BaseController;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.ctrl.BaseCtrl;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

@Controller
@RequestMapping(value="/dmbCtrl")
public class DmbCtrl   extends BaseCtrl{
	
	@Resource(name="dmbService")
	private DmbService dmbService;
	@RequestMapping(value="/ckJdxz")
	public ModelAndView  ckJdxz(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BaseRequestEvent req=this.doCtrlBefore(request);	
		BaseResponseEvent res=dmbService.ckJdxz(req);
        return this.doCtrlAfter(res, response);		
	}
}
