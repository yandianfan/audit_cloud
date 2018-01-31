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
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>捐赠支出纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395A105070_2Action.do" styleId="WB395A105070_2Form"
		method="post">
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div align="center">
							<font size=4><B><br>捐赠支出纳税调整明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<table width="98%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr  style="text-align: center;">
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
				<tr  style="text-align: center;">
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
				<tr  style="text-align: center;">
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
							<td width="10%" style="text-align: center;">
								<%=number.intValue() + 1%>
							</td>
							<td width="20%" style="text-align: center;">
								<bean:write name="dataid" property="dwmc"></bean:write>
							</td>
							<td width="10%" align="right">
								<bean:write name="dataid" property="gyzzje"></bean:write>
							</td>
							<td width="10%" style="text-align: center;">
								*
							</td>
							<td width="10%" style="text-align: center;">
								*
							</td>
							<td width="10%" style="text-align: center;">
								*
							</td>
							<td width="10%" align="right">
								<bean:write name="dataid" property="fgyzzje"></bean:write>
							</td>
							<td width="10%" style="text-align: center;">
								*
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
				<tr height="20px">
					<td colspan="2" style="text-align: center;">
						合 计
					</td>
					<td>
						<bean:write name="WB395A105070_2Form" property="gyzzjehj"/>
					</td>
					<td>
						<bean:write name="WB395A105070_2Form" property="gykcxehj"/>
					</td>
					<td>
						<bean:write name="WB395A105070_2Form" property="gyssjehj"/>
					</td>
					<td>
						<bean:write name="WB395A105070_2Form" property="gynstzjehj"/>
					</td>
					<td>
						<bean:write name="WB395A105070_2Form" property="fgyzzjehj"/>
					</td>
					<td>
						<bean:write name="WB395A105070_2Form" property="nstzjehj"/>
					</td>
				</tr>
			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
	<script type="text/javascript" src="./nssb/wb395/wb395_A105070_2Print.js"></script>
</body>
</html:html>
