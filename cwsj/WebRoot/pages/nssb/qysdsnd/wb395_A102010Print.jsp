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
	<title>一般企业成本支出明细表</title>
</head>

<body>
	<html:form action="/WB395A102010Action.do" styleId="WB395A102010Form">

		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
		<br />
			<table width="70%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: left;">
						<font size=2>A102010</font>
					</td>
				</tr>
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>一般企业成本支出明细表</b> </font>
					</td>
				</tr>
			</table>
            <br />
            
			<table width="70%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
				id="tab1">
				<tr height="20px">
					<td width="10%" align="center">
						行次
					</td>
					<td width="60%" align="center">
						项 &nbsp;&nbsp;&nbsp;&nbsp;目
					</td>
					<td align="center">
						金 额
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						1
					</td>
					<td>
						一、营业成本（2+9）
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.yycb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）主营业务成本（3+5+6+7+8）
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.zyywcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售商品成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.xsspcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						4
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:非货币性资产交换成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form'
							property='a102010VO.zyywcbfhbzcjhcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.提供劳务成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.tglwcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						6
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建造合同成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.jzhtcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.让渡资产使用权成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.rdzcsyqcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.zyywcbqt' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）其他业务成本（10+12+13+14+15）
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.qtywcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						10
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.材料销售成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.clxscb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:非货币性资产交换成本
					</td>
					<td align="right"> 
						<bean:write name='WB395A102010Form'
							property='a102010VO.qtywcbfhbzcjhcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.出租固定资产成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.czgdzccb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						13
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.出租无形资产成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.czwxzccb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						14
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.包装物出租成本
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.bzwczcb' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.qtywcbqt' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						16
					</td>
					<td>
						二、营业外支出（17+18+19+20+21+22+23+24+25+26）
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.yywzc' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非流动资产处置损失
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.fldzcczss' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换损失
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.fhbzcjhss' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）债务重组损失
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.zwczss' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						20
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）非常损失
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.fcss' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）捐赠支出
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.jzzc' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）赞助支出
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.zzzc' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）罚没支出
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.fmzc' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）坏账损失
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.hzss' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）无法收回的债券股权投资损失
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form'
							property='a102010VO.wfhszqgqtzss' />
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十）其他
					</td>
					<td align="right">
						<bean:write name='WB395A102010Form' property='a102010VO.yywzcqt' />
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
		src="./nssb/wb395/wb395_A102010Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>