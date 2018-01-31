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
	<title>未按权责发生制确认收入纳税调整明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A105020Action.do" method="post"
		styleId="WB395A105020Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />
			<br />

			<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: left;">
					<font size=4>A105020</font>
				</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>未按权责发生制确认收入纳税调整明细表</b> </font>
				</td>
			</tr>
		   </table>

<table width="98%" style="border-collapse: collapse" align="center"
		id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
		<tr align="center">
			<td rowspan="3" width="10%">
				行次
			</td>
			<td rowspan="3">
				项 目
			</td>
			<td rowspan="2" width="10%">
				合同金额
				<br />
				（交易金额）
			</td>
			<td colspan="2" width="15%">
				账载金额
			</td>
			<td colspan="2" width="15%">
				税收金额
			</td>
			<td rowspan="2" width="10%">
				纳税调整金额
			</td>
		</tr>
		<tr align="center">
			<td>
				本年
			</td>
			<td>
				累计
			</td>
			<td>
				本年
			</td>
			<td>
				累计
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
				6（4-2）
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、跨期收取的租金、利息、特许权使用费收入（2+3+4）
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.kqsqhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.kqsqbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.kqsqljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.kqsqbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.kqsqljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.kqsqnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）租金
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zjhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zjbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zjljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zjbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zjljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zjnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）利息
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.lxhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.lxbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.lxljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.lxbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.lxljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.lxnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）特许权使用费
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.txqsyfhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.txqsyfbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.txqsyfljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.txqsyfbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.txqsyfljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.txqsyfnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				二、分期确认收入（6+7+8）
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqqrsrhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqqrsrbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqqrsrljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqqrsrbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqqrsrljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqqrsrnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）分期收款方式销售货物收入
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqskfshtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqskfsbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqskfsljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqskfsbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqskfsljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.fqskfsnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）持续时间超过12个月的建造合同收入
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.jzhtsrhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.jzhtsrbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.jzhtsrljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.jzhtsrbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.jzhtsrljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.jzhtsrnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他分期确认收入
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtfqqrsrhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtfqqrsrbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtfqqrsrljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtfqqrsrbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtfqqrsrljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtfqqrsrnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				三、政府补助递延收入（10+11+12）
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zfbzhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zfbzbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zfbzljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zfbzbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zfbzljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zfbznstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）与收益相关的政府补助
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.syxgzfbzhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.syxgzfbzbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.syxgzfbzljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.syxgzfbzbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.syxgzfbzljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.syxgzfbznstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）与资产相关的政府补助
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zcxgzfbzhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zcxgzfbzbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zcxgzfbzljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zcxgzfbzbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zcxgzfbzljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.zcxgzfbznstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qthtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				四、其他未按权责发生制确认收入
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtwazqqrhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtwazqqrbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtwazqqrljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtwazqqrbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtwazqqrljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.qtwazqqrnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				合计（1+5+9+13）
			</td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.hjhtje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.hjbnzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.hjljzzje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.hjbnssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.hjljssje' /></td>
			<td align="right"><bean:write name='WB395A105020Form' property='vo.hjnstzje' /></td>
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
		src="./nssb/wb395/wb395_A105020Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>