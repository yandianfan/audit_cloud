package com.cwsj.blh.nssb.qysdsnd;

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

public class WB395A107042BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		if("".equals(pzxh)||pzxh==null){
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH", DJXH);
			
			HashMap A107042 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA107042_sjb", pageData);
			if("".equals(A107042)||A107042==null){
				A107042=new HashMap();
				A107042.put("DJXH", DJXH);
			}		
			res.addObject("DJXH", DJXH);
			res.addForm("A107042form", A107042);	
			res.addPage("nssb/qysdsnd/wb395_A107042_sjb");
		}else{
			pageData.put("pz_xh", pzxh);
			
			HashMap A107042 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA107042", pageData);
			if("".equals(A107042)||A107042==null){
				A107042=new HashMap();
				A107042.put("PZXH", pzxh);
			}		
			res.addForm("A107042form", A107042);	
			res.addPage("nssb/qysdsnd/wb395_A107042");
		}

		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO dao=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A107042form=req.getForm("A107042form");    //修改form编号（2处）
		String pzxh=(String) A107042form.get("PZXH");
		if("".equals(pzxh)||pzxh==null){
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH", DJXH);
			HashMap A107042 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA107042_sjb", pageData);
			A107042form.put("DJXH",DJXH);
			if(A107042.isEmpty()){
				BaseDAO.getInstance().save("GxqysdsMapper.insertValidate_A107042_sjb", A107042form);
			}
			BaseDAO.getInstance().update("GxqysdsMapper.updateA107042_sjb", A107042form);   //修改form编号（2处）		
		}else{
			BaseDAO.getInstance().update("GxqysdsMapper.updateA107042", A107042form);   //修改form编号（2处）		
		}
        res.addMessage("保存成功");
		return res;
	}		
}
