<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page ContentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/cssnj.tld" prefix="cssnj"%>
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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<title>劳务表（表四)</title>
</head>
<body>
	<html:form action="/WB395glqyFb4Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>劳务表（表四)</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t4" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr>
					<td colspan="12" align="right">
						<strong>金额单位：人民币元（列至角分）</strong>
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<strong>一、总劳务交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						劳务收入
					</td>
					<td colspan="2" width="12%" align="center">
						金额
					</td>
					<td colspan="5" align="center">
						劳务支出
					</td>
					<td colspan="2" width="12%" align="center">
						金额
					</td>
				</tr>
				<tr>
					<td colspan="3">
						劳务收入1=2+5
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb4vo.lwsrje" id="fb4vo.lwsrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.lwsrje'/>" />
					</td>
					<td colspan="5">
						劳务支出8=9+12
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb4vo.lwzcje" id="fb4vo.lwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.lwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="6" width="16%" align="center">
						其中
					</td>
					<td colspan="2">
						境外劳务收入2=3+4
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb4vo.jwlwsrje" id="fb4vo.jwlwsrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwlwsrje'/>" />
					</td>
					<td colspan="2" rowspan="6" align="center">
						其中
					</td>
					<td colspan="3">
						境外劳务支出9=10+11
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb4vo.jwlwzcje" id="fb4vo.jwlwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwlwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="2" width="12%" align="center">
						其中
					</td>
					<td>
						非关联劳务收入3
					</td>
					<td colspan="2" width="12%">
						<input type="text" style="width: 100%" name="fb4vo.jwfgllwsrje"
							cal="true" id="fb4vo.jwfgllwsrje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwfgllwsrje'/>" />
					</td>
					<td rowspan="2" width="12%" align="center">
						其中
					</td>
					<td colspan="2" width="12%">
						非关联劳务支出10
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jwfgllwzcje"
							cal="true" id="fb4vo.jwfgllwzcje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwfgllwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						关联劳务收入4
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jwgllwsrje"
							cal="true" id="fb4vo.jwgllwsrje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwgllwsrje'/>" />
					</td>
					<td colspan="2">
						关联劳务支出11
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jwgllwzcje"
							cal="true" id="fb4vo.jwgllwzcje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwgllwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						境内劳务收入5=6+7
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb4vo.jnlwsrje" id="fb4vo.jnlwsrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnlwsrje'/>" />
					</td>
					<td colspan="3">
						境内劳务支出12=13+14
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb4vo.jnlwzcje" id="fb4vo.jnlwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnlwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="2" align="center">
						其中
					</td>
					<td>
						非关联劳务收入6
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jnfgllwsrje"
							cal="true" id="fb4vo.jnfgllwsrje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnfgllwsrje'/>" />
					</td>
					<td rowspan="2" align="center">
						其中
					</td>
					<td colspan="2">
						非关联劳务支出13
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jnfgllwzcje"
							cal="true" id="fb4vo.jnfgllwzcje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnfgllwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td>
						关联劳务收入7
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jngllwsrje"
							cal="true" id="fb4vo.jngllwsrje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jngllwsrje'/>" />
					</td>
					<td colspan="2">
						关联劳务支出14
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.jngllwzcje"
							cal="true" id="fb4vo.jngllwzcje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jngllwzcje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<strong>二、境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfmc1" id="fb4vo.srjwglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwglfgjdq1"
							id="fb4vo.srjwglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwglfjyje1"
							cal="true" id="fb4vo.srjwglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje1'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.srjwglfdjff1"
							styleId="fb4vo.srjwglfdjff1" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfbz1" id="fb4vo.srjwglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfmc2" id="fb4vo.srjwglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwglfgjdq2"
							id="fb4vo.srjwglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwglfjyje2"
							cal="true" id="fb4vo.srjwglfjyje2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje2'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.srjwglfdjff2"
							styleId="fb4vo.srjwglfdjff2" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfbz2" id="fb4vo.srjwglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfmc3" id="fb4vo.srjwglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwglfgjdq3"
							id="fb4vo.srjwglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwglfjyje3"
							cal="true" id="fb4vo.srjwglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje3'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.srjwglfdjff3"
							styleId="fb4vo.srjwglfdjff3" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfbz3" id="fb4vo.srjwglfbz3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz3'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfmc4" id="fb4vo.srjwglfmc4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc4'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwglfgjdq4"
							id="fb4vo.srjwglfgjdq4" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq4' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwglfjyje4"
							cal="true" id="fb4vo.srjwglfjyje4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje4'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.srjwglfdjff4"
							styleId="fb4vo.srjwglfdjff4" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwglfbz4" id="fb4vo.srjwglfbz4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz4'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外非关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfmc1" id="fb4vo.srjwfglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwfglfgjdq1"
							id="fb4vo.srjwfglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwfglfjyje1"
							id="fb4vo.srjwfglfjyje1" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje1'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfbz1" id="fb4vo.srjwfglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfmc2" id="fb4vo.srjwfglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwfglfgjdq2"
							id="fb4vo.srjwfglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwfglfjyje2"
							id="fb4vo.srjwfglfjyje2" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje2'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfbz2" id="fb4vo.srjwfglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfmc3" id="fb4vo.srjwfglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwfglfgjdq3"
							id="fb4vo.srjwfglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwfglfjyje3"
							cal="true" id="fb4vo.srjwfglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje3'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfbz3" id="fb4vo.srjwfglfbz3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz3'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfmc4" id="fb4vo.srjwfglfmc4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc4'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.srjwfglfgjdq4"
							id="fb4vo.srjwfglfgjdq4" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq4' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.srjwfglfjyje4"
							cal="true" id="fb4vo.srjwfglfjyje4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje4'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.srjwfglfbz4" id="fb4vo.srjwfglfbz4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz4'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<strong>三、境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfmc1" id="fb4vo.zcjwglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwglfgjdq1"
							id="fb4vo.zcjwglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwglfjyje1"
							cal="true" id="fb4vo.zcjwglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje1'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.zcjwglfdjff1"
							styleId="fb4vo.zcjwglfdjff1" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfbz1" id="fb4vo.zcjwglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfmc2" id="fb4vo.zcjwglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwglfgjdq2"
							id="fb4vo.zcjwglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwglfjyje2"
							id="fb4vo.zcjwglfjyje2" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje2'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.zcjwglfdjff2"
							styleId="fb4vo.zcjwglfdjff2" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfbz2" id="fb4vo.zcjwglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfmc3" id="fb4vo.zcjwglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwglfgjdq3"
							id="fb4vo.zcjwglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwglfjyje3"
							cal="true" id="fb4vo.zcjwglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje3'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.zcjwglfdjff3"
							styleId="fb4vo.zcjwglfdjff3" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfbz33" id="fb4vo.zcjwglfbz33" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz33'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfmc4" id="fb4vo.zcjwglfmc4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc4'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwglfgjdq4"
							id="fb4vo.zcjwglfgjdq4" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq4' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwglfjyje4"
							id="fb4vo.zcjwglfjyje4" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje4'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb4vo.zcjwglfdjff4"
							styleId="fb4vo.zcjwglfdjff4" name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="1">可比非受控价格法</html:option>
							<html:option value="2">再销售价格法</html:option>
							<html:option value="3">成本加成法</html:option>
							<html:option value="4">交易净利润法</html:option>
							<html:option value="5">利润分割法</html:option>
							<html:option value="6">其他方法</html:option>
						</html:select>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwglfbz34" id="fb4vo.zcjwglfbz34" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz34'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外非关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwfglfmc1" id="fb4vo.zcjwfglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwfglfgjdq1"
							id="fb4vo.zcjwfglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwfglfjyje1"
							cal="true" id="fb4vo.zcjwfglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfjyje1'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwfglfbz1" id="fb4vo.zcjwfglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwfglfmc2" id="fb4vo.zcjwfglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwfglfgjdq2"
							id="fb4vo.zcjwfglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwfglfjyje2"
							cal="true" id="fb4vo.zcjwfglfjyje2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfjyje2'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwfglfbz2" id="fb4vo.zcjwfglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwfglfmc3" id="fb4vo.zcjwfglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb4vo.zcjwfglfgjdq3"
							id="fb4vo.zcjwfglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb4vo.zcjwfglfjyje3"
							cal="true" id="fb4vo.zcjwfglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfjyje3'/>" />
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb4vo.zcjwfglfbz3" id="fb4vo.zcjwfglfbz3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfbz3'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="12">
						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：
					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> </span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="fb4vo.str_sfssqqsrq"
				styleId="fb4vo.str_sfssqqsrq"></html:hidden>
			<html:hidden property="fb4vo.str_sfssqzzrq"
				styleId="fb4vo.str_sfssqzzrq"></html:hidden>
			<html:hidden property="fb4vo.swglm" styleId="fb4vo.swglm"></html:hidden>
			<html:hidden property="fb4vo.pzxh" styleId="fb4vo.pzxh"></html:hidden>
			<input type="hidden" name="fb4vo.sbmxxh" id="fb4vo.sbmxxh" value="1">
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
			<html:hidden property="autoSel" styleId="autoSel" />
		</div>
	</html:form>
</body>
</html:html>
<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb4.js?<%=System.currentTimeMillis()%>">
</script>