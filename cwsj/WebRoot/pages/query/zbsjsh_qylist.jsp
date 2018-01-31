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
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>


</head>
<body>

	<div class="container-fluid" id="main-container">


       <input type="text" style="display:none" value="${LCSLH}" id="LCSLH"/>
		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
		          <h3>审计结果
		           <ul class="nav ace-nav pull-right">
		            <div class="btn-group btn-group-small">
		                  <button type="button" class="btn btn-small btn-primary" onclick="ckNstzbgqy()">查看纳税调整报告</button>
		            </div>           
		           </ul>
		          </h3>			     
			</div>			
			<div class="row-fluid">		
				<div class="span">
					<div class="tabbable">
						<ul class="nav nav-tabs" id="myTab">
							<li class="active"><a data-toggle="tab" href="#jcxx"> <i
									class="green icon-home bigger-110"></i>基础信息
							</a></li>		
							<li><a data-toggle="tab" href="#gzdg"><i
									class="green icon-home bigger-110"></i>工作底稿</a></li>											
							<li><a data-toggle="tab" href="#sbb"> <i
									class="green icon-home bigger-110"></i>申报表
							</a></li>
							<li><a data-toggle="tab" href="#fxxx"><i
									class="green icon-home bigger-110"></i>风险信息</a></li>
									
						</ul>
						<div class="tab-content">
						
							<div id="jcxx" class="tab-pane in active">
								<form class="form-horizontal" role="form" id="jcsxform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">企业名称</label>
											<div class="col-sm-4">
												<input type="text" readonly class="form-control" id="QYMC">
											</div>
											<label class="col-sm-2 control-label" for="ds_name">企业登记序号</label>
											<div class="col-sm-4">
												<input type="text" readonly class="form-control" id="DJXH"/>
												<input type="text" style="display:none" readonly class="form-control" value="${LSH}" id="LSH"/>	
												<input type="text" style="display:none" class="form-control" value="${tsshbj}" id="tsshbj" />												
											</div>
										</div>
									</fieldset>
									<fieldset id="disarea1">
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
									</fieldset>									
									<fieldset>
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
                                               <input type="text"  class="select_ztree"  style="width:80%" id="xzqhtree"/>                                                 
											</div>											
										</div>
									</fieldset>
									<fieldset>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">街道乡镇</label>
											<div class="col-sm-4">
											    <select id="jdxzselect"  class="form-control"  
													title="行业">
												</select>  
											</div>
											<label for="ds_host" class="col-sm-2 control-label">联系电话</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="LXDH"/>                                               
											</div>											
										</div>
									</fieldset>
									
								</form>

							</div>			
						    <div id="gzdg" class="tab-pane">
						     <div class="row-fluid">
						     <!-- 
                               <div class="span6">
                                 <div class="tabbable">
								  	<ul class="nav nav-tabs" id="myTab3">
									  <li class="active"><a data-toggle="tab" href="#ZHLDG"><i class="pink icon-dashboard bigger-110"></i> 综合类</a></li>
									  <li><a data-toggle="tab" href="#YWLDG"><i class="blue icon-user bigger-110"></i> 业务实施类</a></li>
									  <li><a data-toggle="tab" href="#YWJGLDG"><i class="blue icon-user bigger-110"></i> 业务结果类</a></li>
									</ul> 
									<div class="tab-content">
									  <div id="ZHLDG" class="tab-pane in active">
								            <div id="listzhdg" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
								              <div name="Index" style="width:5%" caption="序号"></div>
								              <div name="DG_DM" style="display:none"  caption="底稿代码" style="display:none"></div>
								              <div name="DG_MC" caption="底稿名称" type="a" onclick="modify()"></div>
								              <div name="DGLX_MC" style="display:none" caption="底稿类型"></div>
								              <div name="URL" style="display:none" caption="特殊底稿地址"></div>
								            </div>									  
									  </div>
									  <div id="YWLDG" class="tab-pane">
								            <div id="listywdg" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
								              <div name="Index" style="width:5%" caption="序号"></div>
								              <div name="DG_DM" style="display:none"  caption="底稿代码" style="display:none"></div>
								              <div name="DG_MC" caption="底稿名称" type="a" onclick="modify()"></div>
								              <div name="DGLX_MC" style="display:none" caption="底稿类型"></div>
								              <div name="URL" style="display:none" caption="特殊底稿地址"></div>
								            </div>										       
									  </div>
									  <div id="YWJGLDG" class="tab-pane">
								            <div id="listywjgdg" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
								              <div name="Index" style="width:5%" caption="序号"></div>
								              <div name="DG_DM" style="display:none"  caption="底稿代码" style="display:none"></div>
								              <div name="DG_MC" caption="底稿名称" type="a" onclick="modify()"></div>
								              <div name="DGLX_MC" style="display:none" caption="底稿类型"></div>
								              <div name="URL" style="display:none" caption="特殊底稿地址"></div>
								            </div>										       
									  </div>									  									  
									</div>                              
                                 </div>
                                </div>						     
						      -->
 									  <div id="ZHLDG" class="tab-pane in active">
								            <div id="listzhdg" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
								              <div name="Index" style="width:5%" caption="序号"></div>
								              <div name="DG_DM" style="display:none"  caption="底稿代码" style="display:none"></div>
								              <div name="DG_MC" caption="底稿名称" type="a" onclick="modify()"></div>
								              <div name="DGLX_MC" style="display:none" caption="底稿类型"></div>
								              <div name="URL" style="display:none" caption="特殊底稿地址"></div>
								            </div>									  
									  </div>
                              </div>
							</div>	
																	
							<div id="sbb" class="tab-pane">
							<table id="table_bug_report" class="table table-striped table-bordered table-hover">
							<c:forEach items="${sbblist}" var="sbb" varStatus="vs">
								<tr>
									<td><a onClick="openQysdsndindex('${sbb.PZ_XH}')">${sbb.SBBMC}</a></td>
									<td>${sbb.SSQ}</td>
								</tr> 
							</c:forEach>  
							</table>                            
							</div>
							<!-- 
							<div id="fxxx" class="tab-pane">
				              <div id="listzb" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
				               <div name="Index"  caption="序号"></div> 
				               <div name="FXZB_DM" style="display:none" caption="指标代码"></div>
				               <div name="FXZB_MC" caption="指标名称"  onclick="modify()" type="a"></div>
				               <div name="FXTSXX" caption="风险信息"></div>
				               <div name="DG_DM" style="display:none" caption="底稿代码"></div>
				               <div name="DGMC" caption="对应底稿"></div>
				              </div>
							</div>								
							 -->
							<div id="fxxx" class="tab-pane">
					            <div id="listzb" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
					              <div name="Index" style="width:5%" caption="序号"></div>
					             <!-- 
						              <div name="FXZB_DM" style="width:15%" caption="指标代码" ></div>
					              <div name="FXZB_MC" style="width:40%" caption="指标名称" ></div>				             
					              --> 

					              <div name="DG_DM" style="display:none"  caption="底稿代码" style="display:none"></div>
					              <div name="DG_MC" caption="底稿名称" type="a" onclick="openzdbg()"></div>
					              <div name="FXCOUNT" style="width:5%" caption="风险点" ></div>
					            </div>	
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
	<script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript" src="pages/zbgl/zbsjsh_list.js"></script>
		<script type="text/javascript">
$(document).ready(function(){
   var tsshbj=$("#tsshbj").val();
   if(tsshbj=="1"){
	   $("button").show();
   }else{
       $("button").hide();
   }
}) 		
		</script>
</body>
</html>