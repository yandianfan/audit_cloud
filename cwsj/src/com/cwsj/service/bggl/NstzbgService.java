package com.cwsj.service.bggl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cwsj.util.Const;
import com.cwsj.util.DateUtil;
import com.cwsj.vo.login.User;
import com.fh.dao.DaoSupport;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.platform.event.BaseRequestEvent;
import com.platform.event.BaseResponseEvent;
import com.platform.event.ZTreeVO;

@Service("nstzbgService")
public class NstzbgService {
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	@Transactional
	public Map scBgnr(PageData pd) throws Exception {
		Map resmap=new HashMap();
		String LSH=(String) pd.get("LSH");
		//先查询所有的报告类型，将报告内容全部返回
		List<ZTreeVO> bglxtree =(List<ZTreeVO>)dao.findForList("NstzbgMapper.treeQuerrbglx", null);
		for(int i=0;i<bglxtree.size();i++){
			String BGLX_DM=(String) bglxtree.get(i).getId();
			if(!"".equals(BGLX_DM)&&BGLX_DM!=null){
				HashMap param=new HashMap();
				param.put("LSH", LSH);
				param.put("BGLX_DM", BGLX_DM);
				Map BGOBJ =(HashMap) dao.findForObject("NstzbgMapper.Querrbgnr", param);
				String BGNR_TEXT=(String)BGOBJ.get("BGNR_TEXT");
				String BGMC=(String)BGOBJ.get("BG_MC");
				String BG_XH=(String)BGOBJ.get("BG_XH");
				if("".equals(BGNR_TEXT)||BGNR_TEXT==null){//当存取的报告内容为空时，会取模板的报告内容，然后将模板的参数替换成具体值
					BGNR_TEXT=(String) BGOBJ.get("BGNR_MB_TEXT");
					Map promap = new HashMap<String, Object>();  
					promap.put("V_LSH", LSH); 
					promap.put("V_BGXH",BG_XH); 
					promap.put("V_BGNR",BGNR_TEXT);  
					//promap.put("V_BGNR_R",BGNR);  
					try{
						dao.findForObject("NstzbgMapper.P_SJ_BG_NSTZBGSC", promap); 
						BGNR_TEXT=(String) promap.get("V_BGNR_R");						
					}catch(Exception e){
						BGNR_TEXT=(String) promap.get("V_BGNR");	
					}
				}
				resmap.put("【"+BGMC+"】", BGNR_TEXT);
		        //BGNRALL.append("<br/>"+BGNR);
			}					
		}
		return resmap;
	}	
	
	public BaseResponseEvent init(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String)req.getAttr("LSH");
		List<ZTreeVO> bglxtree =(List<ZTreeVO>) dao.findForList("NstzbgMapper.treeQuerrbglx", null);
		res.addTree("bglxtree", bglxtree);	
        Map param=new HashMap();
        param.put("LSH", LSH);
		Map formmap =(Map) dao.findForObject("SjsjtsMapper.queryBgzt", param);
		res.addObject("tsshbj", formmap.get("tsshbj"));
		res.addObject("LSH", LSH);
		res.addPage("bggl/nstzbgmain");
		return res;
	}
	
	public BaseResponseEvent initBgnr(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String BGLX_DM=(String) req.getAttr("BGLX_DM");
		if(!"".equals(BGLX_DM)&&BGLX_DM!=null){
			HashMap param=new HashMap();
			param.put("LSH", LSH);
			param.put("BGLX_DM", BGLX_DM);
			Map BGOBJ =(HashMap)  dao.findForObject("NstzbgMapper.Querrbgnr", param);
			String BGNR=(String)BGOBJ.get("BGNR");
			String BG_XH=(String)BGOBJ.get("BG_XH");
			String IFHAPPEN=(String)BGOBJ.get("IFHAPPEN");
			String BGNR_NO=(String)BGOBJ.get("BGNR_NO");
			if("".equals(BGNR)||BGNR==null){//当存取的报告内容为空时，会取模板的报告内容，然后将模板的参数替换成具体值
				BGNR=(String) BGOBJ.get("BGNR_MB");
				Map promap = new HashMap<String, Object>();  
				promap.put("V_LSH", LSH); 
				promap.put("V_BGXH",BG_XH); 
				promap.put("V_BGNR",BGNR);  
				promap.put("V_BGNR_NO",BGNR_NO);
				//promap.put("V_BGNR_R",BGNR);  
		        dao.callProcedere("NstzbgMapper.P_SJ_BG_NSTZBGSC", promap);  
		        BGNR=(String) promap.get("V_BGNR_R");
		        IFHAPPEN=(String) promap.get("V_IFHAPPEN");
			}
	        BGOBJ.put("BGNR", BGNR);
	        BGOBJ.put("IFHAPPEN", IFHAPPEN);
			res.addObject("BGOBJ", BGOBJ);		
			res.addObject("LSH", LSH);	
		}				
		res.addPage("bggl/nstzbgnr");
		return res;
	}	
	@Transactional	
	public BaseResponseEvent viewBgnr(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		Map jcsxform =(Map) dao.findForObject("ZbglMapper.listQuerryRwjbxx", LSH);
		StringBuffer BGNRALL=new StringBuffer();
		//先查询所有的报告类型，将报告内容全部返回
		List<ZTreeVO> bglxtree =(List<ZTreeVO>) dao.findForList("NstzbgMapper.treeQuerrbglx", null);
		String mes="";
		for(int i=0;i<bglxtree.size();i++){
			String BGLX_DM=(String) bglxtree.get(i).getId();
			if(!"".equals(BGLX_DM)&&BGLX_DM!=null){
				HashMap param=new HashMap();
				param.put("LSH", LSH);
				param.put("BGLX_DM", BGLX_DM);
				Map BGOBJ =(HashMap)  dao.findForObject("NstzbgMapper.Querrbgnr", param);
				String BGNR=(String)BGOBJ.get("BGNR");
				String BG_XH=(String)BGOBJ.get("BG_XH");
				String BGLX_MC=(String)BGOBJ.get("BGLX_MC");
				String IFHAPPEN=(String)BGOBJ.get("IFHAPPEN");
				String BGNR_NO=(String)BGOBJ.get("BGNR_NO");
				if("".equals(BGNR)||BGNR==null){//当存取的报告内容为空时，会取模板的报告内容，然后将模板的参数替换成具体值
					BGNR=(String) BGOBJ.get("BGNR_MB");
					Map promap = new HashMap<String, Object>();  
					promap.put("V_LSH", LSH); 
					promap.put("V_BGXH",BG_XH); 
					promap.put("V_BGNR",BGNR);  
					promap.put("V_BGNR_NO",BGNR_NO);
					try{
				        dao.callProcedere("NstzbgMapper.P_SJ_BG_NSTZBGSC", promap);  
				        BGNR=(String) promap.get("V_BGNR_R");	
				        IFHAPPEN=(String)promap.get("V_IFHAPPEN");	
					}catch(Exception e){
						BGNR=(String) promap.get("V_BGNR");	
					}
					if(!"074".equals(BG_XH)&&("".equals(IFHAPPEN)||IFHAPPEN==null)){
						mes=mes+"<br>"+BGLX_MC+"";						
					}
				}
				if(BGLX_DM.length()==2){
					BGNRALL.append(Tools.readTxtFile(Const.NSTZBG_TITLE_H1).replace("【BGLXMC】", BGLX_MC));				
				}else if(BGLX_DM.length()==4){
					BGNRALL.append(Tools.readTxtFile(Const.NSTZBG_TITLE_H2).replace("【BGLXMC】", BGLX_MC));
				}else if(BGLX_DM.length()==6){
					BGNRALL.append(Tools.readTxtFile(Const.NSTZBG_TITLE_H3).replace("【BGLXMC】", BGLX_MC));
				}else{
					BGNRALL.append(Tools.readTxtFile(Const.NSTZBG_TITLE_H4).replace("【BGLXMC】", BGLX_MC));
				}
		        //BGNRALL.append("<br/>"+BGNR);
				BGNRALL.append(BGNR);
			}					
		}
		if(!"".equals(mes)){
			res.addObject("BGOBJ","未对如下报告进行确认，无法预览！<br>未确认报告："+ mes+"");	
			res.addPage("bggl/nstzbgviewerror");
			return res;
		}else{
		    pageData.put("LSH", LSH);
		    pageData.put("ZZJG_ID", user.getZZJG_ID());
			Map sjhzMap =(Map) dao.findForObject("ZbjgrwMapper.listQuerryRwjbxx", pageData);
			String bgWsh=(String) sjhzMap.get("BGWSH");
			StringBuffer tempBGnr=new StringBuffer();
			String cover=Tools.readTxtFile(Const.NSTZBG_COVER);
			if(!"".equals(jcsxform)&&jcsxform!=null&&jcsxform.containsKey("LSH")){
				cover=cover.replace("【纳税人名称】", (String)jcsxform.get("QYMC"));
				cover=cover.replace("【税款所属期间】", (String)jcsxform.get("SSSQ")+"年1月1日至"+(String)jcsxform.get("SSSQ")+"年12月31日");
				cover=cover.replace("【当前时间】", DateUtil.getNowString("yyyy年MM月dd日"));
				if("".equals(bgWsh)||bgWsh==null){
					HashMap param=new HashMap();
					param.put("ZZJG_ID", user.getZZJG_ID());
					param.put("BEGINSJ", DateUtil.getNowString("yyyy")+"-01-01");
					Map wshMap =(HashMap)  dao.findForObject("NstzbgMapper.Querrbgwsh", param);	
					if(wshMap==null){
						bgWsh="方正税审字("+ DateUtil.getNowString("yyyy")+")"+user.getZZJG_JC()+"第00001号";
					}else{
						bgWsh="方正税审字("+ DateUtil.getNowString("yyyy")+")"+user.getZZJG_JC()+"第"+wshMap.get("wsh")+"号";				
					}
					//回写报告文书号和报告生成时间
					pageData.put("bgWsh", bgWsh);
					dao.update("NstzbgMapper.updateBgsczt", pageData);
				}
				cover=cover.replace("【报告文号】",bgWsh);
			}
			tempBGnr.append(cover);
			BGNRALL=tempBGnr.append(BGNRALL);
		}
		res.addObject("BGOBJ", BGNRALL);		
		res.addObject("LSH", LSH);		
		res.addPage("bggl/nstzbgview");
		return res;
	}		
	
	public BaseResponseEvent onDefalut(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		String LSH=(String) req.getAttr("LSH");
		String BGLX_DM=(String) req.getAttr("BGLX_DM");
		if(!"".equals(BGLX_DM)&&BGLX_DM!=null){
			HashMap param=new HashMap();
			param.put("LSH", LSH);
			param.put("BGLX_DM", BGLX_DM);
			Map BGOBJ =(HashMap)  dao.findForObject("NstzbgMapper.Querrbgnr", param);
			String BGNR=(String) BGOBJ.get("BGNR_MB");
			String BG_XH=(String)BGOBJ.get("BG_XH");
			String IFHAPPEN=(String)BGOBJ.get("IFHAPPEN");
			String BGNR_NO=(String)BGOBJ.get("BGNR_NO");
			Map promap = new HashMap<String, Object>();  
			promap.put("V_LSH", LSH); 
			promap.put("V_BGXH",BG_XH); 
			promap.put("V_BGNR",BGNR);  
			promap.put("V_BGNR_NO",BGNR_NO);
			//promap.put("V_BGNR_R",BGNR);  
	        dao.callProcedere("NstzbgMapper.P_SJ_BG_NSTZBGSC", promap);  
	        BGNR=(String) promap.get("V_BGNR_R");
	        IFHAPPEN=(String) promap.get("V_IFHAPPEN");
	        BGOBJ.put("BGNR", BGNR);
	        BGOBJ.put("IFHAPPEN", IFHAPPEN);
			res.addObject("BGOBJ", BGOBJ);		
			res.addObject("LSH", LSH);	
		}				
		res.addPage("bggl/nstzbgnr");
		return res;
	}	
	@Transactional	
	public BaseResponseEvent saveBgnr(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		Subject currentUser = SecurityUtils.getSubject();  
		Session session = currentUser.getSession();
		User user = (User) session.getAttribute(Const.SESSION_USER);
		String USERID=user.getUSER_ID();
		PageData pageData=req.getPageData();		
		dao.delete("NstzbgMapper.deleteBgnr", pageData);
		dao.save("NstzbgMapper.insertBgnr", pageData);
		res.addMessage("保存成功");
		return res;
	}	
	@Transactional
	public BaseResponseEvent tsshBg(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
        String LSH=(String)req.getAttr("LSH");		
        Map param=new HashMap();
        param.put("LSH", LSH);
        Map formmap =(Map) dao.findForObject("SjsjtsMapper.queryBgzt", param);
        if("1".equals(formmap.get("tsshbj"))){
        	dao.save("SjsjtsMapper.shGzbg",param);
        	res.addMessage("回收成功");
        }else{
        	dao.save("SjsjtsMapper.tsGzbg",param);
        	res.addMessage("推送成功");
        }
		res.addObject("tsshbj", formmap.get("tsshbj"));
		
		return res;
	}
}
