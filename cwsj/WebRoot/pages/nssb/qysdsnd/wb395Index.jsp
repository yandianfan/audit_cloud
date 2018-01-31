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
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>
		<style>
/* pc jsp css */
body {
	font-family: 'Microsoft Yahei';
}

.a-text {
	text-decoration: none;
	color: #866666;
}

.breadcrumb li {
	color: #5e5e5e !important;
}

.page-content {
	margin-top: 20px;
	padding: 10px;
}

.page-content .page-header {
	font-size: 20px;
}

.page-header .sb-title1 {
	margin-left: 242px;
}

.page-header .sb-title2 {
	margin-left: 58px;
}

.page-header .sb-title3 {
	margin-left: 134px;
}

.btn-menu {
	float: right;
	margin-right: 20px
}

.footable-table-class thead th,.footable-table-class tbody td {
	text-align: center;
}

.myinput {
	width: 80%;
	margin: 1px;
}

#ab_div1 {
	font-size: 12px;
	min-width: 1676px;
}

#ab_div2 {
	font-size: 12px;
	min-width: 1000px;
}

.read {
	background: #F0F1F3;
}

.noborder {
	border: none;
}

.need {
	background: #CAD4EF;
}
/*input type=file修改默认样式*/
input[type=file] {
	width: 100%;
	opacity: 0.5;
}

input[type=file]:hover {
	cursor: pointer;
	background-color: #78c3f3;
}
</style>
		
	<title>中华人民共和国企业所得税年度纳税申报表(A类)</title>

</head>
<body>
		<form action="" method="post" name="web395IndexForm" id="web395IndexForm">
		<div id="toolbar" style="width: 100%"></div>
	<div class="page-content">
		<div class="col-xs-12">
			<div class="row page-header text-center">
          <strong class="sb-title3">企业所得税纳税申报表(A表)</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" style="display:none" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" style="display:none" onclick="queryFbPage()">附表</a>
	                <a class="btn btn-small btn-success" onclick="onRefreshsbb()">更新</a>
	                <button type="button" id="tsshbutton" class="btn btn-small btn-primary" onclick="tsshSbb()"></button>	
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>
          
          </div>
			<table width="93%" border="1" align="center" cellpadding="0"
				cellspacing="0" bordercolor="#000000"
				style="border-collapse: collapse;">
				<tr height="20px">
					<td align='center'>
						企业编码:
					</td>
					<td align="left">
						${qyjbxx["SWGLM"]}
					</td>
					<td align="center">
						纳税人名称:
					</td>
					<td align="left">
                       ${qyjbxx["NSR_MC"]}
					</td>
				</tr>
				<TR style="display:none">
					<td>
						<input name="pzxh" value='${qyjbxx["PZ_XH"]}'/>
						<input name="ssqs" value='${qyjbxx["SFSSQ_QSRQ"]}'/>
						<input name="sszz" value='${qyjbxx["SFSSQ_ZZRQ"]}'/>
					 <input type="text" value="${tsshbj}" id="tsshbj" />	
					</td>				
				</TR>
			</table>
		
			<br />
			<fieldset style="width: 95%; text-align: center;">
				<legend style="font-size: 12px">
					企业所得税年度纳税申报表应填报表单
					<br />
				</legend>
				
				<table width="98%" border="1" align="center" cellpadding="0"
					cellspacing="1" bordercolor="#000000"
					style="border-collapse: collapse;">
					<tr height="20px">
						<td align="center" background="images/tz.gif">
							表单名称
						</td>
						<td align="center" width="20%" background="images/tz.gif">
							操作
						</td>
					</tr>
					<c:forEach items="${ksbList}" var="dataid" varStatus="vs">
						<tr>
								<td align='left'>
		                            &nbsp;${dataid.BDMC}
								</td>
								<td align='center'>
								  	<a class="btn btn-mini btn-success" onclick='modifySBB("${dataid.FBPZZL_DM}","${dataid.XGURL}","${dataid.XH}","${dataid.BDMC}")' >查看</a>
								  	&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
						</tr>
						</c:forEach>


				</table>
			</fieldset>
		</div>

</div>

		
	</form>
	 
	<script type="text/javascript"	src="pages/nssb/qysdsnd/wb395Index.js?<%=System.currentTimeMillis()%>"></script>
	     <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	<script type="text/javascript" src="public/js/tool/common.js"></script>
	<script type="text/javascript" src="pages/login/head.js"></script>
</body>
</html>
