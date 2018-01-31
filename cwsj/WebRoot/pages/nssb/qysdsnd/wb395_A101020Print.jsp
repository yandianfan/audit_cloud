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
	<title>金融企业收入明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A101020Action.do" method="post"
		styleId="WB395A101020Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv" align="center">
			<br />
			<br />

			<table width="70%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: left;">
						A101020
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>金融企业收入明细表</b> </font>
					</td>
				</tr>
			</table>


		<table width="70%"
				style="border-collapse: collapse; text-align: center;" id="tab1"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr>
					<td width="10%" align="center">
						行次
					</td>
					<td width="60%" align="center">
						项 目
					</td>
					<td align="center">
						金 额
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						1
					</td>
					<td>
						一、营业收入（2+18+27+32+33+34）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.yysr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）银行业务收入（3+10）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.yhywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.利息收入（4+5+6+7+8+9）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.lxsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						4
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）存放同业
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.cfyw' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）存放中央银行
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.cfzyyh' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						6
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）拆出资金
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.cczj' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）发放贷款及垫资
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.ffdkjdz' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）买入返售金融资产
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.mrfsjrzc' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.lxsrqt' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						10
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.手续费及佣金收入（11+12+13+14+15+16+17）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.sxfjyjsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）结算与清算手续费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.jsyqssxf' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）代理业务手续费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.dlywsxf' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						13
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）信用承诺手续费及佣金
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.xyclsxfjyj' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						14
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）银行卡手续费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.yhksxf' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）顾问和咨询费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.gwhzxf' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						16
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）托管及其他受托业务佣金
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.tgjqtstywyj' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.sxfjyjsrqt' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）证券业务收入（19+26）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.zjywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1.证券业务手续费及佣金收入（20+21+22+23+24+25）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.zjywsxfjyjsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						20
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）证券承销业务
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.zqcxyw' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）证券经纪业务
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.zqjjyw' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）受托客户资产管理业务
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.stkhzcglyw' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）代理兑付证券
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.dldfzq' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）代理保管证券
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.dlbgzq' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.zqywqt' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.其他证券业务收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.qtzqywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						27
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）已赚保费（28-30-31）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.yzbf' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						28
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.保险业务收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.bxywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						29
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：分保费收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.fbfsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						30
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.分出保费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.fcbf' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						31
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.提取未到期责任准备金
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.tqwdqzrzbj' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						32
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（四）其他金融业务收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.qtjrywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						33
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（五）汇兑收益（损失以“-”号填列）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.hdsy' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						34
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（六）其他业务收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.qtywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						35
					</td>
					<td>
						二、营业外收入（36+37+38+39+40+41+42）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.yywsr' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						36
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）非流动资产处置利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.fldzcczld' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						37
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form'
							property='a101020vo.fhbxzcjhld' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						38
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）债务重组利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.zwczld' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						39
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（四）政府补助利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.zfbzld' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						40
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（五）盘盈利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.pyld' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						41
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（六）捐赠利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.jzld' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						42
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（七）其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101020Form' property='a101020vo.yywsrqt' />
					</td>
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
		src="./nssb/wb395/wb395_A101020Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>