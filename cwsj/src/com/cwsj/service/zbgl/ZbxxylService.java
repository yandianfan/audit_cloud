package com.cwsj.service.zbgl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.ZTreeVO;

@Service("zbxxylService")
public class ZbxxylService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> sjxdlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxdl", null);
		res.addSelect("sjxdlSelect", sjxdlList);
		List<Map> sjxxlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxxl", null);
		res.addSelect("sjxxlSelect", sjxxlList);
		List<Map> listysj =(List<Map>) dao.findForList("YsjglMapper.listQuerrysjqy", USERID);
		res.addGrid("listysj", listysj);		
		res.addPage("zbgl/zbxxyl_list");
		return res;
	}
/**
 * 审计调整查询	
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent initQyth(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> sjxdlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxdl", null);
		res.addSelect("sjxdlSelect", sjxdlList);
		List<Map> sjxxlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxxl", null);
		res.addSelect("sjxxlSelect", sjxxlList);
		List<Map> listysj =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryqyTh", USERID);
		res.addGrid("listysj", listysj);		
		res.addPage("zbgl/zbxxyltz_list");
		return res;
	}
/**
 * 初始化指标数据审核		
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent initZbsjsh(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String SSSQ=(String) req.getAttr("SSSQ");
		String BJBJ=(String)req.getAttr("BJBJ");
		Map qyjbxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerryRwjbxx", LSH);
		String PZ_XH="";
		if("".equals(qyjbxx)||qyjbxx==null||"".equals(qyjbxx.get("DJXH"))||qyjbxx.get("DJXH")==null){
			PZ_XH=XtbmUtil.getPzxh(DJXH, "10104",SSSQ);
			qyjbxx=new HashMap();
			qyjbxx.put("LRRYDM", USERID);
			qyjbxx.put("LSH",LSH);
			qyjbxx.put("DJXH",DJXH);
			qyjbxx.put("ZZJG_ID",user.getZZJG_ID());
			dao.save("ZbjgrwMapper.insertRwjbxx", qyjbxx);						
			qyjbxx.put("PZ_XH",PZ_XH);
			dao.save("ZbjgrwMapper.insertSbb", qyjbxx);
		}else{
			Map sbbqkxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerrySbb", LSH);
			if("".equals(sbbqkxx)||sbbqkxx==null||"".equals(sbbqkxx.get("DJXH"))||sbbqkxx.get("DJXH")==null){
				sbbqkxx=new HashMap();
				PZ_XH=XtbmUtil.getPzxh(DJXH, "10104",SSSQ);
				sbbqkxx.put("LRRYDM", USERID);			
				sbbqkxx.put("LSH",LSH);
				sbbqkxx.put("PZ_XH",PZ_XH);
				dao.save("ZbjgrwMapper.insertSbb", sbbqkxx);			
			}
		}	
		
		Map jcsxform =(Map) dao.findForObject("SjsjtsMapper.listQuerryRwjbxx", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		if(jcsxform!=null&&!"".equals(jcsxform.get("DJXH"))&&jcsxform.get("DJXH")!=null){
			String XZQHSZ_DM=(String) jcsxform.get("XZQHSZ_DM");
			List<Map> jdxzSelect =(List<Map>) dao.findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
			res.addSelect("jdxzSelect", jdxzSelect); 			
		}
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> sbblist =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrysbb", LSH);
		res.addObject("sbblist", sbblist);	
		//List<Map> listzb =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryfxxx", LSH);
		List<Map> listzb =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryzdbg", LSH);
		res.addGrid("listzb", listzb);
		Map dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "01");
		List<Map> listzhdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);
		res.addGrid("listzhdg", listzhdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "02");
		List<Map> listywdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywdg", listywdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "03");
		List<Map> listywjgdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywjgdg", listywjgdg);
		List<Map> listtydg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrytydg", dgmap);		
		res.addGrid("listtydg", listtydg);	
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addObject("BJBJ", BJBJ);
		res.addPage("zbgl/zbsjsh_list");
		return res;
	}	
/**
 * 初始化指标数据调整	
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent initZbsjtz(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String SSSQ=(String) req.getAttr("SSSQ");
		String BJBJ=(String)req.getAttr("BJBJ");
		Map qyjbxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerryRwjbxx", LSH);
		String PZ_XH="";
		Map sbbqkxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerrySbb", LSH);
		
		Map jcsxform =(Map) dao.findForObject("SjsjtsMapper.listQuerryRwjbxx", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		if(jcsxform!=null&&!"".equals(jcsxform.get("DJXH"))&&jcsxform.get("DJXH")!=null){
			String XZQHSZ_DM=(String) jcsxform.get("XZQHSZ_DM");
			List<Map> jdxzSelect =(List<Map>) dao.findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
			res.addSelect("jdxzSelect", jdxzSelect); 			
		}
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> sbblist =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrysbb", LSH);
		res.addObject("sbblist", sbblist);	
		//List<Map> listzb =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryfxxx", LSH);
		List<Map> listzb =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryzdbg", LSH);
		res.addGrid("listzb", listzb);
		Map dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "01");
		List<Map> listzhdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);
		res.addGrid("listzhdg", listzhdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "02");
		List<Map> listywdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywdg", listywdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "03");
		List<Map> listywjgdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);		
		res.addGrid("listywjgdg", listywjgdg);		
		List<Map> listtydg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrytydg", dgmap);		
		res.addGrid("listtydg", listtydg);	
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addObject("BJBJ", BJBJ);
		res.addPage("zbgl/zbsjtz_list");
		return res;
	}
/**
 * 审计成员查看的审计结果信息，审计小组成员	
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent initSjcyZbsjsh(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String LCSLH=(String) req.getAttr("LCSLH");
		String DJXH=(String) req.getAttr("DJXH");
		String SSSQ=(String) req.getAttr("SSSQ");
		String BJBJ=(String)req.getAttr("BJBJ");
		Map qyjbxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerryRwjbxx", LSH);
		String PZ_XH="";
		if("".equals(qyjbxx)||qyjbxx==null||"".equals(qyjbxx.get("DJXH"))||qyjbxx.get("DJXH")==null){
			PZ_XH=XtbmUtil.getPzxh(DJXH, "10104",SSSQ);
			qyjbxx=new HashMap();
			qyjbxx.put("LRRYDM", USERID);
			qyjbxx.put("LSH",LSH);
			qyjbxx.put("DJXH",DJXH);
			qyjbxx.put("ZZJG_ID",user.getZZJG_ID());
			dao.save("ZbjgrwMapper.insertRwjbxx", qyjbxx);						
			qyjbxx.put("PZ_XH",PZ_XH);
			dao.save("ZbjgrwMapper.insertSbb", qyjbxx);
		}else{
			Map sbbqkxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerrySbb", LSH);
			if("".equals(sbbqkxx)||sbbqkxx==null||"".equals(sbbqkxx.get("DJXH"))||sbbqkxx.get("DJXH")==null){
				sbbqkxx=new HashMap();
				PZ_XH=XtbmUtil.getPzxh(DJXH, "10104",SSSQ);
				sbbqkxx.put("LRRYDM", USERID);			
				sbbqkxx.put("LSH",LSH);
				sbbqkxx.put("PZ_XH",PZ_XH);
				dao.save("ZbjgrwMapper.insertSbb", sbbqkxx);			
			}
		}	
		
		Map jcsxform =(Map) dao.findForObject("SjsjtsMapper.listQuerryRwjbxx", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		if(jcsxform!=null&&!"".equals(jcsxform.get("DJXH"))&&jcsxform.get("DJXH")!=null){
			String XZQHSZ_DM=(String) jcsxform.get("XZQHSZ_DM");
			List<Map> jdxzSelect =(List<Map>) dao.findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
			res.addSelect("jdxzSelect", jdxzSelect); 			
		}
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> sbblist =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrysbb", LSH);
		res.addObject("sbblist", sbblist);	
		//List<Map> listzb =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryfxxx", LSH);
		List<Map> listzb =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryzdbg", LSH);
		res.addGrid("listzb", listzb);
		Map dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "01");
		dgmap.put("userId", USERID);
		List<Map> listzhdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdg", dgmap);
		res.addGrid("listzhdg", listzhdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "02");
		dgmap.put("userId", USERID);
		List<Map> listywdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdgsjcy", dgmap);		
		res.addGrid("listywdg", listywdg);	
		dgmap=new HashMap();
		dgmap.put("LSH", LSH);
		dgmap.put("dglxselect", "03");
		dgmap.put("userId", USERID);
		List<Map> listywjgdg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrygzdgsjcy", dgmap);		
		res.addGrid("listywjgdg", listywjgdg);	
		List<Map> listtydg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerrytydgsjcy", dgmap);		
		res.addGrid("listtydg", listtydg);	
		res.addObject("LCSLH", LCSLH);
		res.addObject("LSH", LSH);
		res.addObject("SSSQ", SSSQ);
		res.addObject("BJBJ", BJBJ);
		res.addPage("zbgl/zbsjsh_sjcylist");
		return res;
	}	
	/**
	 * 企业提交意见书
	 * @param req
	 * @return
	 * @throws Exception
	 */
	public BaseResponseEvent qyyjth(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		dao.save("SjsjtsMapper.thSjhzb", LSH);
		return res;
	}
}
