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



		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>指标管理 <small><i class="icon-double-angle-right"></i> 指标调度</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="saveRwxx()">保存</button>			    
							    <button type="button" class="btn btn-small btn-primary" onclick="doAction()">执行</button>
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
									class="green icon-home bigger-110"></i> 基本信息
							</a></li>
							<li><a data-toggle="tab" href="#zbnr"><i
									class="green icon-home bigger-110"></i>指标选择</a></li>
						</ul>
						<div class="tab-content">
							<div id="jcsx" class="tab-pane in active">

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
												<input type="text" style="display:none" readonly class="form-control" id="LSH"/>
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
                                               <input type="text"  class="select_ztree" onclick="ckJdxz()" style="width:80%" id="xzqhtree"/>                                                 
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
											<label for="ds_host" class="col-sm-2 control-label">所属时期</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="SSSQ"/>                                               
											</div>											
										</div>
									</fieldset>
									
								</form>
							</div>
							<div id="zbnr" class="tab-pane">
									<table style="width:100%;" border="0">
										<tr>
											<td style="width:100%;height:90%" valign="top" bgcolor="#F9F9F9">
											    <ul id="zbTree" class="ztree ztree2"  style="width:100%;height:360px;vertical-align: middle" check="enable:true"></ul>
											 </td>
											 <!-- 
												 <td style="width:10%;height:90%;" bgcolor="#F9F9F9">
											   <table  style="width:100%">
											      <tr>
											         <td>
											          <button type="button" style="width:100%" class="btn btn-small btn-primary" onclick="select()"><xmp>选择>></xmp></button>
											         </td>
											      </tr>
											      <tr>
											         <td>
											          <button type="button" style="width:100%" class="btn btn-small btn-primary" onclick="cancal()"><xmp><<取消</xmp></button>
											         </td>
											      </tr>											      
											   </table>											    
											 </td>
											<td style="width:45%;height:90%" valign="top" bgcolor="#F9F9F9">
											    <ul id="zbTree2" class="ztree ztree2"style="width:100%;height:360px;" check="enable:true" onclick="opentree()"></ul>
											</td>											 
											  -->
										 
									    </tr>
								    </table>									
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


	<script type="text/javascript" src="pages/zbgl/zbjgrw.js"></script>
</body>
</html>

