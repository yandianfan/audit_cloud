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
	<title>专项用途财政性资金纳税调整明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A105040Action.do" method="post"
		styleId="WB395A105040Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />
			<br />

			<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: left;">
					<font size=4>A105040</font>
				</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>专项用途财政性资金纳税调整明细表</b> </font>
				</td>
			</tr>
		</table>

<table width="98%" style="border-collapse: collapse" align="center" id="tab1"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
		<tr align="center">
			<td rowspan="3">
				行 次
			</td>
			<td rowspan="3">
				项 目
			</td>
			<td rowspan="2">
				取得年度
			</td>
			<td rowspan="2">
				财政性资金
			</td>
			<td colspan="2">
				其中：符合不征税收入条件<br>的财政性资金
			</td>
			<td colspan="5">
				以前年度支出情况
			</td>
			<td colspan="2">
				本年支出情况
			</td>
			<td colspan="3">
				本年结余情况
			</td>
		</tr>
		<tr align="center">
			<td>
				金额
			</td>
			<td>
				其中：计入本<br>年损益的金额
			</td>
			<td>
				前五年度
			</td>
			<td>
				前四年度
			</td>
			<td>
				前三年度
			</td>
			<td>
				前二年度
			</td>
			<td>
				前一年度
			</td>
			<td>
				支出金额
			</td>
			<td>
				其中：费用化<br>支出金额
			</td>
			<td>
				结余金额
			</td>
			<td>
				其中：上缴财<br>政金额
			</td>
			<td>
				应计入本年应<br>税收入金额
			</td>
		</tr>
		<tr align="center">
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
				5
			</td>
			<td>
				6
			</td>
			<td>
				7
			</td>
			<td>
				8
			</td>
			<td>
				9
			</td>
			<td>
				10
			</td>
			<td>
				11
			</td>
			<td>
				12
			</td>
			<td>
				13
			</td>
			<td>
				14
			</td>
		</tr>
		<tr>
			<td width="6.25%" align="center">
				1
			</td>
			<td width="6.25%" align="center">
				前五年度
			</td>
			<td width="6.25%" align="center"><bean:write name='WB395A105040Form' property='vo.qwndqdnd' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndczxzj' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndfhbzsje' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndbnsyje' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndqwndzc' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndqsindzc' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndqsndzc' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndqendzc' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndqyndzc' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndbnzcje' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndbnfyhzcje' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndbnjyje' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndbnsjje' /></td>
			<td width="6.25%" align="right"><bean:write name='WB395A105040Form' property='vo.qwndbnyzsrje' /></td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td align="center">
				前四年度
			</td>
			<td align="center"><bean:write name='WB395A105040Form' property='vo.qsindqdnd' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindczxzj' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindfhbzsje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindbnsyje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindqsindzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindqsndzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindqendzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindqyndzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindbnzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindbnfyhzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindbnjyje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindbnsjje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsindbnyzsrje' /></td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td align="center">
				前三年度
			</td>
			<td align="center"><bean:write name='WB395A105040Form' property='vo.qsndqdnd' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndczxzj' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndfhbzsje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndbnsyje' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndqsndzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndqendzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndqyndzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndbnzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndbnfyhzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndbnjyje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndbnsjje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qsndbnyzsrje' /></td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td align="center">
				前二年度
			</td>
			<td align="center"><bean:write name='WB395A105040Form' property='vo.qendqdnd' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendczxzj' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendfhbzsje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendbnsyje' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendqendzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendqyndzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendbnzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendbnfyhzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendbnjyje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendbnsjje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qendbnyzsrje' /></td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td align="center">
				前一年度
			</td>
			<td align="center"><bean:write name='WB395A105040Form' property='vo.qyndqdnd' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndczxzj' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndfhbzsje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndbnsyje' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndqyndzc' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndbnzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndbnfyhzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndbnjyje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndbnsjje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.qyndbnyzsrje' /></td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td align="center">
				本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年
			</td>
			<td align="center"><bean:write name='WB395A105040Form' property='vo.bnqdnd' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnczxzj' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnfhbzsje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnbnsyje' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnbnzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnbnfyhzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnbnjyje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnbnsjje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.bnbnyzsrje' /></td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td align="center">
				合计（1+2+3+4+5+6）
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjczxzj' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjfhbzsje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjbnsyje' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjbnzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjbnfyhzcje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjbnjyje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjbnsjje' /></td>
			<td align="right"><bean:write name='WB395A105040Form' property='vo.hjbnyzsrje' /></td>
		</tr>
	</table>


		</div>
		<input type="hidden" id="divHtml" name="divHtml">
		<span id="update"> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="handleDesc"
				styleId="handleDesc" /> <html:hidden property="handleCode"
				styleId="handleCode" /> <html:hidden property="errorMessage"
				styleId="errorMessage" /> </span>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105040Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>