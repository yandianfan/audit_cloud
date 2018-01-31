package com.cwsj.blh.dggl;

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

public class Tsdg0110 extends BaseBLH{
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();

		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
		String DG_DM=(String) req.getAttr("DG_DM");
		
		Map qumap=new HashMap();
		qumap.put("LSH", LSH);
		qumap.put("DJXH", DJXH);
		qumap.put("DG_DM", DG_DM);
		res.addForm("formmap", qumap);
		
		if("".equals(LSH)||LSH==null){
			Map formmap0110 =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0110_sjb", qumap);
			res.addForm("Tsdg_0110form", formmap0110);
				
			res.addPage("dggl/tsdg/Tsdg_0110_sjb");	
			
		}else{
			Map formmap0110 =(Map) persistenceDAO.findForObject("GzdgzhlMapper.QuerryTsdg0110", qumap);
			res.addForm("Tsdg_0110form", formmap0110);
				
			res.addPage("dggl/tsdg/Tsdg_0110");			
		}
		

		return res;
	}
	
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Map formmap=req.getForm("formmap");
		String LSH=(String) formmap.get("LSH");
		String DJXH=(String) formmap.get("DJXH");
		String DG_DM=(String) formmap.get("DG_DM");
		
		if("".equals(LSH)||LSH==null){
			persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0110_sjb", formmap);
			
			Map mapobj=req.getForm("Tsdg_0110form");
			formmap.putAll(mapobj);
			persistenceDAO.save("GzdgzhlMapper.insertTsdg0110_sjb",formmap);		
		}else{
			persistenceDAO.delete("GzdgzhlMapper.deleteTsdg0110", formmap);
			
			Map mapobj=req.getForm("Tsdg_0110form");
			formmap.putAll(mapobj);
			persistenceDAO.save("GzdgzhlMapper.insertTsdg0110",formmap);			
		}
				
        res.addMessage("保存成功");
		return res;
	}
}
