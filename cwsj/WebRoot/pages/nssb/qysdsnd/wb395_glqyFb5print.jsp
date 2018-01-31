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
	<title>无形资产表（表五）</title>
</head>
<body>
	<html:form action="/WB395glqyFb5Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>无形资产表（表五）</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb5" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr style="display: none">
					<td width="3%">
					</td>
					<td width="9%">

					</td>
					<td width="9%">

					</td>
					<td width="9%">

					</td>
					<td width="8%">

					</td>
					<td width="9%">

					</td>
					<td width="9%">

					</td>
					<td width="9%">

					</td>
					<td width="8%">

					</td>
					<td width="9%">

					</td>
					<td width="9%">

					</td>
					<td width="9%">
					</td>
				</tr>
				<tr height="23">
					<td colspan="12" align="right">
						金额单位：人民币元（列至角分）
					</td>
				</tr>
				<tr height="23">
					<td colspan="2" rowspan="4" align="center">

						项目
					</td>
					<td colspan="5" align="center">

						受 让
					</td>
					<td colspan="5" align="center">

						出 让
					</td>
				</tr>
				<tr height="23">
					<td rowspan="2" align="center">

						总交易金额
					</td>
					<td colspan="2" align="center">
						从境外受让无形资产
					</td>
					<td colspan="2" align="center">

						从境内受让无形资产
					</td>
					<td rowspan="2" align="center">

						总交易金额
					</td>
					<td colspan="2" align="center">

						向境外出让无形资产
					</td>
					<td colspan="2" align="center">

						向境内出让无形资产
					</td>
				</tr>
				<tr height="23">
					<td align="center">

						关联交易金额
					</td>
					<td align="center">

						非关联交易金额
					</td>
					<td align="center">

						关联交易金额
					</td>
					<td align="center">

						非关联交易金额
					</td>
					<td align="center">

						关联交易金额
					</td>
					<td align="center">

						非关联交易金额
					</td>
					<td align="center">

						关联交易金额
					</td>
					<td align="center">

						非关联交易金额
					</td>
				</tr>
				<tr height="23">
					<td align="center">

						1=2+3+4+5
					</td>
					<td align="center">

						2
					</td>
					<td align="center">

						3
					</td>
					<td align="center">

						4
					</td>
					<td align="center">

						5
					</td>
					<td align="center">

						6=7+8+9+10
					</td>
					<td align="center">

						7
					</td>
					<td align="center">

						8
					</td>
					<td align="center">

						9
					</td>
					<td align="center">

						10
					</td>
				</tr>
				<tr height="23">
					<td rowspan="8" align="center">

						使用权
					</td>
					<td>
						土地使用权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						专利权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb52vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						非专利技术
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb53vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						商标权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb54vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						著作权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb55vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						其他
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb56vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.xmdm' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb57vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						合计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he11_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he21_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he31_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he41_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he51_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he61_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he71_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he81_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he91_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he101_je' />
					</td>
				</tr>
				<tr height="23">
					<td rowspan="7" align="center">
						所有权
					</td>
					<td>
						专利权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb58vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						非专利技术
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb59vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						商标权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb510vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						著作权
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb511vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						其他
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb512vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.xmdm' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.srzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jwsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jwsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jnsrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jnsrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.crzjyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jwcrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jwcrfgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jncrgljyje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb513vo.jncrfgljyje' />
					</td>
				</tr>
				<tr height="23">
					<td>
						合计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he12_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he22_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he32_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he42_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he52_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he62_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he72_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he82_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he92_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he102_je' />
					</td>
				</tr>
				<tr height="23">
					<td colspan="2">

						总计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he13_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he23_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he33_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he43_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he53_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he63_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he73_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he83_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he93_je' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb5he103_je' />
					</td>
				</tr>
				<tr height="23">
					<td colspan="12">

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
	src="./nssb/wb395/wb395_glqyFb5print.js?<%=System.currentTimeMillis()%>">
</script>