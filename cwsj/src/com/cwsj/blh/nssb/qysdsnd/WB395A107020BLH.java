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

public class WB395A107020BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
//		HashMap A107020 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA107020", pageData);
//		res.addForm("A107020form", A107020);
		List<Map> listA107020 =(List<Map>) BaseDAO.getInstance().findForList("QysdsndMapper.listQuerryA107020", pageData);
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
		
		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA107020", PZXH);
		BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA107020", PlatformUtil.addGridcolvalue(listA107020,"PZXH",PZXH));
        res.addMessage("保存成功");
		return res;
	}		
}
