package com.cwsj.blh.ysjgl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class FileSqdBLH extends BaseBLH {
	public BaseResponseEvent initFileupload(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> zzSelect=new ArrayList();
		Map tmpMap=new HashMap();
		tmpMap.put("code", "");
		tmpMap.put("caption", "选择");
		zzSelect.add(tmpMap);		
		List<Map> zzjgDefaultselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryDefaultZzjg", USERID);
		List<Map> zzjgselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryZzjg", null);
		zzSelect.addAll(zzjgselect);
		res.addSelect("zzjgselect", zzSelect);
		List<Map> gwselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryGw", null);
		HashMap param=new HashMap();
		param.put("jgSelectedvalue", zzjgselect.get(0).get("code"));
		param.put("gwSelectedvalue", "4");
		List<Map> ryselect =(List<Map>) BaseDAO.getInstance().findForList("GzlXMapper.listQuerryRyByjggw", param);
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
		res.addPage("ysjgl/uploadFile");
		return res;
	}
	
	public BaseResponseEvent initFiledownload(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String userId=user.getUSER_ID();
		List<Map> listgdzc =(List<Map>) BaseDAO.getInstance().findForList("YsjglMapper.listQuerryEcpafile", userId);
		res.addGrid("listfile", listgdzc);	
		res.addPage("ysjgl/downloadFile");
		return res;
	}
}
