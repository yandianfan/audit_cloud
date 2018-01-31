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

		<!-- basic styles -->
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="public/css/wsbs.css" rel="stylesheet" />
<script type="text/javascript" src="./nssb/wb395/wb395_A100000.js?<%=System.currentTimeMillis()%>"></script>
	<!-- 引入 -->
	<script src="static/1.9.1/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/ace-elements.min.js"></script>
	<script src="static/js/ace.min.js"></script>
	<script type="text/javascript" src="static/js/bootbox.min.js"></script>
	<script type="text/javascript" src="public/js/tool/common.js"></script>	

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
	<title>捐赠支出纳税调整明细表</title>
</head>
<body onkeydown="enterTab()">
	
	
	<form action="" method="post" name="WB395A105070_2Form" id="WB395A105070_2Form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">捐赠支出纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>
          
          </div>
		<SPAN id="b" bz="updata">
			<table width="98%" style="border-collapse: collapse" align="center"
				id="tab1" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr height="20px" align="center">
					<td rowspan="3">
						行次
					</td>
					<td rowspan="2">
						受赠单位名称
					</td>
					<td colspan="4">
						公益性捐赠
					</td>
					<td>
						非公益性捐赠
					</td>
					<td rowspan="2">
						纳税调整金额
					</td>
				</tr>
				<tr height="20px" align="center">
					<td>
						账载金额
					</td>
					<td>
						按税收规定计算的扣除限额
					</td>
					<td>
						税收金额
					</td>
					<td>
						纳税调整金额
					</td>
					<td>
						账载金额
					</td>
				</tr>
				<tr height="20px" align="center">
					<td>
						1
					</td>
					<td>
						2
					</td>
					<td>
						3
					</td>
					<td>
						4
					</td>
					<td>
						5（2-4）
					</td>
					<td>
						6
					</td>
					<td>
						7（5+6）
					</td>
				</tr>
				<logic:present name="WB395A105070_2Form" property="list">
					<logic:iterate id="dataid" name="WB395A105070_2Form" property="list"
						indexId="number">
						<tr height="20px">
							<td align="center" width="10%">
								<%=number.intValue() + 1%>
							</td>
							<td width="20%" align="center">
								<input type="text" style="width: 90%;" name="dwmc" class="srx"
									value="<bean:write name="dataid" property="dwmc}" />
							</td>
							<td width="10%" align="right">
								<input type="text" style="width: 90%;" name="gyzzje" cal="true" class="srx"
									value="<bean:write name="dataid" property="gyzzje}" />
							</td>
							<td align="center" width="10%">
								*
							</td>
							<td align="center" width="10%">
								*
							</td>
							<td align="center" width="10%">
								*
							</td>
							<td width="10%" align="right">
								<input type="text" style="width: 90%;" name="fgyzzje" cal="true" class="srx"
									value="<bean:write name="dataid" property="fgyzzje}" />
							</td>
							<td align="center" width="10%">
								*
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
				<tr height="20px">
					<td align="center" colspan="2">
						合 计
					</td>
					<td>
						<input type="text" style="width: 90%;" name="gyzzjehj" cal="true" id="gyzzjehj"
							readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${gyzzjehj}" />
					</td>
					<td>
						<input type="text" style="width: 90%;" name="gykcxehj" cal="true" id="gykcxehj"
							class="srx" value="${gykcxehj}" />
					</td>
					<td>
						<input type="text" style="width: 90%;" name="gyssjehj" cal="true" id="gyssjehj"
							class="srx" value="${gyssjehj}" />
					</td>
					<td>
						<input type="text" style="width: 90%;" name="gynstzjehj" id="gynstzjehj"
							readonly="readonly" class="fsrx"  tabindex="-1"  cal="true"
							value="${gynstzjehj}" />
					</td>
					<td>
						<input type="text" style="width: 90%;" name="fgyzzjehj" id="fgyzzjehj"
							readonly="readonly" class="fsrx"  tabindex="-1"  cal="true"
							value="${fgyzzjehj}" />
					</td>
					<td>
						<input type="text" style="width: 90%;" name="nstzjehj" cal="true" id="nstzjehj"
							readonly="readonly" class="fsrx"  tabindex="-1"  negative="true"
							value="${nstzjehj}" />
					</td>
				</tr>
			</table> </SPAN>

	</div></div>
	</form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105070_2.js?<%=System.currentTimeMillis()%>"></script>
</html>
