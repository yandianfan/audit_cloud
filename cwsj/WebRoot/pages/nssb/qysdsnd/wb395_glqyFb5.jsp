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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>无形资产表（表五）</title>
</head>
<body>
	<html:form action="/WB395glqyFb5Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>无形资产表（表五）</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t5" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr style="display: none">
					<td width="3%">
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="8%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="8%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
					<td width="9%">
						&nbsp;
						<br>
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<p align="right">
							金额单位：人民币元（列至角分）
					</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="4">
						<p align="center">
							项目
					</td>
					<td colspan="5">
						<p align="center">
							受 让
					</td>
					<td colspan="5">
						<p align="center">
							出 让
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p align="center">
							总交易
						<p align="center">
							金额
					</td>
					<td colspan="2">
						<p align="center">
							从境外受让无形资产
					</td>
					<td colspan="2">
						<p align="center">
							从境内受让无形资产
					</td>
					<td rowspan="2">
						<p align="center">
							总交易金额
					</td>
					<td colspan="2">
						<p align="center">
							向境外出让无形资产
					</td>
					<td colspan="2">
						<p align="center">
							向境内出让无形资产
					</td>
				</tr>
				<tr>
					<td>
						<p align="center">
							关联交易金额
					</td>
					<td>
						<p align="center">
							非关联交易金额
					</td>
					<td>
						<p align="center">
							关联交易金额
					</td>
					<td>
						<p align="center">
							非关联交易金额
					</td>
					<td>
						<p align="center">
							关联交易金额
					</td>
					<td>
						<p align="center">
							非关联交易金额
					</td>
					<td>
						<p align="center">
							关联交易金额
					</td>
					<td>
						<p align="center">
							非关联交易金额
					</td>
				</tr>
				<tr>
					<td>
						<p align="center">
							1=2+3+4+5
					</td>
					<td>
						<p align="center">
							2
					</td>
					<td>
						<p align="center">
							3
					</td>
					<td>
						<p align="center">
							4
					</td>
					<td>
						<p align="center">
							5
					</td>
					<td>
						<p align="center">
							6=7+8+9+10
					</td>
					<td>
						<p align="center">
							7
					</td>
					<td>
						<p align="center">
							8
					</td>
					<td>
						<p align="center">
							9
					</td>
					<td>
						<p align="center">
							10
					</td>
				</tr>
				<tr>
					<td rowspan="8">
						<p align="center">
							使用权
					</td>
					<td>
						土地使用权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.srzjyje"
							cal="true" id="fb5vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jwsrgljyje"
							id="fb5vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jwsrfgljyje"
							id="fb5vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jnsrgljyje"
							id="fb5vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jnsrfgljyje"
							id="fb5vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.crzjyje"
							cal="true" id="fb5vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jwcrgljyje"
							id="fb5vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jwcrfgljyje"
							id="fb5vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jncrgljyje"
							id="fb5vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb5vo.jncrfgljyje"
							id="fb5vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb5vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						专利权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.srzjyje"
							cal="true" id="fb52vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jwsrgljyje"
							id="fb52vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jwsrfgljyje"
							id="fb52vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jnsrgljyje"
							id="fb52vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jnsrfgljyje"
							id="fb52vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.crzjyje"
							cal="true" id="fb52vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jwcrgljyje"
							id="fb52vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jwcrfgljyje"
							id="fb52vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jncrgljyje"
							id="fb52vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb52vo.jncrfgljyje"
							id="fb52vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb52vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						非专利技术
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.srzjyje"
							cal="true" id="fb53vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jwsrgljyje"
							id="fb53vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jwsrfgljyje"
							id="fb53vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jnsrgljyje"
							id="fb53vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jnsrfgljyje"
							id="fb53vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.crzjyje"
							cal="true" id="fb53vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jwcrgljyje"
							id="fb53vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jwcrfgljyje"
							id="fb53vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jncrgljyje"
							id="fb53vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb53vo.jncrfgljyje"
							id="fb53vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb53vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						商标权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.srzjyje"
							cal="true" id="fb54vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jwsrgljyje"
							id="fb54vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jwsrfgljyje"
							id="fb54vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jnsrgljyje"
							id="fb54vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jnsrfgljyje"
							id="fb54vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.crzjyje"
							cal="true" id="fb54vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jwcrgljyje"
							id="fb54vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jwcrfgljyje"
							id="fb54vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jncrgljyje"
							id="fb54vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb54vo.jncrfgljyje"
							id="fb54vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb54vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						著作权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.srzjyje"
							cal="true" id="fb55vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jwsrgljyje"
							id="fb55vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jwsrfgljyje"
							id="fb55vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jnsrgljyje"
							id="fb55vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jnsrfgljyje"
							id="fb55vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.crzjyje"
							cal="true" id="fb55vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jwcrgljyje"
							id="fb55vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jwcrfgljyje"
							id="fb55vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jncrgljyje"
							id="fb55vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb55vo.jncrfgljyje"
							id="fb55vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb55vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						其他
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.srzjyje"
							cal="true" id="fb56vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jwsrgljyje"
							id="fb56vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jwsrfgljyje"
							id="fb56vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jnsrgljyje"
							id="fb56vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jnsrfgljyje"
							id="fb56vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.crzjyje"
							cal="true" id="fb56vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jwcrgljyje"
							id="fb56vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jwcrfgljyje"
							id="fb56vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jncrgljyje"
							id="fb56vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb56vo.jncrfgljyje"
							id="fb56vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb56vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: left;" name="fb57vo.xmdm"
							id="fb57vo.xmdm"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.xmdm'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.srzjyje"
							cal="true" id="fb57vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jwsrgljyje"
							id="fb57vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jwsrfgljyje"
							id="fb57vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jnsrgljyje"
							id="fb57vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jnsrfgljyje"
							id="fb57vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.crzjyje"
							cal="true" id="fb57vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jwcrgljyje"
							id="fb57vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jwcrfgljyje"
							id="fb57vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jncrgljyje"
							id="fb57vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb57vo.jncrfgljyje"
							id="fb57vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb57vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						合计
					</td>
					<td>
						<input class="read" readonly="readonly" tabindex="-1" class="read"
							type="text" style="width: 100%; text-align: right;" name="syqhj1"
							id="syqhj1" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj2" id="syqhj2"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj3" id="syqhj3"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj4" id="syqhj4"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj5" id="syqhj5"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" tabindex="-1" class="read"
							type="text" style="width: 100%; text-align: right;" name="syqhj6"
							id="syqhj6" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj7" id="syqhj7"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj8" id="syqhj8"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj9" id="syqhj9"
							cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syqhj10"
							id="syqhj10" cal="true" />
					</td>
				</tr>
				<tr>
					<td rowspan="7">
						<p align="center">
							所有权
					</td>
					<td>
						专利权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.srzjyje"
							cal="true" id="fb58vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jwsrgljyje"
							id="fb58vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jwsrfgljyje"
							id="fb58vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jnsrgljyje"
							id="fb58vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jnsrfgljyje"
							id="fb58vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.crzjyje"
							cal="true" id="fb58vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jwcrgljyje"
							id="fb58vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jwcrfgljyje"
							id="fb58vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jncrgljyje"
							id="fb58vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb58vo.jncrfgljyje"
							id="fb58vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb58vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						非专利技术
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.srzjyje"
							cal="true" id="fb59vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jwsrgljyje"
							id="fb59vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jwsrfgljyje"
							id="fb59vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jnsrgljyje"
							id="fb59vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jnsrfgljyje"
							id="fb59vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.crzjyje"
							cal="true" id="fb59vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jwcrgljyje"
							id="fb59vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jwcrfgljyje"
							id="fb59vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jncrgljyje"
							id="fb59vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb59vo.jncrfgljyje"
							id="fb59vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb59vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						商标权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb510vo.srzjyje"
							cal="true" id="fb510vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb510vo.jwsrgljyje"
							id="fb510vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb510vo.jwsrfgljyje" id="fb510vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb510vo.jnsrgljyje"
							id="fb510vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb510vo.jnsrfgljyje" id="fb510vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb510vo.crzjyje"
							cal="true" id="fb510vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb510vo.jwcrgljyje"
							id="fb510vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb510vo.jwcrfgljyje" id="fb510vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb510vo.jncrgljyje"
							id="fb510vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb510vo.jncrfgljyje" id="fb510vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb510vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						著作权
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb511vo.srzjyje"
							cal="true" id="fb511vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb511vo.jwsrgljyje"
							id="fb511vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb511vo.jwsrfgljyje" id="fb511vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb511vo.jnsrgljyje"
							id="fb511vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb511vo.jnsrfgljyje" id="fb511vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb511vo.crzjyje"
							cal="true" id="fb511vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb511vo.jwcrgljyje"
							id="fb511vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb511vo.jwcrfgljyje" id="fb511vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb511vo.jncrgljyje"
							id="fb511vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb511vo.jncrfgljyje" id="fb511vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb511vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						其他
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb512vo.srzjyje"
							cal="true" id="fb512vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb512vo.jwsrgljyje"
							id="fb512vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb512vo.jwsrfgljyje" id="fb512vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb512vo.jnsrgljyje"
							id="fb512vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb512vo.jnsrfgljyje" id="fb512vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb512vo.crzjyje"
							cal="true" id="fb512vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb512vo.jwcrgljyje"
							id="fb512vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb512vo.jwcrfgljyje" id="fb512vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb512vo.jncrgljyje"
							id="fb512vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb512vo.jncrfgljyje" id="fb512vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb512vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: left;" name="fb513vo.xmdm"
							id="fb513vo.xmdm"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.xmdm'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb513vo.srzjyje"
							cal="true" id="fb513vo.srzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.srzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb513vo.jwsrgljyje"
							id="fb513vo.jwsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jwsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb513vo.jwsrfgljyje" id="fb513vo.jwsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jwsrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb513vo.jnsrgljyje"
							id="fb513vo.jnsrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jnsrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb513vo.jnsrfgljyje" id="fb513vo.jnsrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jnsrfgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb513vo.crzjyje"
							cal="true" id="fb513vo.crzjyje"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.crzjyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb513vo.jwcrgljyje"
							id="fb513vo.jwcrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jwcrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb513vo.jwcrfgljyje" id="fb513vo.jwcrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jwcrfgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;" name="fb513vo.jncrgljyje"
							id="fb513vo.jncrgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jncrgljyje'/>" />
					</td>
					<td>
						<input class="srx" type="text"
							style="width: 100%; text-align: right;"
							name="fb513vo.jncrfgljyje" id="fb513vo.jncrfgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb513vo.jncrfgljyje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						合计
					</td>
					<td>
						<input class="read" readonly="readonly" tabindex="-1" class="read"
							type="text" style="width: 100%; text-align: right;"
							name="syhjje1" id="syhjje1" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje2"
							id="syhjje2" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje3"
							id="syhjje3" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje4"
							id="syhjje4" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje5"
							id="syhjje5" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" tabindex="-1" class="read"
							type="text" style="width: 100%; text-align: right;"
							name="syhjje6" id="syhjje6" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje7"
							id="syhjje7" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje8"
							id="syhjje8" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje9"
							id="syhjje9" cal="true" />
					</td>
					<td>
						<input class="read" readonly="readonly" type="text"
							style="width: 100%; text-align: right;" name="syhjje10"
							id="syhjje10" cal="true" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<p align="center">
							总计
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje1" id="zhjje1"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje2" id="zhjje2"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje3" id="zhjje3"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje4" id="zhjje4"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje5" id="zhjje5"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje6" id="zhjje6"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje7" id="zhjje7"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje8" id="zhjje8"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje9" id="zhjje9"
							cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="zhjje10"
							id="zhjje10" cal="true" />
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<p align="left">
							经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：
						</p>
					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> </span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="ssQs" styleId="ssQs"></html:hidden>
			<html:hidden property="ssQz" styleId="ssQz"></html:hidden>
			<html:hidden property="pzxh" styleId="pzxh"></html:hidden>
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
		</div>
	</html:form>

</body>
</html:html>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb5.js?<%=System.currentTimeMillis()%>">
</script>