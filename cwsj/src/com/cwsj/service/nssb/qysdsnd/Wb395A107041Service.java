package com.cwsj.service.nssb.qysdsnd;

import java.util.HashMap;
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

@Service("wb395A107041Service")
public class Wb395A107041Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");		
		if("".equals(pzxh)||pzxh==null){
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH", DJXH);
			
			HashMap A107041 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107041_sjb", pageData);
			if("".equals(A107041)||A107041==null){
				A107041=new HashMap();
				A107041.put("PZXH", pzxh);
			}	
			res.addObject("DJXH", DJXH);
			res.addForm("A107041form", A107041);	
			res.addPage("nssb/qysdsnd/wb395_A107041_sjb");
		}else{
			pageData.put("pz_xh", pzxh);
			
			HashMap A107041 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107041", pageData);
			if("".equals(A107041)||A107041==null){
				A107041=new HashMap();
				A107041.put("PZXH", pzxh);
			}	
			res.addForm("A107041form", A107041);	
			res.addPage("nssb/qysdsnd/wb395_A107041");
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
		Map A107041form=req.getForm("A107041form");    //修改form编号（2处）
		String pzxh=(String) A107041form.get("PZXH");
		if("".equals(pzxh)||pzxh==null){			
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH",DJXH );
			HashMap A107041 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107041_sjb", pageData);
			A107041form.put("DJXH", DJXH);
			if(A107041.isEmpty()){
				dao.save("GxqysdsMapper.insertValidate_A107041_sjb", A107041form);
			}		
			dao.update("GxqysdsMapper.updateA107041_sjb", A107041form);   //修改form编号（2处）		
		}else{	
			dao.update("GxqysdsMapper.updateA107041", A107041form);   //修改form编号（2处）		
		}

        res.addMessage("保存成功");
		return res;
	}		
}
