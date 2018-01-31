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
	<title>资产折旧、摊销情况及纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395A105080Action.do" styleId="WB395A105080Form"
		method="post">
		<div id="mainDiv">
			<table width="98%" border="0"  style="text-align: center;" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div  style="text-align: center;">
							<font size=4><B><br>资产折旧、摊销情况及纳税调整明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<table width="98%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr height="20px"  style="text-align: center;">
					<td rowspan="3" width="2%">
						行 次
					</td>
					<td rowspan="3" width="12%">
						项 目
					</td>
					<td colspan="3">
						账载金额
					</td>
					<td colspan="5">
						税收金额
					</td>
					<td colspan="2">
						纳税调整
					</td>
				</tr>
				<tr height="20px"  style="text-align: center;">
					<td width="7%">
						资产账载金额
					</td>
					<td width="7%">
						本年折旧、摊销额
					</td>
					<td width="7%">
						累计折旧、摊销额
					</td>
					<td width="7%">
						资产计税基础
					</td>
					<td width="7%">
						按税收一般规定计<br/>算的本年折旧、摊<br/>销额
					</td>
					<td width="7%">
						本年加速折旧额
					</td>
					<td width="7%">
						其中：2014年及以<br/>后年度新增固定资<br/>产加速折旧额
					</td>
					<td width="7%">
						累计折旧、摊销额
					</td>
					<td width="7%">
						金额
					</td>
					<td width="7%">
						调整原因
					</td>
				</tr>
				<tr height="20px"  style="text-align: center;">
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
						9(2-5-6)
					</td>
					<td>
						10
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						1
					</td>
					<td>
						一、固定资产<br/>（2+3+4+5+6+7）
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						2
					</td>
					<td>
						（一）房屋、建筑物
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						3
					</td>
					<td>
						（二）飞机、火车、轮船、<br/>机器、机械和其他生产设备
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						4
					</td>
					<td>
						（三）与生产经营活动有关<br/>的器具、工具、家具等
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						5
					</td>
					<td>
						（四）飞机、火车、轮船以<br/>外的运输工具
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						6
					</td>
					<td>
						（五）电子设备
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						7
					</td>
					<td>
						（六）其他
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td class="ssxzzczjje" align="right">
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						8
					</td>
					<td>
						二、生产性生物资产<br/>（9+10）
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						9
					</td>
					<td>
						（一）林木类
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						10
					</td>
					<td>
						（二）畜类
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td class="ssbnjszjje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						11
					</td>
					<td>
						三、无形资产<br/>（12+13+14+15+16+17+18）
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						12
					</td>
					<td>
						（一）专利权
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						13
					</td>
					<td>
						（二）商标权
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						14
					</td>
					<td>
						（三）著作权
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						15
					</td>
					<td>
						（四）土地使用权
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						16
					</td>
					<td>
						（五）非专利技术
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						17
					</td>
					<td>
						（六）特许权使用费
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						18
					</td>
					<td>
						（七）其他
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						19
					</td>
					<td>
						四、长期待摊费用<br/>（20+21+22+23+24）
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						20
					</td>
					<td>
						（一）已足额提取折旧的固<br/>定资产的改建支出 
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						21
					</td>
					<td>
						（二）租入固定资产的改<br/>建支出
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						22
					</td>
					<td>
						（三）固定资产的大修理<br/>支出
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						23
					</td>
					<td>
						（四）开办费
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						24
					</td>
					<td>
						（五）其他
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						25
					</td>
					<td>
						五、油气勘探投资
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr style="height: 20px">
					<td  style="text-align: center;">
						26
					</td>
					<td>
						六、油气开发投资
					</td>
					<td class="zzzzjeje" align="right">
					</td>
					<td class="zzbnzjtxje" align="right">
					</td>
					<td class="zzljzjtxje" align="right">
					</td>
					<td class="sszcjsjcje" align="right">
					</td>
					<td class="ssassbnzjtxje" align="right">
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td style="text-align: center;">
					*
					</td>
					<td class="ssljzjtxje" align="right">
					</td>
					<td class="nsje" align="right">
					</td>
					<td class="nsyy" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						27
					</td>
					<td style="text-align: center;">
						合计<br/>（1+8+11+19+25+26）
					</td>
					<td class="zzzzjejehj" align="right">
					</td>
					<td class="zzbnzjtxjehj" align="right">
					</td>
					<td class="zzljzjtxjehj" align="right">
					</td>
					<td class="sszcjsjcjehj" align="right">
					</td>
					<td class="ssassbnzjtxjehj" align="right">
					</td>
					<td class="ssbnjszjjehj" align="right">
					</td>
					<td class="ssxzzczjjehj" align="right">
					</td>
					<td class="ssljzjtxjehj" align="right">
					</td>
					<td class="nsjehj" align="right">
					</td>
					<td  style="text-align: center;">
						*
					</td>
				</tr>
			</table>
		</div>
		<table style="display: none" id="tab1">
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="1" />
					1
				</td>
				<td>
					一、固定资产（2+3+4+5+6+7）
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjejehj" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" cal="true" name="ssxzzczjje"
						id="gdzcssxzzczjjehj" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsjehj" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="2" />
					2
				</td>
				<td>
					（一）房屋、建筑物
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjeje1" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssxzzczjje" id="gdzcssxzzczjje1" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsje1" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="3" />
					3
				</td>
				<td>
					（二）飞机、火车、轮船、机器、机械和其他生产设备
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjeje2" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssxzzczjje" id="gdzcssxzzczjje2" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsje2" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="4" />
					4
				</td>
				<td>
					（三）与生产经营活动有关的器具、工具、家具等
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjeje3" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssxzzczjje" id="gdzcssxzzczjje3" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsje3" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="5" />
					5
				</td>
				<td>
					（四）飞机、火车、轮船以外的运输工具
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjeje4" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssxzzczjje" id="gdzcssxzzczjje4" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsje4" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="6" />
					6
				</td>
				<td>
					（五）电子设备
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjeje5" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjje5"
						cal="true" />
				</td>
				<td>
					<input type="text" style="width: 100%;" name="ssxzzczjje"
						id="gdzcssxzzczjje5" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsje5" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="7" />
					7
				</td>
				<td>
					（六）其他
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="gdzczzzzjeje6" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="gdzczzbnzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="gdzczzljzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="gdzcsszcjsjcje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="gdzcssassbnzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="gdzcssbnjszjje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssxzzczjje" id="gdzcssxzzczjje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="gdzcssljzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="gdzcnsje6" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="8" />
					8
				</td>
				<td>
					二、生产性生物资产（9+10）
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="swzczzzzjejehj" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="swzczzbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="swzczzljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="swzcsszcjsjcjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="swzcssassbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="swzcssbnjszjjehj"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="swzcssljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="swzcnsjehj" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="9" />
					9
				</td>
				<td>
					（一）林木类
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="swzczzzzjeje1" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="swzczzbnzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="swzczzljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="swzcsszcjsjcje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="swzcssassbnzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="swzcssbnjszjje1"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="swzcssljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="swzcnsje1" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="10" />
					10
				</td>
				<td>
					（二）畜类
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="swzczzzzjeje2" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="swzczzbnzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="swzczzljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="swzcsszcjsjcje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="swzcssassbnzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjje" id="swzcssbnjszjje2"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="swzcssljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="swzcnsje2" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="11" />
					11
				</td>
				<td>
					三、无形资产（12+13+14+15+16+17+18）
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjejehj" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsjehj" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="12" />
					12
				</td>
				<td>
					（一）专利权
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje1" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje1"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje1" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="13" />
					13
				</td>
				<td>
					（二）商标权
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje2" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje2"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje2" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="14" />
					14
				</td>
				<td>
					（三）著作权
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje3" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje3"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje3" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="15" />
					15
				</td>
				<td>
					（四）土地使用权
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje4" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje4"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje4" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="16" />
					16
				</td>
				<td>
					（五）非专利技术
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje5" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje5"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje5" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="17" />
					17
				</td>
				<td>
					（六）特许权使用费
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje6" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje6"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje6"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje6" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="18" />
					18
				</td>
				<td>
					（七）其他
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="wxzczzzzjeje7" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="wxzczzbnzjtxje7"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="wxzczzljzjtxje7"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="wxzcsszcjsjcje7"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="wxzcssassbnzjtxje7"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="wxzcssljzjtxje7"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="wxzcnsje7" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="19" />
					19
				</td>
				<td>
					四、长期待摊费用（20+21+22+23+24）
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="dtfyzzzzjejehj" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="dtfyzzbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="dtfyzzljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="dtfysszcjsjcjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="dtfyssassbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="dtfyssljzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="dtfynsjehj" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="20" />
					20
				</td>
				<td>
					（一）已足额提取折旧的固定资产的改建支出
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="dtfyzzzzjeje1" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="dtfyzzbnzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="dtfyzzljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="dtfysszcjsjcje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="dtfyssassbnzjtxje1"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="dtfyssljzjtxje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="dtfynsje1" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="21" />
					21
				</td>
				<td>
					（二）租入固定资产的改建支出
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="dtfyzzzzjeje2" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="dtfyzzbnzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="dtfyzzljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="dtfysszcjsjcje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="dtfyssassbnzjtxje2"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="dtfyssljzjtxje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="dtfynsje2" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="22" />
					22
				</td>
				<td>
					（三）固定资产的大修理支出
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="dtfyzzzzjeje3" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="dtfyzzbnzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="dtfyzzljzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="dtfysszcjsjcje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="dtfyssassbnzjtxje3"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="dtfyssljzjtxje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="dtfynsje3" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="23" />
					23
				</td>
				<td>
					（四）开办费
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="dtfyzzzzjeje4" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="dtfyzzbnzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="dtfyzzljzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="dtfysszcjsjcje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="dtfyssassbnzjtxje4"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="dtfyssljzjtxje4"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="dtfynsje4" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="24" />
					24
				</td>
				<td>
					（五）其他
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="dtfyzzzzjeje5" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="dtfyzzbnzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="dtfyzzljzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="dtfysszcjsjcje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="dtfyssassbnzjtxje5"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="dtfyssljzjtxje5"
						cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="dtfynsje5" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="25" />
					25
				</td>
				<td>
					五、油气勘探投资
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="kttzzzzzjeje" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="kttzzzbnzjtxje" cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="kttzzzljzjtxje" cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="kttzsszcjsjcje" cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="kttzssassbnzjtxje"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="kttzssljzjtxje" cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="kttznsje" cal="true" />
				</td>
				<td>
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="hidden" name="sbmxxh" value="26" />
					26
				</td>
				<td>
					六、油气开发投资
				</td>
				<td>
					<input type="text" name="zzzzjeje" id="kftzzzzzjeje" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxje" id="kftzzzbnzjtxje" cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxje" id="kftzzzljzjtxje" cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcje" id="kftzsszcjsjcje" cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxje" id="kftzssassbnzjtxje"
						cal="true" />
				</td>
				<td>
					*
				</td>
				<td>
					*
				</td>
				<td>
					<input type="text" name="ssljzjtxje" id="kftzssljzjtxje" cal="true" />
				</td>
				<td>
					<input type="text" name="nsje" id="kftznsje" cal="true" />
				</td>
				<td width="10%">
					<input type="hidden" name="nsyy" />
				</td>
			</tr>
			<tr>
				<td>
					合计（1+8+11+19+25+26）
				</td>
				<td>
					<input type="text" name="zzzzjejehj" id="zzzzjejehj" cal="true" />
				</td>
				<td>
					<input type="text" name="zzbnzjtxjehj" id="zzbnzjtxjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="zzljzjtxjehj" id="zzljzjtxjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="sszcjsjcjehj" id="sszcjsjcjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="ssassbnzjtxjehj" id="ssassbnzjtxjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ssbnjszjjehj" id="ssbnjszjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="ssxzzczjjehj" id="ssxzzczjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="ssljzjtxjehj" id="ssljzjtxjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="nsjehj" id="nsjehj" cal="true" />
				</td>
				<td>
					*
				</td>
			</tr>
		</table>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="bizData" styleId="bizData" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105080Print.js?<%=System.currentTimeMillis()%>"></script>
</html:html>
