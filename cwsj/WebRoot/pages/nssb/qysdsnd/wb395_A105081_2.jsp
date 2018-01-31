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
		href="./public/css/autocomplete.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script language="javascript" type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<title>固定资产加速折旧、扣除明细表</title>
</head>
<body onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<br />
	<div style="width: 95%">
		<p align="left">
		<p>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A105081
		</p>
	</div>
	<html:form action="/WB395A105081_2Action.do"
		styleId="WB395A105081_2Form" method="post">

		<table border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<div align="center">
						<font size=4><B><br>固定资产加速折旧、扣除明细表</B> </font>
					</div>
					<br>
				</td>
			</tr>
		</table>
		<div style='overflow-x: scroll; width: 100%;'>
			<table width="2000px" style="border-collapse: collapse"
				align="center" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000" id="tab1">
				<tr align="center">
					<td rowspan="4" width="1%">
						行 次
					</td>
					<td rowspan="4" width="1%">
						项 目
					</td>
					<td colspan="3" width="13%">
						房屋、建筑物
					</td>
					<td colspan="3" width="13%">
						飞机、火车、轮船、机器、机械和其他生产设备
					</td>
					<td colspan="3" width="13%">
						与生产经营活动有关的器具、工具、家具等
					</td>
					<td colspan="3" width="13%">
						飞机、火车、轮船以外的运输工具
					</td>
					<td colspan="3" width="13%">
						电子设备
					</td>
					<td colspan="5">
						合计
					</td>
					<td rowspan="4">
						加速折旧适用情况（税总2014年64号公告）
					</td>
				</tr>
				<tr align="center">
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期加速折旧（扣除）额
					</td>
					<td rowspan="2">
						累计加速折旧（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期加速折旧（扣除）额
					</td>
					<td rowspan="2">
						累计加速折旧（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期加速折旧（扣除）额
					</td>
					<td rowspan="2">
						累计加速折旧（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期加速折旧（扣除）额
					</td>
					<td rowspan="2">
						累计加速折旧（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期加速折旧（扣除）额
					</td>
					<td rowspan="2">
						累计加速折旧（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td colspan="2">
						本期折旧（扣除）额
					</td>
					<td colspan="2">
						累计折旧（扣除）额
					</td>


				</tr>
				<tr align="center">
					<td>
						正常折旧额
					</td>
					<td>
						加速折旧额
					</td>
					<td>
						正常折旧额
					</td>
					<td>
						加速折旧额
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
					<td>
						15
					</td>
					<td>
						16
					</td>
					<td>
						17
					</td>
					<td>
						18
					</td>
					<td>
						19
					</td>
					<td>
						20
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="hidden" name="sbmxxh" value="1" />
						1
					</td>
					<td>
						一、六大行业固定资产
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="fwjzyz" id="gdzcfwjzyzhj"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="fwjzbqzjje"
							id="gdzcfwjzbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="fwjzljzjje"
							id="gdzcfwjzljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scsbyz" id="gdzcscsbyzhj"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scsbbqzjje"
							id="gdzcscsbbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scsbljzjje"
							id="gdzcscsbljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scgjyz" id="gdzcscgjyzhj"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scgjbqzjje"
							id="gdzcscgjbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scgjljzjje"
							id="gdzcscgjljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="ysgjyz" id="gdzcysgjyzhj"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="ysgjbqzjje"
							id="gdzcysgjbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="ysgjljzjje"
							id="gdzcysgjljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="dzsbyz" id="gdzcdzsbyzhj"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="dzsbbqzjje"
							id="gdzcdzsbbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="dzsbljzjje"
							id="gdzcdzsbljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjyz" id="gdzchjyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjzczjje"
							id="gdzchjbqzjzczjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjjszjje"
							id="gdzchjbqzjjszjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjzczjje"
							id="gdzchjljzjzczjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjjszjje"
							id="gdzchjljzjjszjjehj" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" name="sytj" />
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="hidden" name="sbmxxh" value="2" />
						2
					</td>
					<td>
						<input type="hidden" name="hybj">
						<input type="text" name="hymc" style="text-align: left;" class="srx">
					</td>
					<td>
						<div id="unableinput1" style="display: none;" align="center">
							——
						</div>
						<input type="text" style="width: 100%;" class="srx" name="fwjzyz"
							id="gdzcfwjzyz" cal="true" />
					</td>
					<td>
						<div id="unableinput2" style="display: none;" align="center">
							——
						</div>
						<input type="text" style="width: 100%;" class="srx"
							name="fwjzbqzjje" id="gdzcfwjzbqzjje" cal="true" />
					</td>
					<td>
						<div id="unableinput3" style="display: none;" align="center">
							——
						</div>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="fwjzljzjje" id="gdzcfwjzljzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scsbyz"
							id="gdzcscsbyz" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scsbbqzjje" id="gdzcscsbbqzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scsbljzjje" id="gdzcscsbljzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scgjyz"
							id="gdzcscgjyz" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scgjbqzjje" id="gdzcscgjbqzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scgjljzjje" id="gdzcscgjljzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="ysgjyz"
							id="gdzcysgjyz" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="ysgjbqzjje" id="gdzcysgjbqzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="ysgjljzjje" id="gdzcysgjljzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="dzsbyz"
							id="gdzcdzsbyz" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="dzsbbqzjje" id="gdzcdzsbbqzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="dzsbljzjje" id="gdzcdzsbljzjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjyz" id="gdzchjyz" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjbqzjzczjje" id="gdzchjbqzjzczjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjjszjje"
							id="gdzchjbqzjjszjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjljzjzczjje" id="gdzchjljzjzczjje" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjjszjje"
							id="gdzchjljzjjszjje" cal="true" />
					</td>
					<td>
						<input type="radio" value="01" name="sytj1"
							onclick="sytjOper(this)" />
						是（符合条件并适用）
						<br />
						<input type="radio" value="02" name="sytj1"
							onclick="sytjOper(this)" />
						否（不符合条件）
						<br />
						<input type="radio" value="03" name="sytj1"
							onclick="sytjOper(this)" />
						否（符合条件，不选择适用）
						<input type="hidden" name="sytj" />
					</td>
				</tr>

				<tr>
					<td align="center">
						<input type="hidden" name="sbmxxh" value="3" />
						3
					</td>
					<td>
						二、允许一次性扣除的固定资产
					</td>
					<td>
						<input type="hidden" style="width: 100%;" name="fwjzyz"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcfwjzyzhj" cal="true" />
					</td>
					<td>
						<input type="hidden" style="width: 100%;" name="fwjzbqzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcfwjzbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="hidden" style="width: 100%;" name="fwjzljzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcfwjzljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="scsbyz"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcscsbyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="scsbbqzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcscsbbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="scsbljzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcscsbljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="scgjyz"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcscgjyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="scgjbqzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcscgjbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="scgjljzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcscgjljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="ysgjyz"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcysgjyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="ysgjbqzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcysgjbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="ysgjljzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcysgjljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="dzsbyz"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcdzsbyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="dzsbbqzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcdzsbbqzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="dzsbljzjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzcdzsbljzjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="hjyz"
							readonly="readonly" class="fsrx" tabindex="-1" id="ycxgdzchjyzhj"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="hjbqzjzczjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzchjbqzjzczjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="hjbqzjjszjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzchjbqzjjszjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="hjljzjzczjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzchjljzjzczjjehj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" name="hjljzjjszjje"
							readonly="readonly" class="fsrx" tabindex="-1"
							id="ycxgdzchjljzjjszjjehj" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" name="sytj" />
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="hidden" name="sbmxxh" value="4" />
						4
					</td>
					<td>
						（一）单位价值不超过100万元的研发仪器、设备
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzyz" id="ycxgdzcfwjzyz1" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzbqzjje" id="ycxgdzcfwjzbqzjje1" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzljzjje" id="ycxgdzcfwjzljzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scsbyz"
							id="ycxgdzcscsbyz1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scsbbqzjje" id="ycxgdzcscsbbqzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scsbljzjje" id="ycxgdzcscsbljzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scgjyz"
							id="ycxgdzcscgjyz1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scgjbqzjje" id="ycxgdzcscgjbqzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scgjljzjje" id="ycxgdzcscgjljzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="ysgjyz"
							id="ycxgdzcysgjyz1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="ysgjbqzjje" id="ycxgdzcysgjbqzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="ysgjljzjje" id="ycxgdzcysgjljzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="dzsbyz"
							id="ycxgdzcdzsbyz1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="dzsbbqzjje" id="ycxgdzcdzsbbqzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="dzsbljzjje" id="ycxgdzcdzsbljzjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjyz" id="ycxgdzchjyz1"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjjszjje"
							id="ycxgdzchjbqzjjszjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjljzjzczjje" id="ycxgdzchjljzjzczjje1" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjjszjje"
							id="ycxgdzchjljzjjszjje1" cal="true" />
					</td>
					<td>
						<input type="radio" value="01" name="sytj2"
							onclick="sytjOper(this)" />
						是（符合条件并适用）
						<br />
						<input type="radio" value="02" name="sytj2"
							onclick="sytjOper(this)" />
						否（不符合条件）
						<br />
						<input type="radio" value="03" name="sytj2"
							onclick="sytjOper(this)" />
						否（符合条件，不选择适用）
						<input type="hidden" name="sytj" />
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="hidden" name=sbmxxh " value="5" />
						5
					</td>
					<td>
						其中：六大行业小型微利企业研发和生产经营共用的仪器、设备
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzyz" id="ycxgdzcfwjzyz2" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzbqzjje" id="ycxgdzcfwjzbqzjje2" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzljzjje" id="ycxgdzcfwjzljzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scsbyz"
							id="ycxgdzcscsbyz2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scsbbqzjje" id="ycxgdzcscsbbqzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scsbljzjje" id="ycxgdzcscsbljzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scgjyz"
							id="ycxgdzcscgjyz2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scgjbqzjje" id="ycxgdzcscgjbqzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scgjljzjje" id="ycxgdzcscgjljzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="ysgjyz"
							id="ycxgdzcysgjyz2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="ysgjbqzjje" id="ycxgdzcysgjbqzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="ysgjljzjje" id="ycxgdzcysgjljzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="dzsbyz"
							id="ycxgdzcdzsbyz2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="dzsbbqzjje" id="ycxgdzcdzsbbqzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="dzsbljzjje" id="ycxgdzcdzsbljzjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjyz" id="ycxgdzchjyz2"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjjszjje"
							id="ycxgdzchjbqzjjszjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjljzjzczjje" id="ycxgdzchjljzjzczjje2" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjjszjje"
							id="ycxgdzchjljzjjszjje2" cal="true" />
					</td>
					<td>
						<input type="radio" value="01" name="sytj3"
							onclick="sytjOper(this)" />
						是（符合条件并适用）
						<br />
						<input type="radio" value="02" name="sytj3"
							onclick="sytjOper(this)" />
						否（不符合条件）
						<br />
						<input type="radio" value="03" name="sytj3"
							onclick="sytjOper(this)" />
						否（符合条件，不选择适用）
						<input type="hidden" name="sytj" />
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="hidden" name="sbmxxh" value="6" />
						6
					</td>
					<td>
						（二）单位价值不超过5000元的固定资产
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzyz" id="ycxgdzcfwjzyz3" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzbqzjje" id="ycxgdzcfwjzbqzjje3" cal="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" style="width: 100%;" class="srx"
							name="fwjzljzjje" id="ycxgdzcfwjzljzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scsbyz"
							id="ycxgdzcscsbyz3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scsbbqzjje" id="ycxgdzcscsbbqzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scsbljzjje" id="ycxgdzcscsbljzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="scgjyz"
							id="ycxgdzcscgjyz3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="scgjbqzjje" id="ycxgdzcscgjbqzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="scgjljzjje" id="ycxgdzcscgjljzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="ysgjyz"
							id="ycxgdzcysgjyz3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="ysgjbqzjje" id="ycxgdzcysgjbqzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="ysgjljzjje" id="ycxgdzcysgjljzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx" name="dzsbyz"
							id="ycxgdzcdzsbyz3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="dzsbbqzjje" id="ycxgdzcdzsbbqzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="fsrx" readonly="readonly"
							name="dzsbljzjje" id="ycxgdzcdzsbljzjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjyz" id="ycxgdzchjyz3"
							cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjjszjje"
							id="ycxgdzchjbqzjjszjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" class="srx"
							name="hjljzjzczjje" id="ycxgdzchjljzjzczjje3" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjjszjje"
							id="ycxgdzchjljzjjszjje3" cal="true" />
					</td>
					<td>
						<input type="radio" value="01" name="sytj4"
							onclick="sytjOper(this)" />
						是（符合条件并适用）
						<br />
						<input type="radio" value="02" name="sytj4"
							onclick="sytjOper(this)" />
						否（不符合条件）
						<br />
						<input type="radio" value="03" name="sytj4"
							onclick="sytjOper(this)" />
						否（符合条件，不选择适用）
						<input type="hidden" name="sytj" />
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="hidden" name="sbmxxh" value="7" />
						7
					</td>
					<td>
						总 计
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="fwjzyzhj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="fwjzbqzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="fwjzljzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scsbyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scsbbqzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scsbljzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scgjyzhj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scgjbqzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="scgjljzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="ysgjyzhj" cal="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="ysgjbqzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="ysgjljzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="dzsbyzhj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="dzsbbqzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="dzsbljzjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjyzhj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjzczjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjbqzjjszjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjzczjjehj" cal="true"
							negative="true" />
					</td>
					<td>
						<input type="text" style="width: 100%;" readonly="readonly"
							class="fsrx" tabindex="-1" name="hjljzjjszjjehj" cal="true"
							negative="true" />
					</td>
					<td align="center">
						——
						<input type="hidden" name="sytj" />
					</td>
				</tr>
			</table>
			<br/>
		</div>
		<br />
		<br />

		<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提示信息：适用于符合财税（2014）75号、国家税务总局公告2014年64号条件加速折旧（扣除）纳税人填报。</font>

		<input type="hidden" id="bbZt" name="bbzt"
			value="<%=request.getParameter("bbZt")%>">
		<html:hidden property="handleDesc" styleId="handleDesc" />
		<html:hidden property="handleCode" styleId="handleCode" />
		<SPAN id='a' bz="updata"><html:hidden property="bizData"
				styleId="bizData" /> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="errorMessage"
				styleId="errorMessage" /> <html:hidden property="proMessage"
				styleId="proMessage" /> </SPAN>
		<html:hidden property="pzXh" styleId="pzXh" />
		<%@include file="/nssb/caInclude.jsp"%>
		<%@include file="/nssb/nsryhinfo.jsp"%>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105081_2.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
