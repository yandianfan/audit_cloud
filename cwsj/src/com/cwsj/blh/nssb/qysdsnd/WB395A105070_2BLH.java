package com.cwsj.blh.nssb.qysdsnd;

import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;

public class WB395A105070_2BLH {
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzxh");
		pageData.put("PZ_XH", pzxh);
//		HashMap qyjbxx =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.listQuerrySbbqk", pageData);
//		res.addObject("qyjbxx", qyjbxx);
//		List<Map> ksbList =(List<Map>) BaseDAO.getInstance().findForList("QysdsndMapper.listQuerrksb", pzxh);
//		res.addObject("ksbList", ksbList);
		res.addPage("nssb/qysdsnd/WB395_A105070_2");
		                          
		return res;
	} 
}

