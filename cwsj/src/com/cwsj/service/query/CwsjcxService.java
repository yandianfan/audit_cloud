package com.cwsj.service.query;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("cwsjcxService")
public class CwsjcxService  {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent initQyjcxxcx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjd_id=user.getZZJG_ID();
		Map demap=new HashMap();
		demap.put("QYMC", "");
		demap.put("zzjd_id", zzjd_id);
		List<Map> listysj =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryqyjbxx", demap);
		res.addGrid("listqyxx", listysj);		
		res.addPage("query/qyxxcx");
		return res;
	}
	
	public BaseResponseEvent cxQyjcxxcx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjd_id=user.getZZJG_ID();
		String QYMC=(String) req.getAttr("QYMC");
		Map demap=new HashMap();
		demap.put("QYMC", QYMC);
		demap.put("zzjd_id", zzjd_id);
		List<Map> listysj =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryqyjbxx", demap);
		res.addGrid("listqyxx", listysj);		
		return res;
	}
}
