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
		<meta charset="utf-8" />
		<title>标准账套维护</title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<!-- 
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
			<link rel="stylesheet" href="static/css/ace.min.css" />
		 -->
	
		
		
		
	<style type="text/css">
	select, textarea, input[type='text'], input[type='password'], input[type='datetime'], input[type='datetime-local'], input[type='date'], input[type='month'], input[type='time'], input[type='week'], input[type='number'], input[type='email'], input[type='url'], input[type='search'], input[type='tel'], input[type='color'], .uneditable-input {
    display: inline-block;
    height: 20px;
    padding: 4px 6px;
    margin-bottom: 2px;
    font-size: 14px;
    line-height: 20px;
    color: #555;
    vertical-align: middle;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}
	</style>	
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="plugins/attention/zDialog/zDrag.js"></script>
	    <script type="text/javascript" src="plugins/attention/zDialog/zDialog.js"></script>
	    <script type="text/javascript" src="pages/ysjgl/ysj_list.js"></script>	   
</head>

<body>
	<div class="container-fluid" id="main-container">
	<div id="page-content" class="clearfix">
	<div class="page-header position-relative">
	    <h3>源数据管理 <small><i class="icon-double-angle-right"></i> 标准账套维护</small>
	    </h3>			     
	</div>	
	<div class="row-fluid">	
	<table id="table_report" class="table table-striped table-bordered table-hover">
		<thead>
		<tr>
			<th class="center"  style="width: 3%;">序号</th>
			<th class='center' style="width: 7%;">科目代码</th>
			<th class='center' style="width: 10%;">科目名称</th>
			<th class='center' style="width: 8%;">原始科目代码</th>
			<th class='center' style="width: 12%;">原始科目名称</th>
			<th class='center' style="width: 10%;">汇总科目名称</th>
			<th class='center' style="width: 7%;">期初余额(借方)</th>
			<th class='center' style="width: 7%;">期初余额(贷方)</th>
			<th class='center' style="width: 7%;">本期余额(借方)</th>
			<th class='center' style="width: 7%;">本期余额(贷方)</th>	
			<th class='center' style="width: 8%;">期末余额(借方)</th>
			<th class='center' style="width: 8%;">期末余额(贷方)</th>					
			<th class='center' style="width: 4%;">操作</th>
		</tr>
		</thead>
		<c:choose>
			<c:when test="${not empty bzsjxList}">
				<c:forEach items="${bzsjxList}" var="bzsjx" varStatus="vs">
				<tr id="tr${bzsjx.SJX_XH }">
				<td>${vs.index+1}</td>
				<td>${bzsjx.SJX_XH }</td>
				<td>${bzsjx.SJX_MC }</td>
				<td name="kmcode">${bzsjx.KMCODE }</td>
				<td name="kmname">${bzsjx.KMNAME }</td>
				<td>${bzsjx.HZSJX_MC }</td>
				<td><input type="text" style="width:95%" value="${bzsjx.s_jfye}" name="s_jfye"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.s_dfye}" name="s_dfye"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.b_jffs}" name="b_jffs"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.b_dffs}" name="b_dffs"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.e_jfye}" name="e_jfye"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.e_dfye}" name="e_dfye"/></td>
				<!--<td><input type="text" style="width:85%" value="${bzsjx.SJX_VALUE}" name="bzsjxvalue"/>&nbsp<a class='btn btn-mini btn-info' title="选择对应值" onclick="editsjxvalue(this,'${bzsjx.LSH}','${bzsjx.SJX_XH}')" ><i  class='icon-edit'></i></a></td>  -->
				<td>
				<!-- 
					<a class='btn btn-mini btn-info' title="匹配" onclick="editsjxvalue(this,'${bzsjx.LSH}','${bzsjx.SJX_XH}')" >匹配</a>
				<a class='btn btn-mini btn-warning' onclick="delesjxvalue(this,'${bzsjx.LSH}','${bzsjx.SJX_XH}')" >解除</a>			
				 -->
				<c:if test="${bzsjx.PARENT==1}">
				   <a class='btn btn-mini btn-warning' onclick="openClose('${bzsjx.SJX_XH}','${bzsjx.LSH}',this,${vs.index},0)" >展开</a>
				</c:if>								
				</td>
				</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
				<td colspan="100">没有相关数据</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
	</div>
	</div>
	</div>
</body>
</html>