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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<title>中华人民共和国企业所得税年度纳税申报表-填表说明</title>
</head>
<body>
	<html:form action="/WB395TbSmAction.do" method="post"
		styleId="WB395TbSmForm">
		<div style="width: 100%" id="toolbar"></div>
		<br />
		<div style="width: 98%; font-size: 14px" id="mainDiv">
			<p class="dbt" align="center">
				<bean:write property="bbMc" name="WB395TbSmForm" filter="false" />
				<br />
			</p>
			<div>
				<bean:write property="jySm" name="WB395TbSmForm" filter="false" />
			</div>
			<logic:notEmpty name="WB395TbSmForm" property="xmSmList">
				<p>
					<b>&nbsp;&nbsp;&nbsp;&nbsp;一、有关项目填报说明</b>
				</p>
				<br />
				<logic:iterate id="dataid" indexId="ind" name="WB395TbSmForm"
					property="xmSmList">
					
					<bean:write property="SMNR" name="dataid" filter="false" />
					
				</logic:iterate>
			</logic:notEmpty>
			<logic:notEmpty name="WB395TbSmForm" property="gsSmList">
				<br />
				<p>
					<b>二、表内、表间关系</b>
				</p>
				<logic:iterate id="dataid" indexId="ind" name="WB395TbSmForm"
					property="gsSmList">
					<bean:write property="SMNR" name="dataid" filter="false" />
				</logic:iterate>
			</logic:notEmpty>
		</div>
		<html:hidden property="errorMessage" styleId="errorMessage" />
		<html:hidden property="sucessMsg" styleId="sucessMsg" />
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_TbSm.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
