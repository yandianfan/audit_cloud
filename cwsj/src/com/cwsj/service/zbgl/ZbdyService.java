package com.cwsj.service.zbgl;

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
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
import com.platform.tool.PlatformUtil;

@Service("zbdyService")
public class ZbdyService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		List<Map> listzb =(List<Map>) dao.findForList("ZbglMapper.listQuerryzb", null);
		res.addGrid("listzb", listzb);
		List<Map> zblxselect =(List<Map>) dao.findForList("ZbglMapper.selectQuerryZblx", null);
		res.addSelect("zblxselect", zblxselect);	
		List<Map> jslsjbselect =(List<Map>) dao.findForList("ZbglMapper.listQuerryzhlsjb", null);
		res.addSelect("jslsjbselect", jslsjbselect);
		res.addPage("zbgl/zb_list");
		return res;
	}
	public BaseResponseEvent zbinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String zbdm=(String) req.getAttr("zbdm");
		List<Map> zblxselect =(List<Map>) dao.findForList("ZbglMapper.selectQuerryZblx", null);
		res.addSelect("fxzblx", zblxselect);
		List<ZTreeVO> ysjtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrysj", null);
		res.addTree("ysjtree", ysjtree);
		List<Map> jslsjbselect =(List<Map>) dao.findForList("ZbglMapper.listQuerryzhlsjb", null);
		res.addSelect("jslsjbselect", jslsjbselect);
		res.addPage("zbgl/zbdymain");
		return res;
	}	
	
	public BaseResponseEvent zbdyinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String zbdm=(String) req.getAttr("zbdm");
		List<Map> zblxselect =(List<Map>) dao.findForList("ZbglMapper.selectQuerryZblx", null);
		res.addSelect("fxzblx", zblxselect);
		List<ZTreeVO> hytree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrhy", null);
		res.addTree("hytree", hytree);
//		List<ZTreeVO> ysjtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrysj", null);
//		res.addTree("ysjtree", ysjtree);
		List<Map> jslsjbselect =(List<Map>) dao.findForList("ZbglMapper.listQuerryzhlsjb", null);
		res.addSelect("jslsjbselect", jslsjbselect);
		List<Map> gzdgselect =(List<Map>) dao.findForList("ZbglMapper.listQuerrygzdg", null);
		res.addSelect("gzdgselect", gzdgselect);
		HashMap zbnr =(HashMap) dao.findForObject("ZbglMapper.formQuerryzb", zbdm);
		res.addForm("jcsxform", zbnr);	
        List<Map> listSjly =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjly", zbdm);
		res.addGrid("listSjly", listSjly);
        List<Map> listSjly2 =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjly2", zbdm);
		res.addGrid("listSjly2", listSjly2);
        List<Map> listKzz =(List<Map>) dao.findForList("ZbglMapper.gridQuerrkzz", zbdm);
		res.addGrid("listKzz", listKzz);
		List<Map> QCQM =(List<Map>) dao.findForList("CommMapper.selectQuerryQcqm", null);
		res.addSelect("QCQM", QCQM);
		List<Map> JFDF =(List<Map>) dao.findForList("CommMapper.selectQuerryJfdf", null);
		res.addSelect("JFDF", JFDF);
		List<Map> ND =(List<Map>) dao.findForList("CommMapper.selectQuerryNd", null);
		res.addSelect("ND", ND);
		String sjb=(String) zbnr.get("jslsjbselect");
		String zblx=(String) zbnr.get("fxzblx");
		HashMap param=new HashMap();        
        if(("01".equals(zblx)||zblx=="01")&&zbdm!=null&&!"".equals(zbdm)){
        	param.put("zbdm", zbdm);
    		List<Map> listZhgs =(List<Map>) dao.findForList("ZbglMapper.gridQuerrzbsjx", param);
    		res.addGrid("listZhgs", listZhgs);      	
        }else if(("01".equals(zblx)||zblx=="01")&&sjb!=null&&!"".equals(sjb)){
        	param.put("sjb", sjb);
    		List<Map> listZhgs =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjx", param);
    		res.addGrid("listZhgs", listZhgs);         	
        }
		List<ZTreeVO> ysjtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrysj", null);
		res.addTree("ysjtree", ysjtree);       
//        else{
//        	String gsnr=(String) zbnr.get("ZBGS");
//        	String sbtj=(String) zbnr.get("SBTJ");
//        	res.addObject("gsnr", gsnr);
//        	res.addObject("sbtj", sbtj);
//        }
		res.addPage("zbgl/zbdymain");
		return res;
	}	
	public BaseResponseEvent querryZb(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		List<Map> zbl=req.getGrid("listzb");
		Map cxtjform=req.getForm("cxtjform");
		List<Map> listzb =(List<Map>) dao.findForList("ZbglMapper.listQuerryzb", cxtjform);
		res.addGrid("listzb", listzb);
		res.addCode("1");
		res.addMessage("查询成功");
		//res.addPage("zbgl/zb_list");
		return res;
	}
	public BaseResponseEvent initZhgs(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String zbdm=(String) req.getAttr("zbdm");
        String sjb=(String) req.getAttr("sjb");
        HashMap param=new HashMap();       
        List<Map> listZhgs=null;
        if(zbdm!=null&&!"".equals(zbdm)){
        	param.put("zbdm", zbdm);
    		listZhgs =(List<Map>) dao.findForList("ZbglMapper.gridQuerrzbsjx", param);
    		res.addGrid("listZhgs", listZhgs);      	
        }else if(sjb!=null&&!"".equals(sjb)){
        	param.put("sjb", sjb);
    		listZhgs =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjx", param);
    		res.addGrid("listZhgs", listZhgs);         	
        }
		res.addGrid("listZhgs", listZhgs);
		return res;
	}
	
	public BaseResponseEvent saveZbxx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjgdm=user.getZZJG_ID();
		PageData pageData=req.getPageData();
        String gsnr=(String) req.getAttr("gsnr");
        String sbtj=(String) req.getAttr("sbtj");
        String fxtxxx=(String) req.getAttr("fxtxxx");
        Map jcsxform=req.getForm("jcsxform");
        List<Map> listZhgs=req.getGrid("listZhgs");
        List<Map> listSjly=req.getGrid("listSjly");
        List<Map> listSjly2=req.getGrid("listSjly2");
        List<Map> listKzz=req.getGrid("listKzz");
        String zbdm=(String) jcsxform.get("FXZB_DM");
		String zblx=(String) jcsxform.get("fxzblx");
		if("".equals(zbdm)||zbdm==null){
			if("01".equals(zblx)){
				zbdm=(String) jcsxform.get("jslsjbselect");
			}else{
				zbdm=XtbmUtil.getXtbm("ZB", zzjgdm);
			}			            
		}
		res.addObject("FXZB_DM", zbdm);
		jcsxform.put("FXZB_DM", zbdm);
//		if("01".equals(zblx)){
//			dao.delete("ZbglMapper.deleteZhgs", zbdm);
//			dao.delete("ZbglMapper.deleteFxzb", zbdm);
//			dao.save("ZbglMapper.insertFxzb", jcsxform);
//			dao.batchSave("ZbglMapper.insertZhgs", listZhgs);
//		}else{
//	        HashMap param=new HashMap(); 
//	        param.put("FXZB_DM", zbdm);
//	        param.put("GSNR", gsnr);
//	        param.put("SBTJ", sbtj);
//	        param.put("FXTX", fxtxxx);
//	        param.put("LRR_DM", USERID);
//	        jcsxform.put("LRR_DM", USERID);
//			dao.delete("ZbglMapper.deleteZbgs", zbdm);
//			dao.delete("ZbglMapper.deleteKzz", zbdm);
//			dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvalue(listSjly, "zbdm", zbdm));
//			dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvalue(listSjly2, "zbdm", zbdm));
//			dao.delete("ZbglMapper.deleteFxzb", zbdm);
//			dao.save("ZbglMapper.insertFxzb", jcsxform);
//			dao.batchSave("ZbglMapper.insertKzz", PlatformUtil.addGridcolvalue(listKzz,"zbdm",zbdm));
//			dao.save("ZbglMapper.insertZbgs", param);			
//			dao.batchSave("ZbglMapper.insertSjly", PlatformUtil.addGridcolvaluepro(listSjly,null,null,"name,id","SJLY_MC,SJLY_XH"));
//			dao.batchSave("ZbglMapper.insertSjly", PlatformUtil.addGridcolvaluepro(listSjly2,"QCQM,JFDF", ",02,00","name,id","SJLY_MC,SJLY_XH"));
//		}      
        HashMap param=new HashMap(); 
        param.put("FXZB_DM", zbdm);
        param.put("GSNR", gsnr);
        param.put("SBTJ", sbtj);
        param.put("FXTX", fxtxxx);
        param.put("LRR_DM", USERID);
        jcsxform.put("LRR_DM", USERID);
		dao.delete("ZbglMapper.deleteZbgs", zbdm);
		dao.delete("ZbglMapper.deleteKzz", zbdm);
		dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvalue(listSjly, "zbdm", zbdm));
		dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvalue(listSjly2, "zbdm", zbdm));
		dao.delete("ZbglMapper.deleteFxzb", zbdm);
		dao.save("ZbglMapper.insertFxzb", jcsxform);
		dao.batchSave("ZbglMapper.insertKzz", PlatformUtil.addGridcolvalue(listKzz,"zbdm",zbdm));
		dao.save("ZbglMapper.insertZbgs", param);			
		dao.batchSave("ZbglMapper.insertSjly", PlatformUtil.addGridcolvaluepro(listSjly,null,null,"name,id","SJLY_MC,SJLY_XH"));
		dao.batchSave("ZbglMapper.insertSjly", PlatformUtil.addGridcolvaluepro(listSjly2,"QCQM,JFDF", ",02,00","name,id","SJLY_MC,SJLY_XH"));

		res.addMessage("保存成功");
		return res;
	}		
/**
 * 生成数据来源	
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent insertSjly(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String zbdm=(String) req.getAttr("zbdm");
        Map param=new HashMap();
        List<Map> ysjtree=(List<Map>) req.getTree("ysjtree");
        Map Sjlymaxh =(Map) dao.findForObject("ZbglMapper.Querrsjlymaxxh", zbdm);
        //dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvaluepro(ysjtree, "zbdm", zbdm,"SJLY_XH","id"));
        dao.batchSave("ZbglMapper.insertSjly", PlatformUtil.addGridcolvaluepro(ysjtree, "zbdm,QCQM,JFDF,ND", zbdm+",02,00,00","SJLY_SM,SJLY_CS","name,name","XH",Integer.parseInt(Sjlymaxh.get("XH").toString())));
        param.put("zbdm",zbdm);
        List<Map> listSjly =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjly", param);
		res.addGrid("listSjly", listSjly);
        List<Map> listSjly2 =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjly2", param);
		res.addGrid("listSjly2", listSjly2);
		List<Map> QCQM =(List<Map>) dao.findForList("CommMapper.selectQuerryQcqm", null);
		res.addSelect("QCQM", QCQM);
		List<Map> JFDF =(List<Map>) dao.findForList("CommMapper.selectQuerryJfdf", null);
		res.addSelect("JFDF", JFDF);
		List<Map> ND =(List<Map>) dao.findForList("CommMapper.selectQuerryNd", null);
		res.addSelect("ND", ND);		
		res.addMessage("保存成功");
		return res;
	}	
/**
 * 删除数据来源	
 * @param req
 * @return
 * @throws Exception
 */
	public BaseResponseEvent deleteSjly(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String zbdm=(String) req.getAttr("zbdm");
        Map param=new HashMap();
        List<Map> listSjly=(List<Map>) req.getGrid("listSjly");
        List<Map> listSjly2=(List<Map>) req.getGrid("listSjly2");
        dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvalue(listSjly, "zbdm", zbdm));
        dao.batchDelete("ZbglMapper.deleteSjly", PlatformUtil.addGridcolvalue(listSjly2, "zbdm", zbdm));
        param.put("zbdm",zbdm);
        listSjly =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjly", param);
		res.addGrid("listSjly", listSjly);
        listSjly2 =(List<Map>) dao.findForList("ZbglMapper.gridQuerrsjly2", param);
		res.addGrid("listSjly2", listSjly2);
		List<Map> QCQM =(List<Map>) dao.findForList("CommMapper.selectQuerryQcqm", null);
		res.addSelect("QCQM", QCQM);
		List<Map> JFDF =(List<Map>) dao.findForList("CommMapper.selectQuerryJfdf", null);
		res.addSelect("JFDF", JFDF);
		List<Map> ND =(List<Map>) dao.findForList("CommMapper.selectQuerryNd", null);
		res.addSelect("ND", ND);
        res.addMessage("删除成功");
		return res;
	}		
}
