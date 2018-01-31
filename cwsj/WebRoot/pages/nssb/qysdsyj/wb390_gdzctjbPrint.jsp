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
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>固定资产加速折旧(扣除)明细表</title>
</head>
<body onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB390gdzctjbAction.do" styleId="WB390gdzctjbForm"
		method="post">
		<div id="mainDiv">
			<br />
			<br />
			<p align="center" style="font-size: 20px">
				<b>中华人民共和国企业所得税月（季）度预缴申报表(A类，2015年版) 附表2</b>
				<br>
				<b>固定资产加速折旧(扣除)明细表</b>
			</p>
			<br>
			<table id="tab1" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr>
					<td rowspan="4" style="width: 2%; text-align: center;">
						行次
					</td>
					<td rowspan="4" style="width: 26%; text-align: center;">
						项 目
					</td>
					<td rowspan="4" style="width: 4%; text-align: center;">
						是否适用
						加速折旧
						优惠政策
						（税总20
						14年64
						64号公告）
					</td>
					<td colspan="3" style="width: 12%; text-align: center;">
						房屋、建筑物
					</td>
					<td colspan="3" style="width: 12%; text-align: center;">
						机器设备和
						<br />
						其他固定资产
					</td>
					<td colspan="11" style="width: 44%; text-align: center;">
						合 计
					</td>
				</tr>
				<tr>
					<td style="width: 4%; text-align: center;" rowspan="2">
						原值
					</td>
					<td style="width: 4%; text-align: center;" rowspan="2">
						本期税收
						<br />
						加速折旧
						<br />
						（扣除）额
					</td>
					<td style="width: 4%; text-align: center;" rowspan="2">
						累计税收
						<br />
						加速折旧
						<br />
						（扣除）额
					</td>
					<td style="width: 4%; text-align: center;" rowspan="2">
						原值
					</td>
					<td style="width: 4%; text-align: center;" rowspan="2">
						本期税收
						<br />
						加速折旧
						<br />
						（扣除）额
					</td>
					<td style="width: 4%; text-align: center;" rowspan="2">
						累计税收
						<br />
						加速折旧
						<br />
						（扣除）额
					</td>
					<td style="width: 4%; text-align: center;" rowspan="2">
						原值
					</td>
					<td style="width: 20%; text-align: center;" colspan="5">
						本期折旧（扣除）额
					</td>
					<td style="width: 20%; text-align: center;" colspan="5">
						累计折旧（扣除）额
					</td>
				</tr>
				<tr>
					<td style="width: 4%; text-align: center;">
						会计
						<br />
						折旧额
					</td>
					<td style="width: 4%; text-align: center;">
						正常
						<br />
						折旧额
					</td>
					<td style="width: 4%; text-align: center;">
						税收加速
						<br />
						折旧额
					</td>
					<td style="width: 4%; text-align: center;">
						纳税
						<br />
						调整额
					</td>
					<td style="width: 4%; text-align: center;">
						加速折旧
						<br />
						优惠统计额
					</td>
					<td style="width: 4%; text-align: center;">
						会计
						<br />
						折旧额
					</td>
					<td style="width: 4%; text-align: center;">
						正常
						<br />
						折旧额
					</td>
					<td style="width: 4%; text-align: center;">
						税收加速
						<br />
						折旧额
					</td>
					<td style="width: 4%; text-align: center;">
						纳税
						<br />
						调整额
					</td>
					<td style="width: 4%; text-align: center;">
						加速折旧
						<br />
						优惠统计额
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						1
					</td>
					<td style="text-align: center;">
						2
					</td>
					<td style="text-align: center;">
						3
					</td>
					<td style="text-align: center;">
						4
					</td>
					<td style="text-align: center;">
						5
					</td>
					<td style="text-align: center;">
						6
					</td>
					<td style="text-align: center;">
						7=1+4
					</td>
					<td style="text-align: center;">
						8
					</td>
					<td style="text-align: center;">
						9
					</td>
					<td style="text-align: center;">
						10=2+5
					</td>
					<td style="text-align: center;">
						11=10-8
					</td>
					<td style="text-align: center;">
						12=10-9
					</td>
					<td style="text-align: center;">
						13
					</td>
					<td style="text-align: center;">
						14
					</td>
					<td style="text-align: center;">
						15=6+3
					</td>
					<td style="text-align: center;">
						16=15-13
					</td>
					<td style="text-align: center;">
						17=15-14
					</td>
				</tr>
				<logic:present name="WB390gdzctjbForm" property="list">
					<logic:iterate id="dataid" indexId="thisindex"
						name="WB390gdzctjbForm" property="list">
						<tr>
							<td style="text-align: center;">
								<bean:write name='dataid' property='sbmx_xh' />
							</td>
							<td style="text-align: left;">
								<bean:write name='dataid' property='xmmc' />
							</td>
							<td style="text-align: center;">
								<bean:write name='dataid' property='sytj' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='fjbqje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='fjljje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='fjyje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='jqyje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='jqbqje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='jqljje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjyje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjbqkjzjje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjbqzczjje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjbqsszjje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjbqnstzje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjbqyhje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjljkjzjje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjljzczjje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjljsszjje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjljnstzje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='hjljyhje' />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
	<script type="text/javascript" src="./nssb/wb390/wb390_gdzctjbPrint.js"></script>
</body>
</html:html>