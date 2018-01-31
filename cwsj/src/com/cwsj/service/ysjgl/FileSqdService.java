package com.cwsj.service.ysjgl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

@Service("fileSqdService")
public class FileSqdService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	public BaseResponseEvent initFileupload(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> zzSelect=new ArrayList();
		Map tmpMap=new HashMap();
		tmpMap.put("code", "");
		tmpMap.put("caption", "选择");
		zzSelect.add(tmpMap);		
		List<Map> zzjgDefaultselect =(List<Map>) dao.findForList("GzlXMapper.listQuerryDefaultZzjg", USERID);
		List<Map> zzjgselect =(List<Map>) dao.findForList("GzlXMapper.listQuerryZzjg", null);
		zzSelect.addAll(zzjgselect);
		res.addSelect("zzjgselect", zzSelect);
		List<Map> gwselect =(List<Map>) dao.findForList("GzlXMapper.listQuerryGw", null);
		HashMap param=new HashMap();
		param.put("jgSelectedvalue", zzjgselect.get(0).get("code"));
		param.put("gwSelectedvalue", "4");
		List<Map> ryselect =(List<Map>) dao.findForList("GzlXMapper.listQuerryRyByjggw", param);
		List<Map> rytmpSelect=new ArrayList();
		rytmpSelect.add(tmpMap);	
		rytmpSelect.addAll(ryselect);
		res.addSelect("gwselect", gwselect);
		res.addSelect("ryselect", rytmpSelect);	
		if(zzjgDefaultselect.size()>0){
			res.addObject("defaultZzjgmc", zzjgDefaultselect.get(0).get("caption"));	
		}else{
			res.addObject("defaultZzjgmc", "无");	
		}
		res.addObject("userId", USERID);
		res.addPage("ysjgl/uploadFile");
		return res;
	}
	
	public BaseResponseEvent initFiledownload(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String userId=user.getUSER_ID();
		List<Map> listgdzc =(List<Map>) dao.findForList("YsjglMapper.listQuerryEcpafile", userId);
		res.addGrid("listfile", listgdzc);	
		res.addPage("ysjgl/downloadFile");
		return res;
	}
	@Transactional
	public BaseResponseEvent saveSqd(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String userId=user.getUSER_ID();
		  Map param=new HashMap();
		  param.put("djxh", userId);
		  param.put("filePath", req.getAttr("filePath"));
		  param.put("fileName", req.getAttr("fileName"));
		  param.put("sssq", req.getAttr("SSSQ"));
		  param.put("zzjgId", req.getAttr("jgSelectedvalue"));
		  param.put("sjryDm", req.getAttr("rySelectedvalue"));
		  List alist=(List) dao.findForList("YsjglMapper.mapQuerymySjsq", param);
		  if(alist.size()>0){
			  dao.update("YsjglMapper.updatemySjsq", param);
		  }else{
			  dao.save("YsjglMapper.insertmySjsq", param);
		  }
		return res;   
	}
	
	@Transactional
	public void saveSqd(String djxh,String filePath,String fileName,String sssq,String jgSelectedvalue,String rySelectedvalue) throws Exception {
		  Map param=new HashMap();
		  param.put("djxh", djxh);
		  param.put("filePath", filePath);
		  param.put("fileName", fileName);
		  param.put("sssq", sssq);
		  param.put("zzjgId", jgSelectedvalue);
		  param.put("sjryDm", rySelectedvalue);
		  List alist=(List) dao.findForList("YsjglMapper.mapQuerymySjsq", param);
		  if(alist.size()>0){
			  dao.update("YsjglMapper.updatemySjsq", param);
		  }else{
			  dao.save("YsjglMapper.insertmySjsq", param);
		  }       
	}	
}
