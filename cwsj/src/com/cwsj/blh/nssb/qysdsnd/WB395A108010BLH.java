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


public class WB395A108010BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		List<Map> listA108010=(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA108010", pzxh);
		res.addGrid("listA108010", listA108010);
		res.addObject("PZXH", pzxh);
		
		List<Map> Gjselect =(List<Map>) BaseDAO.getInstance().findForList("CommMapper.selectQuerryGj", null);
		res.addSelect("GJ_DQ", Gjselect);

		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A108010Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A108010");	
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
		
		List<Map> listA108010=req.getGrid("listA108010");
		String PZXH=(String) req.getAttr("PZXH"); 
		
		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA108010", PZXH);
		BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA108010", PlatformUtil.addGridcolvalue(listA108010,"PZXH",PZXH));	
        res.addMessage("保存成功");
		return res;
	}		
}
