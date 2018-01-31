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

@Service("wb395A108030Service")
public class Wb395A108030Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		List<Map> listA108030=(List<Map>) dao.findForList("AqysdsMapper.listQuerryA108030", pzxh);
		res.addGrid("listA108030", listA108030);
		res.addObject("PZXH", pzxh);
		
		List<Map> Gjselect =(List<Map>) dao.findForList("CommMapper.selectQuerryGj", null);
		res.addSelect("GJ_DQ", Gjselect);
		
		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A108030Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A108030");	
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
		
		List<Map> listA108030=req.getGrid("listA108030");
		String PZXH=(String) req.getAttr("PZXH"); 
		
		dao.delete("GxqysdsGridMapper.deleteA108030", PZXH);
		dao.batchSave("GxqysdsGridMapper.insertA108030", PlatformUtil.addGridcolvalue(listA108030,"PZXH",PZXH));		
        res.addMessage("保存成功");
		return res;
	}	
}

