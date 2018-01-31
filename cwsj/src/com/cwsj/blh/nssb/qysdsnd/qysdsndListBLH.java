package com.cwsj.blh.nssb.qysdsnd;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.cwsj.vo.ysjgl.BzsjxVO;
import com.fh.util.Logger;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

@Service("qysdsndListBLH")
public class qysdsndListBLH   extends BaseBLH{
	protected Logger logger = Logger.getLogger(this.getClass());
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String swglm=(String) req.getAttr("swglm");
		logger.info("开始查询QysdsndMapper.listQuerrySbbqk");
		List<Map> qysdsndList =(List<Map>) BaseDAO.getInstance().findForList("QysdsndMapper.listQuerrySbbqk", null);
		logger.info("查询结束，获取list");
		res.addObject("qysdsndList", qysdsndList);
		res.addPage("nssb/qysdsnd/qysdsndList");
		return res;
	}
}
