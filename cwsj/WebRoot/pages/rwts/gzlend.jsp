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
	</head>
	<body>
		
<div class="container-fluid" id="main-container">	
		<div id="page-content">
			<input id="LSH" value="${LSH}" style="display:none">
			<input id="YWLC_DM" value="${YWLC_DM}" style="display:none">
			<input id="YWHJ_DM" value="${YWHJ_DM}" style="display:none">
			 <div class="row-fluid">
					<div id="fuelux-wizard" class="row-fluid hidden">
					  <ul class="wizard-steps">
					  <c:forEach items="${gzllclist}" var="gzl" varStatus="vs">
						<li data-target="#step${vs.YWHJ_DM}" class="${gzl.active}"><span class="step">${vs.index+1}</span>${gzl.YWHJ_MC} <span class="title"> </span></li>
					  </c:forEach>
					  </ul>
					</div>
					
					<hr />			 
				  <div class="widget-body">
				   <div class="widget-main">
				     <p class="text-success">流程推送结束</p>
				   </div>
				  </div>
				</div>

<!-- PAGE CONTENT ENDS HERE -->
						 </div><!--/row-->
	
					</div><!--/#page-content-->



		
		<!-- 引入 -->
       <script type="text/javascript" src="pages/login/head.js"></script>
	</body>
</html>
