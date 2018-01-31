<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">	
	<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%> 
       <script type="text/javascript" src="static/js/fuelux.wizard.js"></script>
	</head>
	<body>
		
<div class="container-fluid" id="main-container">	
		<div id="page-content">
			<div class="page-header position-relative">
			    <h3>任务分配 <small><i class="icon-double-angle-right"></i> 人员选择</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="queding();">确定</button>
							    <button type="button" class="btn  btn-primary" onclick="winclose();">关闭</button>
						</div>			     
			     </ul>			    
			    </h3>			     
			</div>
			<input id="LSH" value="${LSH}" style="display:none">
			<input id="LCSLH" value="${LCSLH}" style="display:none">
			<input id="YWLC_DM" value="${YWLC_DM}" style="display:none">
			<input id="YWHJ_DM" value="${YWHJ_DM}" style="display:none">
			<input id="DJXH" value="${DJXH}" style="display:none">
			<div class="row-fluid">
			</div>
			 <div class="row-fluid">
					<div id="fuelux-wizard" class="row-fluid hidden">
					  <ul class="wizard-steps">
					  <li data-target="#step0" style="min-width: 25%; max-width: 25%;" class="active"><span class="step">0</span> <span class="title">开始</span></li>
					  <c:forEach items="${gzllclist}" var="gzl" varStatus="vs">
						<li data-target="#step${gzl.YWHJ_DM}" style="min-width: 25%; max-width: 25%;" class="${gzl.active}"><span class="step">${vs.index+1}</span> <span class="title">${gzl.YWHJ_MC} </span></li>
					  </c:forEach>
					  <li data-target="#step100" style="min-width: 25%; max-width: 25%;"><span class="step"></span> <span class="title">结束</span></li>
					  </ul>
					</div>
					
					<hr />	
					<hr />
					<hr />	
					<hr />	 
				  <div class="widget-body">
				   <div class="widget-main">
					<form class="form-horizontal" role="form" id="jggwryform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">部门</label>
											<div class="col-sm-10">
												<select id="zzjgselect" onchange="selectRy(this)" class="form-control"  data-placeholder="请选择部门"
													title="申报表">
												</select>
											</div>
										</div>
								 
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">岗位</label>
											<div class="col-sm-10">
												<select id="gwselect" onchange="selectRy(this)" class="form-control"  data-placeholder="请选择岗位"
													title="申报表">
												</select>
											</div>
										</div>						
								

										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">人员</label>
											<div class="col-sm-10">
												<select id="ryselect"  class="form-control"  data-placeholder="请选择人员"
													title="申报表">
												</select>
											</div>
										</div>																				
									</fieldset>
					</form>
				   </div>
				  </div>
				</div>

<!-- PAGE CONTENT ENDS HERE -->
						 </div><!--/row-->
	
					</div><!--/#page-content-->



		
		<!-- 引入 -->
       <script type="text/javascript" src="pages/login/head.js"></script>

       <script type="text/javascript" src="pages/rwts/gzlryselect.js"></script>
		<script type="text/javascript">
 
		</script>
	</body>
</html>
