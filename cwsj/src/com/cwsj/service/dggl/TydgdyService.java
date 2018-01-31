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
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.ZTreeVO;
@Service("tydgdyService")
public class TydgdyService{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		List<Map> dglxselect =(List<Map>) dao.findForList("ZbglMapper.selectQuerryDglx", null);
		res.addSelect("dglxselect", dglxselect);	
		List<Map> listdg =(List<Map>) dao.findForList("ZbglMapper.listQuerrytydg", null);
		res.addGrid("listdg", listdg);		
		res.addPage("zbgl/tydg_list");
		return res;
	}
	
	public BaseResponseEvent initDgdy(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String dgdm=(String) req.getAttr("DG_DM");
		List<ZTreeVO> ysjtree =(List<ZTreeVO>) dao.findForList("ZbglMapper.treeQuerrysj", null);
		res.addTree("ysjtree", ysjtree);
		res.addObject("DG_DM", dgdm);
		res.addPage("zbgl/tydgdy");
		return res;
	}
	
	public BaseResponseEvent initTydgmain(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String dgdm=(String) req.getAttr("DG_DM");
		List<Map> dglxselect =(List<Map>) dao.findForList("ZbglMapper.selectQuerryDglx", null);
		res.addSelect("dglxselect", dglxselect);
		if(!"dgdm".equals(dgdm)&&dgdm!=null){
			HashMap param=new HashMap();
			param.put("DG_DM", dgdm);
			HashMap dgnr =(HashMap) dao.findForObject("ZbglMapper.listQuerrytydg", param);
			res.addObject("dgnr", dgnr);			
		}			
		res.addPage("zbgl/tydgmain");
		return res;
	}
	
	public BaseResponseEvent initMytydgmain(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String dgdm=(String) req.getAttr("DG_DM");
		if(!"dgdm".equals(dgdm)&&dgdm!=null){
			HashMap param=new HashMap();
			param.put("DG_DM", dgdm);
			param.put("LSH", req.getAttr("LSH"));
			HashMap dgnr =(HashMap) dao.findForObject("SjsjtsMapper.listQuerryMytydg", param);
			if(dgnr==null||"".equals(dgnr.get("DG_DM"))||dgnr.get("DG_DM")==null){
				dgnr =(HashMap) dao.findForObject("SjsjtsMapper.listQuerrytydg", param);
			}
			dgnr.put("LSH", req.getAttr("LSH"));
			dgnr.put("DG_DM", dgdm);
			res.addObject("dgnr", dgnr);			
		}			
		res.addPage("dggl/tydg/mytydgmain");
		return res;
	}
	public BaseResponseEvent querryDg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		List<Map> zbl=req.getGrid("listzb");
		Map cxtjform=req.getForm("cxtjform");
		List<Map> listdg =(List<Map>) dao.findForList("ZbglMapper.listQuerrytydg", cxtjform);
		res.addGrid("listdg", listdg);
		//res.addPage("zbgl/zb_list");
		return res;
	}
	public BaseResponseEvent saveDg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjgdm=user.getZZJG_ID();
		String DG_DM=(String) req.getAttr("DG_DM");
//		if("".equals(DG_DM)||DG_DM==null){
//			//DG_DM=UUID.randomUUID().toString().replace("-","");
//			DG_DM=XtbmUtil.getXtbm("DG", zzjgdm);
//		}
		Map param=new HashMap();
		param.put("DG_DM", DG_DM);

		List<Map> listtsdg =(List<Map>) dao.findForList("ZbglMapper.listQuerrytsdg", param);
		if(listtsdg.size()>0){
			res.addMessage("该底稿代码已存在于定制底稿中，请使用其他底稿代码");
			return res;		
		}
		List<Map> listtydg =(List<Map>) dao.findForList("ZbglMapper.listQuerrytydg", param);
		param.put("DGNR", req.getAttr("DGNR"));
		param.put("DG_MC", req.getAttr("DG_MC"));
		param.put("DGLX_DM", req.getAttr("DGLX_DM"));
		if(listtydg.size()>0){
			dao.update("ZbglMapper.updateTydg", param);	
		}else{
			dao.save("ZbglMapper.insertTydg", param);		
		}
//		dao.delete("ZbglMapper.deleteTydg", DG_DM);
		String filePath=(String) req.getAttr("filePath");
		if(filePath!=null&&!"".equals(filePath)){
			param.put("filePath", req.getAttr("filePath"));
			param.put("fileName", req.getAttr("fileName"));
			dao.update("ZbglMapper.updateTydgFilemb", param);			
		}
        res.addObject("DG_DM", DG_DM);
		res.addMessage("保存成功");
		return res;
	}	
	public BaseResponseEvent deleteDg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjgdm=user.getZZJG_ID();
		Map formMap=req.getForm("cxtjform");
		List<Map> gridList=req.getGrid("listdg");
		boolean flag=false;
		for(Map dgMap:gridList){
			String DG_DM=(String) dgMap.get("DG_DM");
			dao.delete("ZbglMapper.deleteTydg", DG_DM);	
			flag=true;
		}
		if(flag){
			res.addMessage("删除成功!");		
		}
		return res;
	}		
	public BaseResponseEvent saveMyDg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjgdm=user.getZZJG_ID();
		String DG_DM=(String) req.getAttr("DG_DM");
		Map param=new HashMap();
		param.put("DG_DM", DG_DM);
		param.put("DGNR", req.getAttr("DGNR"));
		param.put("LSH", req.getAttr("LSH"));
		List<Map> listtydg =(List<Map>) dao.findForList("SjsjtsMapper.listQuerryMytydg", param);
		if(listtydg.size()>0){
			dao.update("SjsjtsMapper.updateTydg", param);	
		}else{
			dao.save("SjsjtsMapper.insertTydg", param);		
		}
//		dao.delete("ZbglMapper.deleteTydg", DG_DM);
		String filePath=(String) req.getAttr("filePath");
		if(filePath!=null&&!"".equals(filePath)){
			param.put("filePath", req.getAttr("filePath"));
			param.put("fileName", req.getAttr("fileName"));
			dao.update("SjsjtsMapper.updateTydgFilemb", param);			
		}
        res.addObject("DG_DM", DG_DM);
		res.addMessage("保存成功");
		return res;
	}		
	public void saveTsdgMb(String dgdm,String filePath,String fileName) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Map param=new HashMap();
		param.put("DG_DM", dgdm);
		param.put("filePath", filePath);
		param.put("fileName", fileName);
		dao.update("ZbglMapper.updateTydgFilemb", param);
	}
	
	public void saveMyTsdgMb(String LSH,String dgdm,String filePath,String fileName) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Map param=new HashMap();
		param.put("LSH",LSH);
		param.put("DG_DM", dgdm);
		param.put("filePath", filePath);
		param.put("fileName", fileName);
		dao.update("SjsjtsMapper.updateTydgFilemb", param);
	}
}
