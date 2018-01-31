package com.cwsj.service.nssb.qysdsnd;

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
import com.platform.persistence.BaseDAO;
import com.platform.persistence.PersistenceDAO;
@Service("wb395A105081Service")
public class Wb395A105081Service{
	@Resource(name = "daoSupport")
	private DaoSupport dao;
	public BaseResponseEvent queryData(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		String pzxh=(String) req.getAttr("pzXh");
		pageData.put("pz_xh", pzxh);
		
		HashMap A105081 =(HashMap) dao.findForObject("QysdsndMapper.formQuerryA105081", pageData);
		res.addForm("A105081form1", A105081);	
		res.addForm("A105081form2", A105081);
		res.addForm("A105081form3", A105081);
		res.addForm("A105081form4", A105081);
		res.addForm("A105081form5", A105081);
		res.addForm("A105081form6", A105081);
		res.addForm("A105081form7", A105081);
		res.addForm("A105081form8", A105081);
		res.addForm("A105081form9", A105081);
		res.addForm("A105081form10", A105081);
		res.addForm("A105081form11", A105081);
		res.addForm("A105081form12", A105081);
		res.addForm("A105081form13", A105081);	
		res.addForm("A105081form14", A105081);
		res.addForm("A105081form16", A105081);
		res.addForm("A105081form17", A105081);
		res.addForm("A105081form18", A105081);
		res.addForm("A105081form19", A105081);
		res.addForm("A105081form20", A105081);
		res.addForm("A105081form21", A105081);
		res.addForm("A105081form22", A105081);
		res.addForm("A105081form23", A105081);
		res.addForm("A105081form24", A105081);
		res.addForm("A105081form25", A105081);
		res.addForm("A105081form26", A105081);	
		res.addForm("A105081form27", A105081);
		res.addForm("A105081form28", A105081);		
		res.addObject("PZXH", pzxh);  //增加的
		
		List<Map> Zyhybjselect =(List<Map>) dao.findForList("QysdsndMapper.selectQuerryZyhybj", null);
		res.addSelect("ZYHYBJ", Zyhybjselect);
		
		List<Map> Hyzlselect =(List<Map>) dao.findForList("QysdsndMapper.selectQuerryHyzl", null);
		res.addSelect("HYZL_DM", Hyzlselect);

		if("1".equals(req.getAttr("printBj"))){
			res.addPage("nssb/qysdsnd/wb395_A105081Print");	
		}else{
			res.addPage("nssb/qysdsnd/wb395_A105081");	
		}
		
		return res;
	} 
	
	//增加保存方法
	public BaseResponseEvent update(BaseRequestEvent req) throws Exception{
		BaseResponseEvent res=new BaseResponseEvent();
		PageData pageData=req.getPageData();
		
		String PZXH=(String) req.getAttr("PZXH"); 
		dao.delete("GxqysdsMapper.deleteA105081", PZXH);
		
		Map A105081form1=req.getForm("A105081form1");
		A105081form1.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_1",A105081form1);
		
		Map A105081form2=req.getForm("A105081form2");
		A105081form2.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_2",A105081form2);		
		
		Map A105081form3=req.getForm("A105081form3");
		A105081form3.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_3",A105081form3);			
		
		Map A105081form4=req.getForm("A105081form4");
		A105081form4.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_4",A105081form4);
		
		Map A105081form5=req.getForm("A105081form5");
		A105081form5.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_5",A105081form5);
		
		Map A105081form6=req.getForm("A105081form6");
		A105081form6.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_6",A105081form6);
		
		Map A105081form7=req.getForm("A105081form7");
		A105081form7.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_7",A105081form7);
		
		Map A105081form8=req.getForm("A105081form8");
		A105081form8.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_8",A105081form8);
		
		Map A105081form9=req.getForm("A105081form9");
		A105081form9.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_9",A105081form9);
		
		Map A105081form10=req.getForm("A105081form10");
		A105081form10.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_10",A105081form10);
		
		Map A105081form11=req.getForm("A105081form11");
		A105081form11.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_11",A105081form11);
		
		Map A105081form12=req.getForm("A105081form12");
		A105081form12.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_12",A105081form12);
		
		Map A105081form13=req.getForm("A105081form13");
		A105081form13.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_13",A105081form13);
		
		Map A105081form14=req.getForm("A105081form14");
		A105081form14.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_14",A105081form14);
		
		Map A105081form16=req.getForm("A105081form16");
		A105081form16.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_16",A105081form16);
		
		Map A105081form17=req.getForm("A105081form17");
		A105081form17.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_17",A105081form17);
		
		Map A105081form18=req.getForm("A105081form18");
		A105081form18.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_18",A105081form18);
		
		Map A105081form19=req.getForm("A105081form19");
		A105081form19.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_19",A105081form19);
		
		Map A105081form20=req.getForm("A105081form20");
		A105081form20.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_20",A105081form20);
		
		Map A105081form21=req.getForm("A105081form21");
		A105081form21.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_21",A105081form21);
		
		Map A105081form22=req.getForm("A105081form22");
		A105081form22.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_22",A105081form22);
		
		Map A105081form23=req.getForm("A105081form23");
		A105081form23.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_23",A105081form23);
		
		Map A105081form24=req.getForm("A105081form24");
		A105081form24.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_24",A105081form24);
		
		Map A105081form25=req.getForm("A105081form25");
		A105081form25.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_25",A105081form25);
		
		Map A105081form26=req.getForm("A105081form26");
		A105081form26.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_26",A105081form26);
		
		Map A105081form27=req.getForm("A105081form27");
		A105081form27.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_27",A105081form27);

		Map A105081form28=req.getForm("A105081form28");
		A105081form28.put("PZXH", PZXH);				
		dao.save("GxqysdsMapper.insertA105081_28",A105081form28);
		
        res.addMessage("保存成功");
		return res;
	}
	
}
