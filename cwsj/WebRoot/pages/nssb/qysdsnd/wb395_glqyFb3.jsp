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
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<title>购销表（表三）</title>
</head>
<body>
	<html:form action="/WB395glqyFb3Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>购销表（表三）</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t3" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr style="display: none">
					<td width="16%">
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
					<td width="12%">
						&nbsp;
						<br>
					</td>
				</tr>
				<tr>
					<td colspan="15">
						<strong></strong>
					</td>
					<td colspan="2" align="right">
						<strong>金额单位：人民币元（列至角分）</strong>
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>一、总购销</strong>
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<p align="center">
							材料（商品）购入
					</td>
					<td colspan="3">
						<p align="center">
							金额
					</td>
					<td colspan="7">
						<p align="center">
							商品（材料）销售
					</td>
					<td colspan="2">
						<p align="center">
							金额
					</td>
				</tr>
				<tr>
					<td colspan="5">
						购入总额1=2+5
					</td>
					<td colspan="3">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb3vo.grztje" id="fb3vo.grztje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.grztje'/>" />
					</td>
					<td colspan="7">
						销售总额8=9+12
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb3vo.xszeje" id="fb3vo.xszeje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xszeje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="6">
						<p align="center">
							其
						<p align="center">
							&nbsp;
						<p align="center">
							中
					</td>
					<td colspan="4">
						进口购入2=3+4
					</td>
					<td colspan="3">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb3vo.jkgrje" id="fb3vo.jkgrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.jkgrje'/>" />
					</td>
					<td colspan="2" rowspan="6">
						<p align="center">
							其
						<p align="center">
							&nbsp;
						<p align="center">
							中
					</td>
					<td colspan="5">
						出口销售9=10+11
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb3vo.jkxsje" id="fb3vo.jkxsje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.jkxsje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p align="center">
							其
						<p align="center">
							中
					</td>
					<td colspan="3">
						非关联进口3
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%" name="fb3vo.fgljkje"
							cal="true" id="fb3vo.fgljkje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.fgljkje'/>" />
					</td>
					<td rowspan="2">
						<p align="center">
							其
						<p align="center">
							中
					</td>
					<td colspan="4">
						非关联出口10
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb3vo.fglckje"
							cal="true" id="fb3vo.fglckje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.fglckje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						关联进口4
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%" name="fb3vo.gljkje"
							cal="true" id="fb3vo.gljkje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.gljkje'/>" />
					</td>
					<td colspan="4">
						关联出口11
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb3vo.glckje"
							cal="true" id="fb3vo.glckje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.glckje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="4">
						国内购入5=6+7
					</td>
					<td colspan="3">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb3vo.gngrje" id="fb3vo.gngrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.gngrje'/>" />
					</td>
					<td colspan="5">
						国内销售12=13+14
					</td>
					<td colspan="2">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb3vo.gnxsje" id="fb3vo.gnxsje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.gnxsje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p align="center">
							其
						<p align="center">
							中
					</td>
					<td colspan="3">
						非关联购入6
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%" name="fb3vo.fglgrje"
							cal="true" id="fb3vo.fglgrje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.fglgrje'/>" />
					</td>
					<td rowspan="2">
						<p align="center">
							其
						<p align="center">
							中
					</td>
					<td colspan="4">
						非关联销售13
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb3vo.fglxsje"
							cal="true" id="fb3vo.fglxsje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.fglxsje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="3">
						关联购入7
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%" name="fb3vo.glgrje"
							cal="true" id="fb3vo.glgrje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.glgrje'/>" />
					</td>
					<td colspan="4">
						关联销售14
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb3vo.glxsje"
							cal="true" id="fb3vo.glxsje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.glxsje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>二、按出口贸易方式分类的出口销售收入</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" rowspan="2">
						<p align="center">
							来料加工
					</td>
					<td>
						<p align="center">
							关联金额
					</td>
					<td colspan="3">
						<p align="center">
							非关联金额
					</td>
					<td colspan="5" rowspan="2">
						<p align="center">
							其他贸易
						<p align="center">
							方式
					</td>
					<td colspan="2">
						<p align="center">
							关联金额
					</td>
					<td colspan="3">
						<p align="center">
							非关联金额
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%" name="fb3vo.lljgglje"
							cal="true" id="fb3vo.lljgglje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.lljgglje'/>" />
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%" name="fb3vo.lljgfglje"
							cal="true" id="fb3vo.lljgfglje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.lljgfglje'/>" />
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%" name="fb3vo.qtmyglje"
							cal="true" id="fb3vo.qtmyglje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.qtmyglje'/>" />
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%" name="fb3vo.qtmyfglje"
							cal="true" id="fb3vo.qtmyfglje" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.qtmyfglje'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>三、占出口销售总额10%以上的境外销售对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center">
							境外关联方名称
					</td>
					<td colspan="3">
						<p align="center">
							国家(地区)
					</td>
					<td colspan="4">
						<p align="center">
							交易金额
					</td>
					<td colspan="3">
						<p align="center">
							定价方法
					</td>
					<td>
						<p align="center">
							备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwglfmc1" id="fb3vo.xsjwglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.xsjwglfgjdq1"
							id="fb3vo.xsjwglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.xsjwglfjyje1"
							cal="true" id="fb3vo.xsjwglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfjyje1'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb3vo.xsjwglfdjff1"
							styleId="fb3vo.xsjwglfdjff1" name="WB395GlqyForm">
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
							name="fb3vo.xsjwglfbz1" id="fb3vo.xsjwglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwglfmc2" id="fb3vo.xsjwglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.xsjwglfgjdq2" prikey="DJGJDQ"
							classStyle="inputneed" inTable="true" codewidth="29%"
							namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.xsjwglfjyje2"
							cal="true" id="fb3vo.xsjwglfjyje2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfjyje2'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb3vo.xsjwglfdjff2"
							styleId="fb3vo.xsjwglfdjff2" name="WB395GlqyForm">
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
							name="fb3vo.xsjwglfbz2" id="fb3vo.xsjwglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwglfmc3" id="fb3vo.xsjwglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.xsjwglfgjdq3"
							id="fb3vo.xsjwglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.xsjwglfjyje3"
							cal="true" id="fb3vo.xsjwglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfjyje3'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb3vo.xsjwglfdjff3"
							styleId="fb3vo.xsjwglfdjff3" name="WB395GlqyForm">
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
							name="fb3vo.xsjwglfbz3" id="fb3vo.xsjwglfbz3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfbz3'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center">
							境外非关联方名称
					</td>
					<td colspan="3">
						<p align="center">
							国家(地区)
					</td>
					<td colspan="4">
						<p align="center">
							交易金额
					</td>
					<td colspan="3">
						<p align="center">
							定价方法
					</td>
					<td>
						<p align="center">
							备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwfglfmc1" id="fb3vo.xsjwfglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.xsjwfglfgjdq1"
							id="fb3vo.xsjwfglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.xsjwfglfjyje1"
							cal="true" id="fb3vo.xsjwfglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfjyje1'/>" />
					</td>
					<td colspan="3">
						<p align="center">
							————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwfglfbz1" id="fb3vo.xsjwfglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwfglfmc2" id="fb3vo.xsjwfglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.xsjwfglfgjdq2"
							id="fb3vo.xsjwfglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.xsjwfglfjyje2"
							cal="true" id="fb3vo.xsjwfglfjyje2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfjyje2'/>" />
					</td>
					<td colspan="3">
						<p align="center">
							————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwfglfbz2" id="fb3vo.xsjwfglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwfglfmc3" id="fb3vo.xsjwfglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.xsjwfglfgjdq3"
							id="fb3vo.xsjwfglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.xsjwfglfjyje3"
							cal="true" id="fb3vo.xsjwfglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfjyje3'/>" />
					</td>
					<td colspan="3">
						<p align="center">
							————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.xsjwfglfbz3" id="fb3vo.xsjwfglfbz3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfbz3'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>四、占进口采购总额10%以上的境外采购对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center">
							境外关联方名称
					</td>
					<td colspan="3">
						<p align="center">
							国家(地区)
					</td>
					<td colspan="4">
						<p align="center">
							交易金额
					</td>
					<td colspan="3">
						<p align="center">
							定价方法
					</td>
					<td>
						<p align="center">
							备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwglfmc1" id="fb3vo.cgjwglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.cgjwglfgjdq1"
							id="fb3vo.cgjwglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.cgjwglfjyje1"
							cal="true" id="fb3vo.cgjwglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfjyje1'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb3vo.cgjwglfdjff1"
							styleId="fb3vo.cgjwglfdjff1" name="WB395GlqyForm">
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
							name="fb3vo.cgjwglfbz1" id="fb3vo.cgjwglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							class="srx" name="fb3vo.cgjwglfmc2" id="fb3vo.cgjwglfmc2"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.cgjwglfgjdq2"
							id="fb3vo.cgjwglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.cgjwglfjyje2"
							cal="true" id="fb3vo.cgjwglfjyje2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfjyje2'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb3vo.cgjwglfdjff2"
							styleId="fb3vo.cgjwglfdjff2" name="WB395GlqyForm">
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
							class="srx" name="fb3vo.cgjwglfbz2" id="fb3vo.cgjwglfbz2"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwglfmc3" id="fb3vo.cgjwglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.cgjwglfgjdq3"
							id="fb3vo.cgjwglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.cgjwglfjyje3"
							cal="true" id="fb3vo.cgjwglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfjyje3'/>" />
					</td>
					<td colspan="3">
						<html:select style="width: 100%;" property="fb3vo.cgjwglfdjff3"
							styleId="fb3vo.cgjwglfdjff3" name="WB395GlqyForm">
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
							name="fb3vo.cgjwglfbz33" id="fb3vo.cgjwglfbz33" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfbz33'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center">
							境外非关联方名称
					</td>
					<td colspan="3">
						<p align="center">
							国家(地区)
					</td>
					<td colspan="4">
						<p align="center">
							交易金额
					</td>
					<td colspan="3">
						<p align="center">
							定价方法
					</td>
					<td>
						<p align="center">
							备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwfglfmc1" id="fb3vo.cgjwfglfmc1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfmc1'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.cgjwfglfgjdq1"
							id="fb3vo.cgjwfglfgjdq1" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdq1' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.cgjwfglfjyje1"
							cal="true" id="fb3vo.cgjwfglfjyje1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfjyje1'/>" />
					</td>
					<td colspan="3">
						<p align="center">
							————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwfglfbz1" id="fb3vo.cgjwfglfbz1" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfbz1'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwfglfmc2" id="fb3vo.cgjwfglfmc2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfmc2'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.cgjwfglfgjdq2"
							id="fb3vo.cgjwfglfgjdq2" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdq2' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.cgjwfglfjyje2"
							cal="true" id="fb3vo.cgjwfglfjyje2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfjyje2'/>" />
					</td>
					<td colspan="3">
						<p align="center">
							————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwfglfbz2" id="fb3vo.cgjwfglfbz2" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfbz2'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwfglfmc3" id="fb3vo.cgjwfglfmc3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfmc3'/>" />
					</td>
					<td colspan="3">
						<cssnj:codeSelect name="fb3vo.cgjwfglfgjdq3"
							id="fb3vo.cgjwfglfgjdq3" prikey="DJGJDQ" classStyle="inputneed"
							inTable="true" codewidth="29%" namewidth="70%">
							<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdq3' />
						</cssnj:codeSelect>
					</td>
					<td colspan="4">
						<input type="text" style="width: 100%" name="fb3vo.cgjwfglfjyje3"
							cal="true" id="fb3vo.cgjwfglfjyje3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfjyje3'/>" />
					</td>
					<td colspan="3">
						<p align="center">
							————
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb3vo.cgjwfglfbz3" id="fb3vo.cgjwfglfbz3" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfbz3'/>" />
					</td>
				</tr>
				<tr>
					<td colspan="17">
						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：
					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> </span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="fb3vo.str_sfssqqsrq"
				styleId="fb3vo.str_sfssqqsrq"></html:hidden>
			<html:hidden property="fb3vo.str_sfssqzzrq"
				styleId="fb3vo.str_sfssqzzrq"></html:hidden>
			<html:hidden property="fb3vo.swglm" styleId="fb3vo.swglm"></html:hidden>
			<html:hidden property="fb3vo.pzxh" styleId="fb3vo.pzxh"></html:hidden>
			<input type="hidden" name="fb3vo.sbmxxh" id="fb3vo.sbmxxh" value="1">
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
			<html:hidden property="autoSel" styleId="autoSel" />
		</div>
	</html:form>
</body>
</html:html>
<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb3.js?<%=System.currentTimeMillis()%>">
</script>