package com.cwsj.service.nssb.qysdsnd;

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
import com.platform.tool.PlatformUtil;
@Service("wb395A107020Service")
public class Wb395A107020Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
//		HashMap A107020 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA107020", pageData);
//		res.addForm("A107020form", A107020);
		List<Map> listA107020 =(List<Map>) dao.findForList("QysdsndMapper.listQuerryA107020", pageData);
		res.addGrid("listA107020", listA107020);
		res.addObject("PZXH", pzxh);

		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A107020Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A107020");	
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
		
		List<Map> listA107020=req.getGrid("listA107020");
		String PZXH=(String) req.getAttr("PZXH"); 
		
		dao.delete("GxqysdsGridMapper.deleteA107020", PZXH);
		dao.batchSave("GxqysdsGridMapper.insertA107020", PlatformUtil.addGridcolvalue(listA107020,"PZXH",PZXH));
        res.addMessage("保存成功");
		return res;
	}		
}
