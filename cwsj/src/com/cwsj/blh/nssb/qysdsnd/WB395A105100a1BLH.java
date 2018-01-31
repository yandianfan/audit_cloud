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


public class WB395A105100a1BLH  extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		List<Map> listA105100a1=(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA105100a1", pzxh);
		res.addGrid("listA105100a1", listA105100a1);
		res.addObject("PZXH", pzxh);   //把pzxh赋值到前台
			
		List<Map> Sfglqyselect =(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.selectQuerrySfglqy", null);
		res.addSelect("SFGLQY", Sfglqyselect);

		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A105100_1Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A105100_1");	
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
		
		List<Map> listA105100a1=req.getGrid("listA105100a1");
		String PZXH=(String) req.getAttr("PZXH"); 
		//String pzxh=(String) listA105100a1.get(0).get("PZXH");
		
		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA105100a1", PZXH);
		BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA105100a1", PlatformUtil.addGridcolvalue(listA105100a1,"PZXH",PZXH));	
        res.addMessage("保存成功");
		return res;
	}	
	
	
}



