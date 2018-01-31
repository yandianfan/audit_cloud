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
	<title>视同销售和房地产开发企业特定业务纳税调整明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A105010Action.do" method="post"
		styleId="WB395A105010Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />
			<br />

			<table width="80%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: left;">
					<font size=4>A105010</font>
				</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>视同销售和房地产开发企业特定业务纳税调整明细表</b> </font>
				</td>
			</tr>
		   </table>


			<table width="80%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
		<tr>
			<td rowspan="2" align="center" width="10%">
				行次
			</td>
			<td rowspan="2" align="center">
				项 目
			</td>
			<td align="center" width="15%">
				税收金额
			</td>
			<td align="center" width="15%">
				纳税调整金额
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td align="center">
				2
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、视同销售（营业）收入（2+3+4+5+6+7+8+9+10）
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxssrssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxssrnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非货币性资产交换视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fhbxzcjhssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fhbxzcjhnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）用于市场推广或销售视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.sctghxsssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.sctghxsnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）用于交际应酬视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.jjycssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.jjycnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）用于职工奖励或福利视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zgjlhflssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zgjlhflnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）用于股息分配视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.gxfpssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.gxfpnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）用于对外捐赠视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwjzssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwjznstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）用于对外投资项目视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwtzssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwtznstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）提供劳务视同销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.tglwssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.tglwnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）其他
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxssrqtssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxssrqtnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				二、视同销售（营业）成本（12+13+14+15+16+17+18+19+20）
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非货币性资产交换视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fhbxzcxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fhbxzcxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）用于市场推广或销售视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.sctghxsxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.sctghxsxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）用于交际应酬视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.jjycxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.jjycxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）用于职工奖励或福利视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zgjlhflxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zgjlhflxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				16
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）用于股息分配视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.gxfpxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.gxfpxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				17
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）用于对外捐赠视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwjzxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwjzxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				18
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）用于对外投资项目视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwtzxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.dwtzxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）提供劳务视同销售成本
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.tglwxscbssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.tglwxscbnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）其他
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxscbqtssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.stxscbqtnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				21
			</td>
			<td>
				三、房地产开发企业特定业务计算的纳税调整额（22-26）
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fdcqytdywssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fdcqytdywnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）房地产企业销售未完工开发产品特定业务计算的纳税调整额（24-25）
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fdcqywwgcpssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fdcqywwgcpnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售未完工产品的收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.xswwgcpsrssje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				24
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.销售未完工产品预计毛利额
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.xswwgcpyjmlssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.xswwgcpyjmlnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				25
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.实际发生的营业税金及附加、土地增值税
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.sjyysjssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.sjyysjnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）房地产企业销售的未完工产品转完工产品特定业务计算的纳税调整额（28-29）
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fdcqywwgzwgcpssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.fdcqywwgzwgcpnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售未完工产品转完工产品确认的销售收入
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.xswwgzwgcpqrssje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				28
			</td>
			<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.转回的销售未完工产品预计毛利额
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zhxswwgcpyjmlssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zhxswwgcpyjmlnstzje' /></td>
		</tr>
		<tr>
			<td align="center">
				29
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.转回实际发生的营业税金及附加、土地增值税
			</td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zhsjyysjssje' /></td>
			<td align="right"><bean:write name='WB395A105010Form' property='vo.zhsjyysjnstzje' /></td>
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
		src="./nssb/wb395/wb395_A105010Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>