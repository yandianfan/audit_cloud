package com.cwsj.service.ysjgl;

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
import com.platform.tool.PlatformUtil;
@Service("gdzczjService")
public class GdzczjService{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent initGdzc(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		Map jcsxform =(Map) dao.findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
		jcsxform.put("SSQZ", jcsxform.get("SSSQ")+"-12-31");
		List<Map> listgdzc =(List<Map>) dao.findForList("YsjglMapper.listQuerryGdzczj", jcsxform);
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
		String LSH=(String) req.getAttr("LSH");
		List listgdzc=req.getGrid("listgdzc");
		dao.batchSave("YsjglMapper.insertGdzc", PlatformUtil.addGridcolvalue(listgdzc,"LSH",LSH));
        res.addMessage("保存成功");
		return res;
	}
}
