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
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>固定资产加速折旧、扣除明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395A105081_2Action.do"
		styleId="WB395A105081_2Form" method="post">
		<div id="mainDiv">
			<table width="98%" border="0" style="text-align: center;"
				cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<div style="text-align: center;">
							<font size=4><B><br>固定资产加速折旧、扣除明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<table width="98%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
				id="tab1">
				<tr style="text-align: center;">
					<td rowspan="4" width="1%">
						行
						<br />
						次
					</td>
					<td rowspan="4" width="7%">
						项 目
					</td>
					<td colspan="3" width="14%">
						房屋、建筑物
					</td>
					<td colspan="3" width="14%">
						飞机、火车、轮船、机器、机械
						<br />
						和其他生产设备
					</td>
					<td colspan="3" width="14%">
						与生产经营活动有关的器具、工
						<br />
						具、家具等
					</td>
					<td colspan="3" width="14%">
						飞机、火车、轮船以外的运输工
						<br />
						具
					</td>
					<td colspan="3" width="14%">
						电子设备
					</td>
					<td colspan="5">
						合计
					</td>
					<td rowspan="4">
						加速折旧适用情况（税总2014年64号公告）
					</td>
				</tr>
				<tr style="text-align: center;">
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2">
						累计折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2">
						累计折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2">
						累计折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2">
						累计折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td rowspan="2">
						本期折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2">
						累计折旧
						<br />
						（扣除）额
					</td>
					<td rowspan="2" width="4%">
						原值
					</td>
					<td colspan="2">
						本期折旧
						<br />
						（扣除）额
					</td>
					<td colspan="2">
						累计折旧
						<br />
						（扣除）额
					</td>

				</tr>
				<tr style="text-align: center;">
					<td>
						正常折
						<br />
						旧额
					</td>
					<td>
						加速折
						<br />
						旧额
					</td>
					<td>
						正常折
						<br />
						旧额
					</td>
					<td>
						加速折
						<br />
						旧额
					</td>
				</tr>
				<tr style="text-align: center;">
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
					<td style="text-align: center;">
						1
					</td>
					<td>
						一、六大行业
						<br />
						固定资产
					</td>
					<td class="fwjzyz" align="right">
					</td>
					<td class="fwjzbqzjje" align="right">
					</td>
					<td class="fwjzljzjje" align="right">
					</td>
					<td class="scsbyz" align="right">
					</td>
					<td class="scsbbqzjje" align="right">
					</td>
					<td class="scsbljzjje" align="right">
					</td>
					<td class="scgjyz" align="right">
					</td>
					<td class="scgjbqzjje" align="right">
					</td>
					<td class="scgjljzjje" align="right">
					</td>
					<td class="ysgjyz" align="right">
					</td>
					<td class="ysgjbqzjje" align="right">
					</td>
					<td class="ysgjljzjje" align="right">
					</td>
					<td class="dzsbyz" align="right">
					</td>
					<td class="dzsbbqzjje" align="right">
					</td>
					<td class="dzsbljzjje" align="right">
					</td>
					<td class="hjyz" align="right">
					</td>
					<td class="hjbqzjzczjje" align="right">
					</td>
					<td class="hjbqzjjszjje" align="right">
					</td>
					<td class="hjljzjzczjje" align="right">
					</td>
					<td class="hjljzjjszjje" align="right">
					</td>
					<td class="sytj" align="center">
						——
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						2
					</td>
					<td class="hymc" align="right">
					</td>
					<td class="fwjzyz" align="right">
					</td>
					<td class="unableinput1" align="center">
					——
					</td>
					<td class="fwjzbqzjje" align="right">
					</td>
					<td class="unableinput2" align="center">
					——
					</td>
					<td class="fwjzljzjje" align="right">
					</td>
					<td class="unableinput3" align="center">
					——
					</td>
					<td class="scsbyz" align="right">
					</td>
					<td class="scsbbqzjje" align="right">
					</td>
					<td class="scsbljzjje" align="right">
					</td>
					<td class="scgjyz" align="right">
					</td>
					<td class="scgjbqzjje" align="right">
					</td>
					<td class="scgjljzjje" align="right">
					</td>
					<td class="ysgjyz" align="right">
					</td>
					<td class="ysgjbqzjje" align="right">
					</td>
					<td class="ysgjljzjje" align="right">
					</td>
					<td class="dzsbyz" align="right">
					</td>
					<td class="dzsbbqzjje" align="right">
					</td>
					<td class="dzsbljzjje" align="right">
					</td>
					<td class="hjyz" align="right">
					</td>
					<td class="hjbqzjzczjje" align="right">
					</td>
					<td class="hjbqzjjszjje" align="right">
					</td>
					<td class="hjljzjzczjje" align="right">
					</td>
					<td class="hjljzjjszjje" align="right">
					</td>
					<td class="sytj" align="right">
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						3
					</td>
					<td>
						二、允许一次
						<br />
						性扣除的固定
						<br />
						资产
					</td>
					<td class="fwjzyz" align="right">
					</td>
					<td class="fwjzbqzjje" align="right">
					</td>
					<td class="fwjzljzjje" align="right">
					</td>
					<td class="scsbyz" align="right">
					</td>
					<td class="scsbbqzjje" align="right">
					</td>
					<td class="scsbljzjje" align="right">
					</td>
					<td class="scgjyz" align="right">
					</td>
					<td class="scgjbqzjje" align="right">
					</td>
					<td class="scgjljzjje" align="right">
					</td>
					<td class="ysgjyz" align="right">
					</td>
					<td class="ysgjbqzjje" align="right">
					</td>
					<td class="ysgjljzjje" align="right">
					</td>
					<td class="dzsbyz" align="right">
					</td>
					<td class="dzsbbqzjje" align="right">
					</td>
					<td class="dzsbljzjje" align="right">
					</td>
					<td class="hjyz" align="right">
					</td>
					<td class="hjbqzjzczjje" align="right">
					</td>
					<td class="hjbqzjjszjje" align="right">
					</td>
					<td class="hjljzjzczjje" align="right">
					</td>
					<td class="hjljzjjszjje" align="right">
					</td>
					<td class="sytj" align="center">
						——
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						4
					</td>
					<td>
						（一）单位价
						<br />
						值不超过100万
						<br />
						元的研发仪
						<br />
						器、设备
					</td>
					<td class="fwjzyz" align="center">
					</td>
					<td class="fwjzbqzjje" align="center">
					</td>
					<td class="fwjzljzjje" align="center">
					</td>
					<td class="scsbyz" align="right">
					</td>
					<td class="scsbbqzjje" align="right">
					</td>
					<td class="scsbljzjje" align="right">
					</td>
					<td class="scgjyz" align="right">
					</td>
					<td class="scgjbqzjje" align="right">
					</td>
					<td class="scgjljzjje" align="right">
					</td>
					<td class="ysgjyz" align="right">
					</td>
					<td class="ysgjbqzjje" align="right">
					</td>
					<td class="ysgjljzjje" align="right">
					</td>
					<td class="dzsbyz" align="right">
					</td>
					<td class="dzsbbqzjje" align="right">
					</td>
					<td class="dzsbljzjje" align="right">
					</td>
					<td class="hjyz" align="right">
					</td>
					<td class="hjbqzjzczjje" align="right">
					</td>
					<td class="hjbqzjjszjje" align="right">
					</td>
					<td class="hjljzjzczjje" align="right">
					</td>
					<td class="hjljzjjszjje" align="right">
					</td>
					<td class="sytj" align="right">
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						5
					</td>
					<td>
						其中：六大行
						<br />
						业小型微利企
						<br />
						业研发和生产
						<br />
						经营共用的仪
						<br />
						器、设备
					</td>
					<td class="fwjzyz" align="center">
					</td>
					<td class="fwjzbqzjje" align="center">
					</td>
					<td class="fwjzljzjje" align="center">
					</td>
					<td class="scsbyz" align="right">
					</td>
					<td class="scsbbqzjje" align="right">
					</td>
					<td class="scsbljzjje" align="right">
					</td>
					<td class="scgjyz" align="right">
					</td>
					<td class="scgjbqzjje" align="right">
					</td>
					<td class="scgjljzjje" align="right">
					</td>
					<td class="ysgjyz" align="right">
					</td>
					<td class="ysgjbqzjje" align="right">
					</td>
					<td class="ysgjljzjje" align="right">
					</td>
					<td class="dzsbyz" align="right">
					</td>
					<td class="dzsbbqzjje" align="right">
					</td>
					<td class="dzsbljzjje" align="right">
					</td>
					<td class="hjyz" align="right">
					</td>
					<td class="hjbqzjzczjje" align="right">
					</td>
					<td class="hjbqzjjszjje" align="right">
					</td>
					<td class="hjljzjzczjje" align="right">
					</td>
					<td class="hjljzjjszjje" align="right">
					</td>
					<td class="sytj" align="right">
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						6
					</td>
					<td>
						（二）单位价
						<br />
						值不超过5000
						<br />
						元的固定资产
					</td>
					<td class="fwjzyz" align="center">
					</td>
					<td class="fwjzbqzjje" align="center">
					</td>
					<td class="fwjzljzjje" align="center">
					</td>
					<td class="scsbyz" align="right">
					</td>
					<td class="scsbbqzjje" align="right">
					</td>
					<td class="scsbljzjje" align="right">
					</td>
					<td class="scgjyz" align="right">
					</td>
					<td class="scgjbqzjje" align="right">
					</td>
					<td class="scgjljzjje" align="right">
					</td>
					<td class="ysgjyz" align="right">
					</td>
					<td class="ysgjbqzjje" align="right">
					</td>
					<td class="ysgjljzjje" align="right">
					</td>
					<td class="dzsbyz" align="right">
					</td>
					<td class="dzsbbqzjje" align="right">
					</td>
					<td class="dzsbljzjje" align="right">
					</td>
					<td class="hjyz" align="right">
					</td>
					<td class="hjbqzjzczjje" align="right">
					</td>
					<td class="hjbqzjjszjje" align="right">
					</td>
					<td class="hjljzjzczjje" align="right">
					</td>
					<td class="hjljzjjszjje" align="right">
					</td>
					<td class="sytj" align="right">
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						7
					</td>
					<td>
						总 计
					</td>
					<td class='fwjzyzhj' align="right">
					</td>
					<td class='fwjzbqzjjehj' align="right">
					</td>
					<td class='fwjzljzjjehj' align="right">
					</td>
					<td class='scsbyzhj' align="right">
					</td>
					<td class='scsbbqzjjehj' align="right">
					</td>
					<td class='scsbljzjjehj' align="right">
					</td>
					<td class='scgjyzhj' align="right">
					</td>
					<td class='scgjbqzjjehj' align="right">
					</td>
					<td class='scgjljzjjehj' align="right">
					</td>
					<td class='ysgjyzhj' align="right">
					</td>
					<td class='ysgjbqzjjehj' align="right">
					</td>
					<td class='ysgjljzjjehj' align="right">
					</td>
					<td class='dzsbyzhj' align="right">
					</td>
					<td class='dzsbbqzjjehj' align="right">
					</td>
					<td class='dzsbljzjjehj' align="right">
					</td>
					<td class='hjyzhj' align="right">
					</td>
					<td class='hjbqzjzczjjehj' align="right">
					</td>
					<td class='hjbqzjjszjjehj' align="right">
					</td>
					<td class='hjljzjzczjjehj' align="right">
					</td>
					<td class='hjljzjjszjjehj' align="right">
					</td>
					<td class="sytj" align="center">
						——
					</td>
				</tr>
			</table>
		</div>
		<table style="display: none" id="tab1">
			<tr>
				<td style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="1" />
					1
				</td>
				<td>
					一、六大行业固定资产
				</td>
				<td>
					<input type="text" name="fwjzyz" id="gdzcfwjzyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjje" id="gdzcfwjzbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjje" id="gdzcfwjzljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyz" id="gdzcscsbyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjje" id="gdzcscsbbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjje" id="gdzcscsbljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyz" id="gdzcscgjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjje" id="gdzcscgjbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjje" id="gdzcscgjljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyz" id="gdzcysgjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjje" id="gdzcysgjbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjje" id="gdzcysgjljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyz" id="gdzcdzsbyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjje" id="gdzcdzsbbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjje" id="gdzcdzsbljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjyz" id="gdzchjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjje" id="gdzchjbqzjzczjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjje" id="gdzchjbqzjjszjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjje" id="gdzchjljzjzczjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjje" id="gdzchjljzjjszjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sytj" id="gdzcsytjhj" cal="true" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="2" />
					2
				</td>
				<td>
					<input type="text" name="hymc" id="gdzchymc" />
					<input type="text" name="hybj" id="gdzchybj" />
				</td>
				<td>
					<input type="text" name="fwjzyz" id="gdzcfwjzyz" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjje" id="gdzcfwjzbqzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjje" id="gdzcfwjzljzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyz" id="gdzcscsbyz" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjje" id="gdzcscsbbqzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjje" id="gdzcscsbljzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyz" id="gdzcscgjyz" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjje" id="gdzcscgjbqzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjje" id="gdzcscgjljzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyz" id="gdzcysgjyz" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjje" id="gdzcysgjbqzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjje" id="gdzcysgjljzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyz" id="gdzcdzsbyz" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjje" id="gdzcdzsbbqzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjje" id="gdzcdzsbljzjje" cal="true" />
				</td>
				<td>
					<input type="text" name="hjyz" id="gdzchjyz" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjje" id="gdzchjbqzjzczjje"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjje" id="gdzchjbqzjjszjje"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjje" id="gdzchjljzjzczjje"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjje" id="gdzchjljzjjszjje"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sytj" id="gdzcsytj" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="3" />
					3
				</td>
				<td>
					二、允许一次性扣除的固定资产
				</td>
				<td>
					<input type="text" name="fwjzyz" id="ycxgdzcfwjzyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjje" id="ycxgdzcfwjzbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjje" id="ycxgdzcfwjzljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyz" id="ycxgdzcscsbyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjje" id="ycxgdzcscsbbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjje" id="ycxgdzcscsbljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyz" id="ycxgdzcscgjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjje" id="ycxgdzcscgjbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjje" id="ycxgdzcscgjljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyz" id="ycxgdzcysgjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjje" id="ycxgdzcysgjbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjje" id="ycxgdzcysgjljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyz" id="ycxgdzcdzsbyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjje" id="ycxgdzcdzsbbqzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjje" id="ycxgdzcdzsbljzjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjyz" id="ycxgdzchjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjje" id="ycxgdzchjbqzjjszjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjje" id="ycxgdzchjljzjzczjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjje" id="ycxgdzchjljzjjszjjehj"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sytj" id="ycxgdzcsytjhj" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="4" />
					4
				</td>
				<td>
					（一）单位价值不超过100万元的研发仪器、设备
				</td>
				<td>
					<input type="text" name="fwjzyz" id="ycxgdzcfwjzyz1" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjje" id="ycxgdzcfwjzbqzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjje" id="ycxgdzcfwjzljzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyz" id="ycxgdzcscsbyz1" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjje" id="ycxgdzcscsbbqzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjje" id="ycxgdzcscsbljzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyz" id="ycxgdzcscgjyz1" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjje" id="ycxgdzcscgjbqzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjje" id="ycxgdzcscgjljzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyz" id="ycxgdzcysgjyz1" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjje" id="ycxgdzcysgjbqzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjje" id="ycxgdzcysgjljzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyz" id="ycxgdzcdzsbyz1" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjje" id="ycxgdzcdzsbbqzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjje" id="ycxgdzcdzsbljzjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjyz" id="ycxgdzchjyz1" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjje" id="ycxgdzchjbqzjjszjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjje" id="ycxgdzchjljzjzczjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjje" id="ycxgdzchjljzjjszjje1"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sytj" id="ycxgdzcsytj1" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<input type="hidden" name=sbmxxh " value="5" />
					5
				</td>
				<td>
					其中：六大行业小型微利企业研发和生产经营共用的仪器、设备
				</td>
				<td>
					<input type="text" name="fwjzyz" id="ycxgdzcfwjzyz2" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjje" id="ycxgdzcfwjzbqzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjje" id="ycxgdzcfwjzljzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyz" id="ycxgdzcscsbyz2" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjje" id="ycxgdzcscsbbqzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjje" id="ycxgdzcscsbljzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyz" id="ycxgdzcscgjyz2" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjje" id="ycxgdzcscgjbqzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjje" id="ycxgdzcscgjljzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyz" id="ycxgdzcysgjyz2" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjje" id="ycxgdzcysgjbqzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjje" id="ycxgdzcysgjljzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyz" id="ycxgdzcdzsbyz2" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjje" id="ycxgdzcdzsbbqzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjje" id="ycxgdzcdzsbljzjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjyz" id="ycxgdzchjyz2" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjje" id="ycxgdzchjbqzjjszjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjje" id="ycxgdzchjljzjzczjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjje" id="ycxgdzchjljzjjszjje2"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sytj" id="ycxgdzcsytj2" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="6" />
					6
				</td>
				<td>
					（二）单位价值不超过5000元的固定资产
				</td>
				<td>
					<input type="text" name="fwjzyz" id="ycxgdzcfwjzyz3" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjje" id="ycxgdzcfwjzbqzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjje" id="ycxgdzcfwjzljzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyz" id="ycxgdzcscsbyz3" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjje" id="ycxgdzcscsbbqzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjje" id="ycxgdzcscsbljzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyz" id="ycxgdzcscgjyz3" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjje" id="ycxgdzcscgjbqzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjje" id="ycxgdzcscgjljzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyz" id="ycxgdzcysgjyz3" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjje" id="ycxgdzcysgjbqzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjje" id="ycxgdzcysgjljzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyz" id="ycxgdzcdzsbyz3" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjje" id="ycxgdzcdzsbbqzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjje" id="ycxgdzcdzsbljzjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjyz" id="ycxgdzchjyz3" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjje" id="ycxgdzchjbqzjzczjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjje" id="ycxgdzchjbqzjjszjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjje" id="ycxgdzchjljzjzczjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjje" id="ycxgdzchjljzjjszjje3"
						cal="true" />
				</td>
				<td>
					<input type="text" name="sytj" id="ycxgdzcsytj3" />
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					总 计
				</td>
				<td>
					<input type="text" name="fwjzyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzbqzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="fwjzljzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbbqzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="scsbljzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjbqzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="scgjljzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjbqzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="ysgjljzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbbqzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="dzsbljzjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjyzhj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjzczjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjbqzjjszjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjzczjjehj" cal="true" />
				</td>
				<td>
					<input type="text" name="hjljzjjszjjehj" cal="true" />
				</td>
			</tr>
		</table>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="bizData" styleId="bizData" />
		<html:hidden property="handleCode" styleId="handleCode" />
		<%@include file="/nssb/caInclude.jsp"%>
		<%@include file="/nssb/nsryhinfo.jsp"%>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105081_2Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
