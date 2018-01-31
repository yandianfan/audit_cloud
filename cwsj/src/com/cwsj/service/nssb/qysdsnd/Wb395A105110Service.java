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

@Service("wb395A105110Service")
public class Wb395A105110Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		res.addObject("PZXH", pzxh);

		HashMap A105110 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA105110", pageData);
		res.addForm("A105110form", A105110);
		
		List<Map> gglxcselect =(List<Map>) dao.findForList("QysdsndMapper.selectQuerryGglx", null);
		res.addSelect("GGLX", gglxcselect);
		
		res.addPage("nssb/qysdsnd/wb395_A105110");
		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A105110form=req.getForm("A105110form");    //修改form编号（2处）

		dao.update("GxqysdsMapper.updateA105110a", A105110form);   //修改form编号（2处）
		dao.update("GxqysdsMapper.updateA105110b", A105110form);   //修改form编号（2处）
        res.addMessage("保存成功");
		return res;
	}	
}
