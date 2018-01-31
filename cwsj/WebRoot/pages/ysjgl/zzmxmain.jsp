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
    textarea, input[type='text'], input[type='password'], input[type='datetime'], input[type='datetime-local'], input[type='date'], input[type='month'], input[type='time'], input[type='week'], input[type='number'], input[type='email'], input[type='url'], input[type='search'], input[type='tel'], input[type='color'], .uneditable-input {
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
	<!-- 引入bootbox消息框start -->
	<script type="text/javascript" src="static/js/bootbox.min440.js"></script>
	<!--引入bootbox消息框end-->	   
		<script type="text/javascript"  src="static/js/bootstrap.min.js"></script>			
		<script type="text/javascript" src="plugins/attention/zDialog/zDrag.js"></script>
	    <script type="text/javascript" src="plugins/attention/zDialog/zDialog.js"></script>
 
	    <script type="text/javascript" src="pages/ysjgl/zzmxmain.js"></script>	   
</head>

<body>
	<div class="container-fluid" id="main-container">
	<div id="page-content" class="clearfix">
	<div class="page-header position-relative">
	    <h3>源数据管理 <small><i class="icon-double-angle-right"></i> 原始账套</small>
	     <ul class="nav ace-nav pull-right">
				<div class="btn-group btn-group-small">
					    <button type="button" class="btn btn-small btn-primary" onclick="autoPp()">自动匹配</button>
				</div>			     
	     </ul>
	    </h3>			     
	</div>	
			    <div class="row-fluid">
			      <form class="form-horizontal" role="form" id="cxtjform">
			        <div class="col-sm-10" class="form-inline" >
			           <label class="form-inline">
												<select id="pplxselect" style="heigth:100%"  class="form-control" onChange="cxPpqk()"	title="是否已匹配">
												   <option value="2">全部</option>
												   <option value="0">未匹配</option>
												   <option value="1">已匹配</option>
												</select>	
												<input type="text"  id="QYMC" value="${QYMC}">	
												所属时期			
												<input type="text" id="SSSQ" value="${SSSQ}">
												申请日期			
												<input type="text" id="SQRQ" value="${SQRQ}">		
												</label>			
					</div>
									
				 </form>
				</div>
								

	<input type="text" style="display:none" id="CWBBDL_DM" value="${CWBBDL_DM}">
	<input type="text" style="display:none" id="LSH" value="${LSH}">
	<input type="text" style="display:none" id="DJXH" value="${DJXH}">
	<input type="text" style="display:none" id="PPLX" value="${PPLX}">
	<div class="row-fluid">	
	<!-- <div style="overflow:scroll; width:1800px; height:500px;" > -->
	<table id="table_report" class="table table-striped table-bordered table-hover">
		<thead>
		<tr>
			<th class="center"  style="width: 3%;">序号</th>
			<th class='center' style="width: 6%;">科目代码</th>
			<th class='center' style="width: 15%;">科目名称</th>
			<th class='center' style="width: 6%;">标准科目代码</th>
			<th class='center' style="width: 10%;">标准科目名称</th>			
			<th class='center' style="width: 8%;">期初余额(借方)</th>
			<th class='center' style="width: 8%;">期初余额(贷方)</th>
			<th class='center' style="width: 8%;">本期余额(借方)</th>
			<th class='center' style="width: 8%;">本期余额(贷方)</th>	
			<th class='center' style="width: 8%;">期末余额(借方)</th>
			<th class='center' style="width: 8%;">期末余额(贷方)</th>					
			<th class='center' style="width: 8%;">操作</th>
		</tr>
		</thead>
		<c:choose>
			<c:when test="${not empty bzsjxList}">
				<c:forEach items="${bzsjxList}" var="bzsjx" varStatus="vs">
				<tr id="tr${bzsjx.SJX_XH }">
				<td>${vs.index+1}</td>				
				<td>
				<c:choose> 				
				<c:when test="${bzsjx.KM_DEGREE==1}">
				${bzsjx.KMCODE }
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==2}">
				&nbsp;&nbsp;&nbsp;${bzsjx.KMCODE }
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==3}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bzsjx.KMCODE }
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==4}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bzsjx.KMCODE }
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==5}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bzsjx.KMCODE }
				</c:when>
				</c:choose>					
				</td>
				<td><a title="查看凭证" onclick="ckPzmx(this,'${bzsjx.LSH}','${bzsjx.KMCODE}')">
				<c:choose> 				
				<c:when test="${bzsjx.KM_DEGREE==1}">
				${bzsjx.KMNAME}
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==2}">
				&nbsp;&nbsp;&nbsp;${bzsjx.KMNAME}
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==3}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bzsjx.KMNAME}
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==4}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bzsjx.KMNAME}
				</c:when>	
				<c:when test="${bzsjx.KM_DEGREE==5}">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${bzsjx.KMNAME}
				</c:when>
				</c:choose>																	
				</a></td>				
				<td name="SJX_XH">${bzsjx.SJX_XH }</td>
				<td name="SJX_MC">${bzsjx.SJX_MC }</td>
				<td><input type="text" style="width:95%" value="${bzsjx.s_jfye}" name="s_jfye"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.s_dfye}" name="s_dfye"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.b_jffs}" name="b_jffs"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.b_dffs}" name="b_dffs"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.e_jfye}" name="e_jfye"/></td>
				<td><input type="text" style="width:95%" value="${bzsjx.e_dfye}" name="e_dfye"/></td>
				<!--<td><input type="text" style="width:85%" value="${bzsjx.SJX_VALUE}" name="bzsjxvalue"/>&nbsp<a class='btn btn-mini btn-info' title="选择对应值" onclick="editsjxvalue(this,'${bzsjx.LSH}','${bzsjx.SJX_XH}')" ><i  class='icon-edit'></i></a></td>  -->
				<td>
				<a class='btn btn-mini btn-info' title="匹配" onclick="ppBzsjx(this,'${bzsjx.LSH}','${bzsjx.DJXH}','${bzsjx.KMCODE}','${bzsjx.KMNAME}','${bzsjx.KM_DEGREE}')">匹配</a>
				<a class='btn btn-mini btn-info' title="匹配" onclick="jcBzsjx(this,'${bzsjx.LSH}','${bzsjx.DJXH}','${bzsjx.KMCODE}','${bzsjx.KMNAME}')">解除</a>
				<c:if test="${bzsjx.PARENT==1}">
				   <a class='btn btn-mini btn-warning' onclick="openClose('${bzsjx.SJX_XH}','${bzsjx.LSH}',this,${vs.index},0)" >展开</a>
				</c:if>								
				</td>
				<td style="display:none"><input type="text"  value="${bzsjx.KM_DEGREE}" name="km_degree"/></td>
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
	<!--</div>  -->
	</div>
	</div>
	</div>
</body>
</html>