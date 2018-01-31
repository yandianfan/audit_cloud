<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
<script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>	
	     <style media=print type="text/css"> 
	.noprint{visibility:hidden}
	</style>
	<title>企业基础信息表</title>
</head>
<body>

	<div class="container-fluid" id="main-container">

		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>审计包录入 <small><i class="icon-double-angle-right"></i> 企业基础信息采集</small>
			     <ul class="nav ace-nav pull-right noprint">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="saveJcxx()">保存</button>	
							     <button type="button" class="btn btn-small btn-primary" onclick="printPage()">打印</button>		    
							    <button type="button" class="btn  btn-primary " onclick="reload();">重置</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>			
			<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">基本信息</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>			
				<div class="span">


								<form class="form-horizontal" role="form" id="jcsxform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">企业名称</label>
											<div class="col-sm-4">
												<input type="text" readonly class="form-control" id="QYMC">
											</div>
											<label class="col-sm-2 control-label" for="ds_name">企业代码</label>
											<div class="col-sm-4">
												<input type="text" readonly class="form-control" id="DJXH"/>
												<input type="hidden" readonly class="form-control" id="LSH"/>
											</div>
										</div>

										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">财务报表类型</label>
											<div class="col-sm-4">
												<select id="cwbbdlselect"  class="form-control"  
													title="财务报表类型">
													<option value="S">企业会计准则</option>
													<option value="A">小企业会计准则</option>
													<option value="B">企业会计制度</option>
													<option value="C">小企业会计制度</option>
													<option value="D">民非营制度</option>
													<option value="E">事业制度</option>
												</select>
											</div>
											<label  class="col-sm-2 control-label" for="ds_host">行业</label>
											<div class="col-sm-4">
                                                <input type="text"  class="select_ztree"  style="width:80%" id="hytree"/> 
											</div>	
									   </div>										
                                  
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">经济类型</label>
											<div class="col-sm-4">
											    <select id="zclxselect"  class="form-control"  
													title="经济类型">
												</select>
											</div>
											<label for="ds_host" class="col-sm-2 control-label">社会信用代码</label>
											<div class="col-sm-4">
                                                <input type="text"  class="form-control" id="ZZJGDM"/>                                                
											</div>											
										</div>
                                   
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">征收方式</label>
											<div class="col-sm-4">
											    <select id="zsfsselect"  class="form-control"  
													title="征收方式">
													<option value="1">核定征收</option>
													<option value="2">查账征收</option>
												</select>
											</div>
											<label for="ds_host" class="col-sm-2 control-label">行政区划</label>
											<div class="col-sm-4">
                                               <input type="text"  class="select_ztree" onclick="ckJdxz()"  style="width:80%" id="xzqhtree"/>                                                 
											</div>											
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">街道乡镇</label>
											<div class="col-sm-4">
											    <select id="jdxzselect"  class="form-control"  
													title="行业">
												</select>  
											</div>
											<label for="ds_host" class="col-sm-2 control-label">具体地址</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="JTDZ"/>                                               
											</div>											
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">联系电话</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="LXDH"/>                                               
											</div>
											<label for="ds_host" class="col-sm-2 control-label">邮箱</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="EMAIL"/>                                               
											</div>											
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">开户银行</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="YHMC"/>                                               
											</div>
											<label for="ds_host" class="col-sm-2 control-label">银行账号</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="YHZH"/>                                               
											</div>											
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">工商登记发证日期</label>
											<div class="col-sm-2">
											    <input class="form-control date" format="yyyy-mm-dd" size="16" id="GSDJRQ" type="text"  readonly>
											</div>
								
											<label for="ds_host" class="col-sm-2 control-label">工商登记执照号码</label>
											<div class="col-sm-2">
                                               <input type="text"  class="form-control" id="ZZHM"/>                                               
											</div>	
											<label for="ds_host" class="col-sm-2 control-label">工商登记经营期限</label>
											<div class="col-sm-2">
                                               <input type="text"  class="form-control" id="GSJYQX"/>                                               
											</div>																					
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">税务登记发证日期</label>
											<div class="col-sm-2">
											     <input type="text"  class="form-control date" format="yyyy-mm-dd" id="SWDJRQ"   readonly/>											
											</div>
											<label for="ds_host" class="col-sm-2 control-label">税务代码</label>
											<div class="col-sm-2">
                                               <input type="text"  class="form-control" id="NSRSBH"/>                                               
											</div>	
											<label for="ds_host" class="col-sm-2 control-label">主管税务机关</label>
											<div class="col-sm-2">
                                               <input type="text"  class="form-control" id="ZGSWJG"/>                                               
											</div>																					
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">经营范围</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="JYFW"/>                                               
											</div>
											<label for="ds_host" class="col-sm-2 control-label">汇总纳税企业</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="HZQYMC"/>                                               
											</div>											
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">法人</label>
											<div class="col-sm-4">
											     <input type="text"  class="form-control" id="FR" />											
											</div>
											<label for="ds_host" class="col-sm-2 control-label">联系电话</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="FRLXDH"/>                                               
											</div>																						
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">会计机构负责人</label>
											<div class="col-sm-4">
											     <input type="text"  class="form-control" id="KJ" />											
											</div>
											<label for="ds_host" class="col-sm-2 control-label">联系电话</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="KJLXDH"/>                                               
											</div>																					
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">财务经理</label>
											<div class="col-sm-4">
											     <input type="text"  class="form-control" id="CWJL" />											
											</div>
											<label for="ds_host" class="col-sm-2 control-label">联系电话</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="CWLXDH"/>                                               
											</div>																					
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">注册资本(万元)</label>
											<div class="col-sm-4">
											     <input type="text"  class="form-control" id="ZCZB"/>											
											</div>
											<label for="ds_host" class="col-sm-2 control-label">从业人数 </label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="CYRS"/>                                               
											</div>																					
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">从事国家非限制和禁止行业</label>
											<div class="col-sm-4">
                                             <label><input type="radio" name="CSGJFXZJZHYBJ" value="1"><i>✓</i>是</label>
											 <label><input type="radio" name="CSGJFXZJZHYBJ"  value="0"><i>✓</i>否</label>     											     									
											</div>
											<label for="ds_host" class="col-sm-2 control-label">境外中资控股居民企业</label>
											<div class="col-sm-4">    
                                             <label><input type="radio" name="JWZZKGJMQYBJ" value="1"><i>✓</i>是</label>
											 <label><input type="radio" name="JWZZKGJMQYBJ"  value="0"><i>✓</i>否</label>                                         
											</div>																																
										</div>

										<div class="form-group">											
											<label for="ds_host" class="col-sm-2 control-label">存在境外关联交易</label>
											<div class="col-sm-4">
                                             <label><input type="radio" name="JWGLJYBJ" value="1"><i>✓</i>是</label>
											 <label><input type="radio" name="JWGLJYBJ"  value="0"><i>✓</i>否</label>   											     										
											</div>
											<label for="ds_host" class="col-sm-2 control-label">股权投资类企业</label>
											<div class="col-sm-4">
                                              <label><input type="radio" name="GQTZBJ" value="1"><i>✓</i>是</label>
											 <label><input type="radio" name="GQTZBJ"  value="0"><i>✓</i>否</label>                                                                                              
											</div>																					
										</div>

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">资产总额(万元)</label>
											<div class="col-sm-4">
                                                <input type="text"  class="form-control" id="ZCZE"/>	 											     									
											</div>
											<label for="ds_host" class="col-sm-2 control-label">上市公司</label>
											<div class="col-sm-4">    
                                             <label><input type="radio" name="SSGSBJ" value="1"><i>✓</i>是(境内)</label>
											 <label><input type="radio" name="SSGSBJ"  value="2"><i>✓</i>境外</label> 
											 <label><input type="radio" name="SSGSBJ"  value="3"><i>✓</i>否</label>                                          
											</div>																															
										</div>

										<div class="form-group">											
											<label for="ds_host" class="col-sm-2 control-label">会计档案存放地</label>
											<div class="col-sm-4">
                                              <input type="text"  class="form-control" id="KJDACFD"/>												     										
											</div>
											<label for="ds_host" class="col-sm-2 control-label">会计核算软件</label>
											<div class="col-sm-4">
                                              <input type="text"  class="form-control" id="KJHSRJ"/>												     										
											</div>																				
										</div>
									</fieldset>																																																																																
								</form>

					</div>
				</div>
				<!--/span-->
			<!--/row-->
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">股东基本情况</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>	
				  <div class="span">
				  <div style="overflow:scroll; width:100%; height:250px;" >
					<div id="listgdtzxx" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover">
						<div name="Index" type="checkbox" delete="true" caption="序号"></div>
						<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
						<div name="GDMC" type="text" caption="股东名称"></div>
						<div name="ZJLX" type="select"  caption="证件种类"></div>
						<div name="ZJHM" type="text" caption="证件号码"></div>
						<div name="ZCLX" type="select"caption="投资性质"></div>
						<div name="TZZE" type="text"caption="投资总额"></div>
						<div name="TZBL" type="text"caption="投资比例"></div>
						<div name="GJ" type="select" caption="国籍"></div>
					</div>	
				</div>
				<div class="btn-group btn-group-xs noprint">
					    <button type="button" class="btn  btn-primary" onclick="addGridRow('listgdtzxx')">新增</button>			    
					    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listgdtzxx');">删除</button>
				</div>								  
				  </div>
</div>
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">分支机构基本情况</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>	
				  <div class="span">
				   <div style="overflow:scroll; width:100%; height:250px;" >
					<div id="listjnfz" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="境内分支机构清单（只列示二级分支机构）">
						<div name="Index" caption="序号"></div>
						<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
						<div name="JNFZJGMC" type="text"  caption="分支机构名称"></div>
						<div name="JNFZZGSWJG" type="text"  caption="主管税务机关"></div>
						<div name="JNFZNSRSBH" type="text"  caption="分支机构纳税人识别号"></div>
						<div name="JNSLSJ" type="date"  caption="设立时间"></div>
						<div name="JNZCDZ" type="text"  caption="注册地址"></div>
						<div name="JNJYFW" type="text"  caption="经营范围"></div>
					</div>	
				 </div>
				<div class="btn-group btn-group-xs noprint">
					    <button type="button" class="btn  btn-primary" onclick="addGridRow('listjnfz')">新增</button>			    
					    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listjnfz');">删除</button>
				</div>					 
				 <div style="overflow:scroll; width:100%; height:250px;" >	
				<div id="listjwfz" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="境外分支（营业）机构清单">
					<div name="Index" caption="序号"></div>
					<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
					<div name="JWFZJGMC" type="text" caption="分支机构名称"></div>
					<div name="JWFZZGSWJG" type="text"  caption="主管税务机关"></div>
					<div name="JWFZNSRSBH" type="text" caption="分支机构纳税人识别号"></div>
					<div name="JWSLSJ" type="date" caption="设立时间"></div>
					<div name="JWZCDZ" type="text" caption="注册地址"></div>
					<div name="JWJYFW" type="text" caption="经营范围"></div>					
				</div>
				</div>	
				<div class="btn-group btn-group-xs noprint">
					    <button type="button" class="btn  btn-primary" onclick="addGridRow('listjwfz')">新增</button>			    
					    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listjwfz');">删除</button>
				</div>										  
				  </div>
</div>
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">对外投资基本情况</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>	
				  <div class="span">
				   <div style="overflow:scroll; width:100%; height:250px;" >
				<div id="listdwtz" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover">
					<div name="Index" caption="序号"></div>
					<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
					<div name="BTZZMC" type="text" caption="被投资者名称"></div>
					<div name="BTZZNSRSBH" type="text" caption="纳税人识别号"></div>
					<div name="BTZZJJXZ" type="select" caption="经济性质"></div>
					<div name="BTZZTZBL" type="text" caption="投资比例"></div>
					<div name="BTZZTZJE" type="text" caption="投资金额"></div>
					<div name="BTZZZCDZ" type="text" caption="注册地址"></div>
				</div>		
				</div>
				<div class="btn-group btn-group-xs noprint">
					    <button type="button" class="btn  btn-primary" onclick="addGridRow('listdwtz')">新增</button>			    
					    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listdwtz');">删除</button>
				</div>											  
				  </div>
</div>
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">前事务所名称及审核报告号</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>	
				  <div class="span">
				   <div style="overflow:scroll; width:100%; height:250px;" >
				<div id="listqshbg" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover">
					<div name="Index" caption="序号"></div>
					<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
					<div name="ND" type="date" format="yyyy" caption="年度"></div>
					<div name="SJBGSWS" type="text" caption="出具审计报告事务所"></div>
					<div name="SJBGWSH" type="text" caption="审计报告文号"></div>
					<div name="YJLX" type="text" caption="审计意见类型"></div>
					<div name="SDSSHSWS" type="text" caption="所得税审核事务所"></div>
					<div name="SHBGWSH" type="text" caption="审核报告文号"></div>
				</div>	
				</div>	
				<div class="btn-group btn-group-xs noprint">
					    <button type="button" class="btn  btn-primary" onclick="addGridRow('listqshbg')">新增</button>			    
					    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listqshbg');">删除</button>
				</div>										  
				  </div>
</div>
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">基本税（费）项目及税（费）率</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>	
				  <div class="span">
				   <div style="overflow:scroll; width:100%; height:250px;" >
				<div id="listzsxm" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" >
					<div name="Index" caption="序号"></div>
					<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
					<div name="ZSXM" type="select"  caption="税（费）项目"></div>
					<div name="JSYJ" type="text" caption="计税依据"></div>
					<div name="ZSL" type="text" caption="税（费）率/征收率"></div>
				</div>
				</div>
				<div class="btn-group btn-group-xs noprint">
					    <button type="button" class="btn  btn-primary" onclick="addGridRow('listzsxm')">新增</button>			    
					    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listzsxm');">删除</button>
				</div>												  
				  </div>
</div>
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">主要的税收优惠</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>	
				  <div class="span">
				   <div style="overflow:scroll; width:100%; height:250px;" >
						<div id="listssyh" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" >
							<div name="Index" caption="序号"></div>
							<div name="DJXH" type="text" caption="企业代码" style="display:none"></div>
							<div name="YHXM" type="text" caption="优惠项目"></div>
							<div name="WJYJ" type="text" caption="国家文件依据"></div>
							<div name="YHGD" type="text" caption="具体优惠政策规定"></div>
							<div name="PZWSH" type="text" caption="税务机关批准文号（属备案的注明是否已办备案）"></div>
						</div>	
				   </div>
					<div class="btn-group btn-group-xs noprint">
						    <button type="button" class="btn  btn-primary" onclick="addGridRow('listssyh')">新增</button>			    
						    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listssyh');">删除</button>
					</div>												  
				  </div>
</div>
<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">主要会计政策和估计</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>
<form class="form-horizontal" role="form" id="kjzcgjForm">
									<fieldset id="disarea1">
										<div class="form-group">
											<label class="col-sm-4 control-label" for="ds_host">请填写适用的会计准则或会计制度:</label>
											<div class="col-sm-8">
												<select id="kjzdselect"  class="form-control"  
													title="财务报表类型">
														<option value="">
																请选择
															</option>
															<option value="CKE">
																企业会计准则-一般企业
															</option>
															<option value="CKF">
																企业会计准则-银行
															</option>
															<option value="CKH">
																企业会计准则-证券
															</option>
															<option value="CKG">
																企业会计准则-保险
															</option>
															<option value="CKQ">
																企业会计准则-担保
															</option>
															<option value="CKL">
																小企业会计准则
															</option>
															<option value="CKA">
																企业会计制度
															</option>
															<option value="CKJ">
																事业单位会计准则-事业单位会计制度
															</option>
															<option value="CKJ_2">
																事业单位会计准则-科学事业单位会计制度
															</option>
															<option value="CKJ_3">
																事业单位会计准则-医院会计制度
															</option>
															<option value="CKJ_4">
																事业单位会计准则-高等学校会计制度
															</option>
															<option value="CKJ_5">
																事业单位会计准则-中小学校会计制度
															</option>
															<option value="CKJ_6">
																事业单位会计准则-彩票机构会计制度
															</option>
															<option value="CKM">
																民间非营利组织会计制度
															</option>
															<option value="CKO">
																村集体经济组织会计制度
															</option>
															<option value="CKP">
																农民专业合作社财务会计制度（试行）
															</option>
															<option value="CKZ">
																其他
															</option>
												</select>
											</div>										
										</div>
									</fieldset>
									<fieldset>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">记账本位币</label>
											<div class="col-sm-4">
                                             <label><input type="radio" name="jzbwb" value="1"><i>✓</i>人民币</label>
											 <label><input type="radio" name="jzbwb"  value="0"><i>✓</i>其他</label>     											     									
											</div>
											<label for="ds_host" class="col-sm-2 control-label">会计政策和估计是否发生变化</label>
											<div class="col-sm-4">    
                                             <label><input type="radio" name="kjzcsfbh" value="1"><i>✓</i>是</label>
											 <label><input type="radio" name="kjzcsfbh"  value="0"><i>✓</i>否</label>                                         
											</div>																																
										</div>
									</fieldset>	
									<fieldset>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">固定资产折旧方法</label>
											<div class="col-sm-10">
                                             <label><input type="checkbox" name="gdzczjff" value="01"><i>✓</i>年限平均法</label>
											 <label><input type="checkbox" name="gdzczjff"  value="02"><i>✓</i>工作量法</label>  
											 <label><input type="checkbox" name="gdzczjff"  value="03"><i>✓</i>双倍余额递减法</label>  
											 <label><input type="checkbox" name="gdzczjff"  value="04"><i>✓</i>年数总和法</label>  
											 <label><input type="checkbox" name="gdzczjff"  value="99"><i>✓</i>其他</label>     											     									
											</div>																															
										</div>
									</fieldset>	
									<fieldset>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">存货成本计价方法</label>
											<div class="col-sm-10">
                                             <label><input type="checkbox" name="chcbjjff" value="01"><i>✓</i>先进先出法</label>
											 <label><input type="checkbox" name="chcbjjff"  value="02"><i>✓</i>移动加权平均法</label>  
											 <label><input type="checkbox" name="chcbjjff"  value="03"><i>✓</i>月末一次加权平均法</label>  
											 <label><input type="checkbox" name="chcbjjff"  value="04"><i>✓</i>个别计价法</label>  
											 <label><input type="checkbox" name="chcbjjff"  value="05"><i>✓</i>毛利率法</label>     
											  <label><input type="checkbox" name="chcbjjff"  value="06"><i>✓</i>零售价法</label>  
											   <label><input type="checkbox" name="chcbjjff"  value="07"><i>✓</i>计划成本法</label>  
											    <label><input type="checkbox" name="chcbjjff"  value="99"><i>✓</i>其他</label>  										     									
											</div>																															
										</div>
									</fieldset>		
									<fieldset>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">坏账损失核算方法</label>
											<div class="col-sm-4">
                                             <label><input type="radio" name="hzsshsff" value="1"><i>✓</i>备抵法</label>
											 <label><input type="radio" name="hzsshsff"  value="2"><i>✓</i>直接核销法</label>     											     									
											</div>
											<label for="ds_host" class="col-sm-2 control-label">所得税计算方法</label>
											<div class="col-sm-4">    
                                             <label><input type="radio" name="sdsjsff" value="1"><i>✓</i>应付税款法</label>
											 <label><input type="radio" name="sdsjsff"  value="2"><i>✓</i>资产负债表债务法</label>                                         
											</div>																																
										</div>
									</fieldset>	
</form>
</div>
		</div>
		<!--/#page-content-->
	</div>
  	<script type="text/javascript" src="pages/ysjgl/qyjcxxcj.js"></script> 
 <script type="text/javascript"> 


</script>	
</body>

</html>
