package com.cwsj.blh.ysjgl;

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
import com.platform.tool.PlatformUtil;

public class SjpackageBLH  extends BaseBLH  {
	public BaseResponseEvent initSjpackage(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> listysj =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerrysjqy", USERID);
		res.addGrid("listysj", listysj);		
		res.addPage("ysjgl/sjpackage_list");
		return res;
	}
	public BaseResponseEvent initPackagenr(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		if("".equals(DJXH)||DJXH==null){
			DJXH=USERID;
		}
		String CWBBLX_DM=(String) req.getAttr("CWBBDL_DM");
		List<Map> listsjb =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerrysjpackage", DJXH);
		if(LSH==null||"".equals(LSH)){
			Map mapqyxx =(Map) BaseDAO.getInstance().findForObject("CommMapper.mapQuerryQyjbxx", DJXH);
			if(!"".equals(mapqyxx)&&mapqyxx!=null){
				CWBBLX_DM=(String) mapqyxx.get("CWBBLX_DM");
				DJXH=(String) mapqyxx.get("DJXH");				
			}
		}
		res.addObject("LSH", LSH);
		res.addObject("CWBBLX_DM", CWBBLX_DM);
		res.addObject("DJXH", DJXH);
		res.addGrid("listsjb", listsjb);
		res.addPage("ysjgl/sjpackagenr");
		return res;
	}
	/**
	 * 意见交换书初始化
	 * @param req
	 * @return
	 * @throws Exception
	 */
	public BaseResponseEvent yjjhqdInit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String CWBBLX_DM=(String) req.getAttr("CWBBDL_DM");	
		res.addPage("ysjgl/qyyjjhzlqd");
		return res;
	}
/**
 * 保存审计包
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent saveSjb(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO dao=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String DJXH=(String) req.getAttr("DJXH");
		List listsjb=req.getGrid("listsjb");
		BaseDAO.getInstance().delete("YsjglMapper.deleteSjb", DJXH);
		BaseDAO.getInstance().save("YsjglMapper.insertSjb", PlatformUtil.addGridcolvalue(listsjb, "DJXH", DJXH));
        res.addMessage("保存成功");
		return res;
	}		
}
