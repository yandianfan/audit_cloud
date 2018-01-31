package com.cwsj.service.nssb.qysdsnd;

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
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("wb395A107042Service")
public class Wb395A107042Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		if("".equals(pzxh)||pzxh==null){
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH", DJXH);
			
			HashMap A107042 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107042_sjb", pageData);
			if("".equals(A107042)||A107042==null){
				A107042=new HashMap();
				A107042.put("DJXH", DJXH);
			}		
			res.addObject("DJXH", DJXH);
			res.addForm("A107042form", A107042);	
			res.addPage("nssb/qysdsnd/wb395_A107042_sjb");
		}else{
			pageData.put("pz_xh", pzxh);
			
			HashMap A107042 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107042", pageData);
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
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A107042form=req.getForm("A107042form");    //修改form编号（2处）
		String pzxh=(String) A107042form.get("PZXH");
		if("".equals(pzxh)||pzxh==null){
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH", DJXH);
			HashMap A107042 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107042_sjb", pageData);
			A107042form.put("DJXH",DJXH);
			if(A107042.isEmpty()){
				dao.save("GxqysdsMapper.insertValidate_A107042_sjb", A107042form);
			}
			dao.update("GxqysdsMapper.updateA107042_sjb", A107042form);   //修改form编号（2处）		
		}else{
			dao.update("GxqysdsMapper.updateA107042", A107042form);   //修改form编号（2处）		
		}
        res.addMessage("保存成功");
		return res;
	}		
}
