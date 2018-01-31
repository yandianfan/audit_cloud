<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<style type="text/css">
		#dialog-add,#dialog-add2,#dialog-message,#dialog-comment{width:100%; height:100%; position:fixed; top:0px; z-index:99999999; display:none;}
		.commitopacity{position:absolute; width:100%; height:700px; background:#7f7f7f; filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity: 0.5; top:0px; z-index:99999;}
		.commitbox{width:100%; margin:0px auto; position:absolute; top:120px; z-index:99999;}
		.commitbox_inner{width:96%; height:255px;  margin:6px auto; background:#efefef; border-radius:5px;}
		.commitbox_top{width:100%; height:250px; margin-bottom:10px; padding-top:10px; background:#FFF; border-radius:5px; box-shadow:1px 1px 3px #e8e8e8;}
		.commitbox_top textarea{width:95%; height:195px; display:block; margin:0px auto; border:0px;}
		.commitbox_cen{width:95%; height:40px; padding-top:10px;}
		.commitbox_cen div.left{float:left;background-size:15px; background-position:0px 3px; padding-left:18px; color:#f77500; font-size:16px; line-height:27px;}
		.commitbox_cen div.left img{width:30px;}
		.commitbox_cen div.right{float:right; margin-top:7px;}
		.commitbox_cen div.right span{cursor:pointer;}
		.commitbox_cen div.right span.save{border:solid 1px #c7c7c7; background:#6FB3E0; border-radius:3px; color:#FFF; padding:5px 10px;}
		.commitbox_cen div.right span.quxiao{border:solid 1px #f77400; background:#f77400; border-radius:3px; color:#FFF; padding:4px 9px;}
		</style>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>


</head>
<body>
<div id="dialog-add">
	<div class="commitopacity"></div>
  	<div class="commitbox">
	  	<div class="commitbox_inner">
	        <div class="commitbox_top">
	        	<textarea name="ZHGSS" id="ZHGSS" placeholder="请输入指标转换公式" title="请输入指标转换公式"></textarea>
	            <div class="commitbox_cen">
	                <div class="left" id="cityname"></div>
	                <div class="right"><span class="save" onClick="saveZhgs()">保存</span>&nbsp;&nbsp;<span class="quxiao" onClick="cancel_pl()">取消</span></div>
	            </div>
	        </div>
	  	</div>
  	</div>
</div>
<div id="dialog-add2">
	<div class="commitopacity"></div>
  	<div class="commitbox">
	  	<div class="commitbox_inner">
	        <div class="commitbox_top">
	        	<textarea name="KZZGSS" id="KZZGSS" placeholder="请输入扩展值" title="请输入扩展值"></textarea>
	            <div class="commitbox_cen">
	                <div class="left" id="cityname"></div>
	                <div class="right"><span class="save" onClick="saveKzz()">保存</span>&nbsp;&nbsp;<span class="quxiao" onClick="cancel_pl2()">取消</span></div>
	            </div>
	        </div>
	  	</div>
  	</div>
</div>
	<div class="container-fluid" id="main-container">



		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>指标定义 <small><i class="icon-double-angle-right"></i> 指标管理</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="saveZbxx()">保存</button>
							    <button type="button" class="btn  btn-primary " onclick="reload();">重置</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>			
			<div class="row-fluid">
				<div class="span">
					<div class="tabbable">
						<ul class="nav nav-tabs" id="myTab">
							<li class="active"><a data-toggle="tab" href="#jcsx"> <i
									class="green icon-home bigger-110"></i> 基础属性
							</a></li>
							<li id="area7"><a data-toggle="tab" href="#sjly"><i
									class="green icon-home bigger-110"></i>数据来源</a></li>							
							<li><a data-toggle="tab" href="#zbgs"><i
									class="green icon-home bigger-110"></i>指标公式</a></li>
						</ul>
						<div class="tab-content">
							<div id="jcsx" class="tab-pane in active">

								<form class="form-horizontal" role="form" id="jcsxform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">指标类型</label>
											<div class="col-sm-4">
												<select id="fxzblx"  class="form-control"  data-placeholder="请选择指标类型"
													title="指标类型" onchange="changeTj()">
												</select>
											</div>
											<label class="col-sm-2 control-label" for="ds_name">指标代码</label>
											<div class="col-sm-4">
												<input type="text" disabled class="form-control" id="FXZB_DM"/>
											</div>
										</div>
									</fieldset>
									<fieldset   id="area6">
										<div class="form-group">
									       <label class="col-sm-2 control-label" for="ds_host">工作底稿</label>
											<div class="col-sm-4">
												<select id="gzdgselect"  class="form-control"  data-placeholder="请选择底稿"
													title="工作底稿">
												</select>
											</div>	
											<label  class="col-sm-2 control-label" for="ds_host">行业</label>
											<div class="col-sm-4">
                                                <input type="text"  class="select_ztree" chkboxType='{"Y":"","N":""}' check="enable:true" style="width:80%" id="hytree"/> 
											</div>																			       
									    </div>
									</fieldset>
									<fieldset id="disarea1">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">申报表</label>
											<div class="col-sm-10">
												<select id="jslsjbselect"  class="form-control"  data-placeholder="请选择申报表"
													title="申报表" onchange="selectSbb(this)">
												</select>
											</div>
										</div>
									</fieldset>									
									<fieldset>
										<div class="form-group">
											<label for="disabledSelect" class="col-sm-2 control-label">指标名称</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" id="FXZB_MC"
													placeholder="请选输入指标名称">
											</div>
										</div>
									</fieldset>

									<fieldset>
										<div class="form-group">
											<label for="disabledSelect" class="col-sm-2 control-label">指标描述</label>
											<div class="col-sm-10">
												<textarea class="form-control"  id="FXZB_MS" rows="5"></textarea>
											</div>
										</div>
									</fieldset>
									<fieldset  id="area5">
										<div class="form-group">
											<label for="disabledSelect" class="col-sm-2 control-label">工作指导</label>
											<div class="col-sm-10">
												<textarea class="form-control"  id="GZZD" rows="5"></textarea>
											</div>
										</div>
									</fieldset>									
								</form>
							</div>
							<div id="sjly" class="tab-pane">
									<table style="width:100%;" border="0">
										<tr>
											<td style="width:15%;" valign="top" bgcolor="#F9F9F9">
									         <input type="text" class="empty" id="serchekey"/>
									         <button  onclick="searchNode();" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
												<div style="overflow:scroll; width:400px; height:350px;">
													<div style="width:15%;">
														<ul id="ysjtree" check="enable:true" class="ztree" onclick="opentree()"></ul>
													</div>
												</div>
											</td>
											<td>
											  <table>
											  <tr><td><button type="button" class="btn btn-xs" onclick="addsjly()">新增</button></td></tr>
											    <tr><td>&nbsp&nbsp</td></tr>
											  <tr><td><button type="button" class="btn btn-xs" onclick="delsjly()">删除</button></td></tr>
											  </table>
											</td>
											<td style="width:85%;" valign="top" >
												 <div style="overflow:scroll; width:100%; height:200px;" >
													<div id="listSjly" type="DataGrid" class="DataGrid"  css="table table-striped table-bordered table-hover" caption="账套">
													   <div name="check1" type="checkbox"caption="选择"></div>
													    <div name="XH" style="display:none" caption="序号"></div>
													   <div name="SJLY_XH" style="display:none" caption="数据来源序号"></div>
													   <div name="SJLY_MC" caption="数据源名称"></div>
													   <div name="SJLY_CS" type="text" css="width:100%;height:25px;" caption="数据源参数"></div>
													   <div name="SJLY_SM" type="text" css="width:100%;height:25px;" caption="数据源说明"></div>
													   <div name="QCQM" type="select" css="width:100%;height:25px;" caption="期初期末"></div>
													   <div name="JFDF" type="select" css="width:100%;height:25px;" caption="借方贷方"></div>
													   <div name="ND" type="select" css="width:100%;height:20px;" caption="年度"></div>
													</div>
			                                     </div>  
												 <div style="overflow:scroll; width:100%; height:200px;" >
													<div id="listSjly2" type="DataGrid" class="DataGrid"  css="table table-striped table-bordered table-hover" caption="申报表">
													   <div name="check2" type="checkbox"caption="选择"></div>
													    <div name="XH" style="display:none" caption="序号"></div>
													   <div name="SJLY_XH" style="display:none" caption="数据来源序号"></div>
													   <div name="SJLY_MC" caption="数据源名称"></div>
													   <div name="SJLY_CS" type="text" css="width:100%;height:30px;" caption="数据源参数"></div>
													   <div name="SJLY_SM" type="text" css="width:100%;height:30px;" caption="数据源说明"></div>
													   <div name="ND" type="select" css="width:100%;height:20px;" caption="年度"></div>
													</div>
			                                     </div>  			                                     
											</td>
										</tr>
									</table>							
							</div>
							<div id="zbgs" class="tab-pane">
							                   <fieldset  id="area8">
												 <div style="overflow:scroll; width:100%; height:150px;" >
													<div id="listKzz" type="DataGrid" class="DataGrid"  css="table table-striped table-bordered table-hover">
													   <div name="Index" type="checkbox" delete="true"  style="width:5%" caption="序号"></div>
													   <div name="KZZ_MS"type="text" style="width:20%"   css="width:100%;height:30px;" caption="扩展值说明"></div>
													   <div name="KZZGS" type="text"  css="width:100%;height:30px;" caption="扩展值公式"></div>
													   <div name="EDIT2" type="button" style="width:5%" buttontype="icon-edit" onclick="dialog_open1();" caption="编辑公式"></div>
													</div>
			                                     </div> 
			                                    </fieldset>
												<div class="btn-group btn-group-xs">
													    <button type="button" class="btn  btn-primary" onclick="addGridRow('listKzz')">新增</button>			    
													    <button type="button" class="btn  btn-primary " onclick="deleteGridRow('listKzz');">删除</button>
												</div>				                                     							
												<form  id="jcsxform">
													<fieldset id="area3">
														<div class="form-group">
														    <div class="widget-header">
																<h4>指标公式</h4>
															</div>														
															<div class="col-sm-15">
																<textarea class="form-control"  id="gsnr"  rows="6"></textarea>
															</div>
															<div class="widget-header">
																<h4>识别条件</h4>
															</div>
															<div class="col-sm-15">
																<textarea class="form-control"  id="sbtj"  rows="6"></textarea>
															</div>	
															<div class="widget-header">
																<h4>风险提醒模板</h4>
															</div>
															<div class="col-sm-15">
																<textarea class="form-control"  id="fxtxxx"  rows="6"></textarea>
															</div>																													
														</div>
													</fieldset>
												</form>
												<fieldset style="display:none"  id="area4">
												 <div style="overflow:scroll; width:100%; height:350px;" >
													<div id="listZhgs" type="DataGrid" class="DataGrid"  css="table table-striped table-bordered table-hover" caption="转换公式">
													   <div name="Index" caption="序号"></div>
													   <div name="SJB" caption="数据表" style="display:none"></div>
													   <div name="SJXYWMC" caption="数据项(英文名称)"></div>
													   <div name="SJXZWMC" caption="数据项(中文名称)"></div>
													   <div name="ZHGS" type="text" css="width:100%;height:30px;" caption="指标公式"></div>
													   <div name="EDIT" type="button" buttontype="icon-edit" onclick="dialog_open();" caption="编辑公式"></div>
													</div>
			                                     </div>  
												</fieldset>									
                             <!-- 
 								<table style="width:100%;" border="0">
									<tr>
										    <td style="width:15%;" valign="top" bgcolor="#F9F9F9">
								                  <input type="text" class="input-medium search-query">
							     <button  onclick="searchNode();" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
													<div style="overflow:scroll; width:400px; height:350px;" >
														<div style="width:15%;">
															<ul id="ysjtree" class="ztree" onclick="opentree()"></ul>
														</div>
													</div>
											</td>
											<td style="width:85%;" valign="top">	
												<form  id="jcsxform">
													<fieldset id="area3">
														<div class="form-group">
														    <div class="widget-header">
																<h4>指标公式</h4>
															</div>														
															<div class="col-sm-15">
																<textarea class="form-control"  id="gsnr"  rows="6"></textarea>
															</div>
															<div class="widget-header">
																<h4>识别条件</h4>
															</div>
															<div class="col-sm-15">
																<textarea class="form-control"  id="sbtj"  rows="6"></textarea>
															</div>	
															<div class="widget-header">
																<h4>风险提醒模板</h4>
															</div>
															<div class="col-sm-15">
																<textarea class="form-control"  id="fxtxxx"  rows="6"></textarea>
															</div>																													
														</div>
													</fieldset>
												</form>
												<fieldset style="display:none"  id="area4">
												 <div style="overflow:scroll; width:100%; height:350px;" >
													<div id="listZhgs" type="DataGrid" class="DataGrid"  css="table table-striped table-bordered table-hover" caption="转换公式">
													   <div name="Index" caption="序号"></div>
													   <div name="SJB" caption="数据表" style="display:none"></div>
													   <div name="SJXYWMC" caption="数据项(英文名称)"></div>
													   <div name="SJXZWMC" caption="数据项(中文名称)"></div>
													   <div name="ZHGS" type="text" css="width:100%;height:30px;" caption="指标公式"></div>
													   <div name="EDIT" type="button" buttontype="icon-edit" onclick="dialog_open();" caption="编辑公式"></div>
													</div>
			                                     </div>  
												</fieldset>												
											</td>
										</tr>
									</table>                            
                              -->


							</div>
						</div>
					</div>
				</div>
				<!--/span-->



				<!-- PAGE CONTENT ENDS HERE -->
			</div>
			<!--/row-->

		</div>
		<!--/#page-content-->
	</div>
	<!--/.fluid-container#main-container-->
	
	<script type="text/javascript" src="pages/zbgl/zbdymain.js"></script>
</body>
</html>

