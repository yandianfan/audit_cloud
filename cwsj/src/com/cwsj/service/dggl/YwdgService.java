package com.cwsj.service.dggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.util.XtbmUtil;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Service("ywdgService")
public class YwdgService extends BaseBLH {
	private static final Object[] String = null;
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String DG_DM=(String) req.getAttr("DG_DM");
        String LSH=(String) req.getAttr("LSH");
        Map param=new HashMap();
        param.put("LSH", LSH);
        param.put("DG_DM", DG_DM);
        
		Map Dgurlmap =(Map) dao.findForObject("SjsjtsMapper.Dgurl", param);
		String URL=(String) Dgurlmap.get("URL");
		
		List<Map> listFxxx =(List<Map>)dao.findForList("SjsjtsMapper.listQuerryfxxx", param);
		res.addGrid("listFxxx", listFxxx);	
		
		Map zdbgform =(Map) dao.findForObject("SjsjtsMapper.mapQuerryZdbg", param);
		zdbgform.put("URL", URL);
		res.addForm("zdbgform", zdbgform); 
		
		Map jdxxform =(Map)dao.findForObject("SjsjtsMapper.mapQuerryZdbg", param);
		res.addForm("jdxxform", jdxxform); 
		res.addObject("DGMC", listFxxx.get(0).get("DG_MC"));
		Map formmap =(Map) dao.findForObject("SjsjtsMapper.queryFxtszt", param);
		res.addObject("tsshbj", formmap.get("tsshbj"));
		
		res.addPage("dggl/tydg/Tydggl");
		return res;
	}
	
	public BaseResponseEvent saveZdbg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Map zdbgform=req.getForm("zdbgform");	
		Map jdxxform=req.getForm("jdxxform");
		
		dao.delete("SjsjtsMapper.deleteZdbgmap", zdbgform);
			
		jdxxform.putAll(zdbgform);		
		dao.save("SjsjtsMapper.insertZdbgmap",jdxxform);
		
		/*Map formmap =(Map) dao.findForObject("SjsjtsMapper.zdbgJdsmjl", zdbgform);
				
		if(formmap==null||"".equals(formmap)){

		}
		else{
			String YSJDSMJL=(String) formmap.get("JDSMJL");	
					
            String[] DGJDSMJL = YSJDSMJL.split("#");          
            String DGJDSMJL1 = DGJDSMJL[0].toString();
            
			jdxxform.put("DGJDSMJL", DGJDSMJL1);
			dao.update("SjsjtsMapper.updateZdbgJdsmjl", jdxxform);			
		} */
		res.addMessage("保存成功");
		return res;
	}

	public BaseResponseEvent tsshFxxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String LSH=(String)req.getAttr("LSH");	
        String DGDM=(String)req.getAttr("DGDM");	
        Map param=new HashMap();
        param.put("LSH", LSH);
        param.put("DG_DM", DGDM);
        Map formmap =(Map) dao.findForObject("SjsjtsMapper.queryFxtszt", param);
		if(formmap==null){
			formmap=new HashMap();
		}
        if("1".equals(formmap.get("tsshbj"))){
        	dao.save("SjsjtsMapper.shFxxx",param);
        	res.addMessage("回收成功");
        }else{
        	dao.save("SjsjtsMapper.tsFxxx",param);
        	res.addMessage("推送成功");
        }
		res.addObject("tsshbj", formmap.get("tsshbj"));
		
		return res;
	}
}
