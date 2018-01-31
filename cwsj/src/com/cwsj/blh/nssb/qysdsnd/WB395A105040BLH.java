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

public class WB395A105040BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
			
		List<Map> listA105040=(List<Map>) BaseDAO.getInstance().findForList("AqysdsMapper.listQuerryA105040", pzxh);
		res.addGrid("listA105040", listA105040);
		res.addObject("PZXH", pzxh);
		
		res.addPage("nssb/qysdsnd/wb395_A105040");
		return res;
	} 
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		
		List<Map> listA105040=req.getGrid("listA105040");
		String PZXH=(String) req.getAttr("PZXH");  

		PersistenceDAO dao=this.getPersistenceDAO();
		BaseDAO.getInstance().delete("GxqysdsGridMapper.deleteA105040", PZXH);
		BaseDAO.getInstance().batchSave("GxqysdsGridMapper.insertA105040", PlatformUtil.addGridcolvalue(listA105040,"PZXH",PZXH));
		
        res.addMessage("保存成功");
		return res;
	}	
}
