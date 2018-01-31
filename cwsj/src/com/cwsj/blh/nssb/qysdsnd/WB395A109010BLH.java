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

public class WB395A109010BLH extends BaseBLH{
	
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		if("".equals(pzxh)||pzxh==null){
			pageData.put("pz_xh", pzxh);
			
			HashMap A109010 =(HashMap) BaseDAO.getInstance().findForObject("AqysdsMapper.formQuerryA109010a", pageData);
			res.addForm("A109010form", A109010);
			
			List<Map> listA109010=(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA109010b", pzxh);
			res.addGrid("listA109010", listA109010);
			res.addObject("PZXH", pzxh);		

			res.addPage("nssb/qysdsnd/wb395_A109010_sjb");	
		}else{
			pageData.put("pz_xh", pzxh);
			
			HashMap A109010 =(HashMap) BaseDAO.getInstance().findForObject("AqysdsMapper.formQuerryA109010a", pageData);
			res.addForm("A109010form", A109010);
			
			List<Map> listA109010=(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA109010b", pzxh);
			res.addGrid("listA109010", listA109010);
			res.addObject("PZXH", pzxh);		

			if("1".equals(req.getAttr("printBj"))){
				res.addPage("nssb/qysdsnd/wb395_A109010Print");	
			}else{
				res.addPage("nssb/qysdsnd/wb395_A109010");	
			}			
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
		Map A109010form=req.getForm("A109010form");    //修改form编号（2处）

		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().update("GxqysdsMapper.updateA109010a", A109010form);   //修改form编号（2处）
		
		List<Map> listA109010=req.getGrid("listA109010");
		String PZXH=(String) req.getAttr("PZXH"); 
		
		BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA109010b", PZXH);
		BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA109010b", PlatformUtil.addGridcolvalue(listA109010,"PZXH",PZXH));	
		
        res.addMessage("保存成功");
		return res;
	}	

}
