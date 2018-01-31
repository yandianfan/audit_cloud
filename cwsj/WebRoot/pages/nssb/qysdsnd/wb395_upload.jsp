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
	<title>中华人民共和国企业所得税年度纳税申报表(A类)上传</title>
</head>
<body>
	<html:form method="post" action="/WB395IndexAction.do"
		styleId="WB395IndexForm" enctype="multipart/form-data">
		<div align="center">
			<div id="toolbar" style="width: 100%" align="right"></div>
			<br>
			<br>
			<p style="width: 98%" align="center">
				<font size=4><b>中华人民共和国企业所得税年度纳税申报表(A类)上传</b> </font>
			</p>
			<br>
			<br>
			<br>
			<br>
			<p style="width: 98%; height: 30px" align="center">
				<html:file property="file" size="100%" style="text-align:left;"
					styleClass="need" styleId="file" />
			</p>
			<br>
			<br>
			<br>
			<html:hidden property="filename" styleId="filename" />
			<html:hidden property="sucessMsg" styleId="sucessMsg" />
			<html:hidden property="handleCode" styleId="handleCode" />
			<html:hidden property="errorMessage" styleId="errorMessage" />
			<html:hidden property="handleDesc" styleId="handleDesc" />
			<html:hidden property="SSQS" styleId="SSQS" />
			<html:hidden property="SSQZ" styleId="SSQZ" />
			<html:hidden property="SBQX" styleId="SBQX" />
			<html:hidden property="pzXh" styleId="pzXh" />
			<html:hidden property="gzsbbj" styleId="gzsbbj" />
		</div>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_upload.js?<%=System.currentTimeMillis()%>"></script>
</html:html>