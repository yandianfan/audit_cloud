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


public class WB395A105030BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		List A105030 =(List) BaseDAO.getInstance().findForList("QysdsndMapper.gridQuerryA105030", pageData);
		res.addGrid("listA105030Grid", A105030);
		res.addObject("PZXH", pzxh);
		
		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A105030Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A105030");	
		}
		
		return res;
	} 

	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List A105030=(List)req.getGrid("listA105030Grid");   
		String PZXH=(String) req.getAttr("PZXH");
		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().delete("GxqysdsMapper.deleteA105030", PZXH);
		BaseDAO.getInstance().batchSave("GxqysdsMapper.insertA105030", PlatformUtil.addGridcolvalue(A105030, "PZXH", PZXH));  
        res.addMessage("保存成功");
		return res;
	}
}
