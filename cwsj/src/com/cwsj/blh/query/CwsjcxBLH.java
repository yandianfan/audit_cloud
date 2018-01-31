package com.cwsj.blh.query;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class CwsjcxBLH  extends BaseBLH  {
	public BaseResponseEvent initQyjcxxcx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjd_id=user.getZZJG_ID();
		Map demap=new HashMap();
		demap.put("QYMC", "");
		demap.put("zzjd_id", zzjd_id);
		List<Map> listysj =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryqyjbxx", demap);
		res.addGrid("listqyxx", listysj);		
		res.addPage("query/qyxxcx");
		return res;
	}
	
	public BaseResponseEvent cxQyjcxxcx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjd_id=user.getZZJG_ID();
		String QYMC=(String) req.getAttr("QYMC");
		Map demap=new HashMap();
		demap.put("QYMC", QYMC);
		demap.put("zzjd_id", zzjd_id);
		List<Map> listysj =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryqyjbxx", demap);
		res.addGrid("listqyxx", listysj);		
		return res;
	}
}
