package com.cwsj.blh.ysjgl;

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
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
import com.platform.tool.PlatformUtil;

public class QyjcxxBLH  extends BaseBLH  {
	public BaseResponseEvent jcxxInit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		Map jcsxform =(Map) BaseDAO.getInstance().findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
		String DJXH=null;
		if(jcsxform==null||"".equals(jcsxform)){
			 jcsxform=new HashMap();
			 DJXH=user.getDJXH();
			 jcsxform.put("DJXH", DJXH);
			 jcsxform =(Map) BaseDAO.getInstance().findForObject("YsjglMapper.mapQuerryQyjbxx", DJXH);
		}else{
			DJXH=(String) jcsxform.get("DJXH");
		}
		jcsxform.put("LSH", LSH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		String XZQHSZ_DM=(String) jcsxform.get("xzqhtree");
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> jdxzSelect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
		res.addSelect("jdxzselect", jdxzSelect);  
		List<Map> ZJLX =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.listQuerryZjlx", null);
		res.addSelect("ZJLX", ZJLX);  	
		List<Map> ZCLX =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryDjzc", null);
		res.addSelect("ZCLX", ZCLX); 	
		res.addSelect("zclxselect", ZCLX); 
		res.addSelect("BTZZJJXZ", ZCLX); 
		List<Map> GJ =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryGj", null);
		res.addSelect("GJ", GJ);
		List<Map> ZSXM =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryZsxm", null);
		res.addSelect("ZSXM", ZSXM);
		List<Map> listgdtzxx =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistgdtzxx", DJXH);
		res.addGrid("listgdtzxx", listgdtzxx); 
		List<Map> listjnfz =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistjnfz", DJXH);
		res.addGrid("listjnfz", listjnfz);    	
		List<Map> listjwfz =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistjwfz", DJXH);
		res.addGrid("listjwfz", listjwfz);  
		List<Map> listdwtz =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistdwtz", DJXH);
		res.addGrid("listdwtz", listdwtz);  
		List<Map> listzsxm =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistsfzxm", DJXH);
		res.addGrid("listzsxm", listzsxm);   
		List<Map> listssyh =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistssyh", DJXH);
		res.addGrid("listssyh", listssyh);   
		Map formkjzcgj =(Map) BaseDAO.getInstance().findForObject("YsjglMapper.gridQuerrformkjzcgj", DJXH);
		res.addForm("kjzcgjForm", formkjzcgj);  
		res.addPage("ysjgl/qyjcxxcj");
		return res;
	}
	public BaseResponseEvent jcxxcxInit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String DJXH=(String) req.getAttr("DJXH");
		Map jcsxform =jcsxform =(Map) BaseDAO.getInstance().findForObject("YsjglMapper.mapQuerryQyjbxx", DJXH);
		res.addForm("jcsxform", jcsxform); 
		List<ZTreeVO> hytree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
		String XZQHSZ_DM=(String) jcsxform.get("xzqhtree");
		List<ZTreeVO> xzqhtree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrxzqh", null);
		res.addTree("xzqhtree", xzqhtree);
		List<Map> jdxzSelect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
		res.addSelect("jdxzselect", jdxzSelect);  
		List<Map> ZJLX =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.listQuerryZjlx", null);
		res.addSelect("ZJLX", ZJLX);  	
		List<Map> ZCLX =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryDjzc", null);
		res.addSelect("ZCLX", ZCLX); 	
		res.addSelect("zclxselect", ZCLX); 
		res.addSelect("BTZZJJXZ", ZCLX); 
		List<Map> GJ =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryGj", null);
		res.addSelect("GJ", GJ);
		List<Map> ZSXM =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryZsxm", null);
		res.addSelect("ZSXM", ZSXM);
		List<Map> listgdtzxx =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistgdtzxx", DJXH);
		res.addGrid("listgdtzxx", listgdtzxx); 
		List<Map> listjnfz =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistjnfz", DJXH);
		res.addGrid("listjnfz", listjnfz);    	
		List<Map> listjwfz =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistjwfz", DJXH);
		res.addGrid("listjwfz", listjwfz);  
		List<Map> listdwtz =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistdwtz", DJXH);
		res.addGrid("listdwtz", listdwtz);  
		List<Map> listzsxm =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistsfzxm", DJXH);
		res.addGrid("listzsxm", listzsxm);   
		List<Map> listssyh =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.gridQuerrlistssyh", DJXH);
		res.addGrid("listssyh", listssyh);   
		Map formkjzcgj =(Map) BaseDAO.getInstance().findForObject("YsjglMapper.gridQuerrformkjzcgj", DJXH);
		res.addForm("kjzcgjForm", formkjzcgj);  
		res.addPage("ysjgl/qyjcxxcx");
		return res;
	}	
	public BaseResponseEvent saveJcxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String LSH=(String) req.getAttr("LSH");
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Map jcsxform=req.getForm("jcsxform");
		String DJXH=(String) jcsxform.get("DJXH");
		List<Map> listgdtzxx=req.getGrid("listgdtzxx");
		List<Map> listjnfz=req.getGrid("listjnfz");
		List<Map> listjwfz=req.getGrid("listjwfz");
		List<Map> listdwtz=req.getGrid("listdwtz");
		List<Map> listqshbg=req.getGrid("listqshbg");
		List<Map> listzsxm=req.getGrid("listzsxm");
		List<Map> listssyh=req.getGrid("listssyh");
		Map kjzcgjForm=req.getForm("kjzcgjForm");
		kjzcgjForm.put("DJXH", DJXH);
		BaseDAO.getInstance().update("YsjglMapper.updateQyjbxx", jcsxform);
		BaseDAO.getInstance().delete("YsjglMapper.deleteGdtzxx", DJXH);
		BaseDAO.getInstance().delete("YsjglMapper.deleteQyjnfz", DJXH);
		BaseDAO.getInstance().delete("YsjglMapper.deleteQyjwfz", DJXH);
		BaseDAO.getInstance().delete("YsjglMapper.deleteQydwtz", DJXH);
		BaseDAO.getInstance().delete("YsjglMapper.deleteQyzsxm", DJXH);
		BaseDAO.getInstance().delete("YsjglMapper.deleteQyssyh", DJXH);

		BaseDAO.getInstance().batchSave("YsjglMapper.insertGdtzxx", PlatformUtil.addGridcolvalue(listgdtzxx,"DJXH",DJXH));
		BaseDAO.getInstance().batchSave("YsjglMapper.insertQyjnfz", PlatformUtil.addGridcolvalue(listjnfz,"DJXH",DJXH));
		BaseDAO.getInstance().batchSave("YsjglMapper.insertQyjwfz", PlatformUtil.addGridcolvalue(listjwfz,"DJXH",DJXH));
		BaseDAO.getInstance().batchSave("YsjglMapper.insertQydwtz", PlatformUtil.addGridcolvalue(listdwtz,"DJXH",DJXH));
		BaseDAO.getInstance().batchSave("YsjglMapper.insertQyzsxm", PlatformUtil.addGridcolvalue(listzsxm,"DJXH",DJXH));
		BaseDAO.getInstance().batchSave("YsjglMapper.insertQyssyh", PlatformUtil.addGridcolvalue(listssyh,"DJXH",DJXH));
		Map formkjzcgj =(Map) BaseDAO.getInstance().findForObject("YsjglMapper.gridQuerrformkjzcgj", DJXH);
		if("".equals(formkjzcgj)||formkjzcgj==null){
			BaseDAO.getInstance().delete("YsjglMapper.deleteQykjzcgj", DJXH);
			BaseDAO.getInstance().save("YsjglMapper.insertQykjzcgj", kjzcgjForm);
		}else{
			BaseDAO.getInstance().save("YsjglMapper.updateQykjzcgj", kjzcgjForm);
		}		
		res.addMessage("保存成功");
		return res;
	}
}
