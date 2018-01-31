<%@ page ContentType="text/html;charset=UTF-8"%>
<%@include file="/common/common.jsp"%>

<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<title>江苏地税网上办税-纳税申报-关联企业财务报表</title>
</head>

<html:html>
<body leftMargin="0" topMargin="0">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395cwbbAction.do" styleId="WB395cwbbForm"
		method="post">
		<div style="width: 100%" align="center">
			<br>
			<div align="center">
				<font size="4"><STRONG><B>关联企业财务报表</B> </STRONG> </font>
			</div>
			<br>
			<fieldset style="width: 70%">
				<legend style="font-size: 12px">
					可申报财务报表列表
				</legend>
				<br>
				<table id="queryKsbTb" width="98%" border="0" align="center"
					cellpadding="0" cellspacing="1" bgcolor="#139AD2">
					<tr>
						<td align='center' valign='middle' height=25 width="10%"
							background="images/tz.gif">
							序号
						</td>
						<td width="60%" align='center' background="images/tz.gif">
							报表种类
						</td>
						<td width="30%" align='center' background="images/tz.gif">
							操作
						</td>
					</tr>
					<logic:present name="WB395cwbbForm" property="cwbblist">
						<logic:iterate id="dataid" indexId="thisindex"
							name="WB395cwbbForm" property="cwbblist">
							<tr bgcolor="#FFFFFF">
								<td align='center' class="cxtd">
									<jsp:expression>thisindex.intValue() + 1</jsp:expression>
								</td>
								<td align='center' class="cxtd">
									<bean:write name="dataid" property="pzzl_mc" />
								</td>
								<td align='center' class="cxtd">
									<input type="button" value="申 报" class="button"
										name="cwbbsbButton" id="cwbbsbButton"
										onclick="javascript:goDeal('<bean:write name="dataid" property="url"/>','<bean:write name="WB395cwbbForm" property="pzXh"/>','initForm')">
								</td>
							</tr>
						</logic:iterate>
					</logic:present>
				</table>
				<br>
			</fieldset>
		</div>
		<html:hidden property="zt" styleId="zt" />
		<html:hidden property="errorMessage" styleId="errorMessage" />
		<html:hidden property="handleDesc" styleId="handleDesc" />
		<html:hidden property="handleCode" styleId="handleCode" />
		<html:hidden property="pzXh" styleId="pzXh" />
		<html:hidden property="curpzxh" styleId="curpzxh" />
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_cwbb.js?<%=System.currentTimeMillis()%>"></script>
</html:html>