package com.cwsj.blh.rwts;

import java.util.ArrayList;
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

public class rwfpBLH extends BaseBLH{
	public BaseResponseEvent rwfpinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjgId=user.getZZJG_ID();
		Map param=new HashMap();
		param.put("userId", USERID);
		param.put("zzjgId", zzjgId);
		List<Map> fpList =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRwfp", param);
		res.addGrid("fpList", fpList);	
		res.addPage("rwts/sjrwfp");
		return res;
	}
	
	public BaseResponseEvent querry(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map cxtjform=req.getForm("cxtjform");
		List<Map> fpList =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRwfp", cxtjform);
		res.addGrid("fpList", fpList);
		return res;
	}	
	
	public BaseResponseEvent ryinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String gwSelectedvalue=(String) req.getAttr("gwSelectedvalue");
		String jgSelectedvalue=(String) req.getAttr("jgSelectedvalue");
		HashMap param=new HashMap();
		param.put("jgSelectedvalue", jgSelectedvalue);
		param.put("gwSelectedvalue", gwSelectedvalue);
		List<Map> ryselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRyByjggw", param);
		Map tmpMap=new HashMap();
		tmpMap.put("code", "");
		tmpMap.put("caption", "选择");
		List<Map> rytmpSelect=new ArrayList();
		rytmpSelect.add(tmpMap);	
		rytmpSelect.addAll(ryselect);
		res.addSelect("ryselect", rytmpSelect);	
		return res;
	}	
	
	public BaseResponseEvent fpryinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String lsh=(String) req.getAttr("LSH");
		List<Map> zzjgselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryZzjg", null);
		res.addSelect("zzjgselect", zzjgselect);
		List<Map> gwselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryGw", null);
		res.addSelect("gwselect", gwselect);
		HashMap param=new HashMap();
		param.put("jgSelectedvalue", zzjgselect.get(0).get("code"));
		param.put("gwSelectedvalue", gwselect.get(0).get("code"));
		List<Map> ryselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRyByjggw", param);
		res.addSelect("ryselect", ryselect);	
		res.addObject("lsh", lsh);
		res.addPage("rwts/rwfp_jggwry");
		return res;
	}	
	
	public BaseResponseEvent selectryinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String lsh=(String) req.getAttr("LSH");
		List<Map> zzjgselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryZzjg", null);
		res.addSelect("zzjgselect", zzjgselect);
		List<Map> gwselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryGw", null);
		res.addSelect("gwselect", gwselect);
		HashMap param=new HashMap();
		param.put("jgSelectedvalue", zzjgselect.get(0).get("code"));
		param.put("gwSelectedvalue", gwselect.get(0).get("code"));
		List<Map> ryselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRyByjggw", param);
		res.addSelect("ryselect", ryselect);	
		res.addObject("lsh", lsh);
		res.addPage("rwts/ryxz_jggwry");
		return res;
	}	
	
	public BaseResponseEvent dginit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		Map dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "02");
		List<Map> listywdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywdg", listywdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "03");
		List<Map> listywjgdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywjgdg", listywjgdg);	
		res.addPage("rwts/dgselect");
		return res;
	}
	public BaseResponseEvent rwfp(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String lsh=(String) req.getAttr("lsh");
		String rydm=(String) req.getAttr("rydm");
		String zzjgdm=(String) req.getAttr("zzjgdm");
		HashMap param=new HashMap();
		param.put("lsh", lsh);
		param.put("rydm", rydm);
		param.put("zzjgdm", zzjgdm);
		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().update("GzlXMapper.updateRwfp", param);
		BaseDAO.getInstance().save("YsjglMapper.insertBzsjx", param);
        res.addMessage("分配成功");
		return res;
	}
	
	public BaseResponseEvent selectTsry(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LCSLH=(String) req.getAttr("LCSLH");
		String LSH=(String) req.getAttr("LSH");
		String YWLC_DM=(String) req.getAttr("YWLC_DM");
		String YWHJ_DM=(String) req.getAttr("YWHJ_DM");
		String DJXH=(String) req.getAttr("DJXH");
		Map params=new HashMap();
		params.put("LCSLH", LCSLH);
		params.put("YWLC_DM", YWLC_DM);
		List<Map> gzllclist =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryYwhj", params);
		res.addObject("gzllclist", gzllclist);
		Map gzlslmap =(Map) BaseDAO.getInstance().findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
		if(gzlslmap!=null){
			Map lasthjmap=(Map) BaseDAO.getInstance().findForObject("GzlXMapper.listQuerryLasthj", YWLC_DM);
			String lasthj=(String) lasthjmap.get("LASTHJ");
			String LCHJ_DM=(String) gzlslmap.get("LCHJ_DM");
			if(lasthj.equals(YWHJ_DM)){
				res.addPage("rwts/gzlend");
				return res;
			}else{
				YWHJ_DM=(String) gzlslmap.get("YWHJ_DM");
			}
		}
//		if("".equals(YWHJ_DM)||YWHJ_DM==null){					
//			if(gzlslmap==null){
//				YWHJ_DM="1";
//			}else{
//				YWHJ_DM=(String) gzlslmap.get("YWHJ_DM");
//				YWHJ_DM=String.valueOf(Integer.parseInt(YWHJ_DM)+1);
//			}
//		}
		List<Map> zzjgselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryZzjg", null);
		res.addSelect("zzjgselect", zzjgselect);
		List<Map> gwselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryGw", null);
		res.addSelect("gwselect", gwselect);
		HashMap param=new HashMap();
		param.put("jgSelectedvalue", zzjgselect.get(0).get("code"));
		param.put("gwSelectedvalue", gwselect.get(0).get("code"));
		List<Map> ryselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRyByjggw", param);
		res.addSelect("ryselect", ryselect);	
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addObject("YWLC_DM", YWLC_DM);
		res.addObject("YWHJ_DM", YWHJ_DM);
		res.addObject("DJXH", DJXH);
		res.addPage("rwts/gzlryselect");
		return res;
	}
	
/**
 * 工作流任务分配推送	
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent rwrgfp(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		if("".equals(LSH)){
			res.addMessage("流水号不能为空");
			return res;
		}
		String YWLC_DM=(String) req.getAttr("YWLC_DM");
		String YWHJ_DM=(String) req.getAttr("YWHJ_DM");
		String rydm=(String) req.getAttr("rydm");
		String zzjgdm=(String) req.getAttr("zzjgdm");
		if("".equals(LCSLH)||LCSLH==null){
			LCSLH=XtbmUtil.getXtnumberbm();
		}
		String DJXH=(String) req.getAttr("DJXH");
		String QYMC=(String) req.getAttr("QYMC");
		PersistenceDAO dao=this.getPersistenceDAO();
		Map qyjbxxmap=(Map) BaseDAO.getInstance().findForObject("GzlXMapper.QuerryQyjbxx", DJXH);
		if(qyjbxxmap!=null){
			QYMC=(String) qyjbxxmap.get("QYMC");
		}		
		HashMap param=new HashMap();
		param.put("LSH", LSH);
		param.put("LCSLH", LCSLH);
		param.put("SLRY_DM", rydm);
		param.put("YWLC_DM", YWLC_DM);
		param.put("YWHJ_DM", YWHJ_DM);
		param.put("ZZJGDM", zzjgdm);
		param.put("DJXH", DJXH);
		param.put("QYMC", QYMC);
		param.put("LRRY_DM", USERID);
		param.put("TSRY_DM", USERID);
		Map slmap=(Map) BaseDAO.getInstance().findForObject("GzlXMapper.listQuerryLcslxx", LCSLH);
		YWHJ_DM=(String) slmap.get("YWHJ_DM");
		Map lasthjmap=(Map) BaseDAO.getInstance().findForObject("GzlXMapper.listQuerryLasthj", YWLC_DM);
		String lasthj=(String) lasthjmap.get("LASTHJ");
		if(lasthj.equals(YWHJ_DM)){
			res.addMessage("该流程已经结束，无法重复提交!");
			return res;
		}		
		if(slmap!=null&&YWHJ_DM!=null){		  
		  if(lasthj.equals(YWHJ_DM)){
			  param.put("lastHj", lasthj);
			  BaseDAO.getInstance().save("GzlXMapper.endLcslxx", param);	
			  BaseDAO.getInstance().save("GzlXMapper.insertEndLzxx", param);
		  }else{		
			  YWHJ_DM=String.valueOf(Integer.parseInt(YWHJ_DM)+1);
			  param.put("YWHJ_DM", YWHJ_DM);
			  BaseDAO.getInstance().save("GzlXMapper.sendLcslxx", param);	
			  Map XHmap=(Map) BaseDAO.getInstance().findForObject("GzlXMapper.QuerryLzxxXh", LCSLH);
			  if("".equals(XHmap.get("XH"))||XHmap.get("XH")==null){
				  param.put("XH",0); 
			  }else{
				  param.put("XH", XHmap.get("XH"));
			  }		
			  BaseDAO.getInstance().save("GzlXMapper.insertEndLzxx", param);
			  BaseDAO.getInstance().save("GzlXMapper.insertLzxx", param);
		  }		
		}else{
			BaseDAO.getInstance().save("GzlXMapper.insertLcslxx", param);
			BaseDAO.getInstance().save("GzlXMapper.insertLzxx2", param);
		}
        res.addMessage("分配成功");
		return res;
	}	
}
