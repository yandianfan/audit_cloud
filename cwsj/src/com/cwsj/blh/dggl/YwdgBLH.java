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

public class YwdgBLH extends BaseBLH {
	private static final Object[] String = null;

	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO dao=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
        String DG_DM=(String) req.getAttr("DG_DM");
        String LSH=(String) req.getAttr("LSH");
        Map param=new HashMap();
        param.put("LSH", LSH);
        param.put("DG_DM", DG_DM);
        
		Map Dgurlmap =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.Dgurl", param);
		String URL=(String) Dgurlmap.get("URL");
		
		List<Map> listFxxx =(List<Map>)BaseDAO.getInstance().findForList("SjsjtsMapper.listQuerryfxxx", param);
		res.addGrid("listFxxx", listFxxx);	
		
		Map zdbgform =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.mapQuerryZdbg", param);
		zdbgform.put("URL", URL);
		res.addForm("zdbgform", zdbgform); 
		
		Map jdxxform =(Map)BaseDAO.getInstance().findForObject("SjsjtsMapper.mapQuerryZdbg", param);
		res.addForm("jdxxform", jdxxform); 
		res.addObject("DGMC", listFxxx.get(0).get("DG_MC"));
		Map formmap =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.queryFxtszt", param);
		res.addObject("tsshbj", formmap.get("tsshbj"));
		
		res.addPage("dggl/tydg/Tydggl");
		return res;
	}
	
	public BaseResponseEvent saveZdbg(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Map zdbgform=req.getForm("zdbgform");	
		Map jdxxform=req.getForm("jdxxform");
		
		BaseDAO.getInstance().delete("SjsjtsMapper.deleteZdbgmap", zdbgform);
			
		jdxxform.putAll(zdbgform);		
		BaseDAO.getInstance().save("SjsjtsMapper.insertZdbgmap",jdxxform);
		
		/*Map formmap =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.zdbgJdsmjl", zdbgform);
				
		if(formmap==null||"".equals(formmap)){

		}
		else{
			String YSJDSMJL=(String) formmap.get("JDSMJL");	
					
            String[] DGJDSMJL = YSJDSMJL.split("#");          
            String DGJDSMJL1 = DGJDSMJL[0].toString();
            
			jdxxform.put("DGJDSMJL", DGJDSMJL1);
			BaseDAO.getInstance().update("SjsjtsMapper.updateZdbgJdsmjl", jdxxform);			
		} */
		res.addMessage("保存成功");
		return res;
	}

	public BaseResponseEvent tsshFxxx(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String LSH=(String)req.getAttr("LSH");	
        String DGDM=(String)req.getAttr("DGDM");	
        Map param=new HashMap();
        param.put("LSH", LSH);
        param.put("DG_DM", DGDM);
        Map formmap =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.queryFxtszt", param);
        if("1".equals(formmap.get("tsshbj"))){
        	BaseDAO.getInstance().save("SjsjtsMapper.shFxxx",param);
        	res.addMessage("回收成功");
        }else{
        	BaseDAO.getInstance().save("SjsjtsMapper.tsFxxx",param);
        	res.addMessage("推送成功");
        }
		res.addObject("tsshbj", formmap.get("tsshbj"));
		
		return res;
	}
}
