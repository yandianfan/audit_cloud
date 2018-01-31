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

public class WB395A105060BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		res.addObject("PZXH", pzxh);
		
		HashMap A105060 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA105060", pageData);
		res.addForm("A105060form", A105060);
		
		List<Map> kclselect =(List<Map>) BaseDAO.getInstance().findForList("QysdsndMapper.selectQuerryKcl", null);
		res.addSelect("KCL", kclselect);		
		
		res.addPage("nssb/qysdsnd/wb395_A105060");
		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A105060form=req.getForm("A105060form");   

		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().update("GxqysdsMapper.updateA105060", A105060form);  
        res.addMessage("保存成功");
		return res;
	}	
}
