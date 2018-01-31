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
import com.platform.tool.PlatformUtil;

public class WB395A107011BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		if("".equals(pzxh)||pzxh==null){
			String DJXH=(String) req.getAttr("DJXH");
			pageData.put("DJXH", DJXH);

			List<Map> listA107011 =(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA107011_sjb", DJXH);
			res.addGrid("listA107011", listA107011);
			res.addObject("PZXH", pzxh);
			res.addObject("DJXH", DJXH);
			
			res.addPage("nssb/qysdsnd/wb395_A107011_sjb");
		}else{
			pageData.put("pz_xh", pzxh);

			List<Map> listA107011 =(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA107011", pzxh);
			res.addGrid("listA107011", listA107011);
			res.addObject("PZXH", pzxh);		
			
			if("1".equals(req.getAttr("printBj"))){
				res.addPage("nssb/qysdsnd/wb395_A107011Print");	
			}else{
				res.addPage("nssb/qysdsnd/wb395_A107011");	
			}
		}

		List<Map> Tzxzselect =(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.selectQuerryTzxz", null);
		res.addSelect("TZXZ_DM", Tzxzselect);

		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		
		List<Map> listA107011=req.getGrid("listA107011");
		String PZXH=(String) req.getAttr("PZXH"); 
		
		PersistenceDAO dao=this.getPersistenceDAO();
		if("".equals(PZXH)||PZXH==null){
			String DJXH=(String) req.getAttr("DJXH"); 
			BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA107011_sjb", DJXH);
			BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA107011_sjb", PlatformUtil.addGridcolvalue(listA107011,"DJXH",DJXH));				
		}else{
			BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA107011", PZXH);
			BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA107011", PlatformUtil.addGridcolvalue(listA107011,"PZXH",PZXH));				
		}

		
        res.addMessage("保存成功");
		return res;
	}
}

