package com.cwsj.service.nssb.qysdsnd;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("wb395A100000Service")
public class Wb395A100000Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");  //可以获取地址链接里面的参数
		pageData.put("pz_xh", pzxh); 	
		
		HashMap a100000 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA100000", pageData);
		res.addForm("A100000form", a100000);	
	    
		HashMap bta100000 =(HashMap) dao.findForObject("QysdsndMapper.formbtA100000", pageData);
		res.addObject("A100000", bta100000);
		
		res.addPage("nssb/qysdsnd/wb395_A100000");
		return res;
	}  
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A100000form=req.getForm("A100000form");

		dao.update("GxqysdsMapper.updateA100000", A100000form);
        res.addMessage("保存成功");
		return res;
	}
	
	
}
