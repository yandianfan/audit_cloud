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
	<script type="text/javascript" src="./public/js/tool/caltb.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
<title>关联关系表(表一)</title>
</head>
<body>
	<html:form action="/WB395glqyFb1Action.do" method="post"
		styleId="WB395GlqyForm">
		<div id="toolbar" align="right"></div>
		<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>关联关系表(表一)</b> </font>
					</td>
				</tr>
			</table>
		<div style="width: 98%" align="center" id="mainDiv">
			<table id="fb1" width="98%" border="1" align="center"
				cellpadding="1" bordercolor="#000000" 
				cellspacing="1" style="border-collapse: collapse">
				<tr>
					<td colspan="7">
						<p align="center">
							税款所属期间：
							<bean:write property="ssQs" name="WB395GlqyForm" />
							至
							<bean:write property="ssQz" name="WB395GlqyForm" />
						</p>
					</td>
				</tr>
				<tr>
					<td width="3%" align="center" height="30">
						序号
					</td>
					<td width="21%" align="center" height="30">
						关联方名称
					</td>
					<td width="13%" align="center">
						纳税人识别号
					</td>
					<td width="11%" align="center">
						国家(地区)
					</td>
					<td width="27%" align="center">
						地址
					</td>
					<td width="12%" align="center">
						法定代表人
					</td>
					<td width="13%" align="center">
						关联关系类型
					</td>
				</tr>
				<logic:notEmpty name="WB395GlqyForm" property="glfb1list">
						<logic:iterate indexId="index" name="WB395GlqyForm"
							property="glfb1list" id="dataid">
				<tr>
					<td height="30">
					<bean:write name='dataid' property='xh' />
					</td>
					<td height="30">
						<bean:write name='dataid' property='glfmc' />
					</td>
					<td>
						<bean:write name='dataid' property='nsrsbm' />
					</td>
					<td>
						<bean:write name='dataid' property='gjdqdm' />
						<bean:write name='dataid' property='gjdqmc' />
					</td>
					<td>
						<bean:write name='dataid' property='dz' />
					</td>
					<td>
						<bean:write name='dataid' property='frdbr' />
					</td>
					<td>
						<bean:write name='dataid' property='glgxlx' />
					</td>
				</tr>
			</logic:iterate>
			</logic:notEmpty>
			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_glqyFb1print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>