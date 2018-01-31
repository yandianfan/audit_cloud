package com.cwsj.service.ysjgl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.cwsj.util.Const;
import com.cwsj.vo.login.Gnzy;
import com.cwsj.vo.ysjgl.BzsjxVO;
import com.fh.dao.DaoSupport;
import com.fh.dao.DaoSupport;
import com.fh.entity.system.Menu;
import com.fh.entity.system.Role;
import com.cwsj.vo.login.User;
import com.fh.util.PageData;
import com.platform.blh.BaseBLH;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;

@Service("SjywhService")
public class SjywhService extends BaseBLH  {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent qyinit(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		List<Map> sjxdlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxdl", null);
		res.addSelect("sjxdlSelect", sjxdlList);
		List<Map> sjxxlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxxl", null);
		res.addSelect("sjxxlSelect", sjxxlList);
		List<Map> listysj =(List<Map>) dao.findForList("YsjglMapper.listQuerrysjqy", USERID);
		res.addGrid("listysj", listysj);		
		res.addPage("ysjgl/qysjsq_list");
		return res;
	}
	
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		List<BzsjxVO> list=new ArrayList<BzsjxVO>();		
		list=(List<BzsjxVO>) dao.findForList("YsjglMapper.listQuerryBzsjx", null);
		List<Map> sjxdlList =(List<Map>) dao.findForList("YsjglMapper.listQuerrySjxdl", null);
		res.addSelect("sjxdlList", sjxdlList);
		res.addPage("ysjgl/ysj_list");
		return res;
	}
	
	public BaseResponseEvent initWpp(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String LSH=(String) req.getAttr("lsh");
		String SJX_XH=(String) req.getAttr("sjxxh");
		HashMap param=new HashMap();
		param.put("LSH", LSH);
		List<Map> ysjList =(List<Map>) dao.findForList("YsjglMapper.listQueryYssjz", param);
		res.addObject("LSH", LSH);
		res.addObject("SJX_XH", SJX_XH);
		res.addGrid("dppList", ysjList);
		res.addPage("ysjgl/ysj_sjzwh");
		return res;
	}	
	public BaseResponseEvent querryDpp(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		String LSH=(String) req.getAttr("LSH");
		String SJX_MC=(String) req.getAttr("SJX_MC");
		HashMap param=new HashMap();
		param.put("LSH", LSH);
		param.put("SJX_MC", SJX_MC);
		List<Map> dppList =(List<Map>) dao.findForList("YsjglMapper.listQueryYssjz", param);
		res.addGrid("dppList", dppList);
		return res;
	}		
	public BaseResponseEvent saveSjx(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO dao=this.getPersistenceDAO();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String DJXH=(String) req.getAttr("DJXH");
//		String SJX_MC=(String) req.getAttr("SJX_MC");
//		String SJX_VALUE=(String) req.getAttr("SJX_VALUE");
		String kmcode=(String) req.getAttr("kmcode");
		String kmname=(String) req.getAttr("kmname");
		String s_jfye=(String) req.getAttr("s_jfye");
		String s_dfye=(String) req.getAttr("s_dfye");
		String b_jffs=(String) req.getAttr("b_jffs");
		String b_dffs=(String) req.getAttr("b_dffs");
		String e_jfye=(String) req.getAttr("e_jfye");
		String e_dfye=(String) req.getAttr("e_dfye");
		String SJX_XH=(String) req.getAttr("SJX_XH");
		String SJX_MC=(String) req.getAttr("SJX_MC");
		HashMap param=new HashMap();
		param.put("kmcode", kmcode);
		param.put("kmname", kmname);
		param.put("s_jfye", s_jfye);
		param.put("s_dfye", s_dfye);
		param.put("b_jffs", b_jffs);
		param.put("b_dffs", b_dffs);
		param.put("e_jfye", e_jfye);
		param.put("e_dfye", e_dfye);
		param.put("LSH", LSH);
		param.put("DJXH", DJXH);
		param.put("SJX_XH", SJX_XH);
		param.put("SJX_MC", SJX_MC);
		param.put("LRR_DM", USERID);
		dao.update("YsjglMapper.updateBzsjxvalue", param);
		dao.delete("YsjglMapper.deleteBzsjxdz", param);
		dao.save("YsjglMapper.insertBzsjxdz", param);
		//res.addMessage("保存成功");;
		return res;
	}
}
