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
	<title>一般企业收入明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A101010Action.do" method="post"
		styleId="WB395A101010Form">

		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv" align="center">
			<br />
			<br />

			<table width="80%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: left;">
						A101010
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>一般企业收入明细表</b> </font>
					</td>
				</tr>
			</table>

			<table width="80%"
				style="border-collapse: collapse; text-align: center;" id="tab1"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr height="20px">
					<td width="10%" align="center">
						行次
					</td>
					<td width="55%" align="center">
						项 目
					</td>
					<td align="center">
						金 额
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						1
					</td>
					<td>
						一、营业收入（2+9）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.yysw' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）主营业务收入（3+5+6+7+8）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.zyywsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售商品收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.xsspsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						4
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：非货币性资产交换收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.fhbzcjhsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.提供劳务收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.tgnwsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						6
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建造合同收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.jzhtsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.让渡资产使用权收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.rdzcsyqsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.zyywqt' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）其他业务收入（10+12+13+14+15）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.qtywsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						10
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售材料收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.xsclsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：非货币性资产交换收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form'
							property='a101010vo.fhbxzcjhsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.出租固定资产收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.czgdzcsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						13
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.出租无形资产收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.czwxzcsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						14
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.出租包装物和商品收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form'
							property='a101010vo.czbzwhspsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.qtywsrqt' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						16
					</td>
					<td>
						二、营业外收入（17+18+19+20+21+22+23+24+25+26）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.yywsr' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）非流动资产处置利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.fldzcczld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form'
							property='a101010vo.fhbxzchhld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）债务重组利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.zwczld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						20
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（四）政府补助利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.zfbzld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（五）盘盈利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.pyld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（六）捐赠利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.jzld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（七）罚没利得
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.fmld' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（八）确实无法偿付的应付款项
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form'
							property='a101010vo.qswfcfdyfkx' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（九）汇兑收益
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.hzsy' />
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十）其他
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A101010Form' property='a101010vo.yywsrqt' />
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
		src="./nssb/wb395/wb395_A101010Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>