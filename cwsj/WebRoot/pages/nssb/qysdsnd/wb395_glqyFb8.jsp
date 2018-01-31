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
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>对外投资情况表（表八）</title>
</head>
<body>
	<html:form action="/WB395glqyFb8Action.do"
		styleId="WB395GlqyForm" method="post">
		<div id="toolbar" align="right"></div>
			<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>对外投资情况表（表八）</b> </font>
					</td>
				</tr>
			</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t8" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000"  cellspacing="1"
				style="border-collapse: collapse">
				<tr>
					<td colspan="6" align="right">

						<strong>金额单位：人民币元（列至角分）</strong>

					</td>
				</tr>
				<tr>
					<td colspan="6" valign="top">

						<strong>一、企业基本信息</strong>

					</td>
				</tr>
				<tr>
					<td colspan="1">

						企业名称

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qymc" id="fb8vo.qymc"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qymc'/>" />

					</td>
					<td colspan="1">

						纳税人识别号

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.nsrsbm" id="fb8vo.nsrsbm"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.nsrsbm'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="1">

						注册地址

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.zcdz" id="fb8vo.zcdz"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zcdz'/>" />

					</td>
					<td colspan="1">

						法定代表人

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.frdbmc" id="fb8vo.frdbmc"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.frdbmc'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>二、被投资外国企业基本信息</strong>

					</td>
				</tr>
				<tr>
					<td>

						企业名称

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqymc" id="fb8vo.btzqymc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqymc'/>" />

					</td>
					<td colspan="1">

						纳税人识别号

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqynsrsbm" id="fb8vo.btzqynsrsbm" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqynsrsbm'/>" />

					</td>
				</tr>
				<tr>
					<td>

						注册地址

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyzcdz" id="fb8vo.btzqyzcdz" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyzcdz'/>" />

					</td>
					<td colspan="1">

						法定代表人

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyfrmc" id="fb8vo.btzqyfrmc" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyfrmc'/>" />

					</td>
				</tr>
				<tr>
					<td>

						主要经营地址

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyjydz" id="fb8vo.btzqyjydz" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyjydz'/>" />

					</td>
					<td colspan="1">

						成立时间

					</td>
					<td colspan="2" style="background-color: #CAD4EF">
						<input size="12" type="text" name="fb8vo.str_btzqyclsj"
							readonly="readonly" id="fb8vo.str_btzqyclsj" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqyclsj'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
				</tr>
				<tr>
					<td>

						法定代表人居住地址

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyfrzz" id="fb8vo.btzqyfrzz" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyfrzz'/>" />

					</td>
					<td colspan="1">

						记账本位货币

					</td>
					<td colspan="2">

						<cssnj:codeSelect name="fb8vo.btzqyhbdm" prikey="DJZCZBBZ"
							id="fb8vo.btzqyhbdm" classStyle="inputneed" inTable="true"
							codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb8vo.btzqyhbdm' />
						</cssnj:codeSelect>
					</td>
				</tr>
				<tr>
					<td rowspan="2" >

						主营业务范围

					</td>
					<td colspan="2" rowspan="2" style="background-color: #CAD4EF">

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyywfw" id="fb8vo.btzqyywfw" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyywfw'/>" />

					</td>
					<td colspan="1">

						对人民币汇率

					</td>
					<td colspan="2">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.btzqyhl" id="fb8vo.btzqyhl" cal="true"  class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyhl'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="1">

						纳税年度起止

					</td>
					<td colspan="2">
						<input size="12" type="text" name="fb8vo.btzqynsqsnd" cal="true"
							format="0" maxlength="4" id="fb8vo.btzqynsqsnd" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqynsqsnd'></bean:write>" />
						-
						<input size="12" type="text" name="fb8vo.btzqynszznd" cal="true"
							format="0" maxlength="4" id="fb8vo.btzqynszznd" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqynszznd'></bean:write>" />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						被投资外国企业总股份信息

					</td>
					<td colspan="4" align="center">

						企业持有被投资外国企业股份信息

					</td>
				</tr>
				<tr>
					<td align="center">

						总股份量

					</td>
					<td align="center">

						起止时间

					</td>
					<td align="center">

						股份种类

					</td>
					<td align="center">

						起止时间

					</td>
					<td align="center">

						持股数量

					</td>
					<td align="center">

						持股比例%

					</td>
				</tr>
				<tr>
					<td align="center">

						1

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

						6=5/1

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;" class="srx"
							name="fb8vo.btzqyzgfsl1" id="fb8vo.btzqyzgfsl1" cal="true"
							format="0"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyzgfsl1'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_btzqygfqssj1"
							readonly="readonly" id="fb8vo.str_btzqygfqssj1"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqygfqssj1'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_btzqygfzzsj1" 
							id="fb8vo.str_btzqygfzzsj1"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqygfzzsj1'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qycygfzl1" id="fb8vo.qycygfzl1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfzl1'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_qycygfqssj1"
							readonly="readonly" id="fb8vo.str_qycygfqssj1"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_qycygfqssj1'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_qycygfzzsj1"
							id="fb8vo.str_qycygfzzsj1"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_qycygfzzsj1'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;" class="srx"
							name="fb8vo.qycygfsl1" id="fb8vo.qycygfsl1" cal="true" format="0"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfsl1'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qycygfbl1" id="fb8vo.qycygfbl1" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfbl1'/>" />

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyzgfsl2" id="fb8vo.btzqyzgfsl2" cal="true"
							format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyzgfsl2'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_btzqygfqssj2"
							readonly="readonly" id="fb8vo.str_btzqygfqssj2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqygfqssj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_btzqygfzzsj2"
							id="fb8vo.str_btzqygfzzsj2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqygfzzsj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qycygfzl2" id="fb8vo.qycygfzl2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfzl2'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_qycygfqssj2"
							readonly="readonly" id="fb8vo.str_qycygfqssj2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_qycygfqssj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_qycygfzzsj2"
							id="fb8vo.str_qycygfzzsj2"
							value="<bean:write name='WB395GlqyForm'  property='fb8vo.str_qycygfzzsj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;" class="srx"
							name="fb8vo.qycygfsl2" id="fb8vo.qycygfsl2" cal="true" format="0"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfsl2'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qycygfbl2" id="fb8vo.qycygfbl2" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfbl2'/>" />

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.btzqyzgfsl3" id="fb8vo.btzqyzgfsl3" cal="true"
							format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.btzqyzgfsl3'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_btzqygfqssj3"
							readonly="readonly" id="fb8vo.str_btzqygfqssj3"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqygfqssj3'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_btzqygfzzsj3"
							id="fb8vo.str_btzqygfzzsj3"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_btzqygfzzsj3'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qycygfzl3" id="fb8vo.qycygfzl3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfzl3'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_qycygfqssj3"
							readonly="readonly" id="fb8vo.str_qycygfqssj3"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_qycygfqssj3'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_qycygfzzsj3"
							id="fb8vo.str_qycygfzzsj3"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_qycygfzzsj3'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;" class="srx"
							name="fb8vo.qycygfsl3" id="fb8vo.qycygfsl3" cal="true" format="0"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfsl3'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.qycygfbl3" id="fb8vo.qycygfbl3" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qycygfbl3'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>三、被投资外国企业是否在国家税务总局指定的非低税率国家（地区）</strong>是
						<input type='checkbox' name='sall'  id='sall' onclick="setCheckValue1()" />
						否
						<input type='checkbox' name='hh'  id='hh' onclick="setCheckValue2()" />
						<strong></strong>

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>四、被投资外国企业年度利润是否不高于500万元人民币</strong>是
						<input type='checkbox' name='ee'   id='ee'  onclick="setCheckValue3()" />
						否
						<input type='checkbox' name='uu'   id='uu' onclick="setCheckValue4()" />
						<strong></strong>

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>五、被投资外国企业年度企业所得税税负信息</strong>

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						应纳税所得额

					</td>
					<td align="center">

						实际缴纳所得税

					</td>
					<td align="center">

						税后利润额

					</td>
					<td align="center">

						实际税负比率%

					</td>
					<td align="center">

						被投资企业法定所得税率

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						7

					</td>
					<td align="center">

						8

					</td>
					<td align="center">

						9=7-8

					</td>
					<td align="center">

						10=8/7

					</td>
					<td align="center">

						11

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.ynssdeje" id="fb8vo.ynssdeje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.ynssdeje'/>" />
					</td>
					<td align="center">
						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.sjjnsdsje" id="fb8vo.sjjnsdsje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.sjjnsdsje'/>" />
					</td>
					<td align="center">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb8vo.shlreje"
							cal="true" id="fb8vo.shlreje"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.shlreje'/>" />
					</td>
					<td align="center">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="fb8vo.sjsfbl"
							id="fb8vo.sjsfbl" cal="true" format="2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.sjsfbl'/>" />
					</td>
					<td align="center">
						<input type="text" style="width: 100%; text-align: left;" class="srx"
							name="fb8vo.fdsdssl" id="fb8vo.fdsdssl" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.fdsdssl'/>" />
					</td>

				</tr>
				<tr>
					<td colspan="6">

						<strong>六、被投资外国企业全部股东信息</strong>

					</td>
				</tr>
				<tr>
					<td align="center">

						股东名称

					</td>
					<td align="center">

						国家（地区）

					</td>
					<td align="center">

						纳税人识别号

					</td>
					<td align="center">

						持股种类

					</td>
					<td align="center">

						起止时间

					</td>
					<td align="center">

						占全部股份比例%

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdmc1" id="fb8vo.gdmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdmc1'/>" />

					</td>
					<td>
						<cssnj:codeSelect name="fb8vo.gdgjdqdm1"  id="fb8vo.gdgjdqdm1" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm1' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdnsrsbm1" id="fb8vo.gdnsrsbm1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm1'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdcgzl1" id="fb8vo.gdcgzl1" format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl1'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_gdqssj1"
							readonly="readonly" id="fb8vo.str_gdqssj1"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdqssj1'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_gdzzsj1"
							id="fb8vo.str_gdzzsj1" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdzzsj1'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;" class="srx"
							name="fb8vo.gdzgfbl1" id="fb8vo.gdzgfbl1" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl1'/>" />

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdmc2" id="fb8vo.gdmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdmc2'/>" />

					</td>
					<td>
						<cssnj:codeSelect name="fb8vo.gdgjdqdm2"  id="fb8vo.gdgjdqdm2" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm2' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdnsrsbm2" id="fb8vo.gdnsrsbm2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm2'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdcgzl2" id="fb8vo.gdcgzl2" format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl2'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_gdqssj2"
							readonly="readonly" id="fb8vo.str_gdqssj2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdqssj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_gdzzsj2"
							id="fb8vo.str_gdzzsj2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdzzsj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdzgfbl2" id="fb8vo.gdzgfbl2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl2'/>" />

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdmc3" id="fb8vo.gdmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdmc3'/>" />

					</td>
					<td>

						<cssnj:codeSelect name="fb8vo.gdgjdqdm3"   id="fb8vo.gdgjdqdm3" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm3' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdnsrsbm3" id="fb8vo.gdnsrsbm3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm3'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdcgzl3" id="fb8vo.gdcgzl3" format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl3'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_gdqssj3"
							readonly="readonly" id="fb8vo.str_gdqssj3"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdqssj3'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_gdzzsj2"
							id="fb8vo.str_gdzzsj2"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdzzsj2'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdzgfbl3" id="fb8vo.gdzgfbl3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl3'/>" />

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdmc4" id="fb8vo.gdmc4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdmc4'/>" />

					</td>
					<td>

						<cssnj:codeSelect name="fb8vo.gdgjdqdm4"   id="fb8vo.gdgjdqdm4"  prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm4' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdnsrsbm4" id="fb8vo.gdnsrsbm4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm4'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdcgzl4" id="fb8vo.gdcgzl4" format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl4'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_gdqssj4"
							readonly="readonly" id="fb8vo.str_gdqssj4"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdqssj4'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_gdzzsj4"
							id="fb8vo.str_gdzzsj4"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdzzsj4'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdzgfbl4" id="fb8vo.gdzgfbl4" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl4'/>" />

					</td>
				</tr>
				<tr>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdmc5" id="fb8vo.gdmc5" class="srx" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdmc5'/>" />

					</td>
					<td>
						<cssnj:codeSelect name="fb8vo.gdgjdqdm5"  id="fb8vo.gdgjdqdm5" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm5' />
						</cssnj:codeSelect>
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdnsrsbm5" id="fb8vo.gdnsrsbm5" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm5'/>" />

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdcgzl5" id="fb8vo.gdcgzl5" format="0" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl5'/>" />

					</td>
					<td nowrap>
						<input size="12" type="text" name="fb8vo.str_gdqssj5"
							readonly="readonly" id="fb8vo.str_gdqssj5"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdqssj5'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						-
						<input size="12" type="text" name="fb8vo.str_gdzzsj5"
							id="fb8vo.str_gdzzsj5"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.str_gdzzsj5'></bean:write>"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: left;"
							name="fb8vo.gdzgfbl5" id="fb8vo.gdzgfbl5" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl5'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="3">

						<strong>七、被投资外国企业年度损益表</strong>

					</td>
					<td colspan="3">

						<strong>八、被投资外国企业资产负债表</strong>

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						项目

					</td>
					<td colspan="1" align="center">

						金额

					</td>
					<td colspan="2" align="center">

						项目

					</td>
					<td colspan="1" align="center">

						金额

					</td>
				</tr>
				<tr>
					<td colspan="2">

						收入总额

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.srzeje" id="fb8vo.srzeje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.srzeje'/>" />

					</td>
					<td colspan="2">

						现金

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.xjje" id="fb8vo.xjje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.xjje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						成本

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.cbje" id="fb8vo.cbje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.cbje'/>" />

					</td>
					<td colspan="2">

						应收账款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.yszkje" id="fb8vo.yszkje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.yszkje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						毛利润

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.mlrje" id="fb8vo.mlrje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.mlrje'/>" />

					</td>
					<td colspan="2">

						存货

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.chje" id="fb8vo.chje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.chje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						股息、红利收入

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.gxhlsrje" id="fb8vo.gxhlsrje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gxhlsrje'/>" />

					</td>
					<td colspan="2">

						其它流动资产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.qtldzcje" id="fb8vo.qtldzcje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtldzcje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						利息收入

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.lxsrje" id="fb8vo.lxsrje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.lxsrje'/>" />

					</td>
					<td colspan="2">

						向股东或其它关联方贷款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.xgdhqtglfdkje" id="fb8vo.xgdhqtglfdkje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.xgdhqtglfdkje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						租金、特许权使用费收入

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.zjtxqsyfsrje" id="fb8vo.zjtxqsyfsrje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zjtxqsyfsrje'/>" />

					</td>
					<td colspan="2">

						对附属机构投资

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.dfsjgtzje" id="fb8vo.dfsjgtzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.dfsjgtzje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						财产转让收益（损失）

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.cczrsyje" id="fb8vo.cczrsyje" cal="true"  
							value="<bean:write name='WB395GlqyForm' property='fb8vo.cczrsyje'/>" />

					</td>
					<td colspan="2">

						其它投资

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.qttzje" id="fb8vo.qttzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qttzje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						其他收入

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.qtsrje" id="fb8vo.qtsrje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtsrje'/>" />

					</td>
					<td colspan="2">

						建筑物及其它可折旧财产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.zjccje" id="fb8vo.zjccje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zjccje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						扣减补偿支出

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.kjbczcje" id="fb8vo.kjbczcje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.kjbczcje'/>" />

					</td>
					<td colspan="2">

						土地

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.tdje" id="fb8vo.tdje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.tdje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						租金、特许权使用总支出

					</td>
					<td colspan="1" valign="top">
						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.zztxqsyfzcje" id="fb8vo.zztxqsyfzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zztxqsyfzcje'/>" />

					</td>
					<td colspan="2">

						无形资产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.wxzcje" id="fb8vo.wxzcje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.wxzcje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						利息支出

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.lxzcje" id="fb8vo.lxzcje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.lxzcje'/>" />

					</td>
					<td colspan="2">

						其它财产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.qtccje" id="fb8vo.qtccje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtccje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						折旧

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.zzje" id="fb8vo.zzje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zzje'/>" />

					</td>
					<td colspan="2">

						总资产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.zzcje" id="fb8vo.zzcje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zzcje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						税金

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.sjje" id="fb8vo.sjje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.sjje'/>" />

					</td>
					<td colspan="2">

						应付账款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.yfzkje" id="fb8vo.yfzkje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.yfzkje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						其它扣除

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.qtkcje" id="fb8vo.qtkcje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtkcje'/>" />

					</td>
					<td colspan="2">

						其它流动负债

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.qtldfzje" id="fb8vo.qtldfzje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtldfzje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						年度利润总额

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"  class="srx"
							name="fb8vo.ndlrzeje" id="fb8vo.ndlrzeje" cal="true" negative="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.ndlrzeje'/>" />

					</td>
					<td colspan="2">

						股东或其它关联方贷款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.gdhqtglfdkje" id="fb8vo.gdhqtglfdkje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdhqtglfdkje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						其它负债

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.qtfzje" id="fb8vo.qtfzje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtfzje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						股本

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.gbje" id="fb8vo.gbje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gbje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						未分配利润

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;" class="srx"
							name="fb8vo.wfplrje" id="fb8vo.wfplrje" cal="true" negative="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.wfplrje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						总负债

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.zfzje" id="fb8vo.zfzje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zfzje'/>" />

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>九、企业从被投资外国企业分得的股息情况</strong>

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						本年度应分配股息额

					</td>
					<td colspan="2" align="center">

						本年度实际分配股息额

					</td>
					<td colspan="2" align="center">

						比例%

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						12

					</td>
					<td colspan="2" align="center">

						13

					</td>
					<td colspan="2" align="center">

						14

					</td>
				</tr>
				<tr>
					<td colspan="2" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.yfpgxeje" id="fb8vo.yfpgxeje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.yfpgxeje'/>" />

					</td>
					<td colspan="2" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.sjfpgxeje" id="fb8vo.sjfpgxeje" cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.sjfpgxeje'/>" />

					</td>
					<td colspan="2" valign="top">

						<input type="text" style="width: 100%; text-align: right;"
							name="fb8vo.bl" id="fb8vo.bl" cal="true" class="read"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.bl'/>" />

					</td>
				</tr>

				<tr>
					<td colspan="6" valign="top">

						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：

					</td>

				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> <html:hidden
					property="fb8vo.sbmxxh" styleId="fb8vo.sbmxxh"></html:hidden> </span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="fb8vo.str_sfssqqsrq"
				styleId="fb8vo.str_sfssqqsrq"></html:hidden>
			<html:hidden property="fb8vo.str_sfssqzzrq"
				styleId="fb8vo.str_sfssqzzrq"></html:hidden>
			<html:hidden property="fb8vo.swglm" styleId="fb8vo.swglm"></html:hidden>
			<html:hidden property="fb8vo.pzxh" styleId="fb8vo.pzxh"></html:hidden>
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
			<html:hidden property="fb8vo.zfdslgjbj" styleId="fb8vo.zfdslgjbj"></html:hidden>
			<html:hidden property="fb8vo.nlrgy5bj" styleId="fb8vo.nlrgy5bj"></html:hidden>			
		</div>
	</html:form>

</body>
</html:html>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb8.js?<%=System.currentTimeMillis()%>">
</script>