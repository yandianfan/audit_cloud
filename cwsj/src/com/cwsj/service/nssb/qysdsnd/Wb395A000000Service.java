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
import com.platform.tool.PlatformUtil;
@Service("wb395A000000Service")
public class Wb395A000000Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");  //可以获取地址链接里面的参数
		pageData.put("pz_xh", pzxh);
		
		HashMap A000000_1 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA000000_1", pageData);
		res.addForm("A000000_1form", A000000_1);	
		
		HashMap A000000_2 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA000000_2", pageData);
		res.addForm("A000000_2form", A000000_2);			
		
		List<Map> Kjzdselect =(List<Map>) dao.findForList("CommMapper.selectQuerryKjzd", null);
		res.addSelect("KJZD", Kjzdselect);	
		
		List<Map> listA000000_zygd=(List<Map>) dao.findForList("AqysdsMapper.listQuerryA000000_zygd", pzxh);
		res.addGrid("listA000000_zygd", listA000000_zygd);
		
		List<Map> listA000000_dwtz=(List<Map>) dao.findForList("AqysdsMapper.listQuerryA000000_dwtz", pzxh);
		res.addGrid("listA000000_dwtz", listA000000_dwtz);		
		
		List<Map> Zjzlselect =(List<Map>) dao.findForList("CommMapper.listQuerryZjlx", null);
		res.addSelect("ZJZL", Zjzlselect);		
		
		List<Map> Djzcselect =(List<Map>) dao.findForList("CommMapper.selectQuerryDjzc", null);
		res.addSelect("DJZCLX_DM", Djzcselect);
		
		List<Map> Gjselect =(List<Map>) dao.findForList("CommMapper.selectQuerryGj", null);
		res.addSelect("GJ", Gjselect);		
		
		res.addObject("PZXH", pzxh);
		res.addPage("nssb/qysdsnd/wb395_A000000");
		return res;
	}  
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		
		Map A000000_1form=req.getForm("A000000_1form");   
		Map A000000_2form=req.getForm("A000000_2form");		
 		
		dao.update("GxqysdsMapper.updateA000000_1", A000000_1form);  
		dao.update("GxqysdsMapper.updateA000000_2", A000000_2form);  
		
		String PZXH=(String) req.getAttr("PZXH");
		List<Map> listA000000_zygd=req.getGrid("listA000000_zygd");
		List<Map> listA000000_dwtz=req.getGrid("listA000000_dwtz");
		
		dao.delete("GxqysdsGridMapper.deleteA000000_zygd", PZXH);
		dao.batchSave("GxqysdsGridMapper.insertA000000_zygd", PlatformUtil.addGridcolvalue(listA000000_zygd,"PZXH",PZXH));		
		
		dao.delete("GxqysdsGridMapper.deleteA000000_dwtz", PZXH);
		dao.batchSave("GxqysdsGridMapper.insertA000000_dwtz", PlatformUtil.addGridcolvalue(listA000000_dwtz,"PZXH",PZXH));							
		
        res.addMessage("保存成功");
		return res;
	}	
}
