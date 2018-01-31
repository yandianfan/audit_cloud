package com.platform.httpservice.server;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.ezmorph.bean.MorphDynaBean;



//import net.sf.json.JSONObject;
//import net.sf.json.JSONSerializer;
//import net.sf.json.JsonConfig;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.context.request.RequestContextHolder;









import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;
import com.cwsj.service.ysjgl.AuditService;
import com.cwsj.util.DateUtil;
import com.cwsj.util.JSONHelper;
import com.cwsj.util.MapUtil;
import com.cwsj.util.XtbmUtil;
import com.fh.controller.base.BaseController;
import com.fh.service.system.appuser.AppuserService;
import com.fh.util.AppUtil;
import com.fh.util.PageData;
import com.fh.util.Tools;
import com.platform.event.JsonReqData;
import com.platform.event.JsonResData;
import com.platform.httpservice.vo.AuditServerReqData;
import com.platform.httpservice.vo.AuditServerResData;


/**
  * 会员-接口类 
  *    
  * 相关参数协议：
  * 00	请求失败
  * 01	请求成功
  * 02	返回空值
  * 03	请求协议参数不完整    
  * 04  用户名或密码错误
  * 05  FKEY验证失败
 */
@Controller
@RequestMapping(value="/AuditDataServer")
public class AuditDataServer extends BaseController {
    
	@Resource(name="auditService")
	private AuditService auditService;
	private static final String BzsjData="ZZ";
	private static final String PZDefine="PZDefine";
	private static final String PZData="PZData";
	private static final String GdzcData="GDZC";
	/**
	 * 获取原始数据
	 */
	@RequestMapping(value="/getAuditData",method=RequestMethod.POST,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Object getAuditData(@RequestBody String jsonData,HttpServletRequest request){
		logBefore(logger, "开始获取原始数据");
		AuditServerResData jsonresData = new AuditServerResData();
		AuditServerReqData jsonReqData = new AuditServerReqData();
		int PZCOUNT=0;
		int ZZCOUNT=0;
		try {
			    JSONObject jsonObject=null;
//			    Map urlmap = request.getParameterMap();
//			    Iterator entries = urlmap.entrySet().iterator(); 
//			    String jsonData=null;
//			    while (entries.hasNext()) {
//			    	jsonData=entries.next().toString(); 
//			    }
			    try {
			      //jsonObject = (JSONObject) JSONSerializer.toJSON(request.getParameter("jsonData"));	
			    	logBefore(logger, "开始转换json数据");
			    	//jsonObject = (JSONObject) JSONSerializer.toJSON(jsonData);
//			    	if(jsonData==null){
//			    		jsonData=request.getParameter("jsonData");
//			    	}
//			    	jsonData=requestBody;
			    	jsonObject=JSON.parseObject(jsonData);
			    } catch (Exception e) {
					jsonresData.setCode("0");
					jsonresData.setMsg("jsonData或者转换报错:"+e.getMessage());
					logBefore(logger, "获取Json对象为"+jsonData);	
					logger.error(e.toString(), e);
					return jsonresData;			    	
			    }
				String dealMethod="dataSc";//jsonObject.getString("dealmethod");//jsonReqData.getDealmethod();
				String djxh=jsonObject.getString("QYDM");
				String qymc=jsonObject.getString("QYMC");
				String cwbblx=jsonObject.getString("CWBBDL_DM");
				String sssq=jsonObject.getString("SSSQ");
				String LSH=XtbmUtil.getsjSqlsh(djxh,sssq);//UUID.randomUUID().toString().replace("-","");
				String PCH=jsonObject.getString("PCH");
				String PCHJ=jsonObject.getString("PCHJ");
				String SQRQ=DateUtil.getNowString();
				if("".equals(djxh)||djxh==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("企业代码QYDM不能为空");
					return jsonresData;			
				}
				if("".equals(qymc)||qymc==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("企业名称QYMC不能为空");
					return jsonresData;			
				}
				if("".equals(cwbblx)||cwbblx==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("财务报表类型CWBBDL_DM不能为空");
					return jsonresData;			
				}
				if(!"S".equals(cwbblx)&&!"A".equals(cwbblx)&&!"B".equals(cwbblx)&&!"C".equals(cwbblx)&&!"D".equals(cwbblx)&&!"E".equals(cwbblx)){
					jsonresData.setCode("0");
					jsonresData.setMsg("财务报表类型CWBBDL_DM必须为A、B、C、D、E、S");
					return jsonresData;			
				}
				if("".equals(PCHJ)||PCHJ==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("PCHJ不能为空");
					return jsonresData;			
				}	
				PageData pd=new PageData();
				pd.put("USERNAME", djxh);
				pd.put("QYMC", qymc);
				String HYDM=null;
				Map jcsxform =auditService.validateQyxx(pd);
				if(!"1".equals(jcsxform.get("SUCBJ"))&&jcsxform.get("SUCBJ")!="1"){
					jsonresData.setCode((String) jcsxform.get("SUCBJ"));
					jsonresData.setMsg((String)jcsxform.get("MSG"));
					return jsonresData;	
				}else{
					HYDM=(String) jcsxform.get("HYDM");
				}
				if("dataSc".equals(dealMethod)){
					//处理总账
//					List<Map> zzList=jsonObject.getJSONArray(BzsjData);
					JSONArray zzList=JSON.parseArray(jsonObject.getString(BzsjData));
					//List<Map> zzList=null;
					logBefore(logger, "获取总账数据");
					Map bzmap=new HashMap();
					Map sqdmap=new HashMap();
					sqdmap.put("djxh", djxh);
					sqdmap.put("qymc", qymc);
					sqdmap.put("cwbblx", cwbblx);
					sqdmap.put("LSH", LSH);
					sqdmap.put("PCHJ", PCHJ);
					sqdmap.put("sssq", sssq);
					sqdmap.put("SQRQ", SQRQ);
					sqdmap.put("PCH", PCH);
					sqdmap= auditService.ifFistDate(sqdmap);
					LSH=(String) sqdmap.get("LSH");
					if(zzList!=null&&zzList.size()>0){
//						if(zzList.size()==0){
//							jsonresData.setCode("0");
//							jsonresData.setMsg("总账ZZ不能为空");
//							return jsonresData;
//						}
						try {
							Map bzsjmap=null;
							List newbzsjlist=new ArrayList();
							String raw_pipeicode=null;
							String raw_pipeiname=null;
							String pipeikmcode=null;
							String pipeikmname=null;
							String raw_kmcode=null;
							String raw_kmname=null;
							String km_degree=null;
							String jdfx=null;
							String s_jfye=null;
							String s_dfye=null;
							String b_jffs=null;
							String b_dffs=null;
							String e_jfye=null;
							String e_dfye=null;
							Map zzmap=null;
							for(int i=0;i<zzList.size();i++){
								zzmap=(Map) zzList.get(i);
								raw_pipeicode=(String) zzmap.get("raw_pipeicode");
								raw_pipeiname=(String) zzmap.get("raw_pipeiname");
								pipeikmcode=(String) zzmap.get("pipeikmcode");
								pipeikmname=(String) zzmap.get("pipeikmname");
								raw_kmcode=(String) zzmap.get("raw_kmcode");
								raw_kmname=(String) zzmap.get("raw_kmname");
								km_degree=(String) zzmap.get("km_degree");
								jdfx=zzmap.get("jdfx").toString();
								s_jfye=zzmap.get("s_jfye").toString();
								s_dfye=zzmap.get("s_dfye").toString();
								b_jffs=zzmap.get("b_jffs").toString();
								b_dffs=zzmap.get("b_dffs").toString();
								e_jfye=zzmap.get("e_jfye").toString();
								e_dfye=zzmap.get("e_dfye").toString();
								bzsjmap=new HashMap();
//								bzsjmap.putAll(zzList.get(i));
								bzsjmap.put("cwbblx", cwbblx);
								bzsjmap.put("LSH", LSH);						
								bzsjmap.put("qymc", qymc);
								bzsjmap.put("djxh", djxh);
								bzsjmap.put("raw_pipeicode",raw_pipeicode);
								bzsjmap.put("raw_pipeiname",raw_pipeiname);
								bzsjmap.put("pipeikmcode",pipeikmcode);
								bzsjmap.put("pipeikmname",pipeikmname);								
								bzsjmap.put("raw_kmcode",raw_kmcode);
								bzsjmap.put("raw_kmname",raw_kmname);
								bzsjmap.put("km_degree",km_degree);
								bzsjmap.put("jdfx",jdfx);
								bzsjmap.put("s_jfye","0.000".equals(s_jfye)?"":s_jfye);
								bzsjmap.put("s_dfye","0.000".equals(s_dfye)?"":s_dfye);
								bzsjmap.put("b_jffs","0.000".equals(b_jffs)?"":b_jffs);
								bzsjmap.put("b_dffs","0.000".equals(b_dffs)?"":b_dffs);
								bzsjmap.put("e_jfye","0.000".equals(e_jfye)?"":e_jfye);
								bzsjmap.put("e_dfye","0.000".equals(e_dfye)?"":e_dfye);
								bzsjmap.put("sssq",sssq);
								newbzsjlist.add(bzsjmap);
							}
							sqdmap=auditService.saveYssj(newbzsjlist,sqdmap);
							ZZCOUNT=newbzsjlist.size();
						} catch (Exception e) {
							jsonresData.setCode("0");
							jsonresData.setMsg("保存标准数据账套失败"+e.getMessage());
							logger.error(e.toString(), e);
							return jsonresData;
						}				
						
					}
					//处理凭证数据
//					List<Map<String,String>> pzdef=jsonObject.getJSONArray(PZDefine);
//					List<Map> pzlist=jsonObject.getJSONArray(PZData);
//					List<Map> pzdef=jsonObject.parseObject(PZDefine, new TypeReference<ArrayList<Map>>(){});
//					List<Map> pzlist=jsonObject.parseObject(PZData, new TypeReference<ArrayList<Map>>(){});	
					JSONArray pzdef=JSON.parseArray(jsonObject.getString(PZDefine));
					JSONArray pzlist=JSON.parseArray(jsonObject.getString(PZData));
					if(pzlist!=null&&pzlist.size()>0){
						logBefore(logger, "获取凭证数据");
						if(pzdef.size()==0){
							jsonresData.setCode("0");
							jsonresData.setMsg("PZDefine凭证定义不能为空");
							return jsonresData;						
						}
						if(pzlist.size()==0){
							jsonresData.setCode("0");
							jsonresData.setMsg("PZData凭证数据不能为空");
							return jsonresData;						
						}
						if("".equals(PCH)||PCH==null){
							jsonresData.setCode("0");
							jsonresData.setMsg("PCH不能为空");
							return jsonresData;			
						}
						Map<String,String> pzdefmap=null;
						List pzdelist=new ArrayList();
						Map pzdefjsonmap=null;
						for(int i=0;i<pzdef.size();i++){
							pzdefjsonmap=(Map) pzdef.get(i);
							pzdefmap=new HashMap<String,String>();
							pzdefmap.put("SJXDM",pzdefjsonmap.keySet().toString().substring(1, pzdefjsonmap.keySet().toString().length()-1));
							pzdefmap.put("SJXMC",(String) pzdefjsonmap.get(pzdefjsonmap.keySet().toString().substring(1, pzdefjsonmap.keySet().toString().length()-1)));
							pzdefmap.put("SJXXH","SJX"+(i+1));
							pzdefmap.put("djxh", djxh);
							pzdefmap.put("LSH", LSH);
							pzdefmap.put("PXXH",Integer.toString(i));
							pzdelist.add(pzdefmap);						
						}
						auditService.savePzdefine(pzdelist,sqdmap);
						Map pzData=null;
						List pzdatalist=new ArrayList();
						int maxsjxlen=0;
						Map pzdatajsonmap=null;
						for(int i=0;i<pzlist.size();i++){
							pzdatajsonmap=(Map) pzlist.get(i);
							pzData=new HashMap();
						    pzData.put("LSH", LSH);
						    pzData.put("djxh", djxh);
						    pzData.put("qymc",qymc);
						    pzData.put("PCH",PCH);
	                        for(int n=0;n<pzdelist.size();n++){
	                        	pzdefmap=new HashMap<String,String>();
	                        	pzdefmap=(Map<String, String>) pzdelist.get(n);
	                        	pzData.put(pzdefmap.get("SJXXH"), pzdatajsonmap.get(pzdefmap.get("SJXDM")));  
	                        	if("科目代码".equals(pzdefmap.get("SJXMC"))){
	                        		pzData.put("KMCODE", pzdatajsonmap.get(pzdefmap.get("SJXDM")));
	                        	}
	                        	if("凭证日期".equals(pzdefmap.get("SJXMC"))){
	                        		pzData.put("PZRQ", pzdatajsonmap.get(pzdefmap.get("SJXDM")));
	                        	}
	                        	if("凭证编号".equals(pzdefmap.get("SJXMC"))){
	                        		pzData.put("PZXH",pzdatajsonmap.get(pzdefmap.get("SJXDM")));
	                        	}
	                        	if("贷方金额".equals(pzdefmap.get("SJXMC"))){
	                        		pzData.put("DFYE",pzdatajsonmap.get(pzdefmap.get("SJXDM")));
	                        	}	 
	                        	if("借方金额".equals(pzdefmap.get("SJXMC"))){
	                        		pzData.put("JFYE", pzdatajsonmap.get(pzdefmap.get("SJXDM")));
	                        	}
	                        	if("摘要".equals(pzdefmap.get("SJXMC"))){
	                        		pzData.put("ZY", pzdatajsonmap.get(pzdefmap.get("SJXDM")));
	                        	}
	                        	maxsjxlen=n+1;
	                        }
	                    	for(int h=maxsjxlen;h<=20;h++){
	                    		pzData.put("SJX"+h, "");
	                    	}
	                        pzdatalist.add(pzData);
						}	
						String tableName=null;
						if(sssq.equals(DateUtil.getNowString("yyyy"))){
							tableName="t_sj_ysj_grid_pzdata";
						}else{
							tableName="t_sj_ysj_grid_pzdata_"+sssq;
						}
						sqdmap.put("tableName", tableName);
						auditService.savePzdata(pzdatalist,sqdmap);
						PZCOUNT=pzdatalist.size();						
					}
				}else{
					jsonresData.setCode("0");
					jsonresData.setMsg("dealmethod错误");
					return jsonresData;			
				}
				jsonresData.setCode("1");
				jsonresData.setMsg("导入数据成功,导入总账"+ZZCOUNT+"条,导入凭证"+PZCOUNT+"条");
				return jsonresData;
		} catch (Exception e) {
			jsonresData.setCode("0");
			jsonresData.setMsg(e.getMessage());
			logger.error(e.toString(), e);
			return jsonresData;				
		}
	}
	
	/**
	 *获取固定资产信息
	 */
	@RequestMapping(value="/getGdzcData",method=RequestMethod.POST,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public Object getGdzcData(@RequestBody String jsonData,HttpServletRequest request){
		logBefore(logger, "开始获取固定资产信息");
		AuditServerResData jsonresData = new AuditServerResData();
		AuditServerReqData jsonReqData = new AuditServerReqData();
		int GDZCCOUNT=0;
		try {
			    JSONObject jsonObject=null;
//			    Map urlmap = request.getParameterMap();
//			    Iterator entries = urlmap.entrySet().iterator(); 
//			    String jsonData=null;
//			    while (entries.hasNext()) {
//			    	jsonData=entries.next().toString(); 
//			    }
			    try {
			      //jsonObject = (JSONObject) JSONSerializer.toJSON(request.getParameter("jsonData"));	
			    	logBefore(logger, "开始转换json数据");
//			    	jsonObject = (JSONObject) JSONSerializer.toJSON(jsonData);
			    	jsonObject=JSON.parseObject(jsonData);
			    } catch (Exception e) {
					jsonresData.setCode("0");
					jsonresData.setMsg("jsonData或者转换报错:"+e.getMessage());
					logBefore(logger, "获取Json对象为"+jsonData);	
					logger.error(e.toString(), e);
					return jsonresData;			    	
			    }
				//logBefore(logger, "原始数据："+jsonObject);
				String dealMethod="dataSc";//jsonObject.getString("dealmethod");//jsonReqData.getDealmethod();
				String djxh=jsonObject.getString("QYDM");
				String qymc=jsonObject.getString("QYMC");
				String cwbblx=jsonObject.getString("CWBBDL_DM");
				String sssq=jsonObject.getString("SSSQ");
				String LSH=XtbmUtil.getsjSqlsh(djxh,sssq);//UUID.randomUUID().toString().replace("-","");
//				String PCH=jsonObject.getString("PCH");
//				String PCHJ=jsonObject.getString("PCHJ");
				String SQRQ=DateUtil.getNowString();
				if("".equals(djxh)||djxh==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("企业代码QYDM不能为空");
					return jsonresData;			
				}
				if("".equals(qymc)||qymc==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("企业名称QYMC不能为空");
					return jsonresData;			
				}
				if("".equals(cwbblx)||cwbblx==null){
					jsonresData.setCode("0");
					jsonresData.setMsg("财务报表类型CWBBDL_DM不能为空");
					return jsonresData;			
				}
				if(!"S".equals(cwbblx)&&!"A".equals(cwbblx)&&!"B".equals(cwbblx)&&!"C".equals(cwbblx)&&!"D".equals(cwbblx)&&!"E".equals(cwbblx)){
					jsonresData.setCode("0");
					jsonresData.setMsg("财务报表类型CWBBDL_DM必须为A、B、C、D、E、S");
					return jsonresData;			
				}
//				if("".equals(PCHJ)||PCHJ==null){
//					jsonresData.setCode("0");
//					jsonresData.setMsg("PCHJ不能为空");
//					return jsonresData;			
//				}	
				PageData pd=new PageData();
				pd.put("USERNAME", djxh);
				pd.put("QYMC", qymc);
				String HYDM=null;
				Map jcsxform =auditService.validateQyxx(pd);
				if(!"1".equals(jcsxform.get("SUCBJ"))&&jcsxform.get("SUCBJ")!="1"){
					jsonresData.setCode((String) jcsxform.get("SUCBJ"));
					jsonresData.setMsg((String)jcsxform.get("MSG"));
					return jsonresData;	
				}else{
					HYDM=(String) jcsxform.get("HYDM");
				}
				if("dataSc".equals(dealMethod)){
					//处理总账
//					List<Map> gdzcList=jsonObject.getJSONArray(GdzcData);
//					List<Map> gdzcList=jsonObject.parseObject(GdzcData, new TypeReference<ArrayList<Map>>(){});
					JSONArray gdzcList=JSON.parseArray(jsonObject.getString(GdzcData));
					logBefore(logger, "获取固定资产数据");
					Map bzmap=new HashMap();
					Map sqdmap=new HashMap();
					sqdmap.put("djxh", djxh);
					sqdmap.put("qymc", qymc);
					sqdmap.put("cwbblx", cwbblx);
					sqdmap.put("LSH", LSH);
					sqdmap.put("sssq", sssq);
					sqdmap.put("SQRQ", SQRQ);
					sqdmap= auditService.ifFistDate(sqdmap);
					LSH=(String) sqdmap.get("LSH");
					if(gdzcList!=null&&gdzcList.size()>0){
						try {
							Map gdzcmap=null;
							List newgdzclist=new ArrayList();
							String zc_code=null;
							String zc_name=null;
							String zc_cate=null;
							String value=null;
							String unuseddate=null;
							String useddate=null;
							String zc_czl=null;
							String b_zj=null;
							String s_zj=null;
							String indate=null;
							String zc_yzjs=null;
							String zc_zjjs=null;
							String curr_date=null;
							Map gdzcjsonmap=null;
							for(int i=0;i<gdzcList.size();i++){
								gdzcjsonmap=(Map) gdzcList.get(i);
								zc_code=(String) gdzcjsonmap.get("zc_code");
								zc_name=(String)gdzcjsonmap.get("zc_name");
								zc_cate=(String)gdzcjsonmap.get("zc_cate");
								value=(String)gdzcjsonmap.get("value");
								unuseddate=(String)gdzcjsonmap.get("unuseddate");
								useddate=(String)gdzcjsonmap.get("useddate");
								zc_czl=(String)gdzcjsonmap.get("zc_czl");
								b_zj=(String)gdzcjsonmap.get("b_zj");
								s_zj=(String)gdzcjsonmap.get("s_zj");
								indate=(String)gdzcjsonmap.get("indate");
								if("null".equals(indate)){
									indate=null;
								}
								zc_yzjs=(String)gdzcjsonmap.get("zc_yzjs");
								if("null".equals(zc_yzjs)){
									zc_yzjs=null;
								}
								zc_zjjs=(String)gdzcjsonmap.get("zc_zjjs");
								if("null".equals(zc_zjjs)){
									zc_zjjs=null;
								}
								curr_date=(String)gdzcjsonmap.get("curr_date");
								if("null".equals(curr_date)){
									curr_date=null;
								}
								gdzcmap=new HashMap();
								gdzcmap.put("cwbblx", cwbblx);
								gdzcmap.put("LSH", LSH);						
								gdzcmap.put("qymc", qymc);
								gdzcmap.put("djxh", djxh);
								gdzcmap.put("zc_code",zc_code);
								gdzcmap.put("zc_name",zc_name);
								gdzcmap.put("zc_cate",zc_cate);
								gdzcmap.put("value",value);								
								gdzcmap.put("unuseddate",unuseddate);
								gdzcmap.put("useddate",useddate);
								gdzcmap.put("zc_czl",zc_czl);
								gdzcmap.put("b_zj",b_zj);
								gdzcmap.put("s_zj",s_zj);
								gdzcmap.put("indate",indate);
								gdzcmap.put("zc_yzjs",zc_yzjs);
								gdzcmap.put("zc_zjjs",zc_zjjs);
								gdzcmap.put("curr_date",curr_date);
								gdzcmap.put("sssq",sssq);
								newgdzclist.add(gdzcmap);
							}
							auditService.saveGdzc(newgdzclist,sqdmap);
							GDZCCOUNT=newgdzclist.size();
						} catch (Exception e) {
							jsonresData.setCode("0");
							jsonresData.setMsg("保存固定资产折旧失败"+e.getMessage());
							logger.error(e.toString(), e);
							return jsonresData;
						}
					
					}
				}else{
					jsonresData.setCode("0");
					jsonresData.setMsg("dealmethod错误");
					return jsonresData;			
				}
				jsonresData.setCode("1");
				jsonresData.setMsg("导入数据成功,导入固定资产折旧"+GDZCCOUNT+"条");
				return jsonresData;
		} catch (Exception e) {
			jsonresData.setCode("0");
			jsonresData.setMsg(e.getMessage());
			logger.error(e.toString(), e);
			return jsonresData;				
		}
	}
}
	
 