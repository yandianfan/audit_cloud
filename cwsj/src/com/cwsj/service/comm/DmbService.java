package com.cwsj.service.comm;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("dmbService")
public class DmbService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent ckJdxz(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		String XZQHSZ_DM=(String) req.getAttr("XZQHSZ_DM");
		List<Map> jdxzSelect =(List<Map>) dao.findForList("ZbglMapper.selectQuerrjdxz", XZQHSZ_DM);
		res.addSelect("jdxzselect", jdxzSelect);  
		return res;
	}	
}
