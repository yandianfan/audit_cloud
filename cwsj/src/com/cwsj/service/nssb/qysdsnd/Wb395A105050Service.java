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
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Service("wb395A105050Service")
public class Wb395A105050Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		res.addObject("PZXH", pzxh);
		
		HashMap A105050 =(HashMap)dao.findForObject("QysdsndMapper.formQuerryA105050", pageData);
		res.addForm("A105050form", A105050);
		
		List<Map> ablkcselect =(List<Map>)dao.findForList("QysdsndMapper.selectQuerryAblkc", null);
		res.addSelect("ABLKC_SSGDKCL", ablkcselect);
		
		res.addPage("nssb/qysdsnd/wb395_A105050");
		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		Map A105050form=req.getForm("A105050form"); 
		if(!"".equals(A105050form.get("ZGFL_SSGDKCL"))&&A105050form.get("ZGFL_SSGDKCL")!=null){
			String tmpStr=A105050form.get("ZGFL_SSGDKCL").toString().replace("%","");
			Double tmpdb=Double.valueOf(tmpStr); 
			A105050form.put("ZGFL_SSGDKCL", tmpdb/100);
		}
		if(!"".equals(A105050form.get("ABLKC_SSGDKCL"))&&A105050form.get("ABLKC_SSGDKCL")!=null){
			String tmpStr=A105050form.get("ABLKC_SSGDKCL").toString().replace("%","");
			Double tmpdb=Double.valueOf(tmpStr); 
			A105050form.put("ABLKC_SSGDKCL", tmpdb/100);
		}	
		if(!"".equals(A105050form.get("AJEKC_SSGDKCL"))&&A105050form.get("AJEKC_SSGDKCL")!=null){
			String tmpStr=A105050form.get("AJEKC_SSGDKCL").toString().replace("%","");
			Double tmpdb=Double.valueOf(tmpStr); 
			A105050form.put("AJEKC_SSGDKCL", tmpdb/100);
		}
		if(!"".equals(A105050form.get("GHJF_SSGDKCL"))&&A105050form.get("GHJF_SSGDKCL")!=null){
			String tmpStr=A105050form.get("GHJF_SSGDKCL").toString().replace("%","");
			Double tmpdb=Double.valueOf(tmpStr); 
			A105050form.put("GHJF_SSGDKCL", tmpdb/100);
		}
		dao.update("GxqysdsMapper.updateA105050", A105050form);  
        res.addMessage("保存成功");
		return res;
	}	
}
