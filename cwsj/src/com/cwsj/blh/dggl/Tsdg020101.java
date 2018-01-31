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

public class Tsdg020101   extends BaseBLH{
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String LSH=(String) req.getAttr("LSH");
		pageData.put("LSH", LSH);
		
		List<Map> listDg020101=(List<Map>) persistenceDAO.findForList("Tsdg02GridMapper.listQuerryTsdg020101", LSH);
		res.addGrid("listDg020101", listDg020101);
		//res.addObject("LSH", LSH);	
		
			
		res.addPage("dggl/tsdg/Tsdg_020101");
		return res;
	}
}
