package com.cwsj.blh.nssb.qysdsnd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.cwsj.vo.ysjgl.BzsjxVO;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("qysdsndIndexBLH")
public class qysdsndIndexBLH  extends BaseBLH{
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzxh");
		pageData.put("PZ_XH", pzxh);
		HashMap qyjbxx =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.listQuerrySbbqk", pageData);
		res.addObject("qyjbxx", qyjbxx);
		List<Map> ksbList =(List<Map>) BaseDAO.getInstance().findForList("QysdsndMapper.listQuerrksb", pzxh);
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
			PersistenceDAO persistenceDAO=this.getPersistenceDAO();
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
	        BaseDAO.getInstance().callProcedere("ZbjgrwMapper.P_SJ_SB_QYSDSSC", promap);  
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
				PersistenceDAO persistenceDAO=this.getPersistenceDAO();
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
		        BaseDAO.getInstance().callProcedere("ZbjgrwMapper.P_SJ_SB_QYSDSJS", promap);  
		        msg=(String) promap.get("V_MSG");
		        sucbj=(String) promap.get("V_SUCBJ");	
		        res.addCode(sucbj);
				res.addMessage(msg);
				return res;
			}	
			
			public BaseResponseEvent tsshSbb(BaseRequestEvent req) throws Exception{
				PersistenceDAO persistenceDAO=this.getPersistenceDAO();
				BaseResponseEvent res=new BaseResponseEvent();
				PageData pageData=req.getPageData();
		        String pzxh=(String)req.getAttr("pzxh");	
		        Map param=new HashMap();
		        param.put("pzxh", pzxh);
		        Map formmap =(Map) BaseDAO.getInstance().findForObject("SjsjtsMapper.querySbbtszt", param);
		        if("1".equals(formmap.get("tsshbj"))){
		        	BaseDAO.getInstance().save("SjsjtsMapper.shSbb",param);
		        	res.addMessage("回收成功");
		        }else{
		        	BaseDAO.getInstance().save("SjsjtsMapper.tsSbb",param);
		        	res.addMessage("推送成功");
		        }
				res.addObject("tsshbj", formmap.get("tsshbj"));
				
				return res;
			}
}
