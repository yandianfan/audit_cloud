package com.cwsj.service.zbgl;

import java.util.ArrayList;
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
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

@Service("zbjgService")
public class ZbjgService {
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
		res.addPage("zbgl/zbjgrw_list");
		return res;
	}
	
	public BaseResponseEvent zbjginit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		Map jcsxform =(Map) dao.findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> ysjtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrzb", null);
		res.addTree("zbTree", ysjtree);
		List<ZTreeVO> hytree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		String XZQHSZ_DM=(String) jcsxform.get("XZQHSZ_DM");
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> jdxzSelect =(List<Map>) dao.findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
		res.addSelect("jdxzSelect", jdxzSelect);    
		res.addPage("zbgl/zbjgrw");
		return res;
	}	
	public BaseResponseEvent saveRwxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		List<Map> zbtree=req.getTree("zbTree");
		Map jcsxform=req.getForm("jcsxform");
		Map zbmap=null;
		List<Map> newbzblist=new ArrayList<Map>();
		for(int i=0;i<zbtree.size();i++){
			zbmap=new HashMap();
			zbmap.putAll(zbtree.get(i));
			zbmap.put("DJXH", jcsxform.get("DJXH"));
			newbzblist.add(zbmap);
		}
		dao.delete("ZbglMapper.deleteQyzblx", jcsxform.get("DJXH"));
		dao.batchSave("ZbglMapper.insertQyzb", newbzblist);
//		Map jbxxmap=(Map) dao.findForObject("ZbglMapper.listQuerryQyjbxx", jcsxform.get("DJXH"));
//		if(jbxxmap!=null){
//			dao.update("ZbglMapper.updateQyjbxx", jcsxform.get("DJXH"));
//		}else{
//			dao.save("ZbglMapper.insertQyjbxx", jcsxform);
//		}
		res.addMessage("保存成功");
		return res;
	}		
	
//	public BaseResponseEvent doAction(BaseRequestEvent req) throws Exception{
//		BaseResponseEvent res=new BaseResponseEvent();
//		Subject currentUser = SecurityUtils.getSubject();  
//		Session session = currentUser.getSession();
//		User user = (User) session.getAttribute(Const.SESSION_USER);
//		String USERID=user.getUSER_ID();
//		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
//		String LSH=(String) req.getAttr("LSH");
//		String DJXH=(String) req.getAttr("DJXH");
//		List<Map> zbtree=req.getTree("zbTree");
//		Map jcsxform=req.getForm("jcsxform");
//        //---------调用指标加工方法开始----------------------
//		  //-----首先生成任务
//		Map qyjbxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerryRwjbxx", LSH);
//		String PZ_XH="";
//		if("".equals(qyjbxx)||qyjbxx==null){
//			PZ_XH=XtbmUtil.getPzxh((String)jcsxform.get("DJXH"), "10104");
//			jcsxform.put("LRRYDM", USERID);
//			dao.save("ZbjgrwMapper.insertRwjbxx", jcsxform);
//			jcsxform.put("LRRYDM", USERID);			
//			jcsxform.put("LSH",LSH);
//			jcsxform.put("PZ_XH",PZ_XH);
//			dao.save("ZbjgrwMapper.insertSbb", jcsxform);
//		}else{
//			Map sbbqkxx =(HashMap) dao.findForObject("ZbjgrwMapper.listQuerrySbb", LSH);
//			if("".equals(sbbqkxx)||sbbqkxx==null){
//				PZ_XH=XtbmUtil.getPzxh((String)jcsxform.get("DJXH"), "10104");
//				jcsxform.put("LRRYDM", USERID);			
//				jcsxform.put("LSH",LSH);
//				jcsxform.put("PZ_XH",PZ_XH);
//				dao.save("ZbjgrwMapper.insertSbb", jcsxform);			
//			}
//			PZ_XH=(String) sbbqkxx.get("PZ_XH");
//			jcsxform.put("PZ_XH",PZ_XH);
//		}
//		  //先加工转换类指标
//		//res=jgZhlzb(req,persistenceDAO,jcsxform);
//		//先生成工作底稿
//		//res=jgGzdg(req,persistenceDAO,jcsxform);
//		//再生存企业所得税申报表
//		//res=jgSbb(req,persistenceDAO,jcsxform);		
//		//最后加工风险指标
//		res=jgFxzb(req,persistenceDAO,jcsxform);	
//		return res;
//	}	
/**
 * 	先加工转换类指标(主要针对企业所得税的指标)
 * @param req
 * @return BaseResponseEvent
 * @throws Exception
 */
	public BaseResponseEvent jgZhlzb(BaseRequestEvent req,PersistenceDAO persistenceDAO,Map jcsxform) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		List<Map> zbtree=req.getTree("zbTree");
        //---------调用指标加工方法开始----------------------
		//------加工申报数据列表----------------
		List<Map> ksbxx =(List<Map>) dao.findForList("ZbglMapper.listQuerrksb", jcsxform);	
		if(ksbxx.size()==0){
			dao.save("ZbjgrwMapper.insertKsbxx", jcsxform);
		}
//        //----首先生成基础信息表--------------
//		Map qyjbxx =(HashMap) dao.findForObject("QysdsndMapper.listQuerryA000000", jcsxform);
//		if("".equals(qyjbxx)||qyjbxx==null){
//			dao.save("ZbjgrwMapper.insertA000000", qyjbxx);
//		}else{
//			dao.save("ZbjgrwMapper.updateA000000", qyjbxx);
//		}	
		//----开始进行数据转换-------------
		ksbxx =(List<Map>) dao.findForList("ZbglMapper.listQuerrksb", jcsxform);
		String SJB=null;
		List<Map> sjzhlist=null;
		Map<String, Object> promap =null;
		String sucbj=null;
		String msg=null;
		for(int i=0;i<ksbxx.size();i++){
			SJB=(String) ksbxx.get(i).get("SJB");
			promap = new HashMap<String, Object>();  
			promap.put("V_LSH", LSH);    
			promap.put("V_SJB",SJB);  
	        dao.callProcedere("ZbjgrwMapper.P_SJ_ZB_QYSDSSC", promap);  
	        msg=(String) promap.get("V_MSG");
	        sucbj=(String) promap.get("V_SUCBJ");		
		}
		res.addMessage("保存成功");
		return res;
	}	
/**
 * 	加工工作底稿
 * @param req
 * @param persistenceDAO
 * @param jcsxform
 * @return
 * @throws Exception
 */
	public BaseResponseEvent jgGzdg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		//------加工工作底稿----------------
		List<Map> sjzhlist=null;
		Map<String, Object> promap =null;
		String sucbj=null;
		String msg=null;
		promap = new HashMap<String, Object>();  
		promap.put("V_LSH", LSH);    
		promap.put("V_DGDM", null); 
        dao.callProcedere("ZbjgrwMapper.P_SJ_DG_TSDGSC", promap);  
        msg=(String) promap.get("V_MSG");
        sucbj=(String) promap.get("V_SUCBJ");	
        res.addCode(sucbj);
		res.addMessage(msg);
		return res;
	}	
/**
 * 加工申报表	
 * @param req
 * @param persistenceDAO
 * @param jcsxform
 * @return
 * @throws Exception
 */
	public BaseResponseEvent jgSbb(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String PZXH=(String) req.getAttr("PZXH");
		String FBPZZLDM=(String) req.getAttr("FBPZZLDM");
		//------加工工作底稿----------------
		List<Map> sjzhlist=null;
		Map<String, Object> promap =null;
		String sucbj=null;
		String msg=null;
		promap = new HashMap<String, Object>();  
		promap.put("V_PZXH", PZXH);     
		promap.put("V_FBPZZLDM", FBPZZLDM);  
        dao.callProcedere("ZbjgrwMapper.P_SJ_SB_QYSDSSC", promap);  
        msg=(String) promap.get("V_MSG");
        sucbj=(String) promap.get("V_SUCBJ");	
        res.addCode(sucbj);
		res.addMessage(msg);
		return res;
	}	
/**
 * 	加工风险指标
 * @param req
 * @param persistenceDAO
 * @param jcsxform
 * @return
 * @throws Exception
 */
//	public BaseResponseEvent jgFxzb(BaseRequestEvent req,PersistenceDAO persistenceDAO,Map jcsxform) throws Exception{
//		BaseResponseEvent res=new BaseResponseEvent();
//		PageData pageData=req.getPageData();
//		String LSH=(String) req.getAttr("LSH");
//		//------加工工作底稿----------------
//		List<Map> sjzhlist=null;
//		Map<String, Object> promap =null;
//		String sucbj=null;
//		String msg=null;
//		List<Map> zbxxList =(List<Map>) dao.findForList("ZbjgrwMapper.listQuerryzb", jcsxform);	
//		for(int i=0;i<zbxxList.size();i++){
//			promap = new HashMap<String, Object>();  
//			promap.put("V_LSH", LSH);   
//			promap.put("V_FXZBDM", zbxxList.get(i).get("FXZB_DM"));  
//	        //dao.callProcedere("ZbjgrwMapper.P_SJ_ZB_FXZBJG", promap);  
//			dao.callProcedere("ZbjgrwMapper.P_SJ_ZB_ZBJG2", promap);  
//	        msg=(String) promap.get("V_MSG");
//	        sucbj=(String) promap.get("V_SUCBJ");
//	        if("0".equals(sucbj)){
//		        res.addCode(sucbj);
//				res.addMessage(msg);
//				return res;
//	        }	
//	        break;
//		}
//		//获取风险点数量
//		Map fxdslmap =(HashMap) dao.findForObject("ZbjgrwMapper.getFxydsl", LSH);
//        res.addCode("1");
//		res.addMessage("加工风险指标成功！生成风险疑点"+fxdslmap.get("FXDSL")+"条");
//		return res;
//	}	
	
	public BaseResponseEvent doAction(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		Map jcsxform=req.getForm("jcsxform");
		//------加工工作底稿----------------
		List<Map> sjzhlist=null;
		Map<String, Object> promap =null;
		String sucbj=null;
		String msg=null;
		List<Map> zbxxList =(List<Map>) dao.findForList("ZbjgrwMapper.listQuerryzb", jcsxform);	
		for(int i=0;i<zbxxList.size();i++){
			promap = new HashMap<String, Object>();  
			promap.put("V_LSH", LSH);   
			promap.put("V_FXZBDM", zbxxList.get(i).get("FXZB_DM"));  
	        //dao.callProcedere("ZbjgrwMapper.P_SJ_ZB_FXZBJG", promap);  
			dao.callProcedere("ZbjgrwMapper.P_SJ_ZB_ZBJG2", promap);  
	        msg=(String) promap.get("V_MSG");
	        sucbj=(String) promap.get("V_SUCBJ");
	        if("0".equals(sucbj)){
		        res.addCode(sucbj);
				res.addMessage(msg);
				return res;
	        }	
		}
		//获取风险点数量
		Map fxdslmap =(HashMap) dao.findForObject("ZbjgrwMapper.getFxydsl", LSH);
        res.addCode("1");
		res.addMessage("加工风险指标成功！生成风险疑点"+fxdslmap.get("FXDSL")+"条");
		return res;
    }		
}
