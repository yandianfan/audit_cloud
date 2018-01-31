package com.platform.httpservice.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.ezmorph.bean.MorphDynaBean;
/**
 * Json请求对象的封装
 * @author yan
 *
 */
public class AuditServerReqData {
	
    private String dealmethod;
    
    private String QYDM;    
    
    private String QYMC;  
    
    private String CWBBDL_DM;  

	public String getDealmethod() {
		return dealmethod;
	}
	public void setDealmethod(String dealmethod) {
		this.dealmethod = dealmethod;
	}
	public String getQYDM() {
		return QYDM;
	}
	public void setQYDM(String qYDM) {
		QYDM = qYDM;
	}
	public String getQYMC() {
		return QYMC;
	}
	public void setQYMC(String qYMC) {
		QYMC = qYMC;
	}
	public String getCWBBDL_DM() {
		return CWBBDL_DM;
	}
	public void setCWBBDL_DM(String cWBBDL_DM) {
		CWBBDL_DM = cWBBDL_DM;
	}
	public List<MorphDynaBean> getZZ() {
		return ZZ;
	}
	public void setZZ(List<MorphDynaBean> zZ) {
		ZZ = zZ;
	}
	public List<Map> getPZDefine() {
		return PZDefine;
	}
	public void setPZDefine(List<Map> pZDefine) {
		PZDefine = pZDefine;
	}
	public List<Map> getPZData() {
		return PZData;
	}
	public void setPZData(List<Map> pZData) {
		PZData = pZData;
	}
	/**
	 * 总账
	 */
	private List<MorphDynaBean> ZZ = new ArrayList<MorphDynaBean>();
	/**
	 * 凭证定义
	 */
	private List<Map> PZDefine = new ArrayList<Map>();
	/**
	 * 凭证数据
	 */
	private List<Map> PZData = new ArrayList<Map>();	


}
