package com.cwsj.blh.nssb.qysdsnd;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fh.util.Logger;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class WB395A000000BLH原版本备份   extends BaseBLH {
	protected Logger logger = Logger.getLogger(this.getClass());
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");  //可以获取地址链接里面的参数
		pageData.put("PZ_XH", pzxh);       //输入参数
		HashMap qyjbxx =(HashMap) persistenceDAO.findForObject("QysdsndMapper.listQuerryA000000", pageData);
		res.addObject("qyjbxx", qyjbxx);

		//logger.info("开始查询QysdsndMapper.listQuerryA000000_zygd");
		List<Map> zyGdList =(List<Map>) persistenceDAO.findForList("QysdsndMapper.listQuerryA000000_zygd", pzxh);
		logger.info("查询结束，获取list");
		res.addObject("zyGdList", zyGdList);
		
		//logger.info("开始查询QysdsndMapper.listQuerryA000000_dwtz");
		List<Map> dwtzList =(List<Map>) persistenceDAO.findForList("QysdsndMapper.listQuerryA000000_dwtz", pzxh);
		logger.info("查询结束，获取list");
		res.addObject("dwtzList", dwtzList);
		
		//logger.info("开始查询QysdsndMapper.listQuerryZjlx");		
		List<Map> zjlxList =(List<Map>) persistenceDAO.findForList("QysdsndMapper.listQuerryZjlx", null);
		logger.info("查询结束，获取list");
		res.addObject("zjlxList", zjlxList);			
		
		
		List<Map> djzcselect =(List<Map>) persistenceDAO.findForList("QysdsndMapper.selectQuerryDjzc", null);
		logger.info("查询结束，获取list");
		res.addObject("djlxList", djzcselect);	
		
		List<Map> gjselect =(List<Map>) persistenceDAO.findForList("QysdsndMapper.selectQuerryGj", null);
		logger.info("查询结束，获取list");
		res.addObject("gjList", gjselect);	
		
		res.addPage("nssb/qysdsnd/wb395_A000000");
		return res;
	}  
}
