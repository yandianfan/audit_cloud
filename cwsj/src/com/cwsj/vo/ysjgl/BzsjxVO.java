package com.cwsj.vo.ysjgl;

import java.util.List;

import com.fh.entity.system.Menu;

/**
 * 
 * 类名称：BzsjxVO.java 类描述：
 * 
 * @author YDF 作者单位： 联系方式： 创建时间：2016年7月13日
 * @version 1.0
 */
public class BzsjxVO implements java.io.Serializable {

	private String SJX_XH;
	private String SJX_MC;
	private String KMCODE;
	private String KMNAME;
	private String SJSJX_XH;
	private String YSJFL_XH;
	private String SJX_VALUE;
	private String YSSJX_MC;
	private String KM_DEGREE;
	public String getKM_DEGREE() {
		return KM_DEGREE;
	}
	public void setKM_DEGREE(String kM_DEGREE) {
		KM_DEGREE = kM_DEGREE;
	}
	public String getKMCODE() {
		return KMCODE;
	}
	public void setKMCODE(String kMCODE) {
		KMCODE = kMCODE;
	}
	public String getKMNAME() {
		return KMNAME;
	}
	public void setKMNAME(String kMNAME) {
		KMNAME = kMNAME;
	}
	private String CWBBDL_DM;
	private String LSH;
	private String DJXH;
	public String getDJXH() {
		return DJXH;
	}
	public void setDJXH(String dJXH) {
		DJXH = dJXH;
	}
	private String PARENT;
	private String HZSJX_MC;
	private String s_jfye;
	private String s_dfye;
	private String b_jffs;
	private String b_dffs;
	private String e_jfye;
	private String e_dfye;
	public String getS_jfye() {
		return s_jfye;
	}
	public void setS_jfye(String s_jfye) {
		this.s_jfye = s_jfye;
	}
	public String getS_dfye() {
		return s_dfye;
	}
	public void setS_dfye(String s_dfye) {
		this.s_dfye = s_dfye;
	}
	public String getB_jffs() {
		return b_jffs;
	}
	public void setB_jffs(String b_jffs) {
		this.b_jffs = b_jffs;
	}
	public String getB_dffs() {
		return b_dffs;
	}
	public void setB_dffs(String b_dffs) {
		this.b_dffs = b_dffs;
	}
	public String getE_jfye() {
		return e_jfye;
	}
	public void setE_jfye(String e_jfye) {
		this.e_jfye = e_jfye;
	}
	public String getE_dfye() {
		return e_dfye;
	}
	public void setE_dfye(String e_dfye) {
		this.e_dfye = e_dfye;
	}
	public void setHZSJX_MC(String hZSJX_MC) {
		HZSJX_MC = hZSJX_MC;
	}
	public String getHZSJX_MC() {
		return HZSJX_MC;
	}
	public void setSJX_MC2(String HZSJX_MC) {
		HZSJX_MC = HZSJX_MC;
	}
	public String getPARENT() {
		return PARENT;
	}
	public void setPARENT(String pARENT) {
		PARENT = pARENT;
	}
	public String getLSH() {
		return LSH;
	}
	public void setLSH(String lSH) {
		LSH = lSH;
	}
	public String getCWBBDL_DM() {
		return CWBBDL_DM;
	}
	public void setCWBBDL_DM(String cWBBDL_DM) {
		CWBBDL_DM = cWBBDL_DM;
	}
	public String getSJX_VALUE() {
		return SJX_VALUE;
	}
	public void setSJX_VALUE(String sJX_VALUE) {
		SJX_VALUE = sJX_VALUE;
	}
	public String getYSSJX_MC() {
		return YSSJX_MC;
	}
	public void setYSSJX_MC(String ySSJX_MC) {
		YSSJX_MC = ySSJX_MC;
	}
	public String getSJX_XH() {
		return SJX_XH;
	}
	public void setSJX_XH(String sJX_XH) {
		SJX_XH = sJX_XH;
	}
	public String getSJX_MC() {
		return SJX_MC;
	}
	public void setSJX_MC(String sJX_MC) {
		SJX_MC = sJX_MC;
	}
	public String getSJSJX_XH() {
		return SJSJX_XH;
	}
	public void setSJSJX_XH(String sJSJX_XH) {
		SJSJX_XH = sJSJX_XH;
	}
	public String getYSJFL_XH() {
		return YSJFL_XH;
	}
	public void setYSJFL_XH(String ySJFL_XH) {
		YSJFL_XH = ySJFL_XH;
	}
	public String getPX_XH() {
		return PX_XH;
	}
	public void setPX_XH(String pX_XH) {
		PX_XH = pX_XH;
	}
	public String getXY_BJ() {
		return XY_BJ;
	}
	public void setXY_BJ(String xY_BJ) {
		XY_BJ = xY_BJ;
	}
	public String getLR_SJ() {
		return LR_SJ;
	}
	public void setLR_SJ(String lR_SJ) {
		LR_SJ = lR_SJ;
	}
	public String getXG_SJ() {
		return XG_SJ;
	}
	public void setXG_SJ(String xG_SJ) {
		XG_SJ = xG_SJ;
	}
	public BzsjxVO getParentBzsjx() {
		return parentBzsjx;
	}
	public void setParentBzsjx(BzsjxVO parentBzsjx) {
		this.parentBzsjx = parentBzsjx;
	}
	public List<BzsjxVO> getSubBzsjx() {
		return subBzsjx;
	}
	public void setSubBzsjx(List<BzsjxVO> subBzsjx) {
		this.subBzsjx = subBzsjx;
	}
	public boolean isHasBzsjx() {
		return hasBzsjx;
	}
	public void setHasBzsjx(boolean hasBzsjx) {
		this.hasBzsjx = hasBzsjx;
	}
	private String PX_XH;
	private String XY_BJ;
	private String LR_SJ;
	private String XG_SJ;
	private BzsjxVO parentBzsjx;
	private List<BzsjxVO> subBzsjx;
	private boolean hasBzsjx = false;
}
