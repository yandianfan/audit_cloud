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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script language="javascript" type="text/javascript"
		src="./public/date/WdatePicker.js"></script>
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<title>融通资金表（表七）</title>
</head>
<body>
	<html:form action="/WB395glqyFb7Action.do"
		styleId="WB395GlqyForm" method="post">
		<div id="toolbar" align="right"></div>
		<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>融通资金表（表七）</b> </font>
					</td>
				</tr>
			</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t7" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000"  cellspacing="1"
				style="border-collapse: collapse">
				<tr>
					<td colspan="7">

						企业从其关联方接受的债权性投资与企业接受的权益性投资的比例:

					</td>
					<td colspan="2">

					</td>
					<td colspan="4" align="right">

						金额单位：人民币元（列至角分）

					</td>
				</tr>
				<tr>
					<td rowspan="7" width="4%" align="center">

						定期融资

					</td>
					<td rowspan="2" width="10%" align="center">

						境外关联方名称

					</td>
					<td rowspan="2" width="8%" align="center">

						国家（地区）

					</td>
					<td rowspan="2" width="8%" align="center">

						币种

					</td>
					<td colspan="2" width="10%" align="center">

						融资金额

					</td>
					<td rowspan="2" width="5%" align="center">

						利率

					</td>
					<td rowspan="2" width="14%" align="center">

						融资起止时间

					</td>
					<td rowspan="2" width="6%" align="center">

						应计利息支出

					</td>
					<td rowspan="2" width="7%" align="center">

						应计利息收入

					</td>
					<td rowspan="2" width="7%" align="center">

						担保方名称

					</td>
					<td rowspan="2" width="8%" align="center">

						担保费

					</td>
					<td rowspan="2" width="8%" align="center">

						担保费率

					</td>
				</tr>
				<tr>
					<td align="center">

						融入金额

					</td >
					<td align="center">

						融出金额

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb7vo.glfmc" id="fb7vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb7vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%"> 
							<bean:write name='WB395GlqyForm' property='fb7vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb7vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb7vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;" 
							name="fb7vo.rzrrje" id="fb7vo.rzrrje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb7vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb7vo.rzrcje" id="fb7vo.rzrcje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb7vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb7vo.ll" id="fb7vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb7vo.str_rzqssj"
							readonly="readonly" id="fb7vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb7vo.str_rzzzsj"
							id="fb7vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb7vo.yjlxzcje" id="fb7vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb7vo.yjlxsrje" id="fb7vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb7vo.dbfmc" id="fb7vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb7vo.dbfje" id="fb7vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb7vo.dbffl" id="fb7vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb7vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb72vo.glfmc" id="fb72vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb72vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb72vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb72vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb72vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.rzrrje" id="fb72vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.rzrcje" id="fb72vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.ll" id="fb72vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb72vo.str_rzqssj"
							readonly="readonly" id="fb72vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb72vo.str_rzzzsj"
							id="fb72vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.yjlxzcje" id="fb72vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.yjlxsrje" id="fb72vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb72vo.dbfmc" id="fb72vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.dbfje" id="fb72vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb72vo.dbffl" id="fb72vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb72vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb73vo.glfmc" id="fb73vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb73vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb73vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb73vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb73vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.rzrrje" id="fb73vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.rzrcje" id="fb73vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.ll" id="fb73vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb73vo.str_rzqssj"
							readonly="readonly" id="fb73vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb73vo.str_rzzzsj"
							id="fb73vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.yjlxzcje" id="fb73vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.yjlxsrje" id="fb73vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb73vo.dbfmc" id="fb73vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.dbfje" id="fb73vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb73vo.dbffl" id="fb73vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb73vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb74vo.glfmc" id="fb74vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb74vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb74vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb74vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb74vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.rzrrje" id="fb74vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.rzrcje" id="fb74vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.ll" id="fb74vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb74vo.str_rzqssj"
							readonly="readonly" id="fb74vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb74vo.str_rzzzsj"
							id="fb74vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.yjlxzcje" id="fb74vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.yjlxsrje" id="fb74vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb74vo.dbfmc" id="fb74vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.dbfje" id="fb74vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb74vo.dbffl" id="fb74vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb74vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb75vo.glfmc" id="fb75vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb75vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb75vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb75vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb75vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.rzrrje" id="fb75vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.rzrcje" id="fb75vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.ll" id="fb75vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb75vo.str_rzqssj"
							readonly="readonly" id="fb75vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb75vo.str_rzzzsj"
							id="fb75vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.yjlxzcje" id="fb75vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.yjlxsrje" id="fb75vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb75vo.dbfmc" id="fb75vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.dbfje" id="fb75vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb75vo.dbffl" id="fb75vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb75vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="2" align="center">

						其他合计
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb76vo.rzrrje" id="fb76vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb76vo.rzrrje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb76vo.yjlxzcje" id="fb76vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb76vo.yjlxzcje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb76vo.dbfje" id="fb76vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb76vo.dbfje'/>" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb77vo.rzrcje" id="fb77vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb77vo.rzrcje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb77vo.yjlxsrje" id="fb77vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb77vo.yjlxsrje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb77vo.dbfje" id="fb77vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb77vo.dbfje'/>" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						合计

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syqhj3" id="b7syqhj3" cal="true" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syqhj4" id="b7syqhj4" cal="true" />

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syqhj7" id="b7syqhj7" cal="true" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syqhj8" id="b7syqhj8" cal="true" />
					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syqhj10" id="b7syqhj10" cal="true" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td rowspan="5" align="center">

						定期融资

					</td>
					<td rowspan="2" align="center">

						境内关联方名称

					</td>
					<td rowspan="2" align="center">

						国家（地区）

					</td>
					<td rowspan="2" align="center">

						币种

					</td>
					<td colspan="2" align="center">

						融资金额

					</td>
					<td rowspan="2" align="center">

						利率

					</td>
					<td rowspan="2" align="center">

						融资起止时间

					</td>
					<td rowspan="2" align="center">

						应计利息支出

					</td>
					<td rowspan="2" align="center">

						应计利息收入

					</td>
					<td rowspan="2" align="center">

						担保方名称

					</td>
					<td rowspan="2" align="center">

						担保费

					</td>
					<td rowspan="2" align="center">

						担保费率

					</td>
				</tr>
				<tr>
					<td align="center">

						融入金额

					</td>
					<td align="center">

						融出金额

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb78vo.glfmc" id="fb78vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb78vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb78vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb78vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb78vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.rzrrje" id="fb78vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.rzrcje" id="fb78vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.ll" id="fb78vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb78vo.str_rzqssj"
							readonly="readonly" id="fb78vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb78vo.str_rzzzsj"
							id="fb78vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.yjlxzcje" id="fb78vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.yjlxsrje" id="fb78vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb78vo.dbfmc" id="fb78vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.dbfje" id="fb78vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb78vo.dbffl" id="fb78vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb78vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb79vo.glfmc" id="fb79vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb79vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb79vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb79vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb79vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.rzrrje" id="fb79vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.rzrcje" id="fb79vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.ll" id="fb79vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb79vo.str_rzqssj"
							readonly="readonly" id="fb79vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb79vo.str_rzzzsj"
							id="fb79vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.yjlxzcje" id="fb79vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.yjlxsrje" id="fb79vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb79vo.dbfmc" id="fb79vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.dbfje" id="fb79vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb79vo.dbffl" id="fb79vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb79vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb710vo.glfmc" id="fb710vo.glfmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.glfmc'/>" />
					</td>
					<td>

						<cssnj:codeSelect name="fb710vo.gjdqdm" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb710vo.gjdqdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<cssnj:codeSelect name="fb710vo.bzdm" prikey="DJZCZBBZ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb710vo.bzdm' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.rzrrje" id="fb710vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.rzrrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.rzrcje" id="fb710vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.rzrcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.ll" id="fb710vo.ll" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.ll'/>" />
					</td>
					<td nowrap>
						<input size="12" type="text" name="fb710vo.str_rzqssj"
							readonly="readonly" id="fb710vo.str_rzqssj"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.str_rzqssj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb710vo.str_rzzzsj"
							id="fb710vo.str_rzzzsj"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.str_rzzzsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.yjlxzcje" id="fb710vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.yjlxzcje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.yjlxsrje" id="fb710vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.yjlxsrje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb710vo.dbfmc" id="fb710vo.dbfmc"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.dbfmc'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.dbfje" id="fb710vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.dbfje'/>" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb710vo.dbffl" id="fb710vo.dbffl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb710vo.dbffl'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="2" align="center">

						其他合计
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb711vo.rzrrje" id="fb711vo.rzrrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb711vo.rzrrje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb711vo.yjlxzcje" id="fb711vo.yjlxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb711vo.yjlxzcje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb711vo.dbfje" id="fb711vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb711vo.dbfje'/>" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb712vo.rzrcje" id="fb712vo.rzrcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb712vo.rzrcje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb712vo.yjlxsrje" id="fb712vo.yjlxsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb712vo.yjlxsrje'/>" />
					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb712vo.dbfje" id="fb712vo.dbfje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb712vo.dbfje'/>" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						合计

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syhjje3" id="b7syhjje3" cal="true" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syhjje4" id="b7syhjje4" cal="true" />

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syhjje7" id="b7syhjje7" cal="true" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syhjje8" id="b7syhjje8" cal="true" />
					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7syhjje10" id="b7syhjje10" cal="true" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						总计

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7zhjje3" id="b7zhjje3" cal="true" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7zhjje4" id="b7zhjje4" cal="true" />

					</td>
					<td align="center">

						——

					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7zhjje7" id="b7zhjje7" cal="true" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7zhjje8" id="b7zhjje8" cal="true" />
					</td>
					<td align="center">

						——

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="b7zhjje10" id="b7zhjje10" cal="true" />
					</td>
					<td align="center">

						——

					</td>
				</tr>
				<tr>
					<td colspan="13">

						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：

					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> <html:hidden property="sbmxxh" styleId="sbmxxh"></html:hidden></span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="ssQs" styleId="ssQs"></html:hidden>
			<html:hidden property="ssQz" styleId="ssQz"></html:hidden>
			<html:hidden property="pzxh" styleId="pzxh"></html:hidden>
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
			
			<html:hidden property="autoSel" styleId="autoSel" />
		</div>
	</html:form>
</body>
</html:html>
<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb7.js?<%=System.currentTimeMillis()%>">
</script>