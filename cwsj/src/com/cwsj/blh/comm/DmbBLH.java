package com.cwsj.blh.comm;

import java.util.List;
import java.util.Map;

import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class DmbBLH   extends BaseBLH{
	public BaseResponseEvent ckJdxz(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String XZQHSZ_DM=(String) req.getAttr("XZQHSZ_DM");
		List<Map> jdxzSelect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
		res.addSelect("jdxzselect", jdxzSelect);  
		return res;
	}	
}
