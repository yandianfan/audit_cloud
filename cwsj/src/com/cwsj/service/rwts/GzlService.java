package com.cwsj.service.rwts;

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
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

@Service("gzlService")
public class GzlService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent initrwxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> dbList =(List<Map>) dao.findForList("GzlXMapper.listQuerryGzldbrw", USERID);
		res.addObject("dbList", dbList);
		List<Map> zbList =(List<Map>) dao.findForList("GzlXMapper.listQuerryGzlzbrw", USERID);
		res.addObject("zbList", zbList);
		List<Map> wwcList =(List<Map>) dao.findForList("GzlXMapper.listQuerryGzlwwcrw", USERID);
		res.addObject("wwcList", wwcList);
		List<Map> ywcList =(List<Map>) dao.findForList("GzlXMapper.listQuerryGzlywcrw", USERID);
		res.addObject("ywcList", ywcList);		
		res.addPage("rwts/gzl_list");
		return res;
	}
	
	public BaseResponseEvent openGzl(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String LSH=(String) req.getAttr("LSH");
		Map dbmap =(Map) dao.findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
		if(!"1".equals(dbmap.get("BJ_BJ"))&&dbmap.get("BJ_BJ")!="1"){
			Map XHmap=(Map) dao.findForObject("GzlXMapper.QuerryLzxxXh", LCSLH);			  
			Map param=new HashMap();
			param.put("XH", XHmap.get("XH"));
			param.put("LCSLH", LCSLH);
			param.put("SLRY_DM", USERID);
			dao.save("GzlXMapper.openLcslxx", param);		
		}	
		Map lcljmap =(Map) dao.findForObject("GzlXMapper.QuerryLclj", dbmap);
		String lclj=(String) lcljmap.get("LCLJ");
		res.addObject("LCLJ", lclj);
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addObject("BJBJ", dbmap.get("BJ_BJ"));
		return res;
	}	
	public BaseResponseEvent determineEnd(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String LSH=(String) req.getAttr("LSH");
		String YWLC_DM=(String) req.getAttr("YWLC_DM");
		String YWHJ_DM=(String) req.getAttr("YWHJ_DM");
		Map gzlslmap =(Map) dao.findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
		if(gzlslmap!=null){
			YWHJ_DM=(String) gzlslmap.get("YWHJ_DM");
			Map lasthjmap=(Map) dao.findForObject("GzlXMapper.listQuerryLasthj", YWLC_DM);
			String lasthj=(String) lasthjmap.get("LASTHJ");
			if(lasthj.equals(YWHJ_DM)){
				gzlslmap.put("lastHj", lasthj);
				gzlslmap.put("SLRY_DM", USERID);
			    dao.save("GzlXMapper.endLcslxx", gzlslmap);	
			    dao.save("GzlXMapper.insertEndLzxx", gzlslmap);
				res.addPage("rwts/gzlend");
				return res;
			}
		}
		return res;
	}	
	public BaseResponseEvent viewLcxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LCSLH=(String) req.getAttr("LCSLH");
		Map gzlslmap =(Map) dao.findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
		if(gzlslmap!=null){
			String YWHJ_DM=(String) gzlslmap.get("YWHJ_DM");
			String YWLC_DM=(String) gzlslmap.get("YWLC_DM");
			String BJBJ=(String) gzlslmap.get("BJ_BJ");
			Map lasthjmap=(Map) dao.findForObject("GzlXMapper.listQuerryLasthj", YWLC_DM);
			String lasthj=(String) lasthjmap.get("LASTHJ");
			res.addObject("YWLC_DM", YWLC_DM);
			res.addObject("YWHJ_DM", YWHJ_DM);
			if("1".equals(BJBJ)){
                res.addObject("BJBJ", 1);
			}else{
				res.addObject("BJBJ", 0);
			}
		}
		return res;
	}
}
