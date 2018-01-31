package com.cwsj.service.nssb.qysdsnd;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.tool.PlatformUtil;
@Service("wb395A105040Service")
public class Wb395A105040Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
			
		List<Map> listA105040=(List<Map>) dao.findForList("AqysdsMapper.listQuerryA105040", pzxh);
		res.addGrid("listA105040", listA105040);
		res.addObject("PZXH", pzxh);
		
		res.addPage("nssb/qysdsnd/wb395_A105040");
		return res;
	} 
	
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		
		List<Map> listA105040=req.getGrid("listA105040");
		String PZXH=(String) req.getAttr("PZXH");  

		dao.delete("GxqysdsGridMapper.deleteA105040", PZXH);
		dao.batchSave("GxqysdsGridMapper.insertA105040", PlatformUtil.addGridcolvalue(listA105040,"PZXH",PZXH));
		
        res.addMessage("保存成功");
		return res;
	}	
}
