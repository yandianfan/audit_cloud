<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<title>关联关系表(表一)列表</title>
</head>
<body onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<p class="dbt" align="center">
		关联关系表(表一)列表
	</p>
	<html:form action="/WB395glqyFb8ListAction.do"
		styleId="WB395glqyFb8ListForm" method="post">
		<fieldset style="width: 95%; overflow-y: scroll; height: 400">
			<legend>
				关联关系表(表一)列表
			</legend>
			<table width="98%" border="1" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000" id="tab1"
				style="border-collapse: collapse">
				<tr>
					<td style="text-align: center" background="images/tz.gif">
						选择
					</td>
					<td style="text-align: center" background="images/tz.gif">
						关联方名称
					</td>
					<td style="text-align: center" background="images/tz.gif">
						纳税人识别号
					</td>
					<td style="text-align: center" background="images/tz.gif">
						地址
					</td>
					<td style="text-align: center" background="images/tz.gif">
						法定代表人
					</td>
				</tr>
				<logic:present name="WB395glqyFb8ListForm" property="list">
					<logic:iterate indexId="index" name="WB395glqyFb8ListForm"
						id="dataid" property="list">
						<tr>
							<td align="center">
								<input type="radio" name="xz">
							</td>
							<td>
								<input type="text" style='width: 100%;' name="glfmc"
									value="<bean:write name="dataid" property="glfmc" />"
									readonly="readonly" class="read" cal="true" />
							</td>
							<td>
								<input type="text" style='width: 100%;' name="nsrsbm"
									value="<bean:write name="dataid" property="nsrsbm" />"
									readonly="readonly" class="read" cal="true" />
							</td>
							<td>
								<input type="text" style='width: 100%;' name="dz"
									value="<bean:write name="dataid" property="dz" />"
									readonly="readonly" class="read" cal="true" />
							</td>
							<td>
								<input type="text" style='width: 100%;' name="frdbr"
									value="<bean:write name="dataid" property="frdbr" />"
									readonly="readonly" class="read" cal="true" />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
			</table>
		</fieldset>
		<table width="98%" border="0" align="center" cellpadding="1"
			cellspacing="1" bordercolor="#000000" id="tab1"
			style="border-collapse: collapse">
			<tr>
				<td align="center">
					<input id="sbButton" name="sbButton" type="button" class="button"
						value="确 定" onclick="openSbb()">
				</td>
			</tr>
		</table>
		<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
		

	</html:form>
</body>
<script language="javascript"
	src="./nssb/wb395/wb395_glqyFb8List.js?<%=System.currentTimeMillis()%>"></script>
</html:html>