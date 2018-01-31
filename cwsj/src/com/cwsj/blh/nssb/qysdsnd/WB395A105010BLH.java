package com.cwsj.blh.nssb.qysdsnd;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.cwsj.util.Const;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;


public class WB395A105010BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);

		HashMap A105010 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA105010", pageData);
		res.addForm("A105010form", A105010);
		
		res.addPage("nssb/qysdsnd/wb395_A105010");
		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A105010form=req.getForm("A105010form");    //修改form编号（2处）

		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().update("GxqysdsMapper.updateA105010", A105010form);   //修改form编号（2处）
        res.addMessage("保存成功");
		return res;
	}		
}
