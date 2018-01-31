package com.cwsj.blh.query;

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
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class SjjgcxBLH extends BaseBLH  {
	public BaseResponseEvent initQysqxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> listsqxx=(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerryQysqxx", USERID);  
		res.addGrid("listCursqxx", listsqxx);	
		res.addPage("query/Sjjgcx_list");
		return res;	
	}
	
	public BaseResponseEvent initKhsqxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> listysj =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerrysjqy", USERID);
		res.addGrid("listCursqxx", listysj);	
		res.addPage("query/Sjjgcx_list");
		return res;	
	}
	
	public BaseResponseEvent qyinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> listysj =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerryQysqxx", USERID);
		res.addGrid("listysj", listysj);		
		res.addPage("query/sjxxlist");
		return res;
	}
	
	
	public BaseResponseEvent initQyZbsjsh(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String SSSQ=(String) req.getAttr("SSSQ");
		Map qyjbxx =(HashMap) BaseDAO.getInstance().findForObject("ZbjgrwMapper.listQuerryRwjbxx", LSH);
		
		Map jcsxform =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.listQuerryRwjbxx", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		if(jcsxform!=null){
			String XZQHSZ_DM=(String) jcsxform.get("XZQHSZ_DM");
			List<Map> jdxzSelect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
			res.addSelect("jdxzSelect", jdxzSelect); 			
		}
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> sbblist =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrytssbb", LSH);
		res.addObject("sbblist", sbblist);	
		//List<Map> listzb =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryfxxx", LSH);
		List<Map> listzb =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryzdbgqy", LSH);
		res.addGrid("listzb", listzb);
		Map dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "01");
		List<Map> listzhdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);
		res.addGrid("listzhdg", listzhdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "02");
		List<Map> listywdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywdg", listywdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "03");
		List<Map> listywjgdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywjgdg", listywjgdg);	
		Map formmap =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.queryBgzt", dgmap);
		res.addObject("tsshbj", formmap.get("tsshbj"));
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addPage("query/zbsjsh_qylist");
		return res;
	}		
	public BaseResponseEvent initQysjsj(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String SSSQ=(String) req.getAttr("SSSQ");
		Map qyjbxx =(HashMap) BaseDAO.getInstance().findForObject("ZbjgrwMapper.listQuerryRwjbxx", LSH);
		String PZ_XH="";
		if("".equals(qyjbxx)||qyjbxx==null){
			PZ_XH=XtbmUtil.getPzxh(DJXH, "10104",SSSQ);
			qyjbxx=new HashMap();
			qyjbxx.put("LRRYDM", USERID);
			qyjbxx.put("LSH",LSH);
			qyjbxx.put("DJXH",DJXH);
			qyjbxx.put("ZZJG_ID",user.getZZJG_ID());
			BaseDAO.getInstance().save("ZbjgrwMapper.insertRwjbxx", qyjbxx);						
			qyjbxx.put("PZ_XH",PZ_XH);
			BaseDAO.getInstance().save("ZbjgrwMapper.insertSbb", qyjbxx);
		}else{
			Map sbbqkxx =(HashMap) BaseDAO.getInstance().findForObject("ZbjgrwMapper.listQuerrySbb", LSH);
			if("".equals(sbbqkxx)||sbbqkxx==null){
				sbbqkxx=new HashMap();
				PZ_XH=XtbmUtil.getPzxh(DJXH, "10104",SSSQ);
				sbbqkxx.put("LRRYDM", USERID);			
				sbbqkxx.put("LSH",LSH);
				sbbqkxx.put("PZ_XH",PZ_XH);
				BaseDAO.getInstance().save("ZbjgrwMapper.insertSbb", sbbqkxx);			
			}
		}	
		
		Map jcsxform =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.listQuerryRwjbxx", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		if(jcsxform!=null){
			String XZQHSZ_DM=(String) jcsxform.get("XZQHSZ_DM");
			List<Map> jdxzSelect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
			res.addSelect("jdxzSelect", jdxzSelect); 			
		}
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> sbblist =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrytssbb", LSH);
		res.addObject("sbblist", sbblist);	
		//List<Map> listzb =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryfxxx", LSH);
		List<Map> listzb =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryzdbg", LSH);
		res.addGrid("listzb", listzb);
		Map dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "01");
		List<Map> listzhdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);
		res.addGrid("listzhdg", listzhdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "02");
		List<Map> listywdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywdg", listywdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "03");
		List<Map> listywjgdg =(List<Map>) BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywjgdg", listywjgdg);			
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addPage("query/Qysjsj_list");
		return res;
	}	
	
	public BaseResponseEvent Qysdsinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzxh");
		pageData.put("PZ_XH", pzxh);
		HashMap qyjbxx =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.listQuerrySbbqk", pageData);
		res.addObject("qyjbxx", qyjbxx);
		List<Map> ksbList =(List<Map>) BaseDAO.getInstance().findForList("QysdsndMapper.listQuerrksb", pzxh);
		res.addObject("ksbList", ksbList);
		res.addPage("nssb/qysdsnd/qysdsCx");
		return res;
	}  

}
