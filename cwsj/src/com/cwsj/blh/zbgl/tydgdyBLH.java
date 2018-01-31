package com.cwsj.blh.zbgl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
import com.platform.event.ZTreeVO;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

public class tydgdyBLH extends BaseBLH{

	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		List<Map> dglxselect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerryDglx", null);
		res.addSelect("dglxselect", dglxselect);	
		List<Map> listdg =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.listQuerrytydg", null);
		res.addGrid("listdg", listdg);		
		res.addPage("zbgl/tydg_list");
		return res;
	}
	
	public BaseResponseEvent initDgdy(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String dgdm=(String) req.getAttr("DG_DM");
		List<ZTreeVO> ysjtree =(List<ZTreeVO>) BaseDAO.getInstance().findForList("ZbglMapper.treeQuerrysj", null);
		res.addTree("ysjtree", ysjtree);
		res.addObject("DG_DM", dgdm);
		res.addPage("zbgl/tydgdy");
		return res;
	}
	
	public BaseResponseEvent initTydgmain(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String dgdm=(String) req.getAttr("DG_DM");
		List<Map> dglxselect =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.selectQuerryDglx", null);
		res.addSelect("dglxselect", dglxselect);
		if(!"dgdm".equals(dgdm)&&dgdm!=null){
			HashMap param=new HashMap();
			param.put("DG_DM", dgdm);
			HashMap dgnr =(HashMap) BaseDAO.getInstance().findForObject("ZbglMapper.listQuerrytydg", param);
			res.addObject("dgnr", dgnr);			
		}			
		res.addPage("zbgl/tydgmain");
		return res;
	}
	public BaseResponseEvent querryDg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		List<Map> zbl=req.getGrid("listzb");
		Map cxtjform=req.getForm("cxtjform");
		List<Map> listdg =(List<Map>) BaseDAO.getInstance().findForList("ZbglMapper.listQuerrytydg", cxtjform);
		res.addGrid("listdg", listdg);
		//res.addPage("zbgl/zb_list");
		return res;
	}
	public BaseResponseEvent saveDg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO dao=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String zzjgdm=user.getZZJG_ID();
		PageData pageData=req.getPageData();
		pageData.put("LRRY_DM", USERID);
		String DG_DM=(String) pageData.get("DG_DM");
		if("".equals(DG_DM)||DG_DM==null){
			//DG_DM=UUID.randomUUID().toString().replace("-","");
			DG_DM=XtbmUtil.getXtbm("DG", zzjgdm);
			pageData.put("DG_DM", DG_DM);
		}
		BaseDAO.getInstance().delete("ZbglMapper.deleteTydg", DG_DM);
		BaseDAO.getInstance().save("ZbglMapper.insertTydg", pageData);
        res.addObject("DG_DM", DG_DM);
		res.addMessage("保存成功");
		return res;
	}	
}
