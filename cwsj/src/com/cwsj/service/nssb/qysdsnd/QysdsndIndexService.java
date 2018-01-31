package com.cwsj.service.nssb.qysdsnd;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
@Service("qysdsndIndexService")
public class QysdsndIndexService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzxh");
		pageData.put("PZ_XH", pzxh);
		HashMap qyjbxx =(HashMap) dao.findForObject("QysdsndMapper.listQuerrySbbqk", pageData);
		res.addObject("qyjbxx", qyjbxx);
		List<Map> ksbList =(List<Map>) dao.findForList("QysdsndMapper.listQuerrksb", pzxh);
		res.addObject("ksbList", ksbList);
		res.addPage("nssb/qysdsnd/wb395Index");
		return res;
	}   
	/**
	 * 加工申报表	
	 * @param req
	 * @param persistenceDAO
	 * @param jcsxform
	 * @return
	 * @throws Exception
	 */
		public BaseResponseEvent jgSbb(BaseRequestEvent req) throws Exception{
			BaseResponseEvent res=new BaseResponseEvent();
			PageData pageData=req.getPageData();
			String PZXH=(String) req.getAttr("PZXH");
			String FBPZZLDM=(String) req.getAttr("FBPZZLDM");
			//------加工工作底稿----------------
			List<Map> sjzhlist=null;
			Map<String, Object> promap =null;
			String sucbj=null;
			String msg=null;
			promap = new HashMap<String, Object>();  
			promap.put("V_PZXH", PZXH);     
			promap.put("V_FBPZZLDM", FBPZZLDM);  
	        dao.callProcedere("ZbjgrwMapper.P_SJ_SB_QYSDSSC", promap);  
	        msg=(String) promap.get("V_MSG");
	        sucbj=(String) promap.get("V_SUCBJ");	
	        res.addCode(sucbj);
			res.addMessage(msg);
			return res;
		}	
		/**
		 * 计算申报表
		 * @param req
		 * @param persistenceDAO
		 * @param jcsxform
		 * @return
		 * @throws Exception
		 */
			public BaseResponseEvent jsSbb(BaseRequestEvent req) throws Exception{
				BaseResponseEvent res=new BaseResponseEvent();
				PageData pageData=req.getPageData();
				String PZXH=(String) req.getAttr("PZXH");
				String FBPZZLDM=(String) req.getAttr("FBPZZLDM");
				//------加工工作底稿----------------
				List<Map> sjzhlist=null;
				Map<String, Object> promap =null;
				String sucbj=null;
				String msg=null;
				promap = new HashMap<String, Object>();  
				promap.put("V_PZXH", PZXH);     
				promap.put("V_FBPZZLDM", FBPZZLDM);  
		        dao.callProcedere("ZbjgrwMapper.P_SJ_SB_QYSDSJS", promap);  
		        msg=(String) promap.get("V_MSG");
		        sucbj=(String) promap.get("V_SUCBJ");	
		        res.addCode(sucbj);
				res.addMessage(msg);
				return res;
			}	
			
			public BaseResponseEvent tsshSbb(BaseRequestEvent req) throws Exception{
				BaseResponseEvent res=new BaseResponseEvent();
				PageData pageData=req.getPageData();
		        String pzxh=(String)req.getAttr("pzxh");	
		        Map param=new HashMap();
		        param.put("pzxh", pzxh);
		        Map formmap =(Map) dao.findForObject("SjsjtsMapper.querySbbtszt", param);
		        if(formmap==null){
		        	formmap=new HashMap();
		        }
		        if("1".equals(formmap.get("tsshbj"))){
		        	dao.save("SjsjtsMapper.shSbb",param);
		        	res.addMessage("回收成功");
		        }else{
		        	dao.save("SjsjtsMapper.tsSbb",param);
		        	res.addMessage("推送成功");
		        }
				res.addObject("tsshbj", formmap.get("tsshbj"));
				
				return res;
			}
}
