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
	<title>固定资产表（表六）</title>
</head>
<body>
	<html:form action="/WB395glqyFb6Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>固定资产表（表六）</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb6" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr height="23">
					<td colspan="12">
						<p align="right">
							金额单位：人民币元（列至角分）
						</p>
					</td>
				</tr>
				<tr height="23">
					<td colspan="2" rowspan="4">
						<p align="center">
							项目
						</p>
					</td>
					<td colspan="5">
						<p align="center">
							受让
						</p>
					</td>
					<td colspan="5">
						<p align="center">
							出让
						</p>
					</td>
				</tr>
				<tr height="23">
					<td rowspan="2">
						<p align="center">
							总交易金额
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							从境外受让固定资产
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							从境内受让固定资产
						</p>
					</td>
					<td rowspan="2">
						<p align="center">
							总交易金额
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							向境外出让固定资产
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							向境内出让固定资产
						</p>
					</td>
				</tr>
				<tr height="23">
					<td width="9%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="8%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
				</tr>
				<tr height="23">
					<td width="8%">
						<p align="center">
							1=2+3+4+5
						</p>
					</td>
					<td width="9%">
						<p align="center">
							2
						</p>
					</td>
					<td width="7%">
						<p align="center">
							3
						</p>
					</td>
					<td width="7%">
						<p align="center">
							4
						</p>
					</td>
					<td width="8%">
						<p align="center">
							5
						</p>
					</td>
					<td width="9%">
						<p align="center">
							6=7+8+9+10
						</p>
					</td>
					<td width="7%">
						<p align="center">
							7
						</p>
					</td>
					<td width="7%">
						<p align="center">
							8
						</p>
					</td>
					<td width="7%">
						<p align="center">
							9
						</p>
					</td>
					<td width="7%">
						<p align="center">
							10
						</p>
					</td>
				</tr>
				<tr height="23">
					<td width="2%" rowspan="7">
						<p>
							使用权
						</p>
					</td>
					<td width="22%">
						<p>
							房屋、建筑物
						</p>
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo1.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						飞机、火车、轮船、机器、机械和其他生产设备
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo2.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						与生产经营活动有关的器具、工具、家具等
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo3.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						飞机、火车、轮船以外的运输工具
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo4.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						电子设备
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo5.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						其他
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo6.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						合计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he11_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he21_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he31_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he41_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he51_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he61_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he71_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he81_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he91_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he101_je' />
					</td>
				</tr>
				<tr height="23">
					<td width="2%" rowspan="7">
						所有权
					</td>
					<td width="22%">
						房屋、建筑物
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo7.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						飞机、火车、轮船、机器、机械和其他生产设备
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo8.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						与生产经营活动有关的器具、工具、家具等
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo9.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						飞机、火车、轮船以外的运输工具
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo10.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						电子设备
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo11.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						其他
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.srzjyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jwsrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jwsrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jnsrgljyje' />
					</td>
					<td width="8%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jnsrfgljyje' />
					</td>
					<td width="9%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.crzjyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jwcrgljyje' />

					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jwcrfgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jncrgljyje' />
					</td>
					<td width="7%">
						<bean:write name='WB395GlqyForm' property='fb6vo12.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td width="22%">
						合计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he12_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he22_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he32_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he42_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he52_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he62_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he72_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he82_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he92_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he102_je' />
					</td>
				</tr>
				<tr height="23">
					<td colspan="2">
						<p align="center">
							总计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he13_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he23_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he33_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he43_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he53_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he63_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he73_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he83_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he93_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb6he103_je' />
					</td>
				</tr>
				<tr height="23">
					<td colspan="12">
						<p align="left">
							经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：












						
					</td>
				</tr>

			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
	</html:form>
</body>
</html:html>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb6print.js?<%=System.currentTimeMillis()%>">
</script>