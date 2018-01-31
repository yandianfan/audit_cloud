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
import com.platform.tool.PlatformUtil;

@Service("wb395A105030Service")
public class Wb395A105030Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		List A105030 =(List)dao.findForList("QysdsndMapper.gridQuerryA105030", pageData);
		res.addGrid("listA105030Grid", A105030);
		res.addObject("PZXH", pzxh);
		
		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A105030Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A105030");	
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
		List A105030=(List)req.getGrid("listA105030Grid");   
		String PZXH=(String) req.getAttr("PZXH");
		dao.delete("GxqysdsMapper.deleteA105030", PZXH);
		dao.batchSave("GxqysdsMapper.insertA105030", PlatformUtil.addGridcolvalue(A105030, "PZXH", PZXH));  
        res.addMessage("保存成功");
		return res;
	}
}
