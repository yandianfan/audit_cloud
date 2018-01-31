package com.cwsj.service.ysjgl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.cwsj.vo.ysjgl.BzsjxVO;
import com.fh.dao.DaoSupport;
import com.fh.entity.system.Menu;
import com.fh.util.PageData;
import com.cwsj.vo.ysjgl.BzsjxVO;
@Service("auditService")
public class AuditService{

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	
	public List<BzsjxVO> listAllParentSjx(PageData pd) throws Exception {
		return (List<BzsjxVO>) dao.findForList("YsjglMapper.listAllParentSjx", pd);
		
	}



	public List<BzsjxVO> listSubSjxByParentId(PageData pd) throws Exception {
		return (List<BzsjxVO>) dao.findForList("YsjglMapper.listSubSjxByParentId", pd);
		
	}
	
	public List<BzsjxVO> listAllParentYsSjx(PageData pd) throws Exception {
		return (List<BzsjxVO>) dao.findForList("YsjglMapper.listAllParentYsSjx", pd);
		
	}
/**
 * 查询建议匹配数据项
 */
	public List<Map> listJyppSjx(PageData pd) throws Exception {
		//return (List<Map>) dao.findForList("YsjglMapper.listJyppSjx", pd);
		return (List<Map>) dao.findForList("YsjglMapper.listJyppSjx2", pd);
	}
	/**
	 * 查询上次匹配数据项
	 */
	public List<Map> listScppSjx(PageData pd) throws Exception {
		return (List<Map>) dao.findForList("YsjglMapper.listScppSjx", pd);
		
	}
	/**
	 * 查询上级科目匹配对应下级科目的数据项
	 */
	public Map mapSjkmdyxjkm(PageData pd) throws Exception {
		return (Map) dao.findForObject("YsjglMapper.mapSjkmdyxjkm", pd);
		
	}	
	public List<BzsjxVO> listSubYsSjxByParentId(PageData pd) throws Exception {
		return (List<BzsjxVO>) dao.findForList("YsjglMapper.listSubYsSjxByParentId", pd);
		
	}
		
	public List<BzsjxVO> listAllSjx(PageData pd) throws Exception {
		List<BzsjxVO> rl = this.listAllParentSjx(pd);
		for(BzsjxVO bzsjx : rl){
			List<BzsjxVO> subList = this.listSubSjxByParentId(pd);
			bzsjx.setSubBzsjx(subList);
		}
		return rl;
	}
	public List<BzsjxVO> listAllYsSjx(PageData pd) throws Exception {
		List<BzsjxVO> rl = this.listAllParentSjx(pd);
		for(BzsjxVO bzsjx : rl){
			List<BzsjxVO> subList = this.listSubYsSjxByParentId(pd);
			bzsjx.setSubBzsjx(subList);
		}
		return rl;
	}	
	@Transactional(propagation=Propagation.REQUIRED)
	public Map ifFistDate(Map sqxxmap) throws Exception {
		Map sjsjqdMap=(Map) dao.findForObject("YsjglMapper.querrySjsqd", sqxxmap);
		if(sjsjqdMap!=null&&!"".equals(sjsjqdMap.get("LSH"))&&sjsjqdMap.get("LSH")!=null){
			sqxxmap.put("LSH", sjsjqdMap.get("LSH"));
		}
		return sqxxmap;
	}
	@Transactional(propagation=Propagation.REQUIRED)
	public Map saveYssj(List bzsjlist,Map sqxxmap) throws Exception {
		Map sjsjqdMap=(Map) dao.findForObject("YsjglMapper.querrySjsqd", sqxxmap);
		if(sjsjqdMap==null||"".equals(sjsjqdMap.get("LSH"))||sjsjqdMap.get("LSH")==null){
			dao.save("YsjglMapper.insertsSjsqd", sqxxmap);
		}
//		else{
//			sqxxmap.put("LSH", sjsjqdMap.get("LSH"));
//		}
		dao.delete("YsjglMapper.deleteYssjxbz", sqxxmap);
		dao.batchSave("YsjglMapper.insertYssjxbz", bzsjlist);
		return sqxxmap;
//		dao.delete("YsjglMapper.deleteSjsqd", sqxxmap);
//		dao.delete("YsjglMapper.deleteYssjxbz", sqxxmap);
//		dao.save("YsjglMapper.insertsSjsqd", sqxxmap);
//		dao.batchSave("YsjglMapper.insertYssjxbz", bzsjlist);	
	}
	@Transactional(propagation=Propagation.REQUIRED)
	public void saveGdzc(List gdzclist,Map sqxxmap) throws Exception {
		dao.delete("YsjglMapper.deleteGdzczj", sqxxmap);
		dao.batchSave("YsjglMapper.insertGdzczj", gdzclist);	
	}	
	public void saveBzsjz(Map sqxxmap,String HYDM) throws Exception {
		dao.delete("YsjglMapper.deleteBzsjx", sqxxmap);
		if("66".equals(HYDM)||"67".equals(HYDM)||"68".equals(HYDM)||"69".equals(HYDM)){
			dao.save("YsjglMapper.insertBzsjx", sqxxmap);
		}else{
			dao.save("YsjglMapper.insertBzsjx", sqxxmap);	
		}	
	}	
	@Transactional(propagation=Propagation.REQUIRED)
	public void savePzdefine(List pzlist,Map sqxxmap) throws Exception {
		dao.delete("YsjglMapper.deletePZDefine", sqxxmap);
		dao.batchSave("YsjglMapper.insertPZDefine",pzlist);	
	}	
	@Transactional(propagation=Propagation.REQUIRED)
	public void savePzdata(List pzdatalist,Map sqxxmap) throws Exception {
		dao.delete("YsjglMapper.deletePZData", sqxxmap);
		sqxxmap.put("list", pzdatalist);
		dao.batchSave("YsjglMapper.insertPZData",sqxxmap);	
	}	
	
	public List<Map> listQuerypzdefine(PageData pd) throws Exception {
		return (List<Map>) dao.findForList("YsjglMapper.Querrpzdefine", pd.get("LSH"));		
	}	
	public List<Map> listQuerypzdefineexcel(PageData pd) throws Exception {
		return (List<Map>) dao.findForList("YsjglMapper.Querrpzdefineexcel", pd.get("LSH"));		
	}		
	public List<Map> listQuerrpzdata(PageData pd) throws Exception {
		return (List<Map>) dao.findForList("YsjglMapper.Querrpzdata", pd);		
	}
	
	public List<Map> listQuerrpzdataexcel(PageData pd) throws Exception {
		return (List<Map>) dao.findForList("YsjglMapper.Querrpzdataexcel", pd);		
	}
	public Map listQuerrpzdatahz(PageData pd) throws Exception {
		return (Map) dao.findForObject("YsjglMapper.Querrpzdatahj_bq", pd);		
	}
	public Map listQuerrpzdataqchz(PageData pd) throws Exception {
		String jdfx=(String) pd.get("JDFX");
		if("-1".equals(jdfx)){
			return (Map) dao.findForObject("YsjglMapper.Querrpzdatahj_qc2", pd);	
		}else{
			return (Map) dao.findForObject("YsjglMapper.Querrpzdatahj_qc1", pd);	
		}			
	}	
	public Map listQuerrpzdataqmhz(PageData pd) throws Exception {
		String jdfx=(String) pd.get("JDFX");
		if("-1".equals(jdfx)){
			return (Map) dao.findForObject("YsjglMapper.Querrpzdatahj_qm2", pd);	
		}else{
			return (Map) dao.findForObject("YsjglMapper.Querrpzdatahj_qm1", pd);	
		}			
	}		
	public List<Map> listQuerrpznrdata(PageData pd) throws Exception {
		return (List<Map>) dao.findForList("YsjglMapper.Querrpznr", pd);		
	}	
	public List<Map> listQuerrpznrdatamx(PageData pd) throws Exception {
		List<Map> degreeList=(List<Map>) dao.findForList("YsjglMapper.listQuerysjxdegree", pd);	
		for(int i=1;i<=degreeList.size();i++){
			Map degreeMap=degreeList.get(i-1);
			pd.put("kmdegree"+i, degreeMap.get("kmdegree"));	
			pd.put("kmlength"+i, degreeMap.get("kmlength"));	
		}	
		return 	(List<Map>) dao.findForList("YsjglMapper.Querrpznrmx", pd);
	}		
	public Map mapQuerrkm(PageData pd) throws Exception {
		return (Map) dao.findForObject("YsjglMapper.Querrkmdefine", pd);		
	}	

	public Map mapQuerrkmname(PageData pd) throws Exception {
		return (Map) dao.findForObject("YsjglMapper.mapKmname", pd);		
	}	
	
	public Map validateQyxx(PageData pd) throws Exception {
		Map retmap=new HashMap();
		Map map1= (Map) dao.findForObject("CommMapper.validateYhm", pd);	
		String QYMC="";
		String QYDM="";
		if("".equals(map1)||map1==null){
			retmap.put("SUCBJ", "0");
			retmap.put("MSG", "该企业代码未注册");
			return retmap;
		}else{
			retmap.put("HYDM", map1.get("HYDM"));
			QYMC=(String) map1.get("QYMC");
			QYDM=(String) map1.get("DJXH");
			if(!QYMC.equals(pd.get("QYMC"))){
				retmap.put("SUCBJ", "2");
				retmap.put("MSG", QYMC);	
				return retmap;
			}
			retmap.put("SUCBJ", "1");
			retmap.put("MSG", "该企业代码已注册");			
		}
		map1= (Map) dao.findForObject("CommMapper.validateQymc", pd);
		if("".equals(map1)||map1==null){
			retmap.put("SUCBJ", "0");
			retmap.put("MSG", "该企业名称未注册");
			return retmap;
		}else{
			retmap.put("SUCBJ", "1");
			retmap.put("MSG", "该企业名称已注册");			
		}
		map1= (Map) dao.findForObject("CommMapper.validateQydmQymc", pd);
		if("".equals(map1)||map1==null){
			retmap.put("SUCBJ", "0");
			retmap.put("MSG", "该企业代码和企业名称不匹配");
			return retmap;
		}else{
			retmap.put("SUCBJ", "1");
			retmap.put("MSG", "校验通过");			
		}
	    return retmap;
	}	
/**
 * 	解除数据项
 * @param pd
 * @throws Exception
 */
	@Transactional(propagation=Propagation.REQUIRED)
	public void jcSjx(PageData pd) throws Exception {
		Map param=new HashMap();
		//dao.update("YsjglMapper.jcBzsjxvalue", pd);
		dao.update("YsjglMapper.jcYssjxvalue", pd);
		param.put("LSH", pd.get("LSH"));
		param.put("SJX_XH", pd.get("SJX_XH"));
		dao.delete("YsjglMapper.deleteBzsjxdz", pd);
		//dao.delete("YsjglMapper.deleteBzsjx2", pd);
		//dao.save("YsjglMapper.insertBzsjx2", pd);
	}	
	
/**
 * 关联原始科目	
 * @param pd
 * @throws Exception
 */
	@Transactional(propagation=Propagation.REQUIRED)
	public void glysSjx(PageData pd) throws Exception {
		dao.update("YsjglMapper.glYssjxvalue", pd);
		//dao.delete("YsjglMapper.deleteBzsjx2", pd);
		//dao.save("YsjglMapper.insertBzsjx2", pd);
		dao.delete("YsjglMapper.deleteBzsjxdz2", pd);
		dao.save("YsjglMapper.insertBzsjxdz2", pd);
	}	
	
	/**
	 * 自动关联上次的数据项	
	 * @param pd
	 * @throws Exception
	 */
	@Transactional(propagation=Propagation.REQUIRED)
		public void autoppSjx(PageData pd) throws Exception {
			dao.update("YsjglMapper.autoglYssjxvalue", pd);
		}	
}
