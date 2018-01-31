package com.cwsj.blh.ysjgl;

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
import com.platform.tool.PlatformUtil;

public class GdzczjBLH    extends BaseBLH {
	public BaseResponseEvent initGdzc(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		Map jcsxform =(Map) BaseDAO.getInstance().findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
		jcsxform.put("SSQZ", jcsxform.get("SSSQ")+"-12-31");
		List<Map> listgdzc =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerryGdzczj", jcsxform);
		res.addGrid("listgdzc", listgdzc);	
		res.addObject("LSH", LSH);
		res.addPage("ysjgl/gdzc");
		return res;
	}
	
	public BaseResponseEvent saveGdzc(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String LSH=(String) req.getAttr("LSH");
		List listgdzc=req.getGrid("listgdzc");
		BaseDAO.getInstance().batchSave("YsjglMapper.insertGdzc", PlatformUtil.addGridcolvalue(listgdzc,"LSH",LSH));
        res.addMessage("保存成功");
		return res;
	}
}
