<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page ContentType="text/html;charset=UTF-8"%>
<%@include file="/common/common.jsp"%>

<html:html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<title>非货币性资产投资递延纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form method="post" action="/WB395A105100_2Action.do"
		styleId="WB395A105100_2Form" enctype="multipart/form-data">
		<div style="width: 100%" align="center" id="mainDiv">
			<p align="center" style="font-size: 20px">
				<br>
				<b>非货币性资产投资递延纳税调整明细表</b>
			</p>
			<br>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<div align="center">
				<html:file property="file" styleId="file" style="width:60%"
					styleClass="need"></html:file>
			</div>
			<html:hidden property="filename" styleId="filename" />
			<html:hidden property="pzXh" styleId="pzXh" />
			<html:hidden property="ssq" styleId="ssq" />
			<html:hidden property="handleDesc" styleId="handleDesc" />
			<html:hidden property="sucessMsg" styleId="sucessMsg" />
			<html:hidden property="handleCode" styleId="handleCode" />
			<html:hidden property="errorMessage" styleId="errorMessage" />
			<html:hidden property="proMessage" styleId="proMessage" />
		</div>
		<%@include file="/nssb/caInclude.jsp"%>
		<%@include file="/nssb/nsryhinfo.jsp"%>
	</html:form>
</body>
</html:html>
<script type="text/javascript" src="./nssb/wb395/wb395_A105100_2upload.js">
</script>
