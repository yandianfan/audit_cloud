package com.cwsj.service.nssb.qysdsnd;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.fh.dao.DaoSupport;
import com.fh.util.Logger;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

@Service("qysdsndListService")
public class QysdsndListService{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	protected Logger logger = Logger.getLogger(this.getClass());
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String swglm=(String) req.getAttr("swglm");
		logger.info("开始查询QysdsndMapper.listQuerrySbbqk");
		List<Map> qysdsndList =(List<Map>)dao.findForList("QysdsndMapper.listQuerrySbbqk", null);
		logger.info("查询结束，获取list");
		res.addObject("qysdsndList", qysdsndList);
		res.addPage("nssb/qysdsnd/qysdsndList");
		return res;
	}
}
