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
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>金融、保险等机构取得的涉农利息、保费收入优惠明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A107013Action.do" method="post"
		styleId="WB395A107013Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<br />
		<div style="width: 95%">
			<p align="left">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				A107013
			</p>
		</div>
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>金融、保险等机构取得的涉农利息、保费收入优惠明细表</b> </font>
					</td>
				</tr>
			</table>
			<br />
			<table width="80%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr align="center">
					<td width="10%" style="text-align: center;">
						行 次
					</td>
					<td width="65%" style="text-align: center;">
						项 目
					</td>
					<td width="25%" style="text-align: center;">
						金 额
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						1
					</td>
					<td>
						一、金融机构农户小额贷款的利息收入
					</td>
					<td align="center" height="18px" style="text-align: center;">
						*
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）金融机构取得农户小额贷款利息收入总额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.jrjglxsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）金融机构取得农户小额贷款利息减计收入（2×10%）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.jrjgjjsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						4
					</td>
					<td>
						二、保险公司为种植业、养殖业提供保险业务取得的保费收入
					</td>
					<td align="center" height="18px" style="text-align: center;">
						*
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）保险公司为种植业、养殖业提供保险业务取得的保费收入总额（6+7-8）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.bxgsbfsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						6
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.原保费收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.bxgsybfsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.分保费收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.bxgsfbfsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.分出保费收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.bxgsfcbfsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）保险公司为种植业、养殖业提供保险业务取得的保费减计收入（5×10%）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.bxgsjjsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						10
					</td>
					<td>
						三、其他符合条件的机构农户小额贷款的利息收入
					</td>
					<td align="center" height="18px" style="text-align: center;">
						*
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）其他符合条件的机构取得农户小额贷款利息收入总额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.qtlxsrzje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）其他符合条件的机构取得农户小额贷款利息减计收入（11×10%）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.qtlxjjsrje' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						13
					</td>
					<td>
						合计（3+9+12）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107013Form' property='vo.hjje' />
					</td>
				</tr>
			</table>
		</div>
		<input type="hidden" id="divHtml" name="divHtml">
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107013Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
