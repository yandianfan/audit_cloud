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

		<div id="page-content">
			<!-- 
									<div class="page-header position-relative">
							<button class="btn btn-small btn-primary">查询</button> 
						</div>		
						 -->

			<div class="row-fluid">
				<div class="widget-box">
					<div class="widget-header widget-header-small">
						<h5 class="lighter">查询条件</h5>
						<span class="widget-toolbar"> <a href="#"
							data-action="collapse"><i class="icon-chevron-up"></i>
						</a> </span>
					</div>
					<div class="widget-body">
						<div class="widget-main">
							<form class="form-search">
								<input type="text" class="input-medium search-query">
								<button onclick="return false;" class="btn btn-purple btn-small">
									Search <i class="icon-search icon-on-right"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>




			<div class="row-fluid">

				<div class="table-header">显示结果</div>

				<table id="table_report"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>企业代码</th>
							<th>企业名称</th>
							<th>申报所属期起</th>
							<th>申报所属期止</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${qysdsndList}" var="qysdsnd" varStatus="vs">
							<tr>
								<td>${qysdsnd.SWGLM }</td>
								<td><a onClick="openQysdsndindex('${qysdsnd.PZ_XH}')">${qysdsnd.NSR_MC }</a>
								</td>
								<td>${qysdsnd.SFSSQ_QSRQ }</td>
								<td>${qysdsnd.SFSSQ_ZZRQ }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>


			<!-- PAGE CONTENT ENDS HERE -->
		</div>
		<!--/row-->

	</div>
	<!--/#page-content-->






	<!-- 引入 -->
	<script src="static/1.9.1/jquery.min.js"></script>
	<script type="text/javascript">
		window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");
	</script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/ace-elements.min.js"></script>
	<script src="static/js/ace.min.js"></script>

	<script type="text/javascript" src="static/js/bootbox.min.js"></script>
	<script type="text/javascript" src="public/js/tool/common.js"></script>
	<!-- 确认窗口 -->
	<script type="text/javascript" src="ysj_list.js"></script>
	<script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
		top.hangge();
		function openQysdsndindex(pzxh){
			//openMaxWindow("BLH/qysdsndIndexBLH_init&pzxh="+pzxh, 800, 700);
			siMenu(pzxh,'lm1','企业所得税申报表',"qysdsndIndexCtrl/init?pzxh="+pzxh);
		}
	</script>
</body>
</html>
