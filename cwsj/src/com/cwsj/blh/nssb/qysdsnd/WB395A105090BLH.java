package com.cwsj.blh.nssb.qysdsnd;

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


public class WB395A105090BLH extends BaseBLH{
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		HashMap A105090 =(HashMap) BaseDAO.getInstance().findForObject("QysdsndMapper.formQuerryA105090", pageData);
		
		res.addForm("A105090form1", A105090);
		res.addForm("A105090form2", A105090);
		res.addForm("A105090form3", A105090);
		res.addForm("A105090form4", A105090);
		res.addForm("A105090form5", A105090);
		res.addForm("A105090form6", A105090);
		res.addForm("A105090form7", A105090);
		res.addForm("A105090form8", A105090);
		res.addForm("A105090form9", A105090);
		res.addForm("A105090form10", A105090);
		res.addForm("A105090form11", A105090);
		res.addForm("A105090form12", A105090);
		res.addForm("A105090form13", A105090);
		res.addForm("A105090form14", A105090);
		res.addObject("PZXH", pzxh);  //增加的
		
		res.addPage("nssb/qysdsnd/wb395_A105090");
		return res;
	} 
	
	//增加保存方法
	public BaseResponseEvent save(BaseRequestEvent req) throws Exception{
		PersistenceDAO persistenceDAO=this.getPersistenceDAO();
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		
		String PZXH=(String) req.getAttr("PZXH"); 
		BaseDAO.getInstance().delete("GxqysdsMapper.deleteA105090", PZXH);
		
		Map A105090form1=req.getForm("A105090form1");
		A105090form1.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_1",A105090form1);
		
		Map A105090form2=req.getForm("A105090form2");
		A105090form2.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_2",A105090form2);		
		
		Map A105090form3=req.getForm("A105090form3");
		A105090form3.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_3",A105090form3);			
		
		Map A105090form4=req.getForm("A105090form4");
		A105090form4.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_4",A105090form4);
		
		Map A105090form5=req.getForm("A105090form5");
		A105090form5.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_5",A105090form5);
		
		Map A105090form6=req.getForm("A105090form6");
		A105090form6.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_6",A105090form6);
		
		Map A105090form7=req.getForm("A105090form7");
		A105090form7.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_7",A105090form7);
		
		Map A105090form8=req.getForm("A105090form8");
		A105090form8.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_8",A105090form8);
		
		Map A105090form9=req.getForm("A105090form9");
		A105090form9.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_9",A105090form9);
		
		Map A105090form10=req.getForm("A105090form10");
		A105090form10.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_10",A105090form10);
		
		Map A105090form11=req.getForm("A105090form11");
		A105090form11.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_11",A105090form11);
		
		Map A105090form12=req.getForm("A105090form12");
		A105090form12.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_12",A105090form12);
		
		Map A105090form13=req.getForm("A105090form13");
		A105090form13.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_13",A105090form13);
		
		Map A105090form14=req.getForm("A105090form14");
		A105090form14.put("PZXH", PZXH);				
		BaseDAO.getInstance().save("GxqysdsMapper.insertA105090_14",A105090form14);
		
        res.addMessage("保存成功");
		return res;
	}
}
