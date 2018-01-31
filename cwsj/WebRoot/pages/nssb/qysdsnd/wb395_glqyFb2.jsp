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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>关联交易汇总表(表二)</title>
</head>
<body onkeydown="enterTab()">
	<div id="toolbar" align="right"></div>
	<html:form action="/WB395glqyFb2Action.do" styleId="WB395GlqyForm"
		method="post">
		<div style="width: 100%" align="center">
			<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>关联交易汇总表(表二)</b> </font>
					</td>
				</tr>
			</table>
			<table id="t2" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr>
					<td colspan="10">
						1.本年度是否按要求准备同期资料：是
						<input type='checkbox' name='sall' id="sall"
							onclick="setCheckValue1()" />
						否
						<input type='checkbox' name='hh' id="hh"
							onclick="setCheckValue2()" />
						2．本年度免除准备同期资料
						<input type='checkbox' name='gg' id="gg"
							onclick="setCheckValue5()" />
						3．本年度是否签订成本分摊协议：是
						<input type='checkbox' name='ee' id="ee"
							onclick="setCheckValue3()" />
						否
						<input type='checkbox' name='uu' id="uu"
							onclick="setCheckValue4()" />
					</td>
				</tr>
				<tr>
					<td colspan="7">
						&nbsp;
					</td>
					<td colspan="3">
						<p align="right">
							金额单位：人民币元(列至角分)
						</p>
					</td>
				</tr>
				<tr>
					<td rowspan="3" align="center">
						交易类型
					</td>
					<td rowspan="2" align="center">
						交易总金额
					</td>
					<td colspan="2" align="center">
						关联交易
					</td>
					<td colspan="3" align="center">
						境外关联交易
					</td>
					<td colspan="3" align="center">
						境内关联交易
					</td>
				</tr>
				<tr>
					<td align="center">
						金额
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						金 额
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						金额
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						比例%
					</td>
				</tr>
				<tr>
					<td align="center">
						1
					</td>
					<td align="center">
						2=4+7
					</td>
					<td align="center">
						3=2/1
					</td>
					<td align="center">
						4
					</td>
					<td align="center">
						5=4/1
					</td>
					<td align="center">
						6=4/2
					</td>
					<td align="center">
						7
					</td>
					<td align="center">
						8=7/1
					</td>
					<td align="center">
						9=7/2
					</td>
				</tr>
				<tr>
					<td>
						材料(商品)购入
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb21vo.clspgr11jyzje"
							id="fb21vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%" name="fb21vo.clspgr12gljyje"
							id="fb21vo.clspgr12gljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb21vo.clspgr13gljybl" id="fb21vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb21vo.clspgr14jwgljyje"
							id="fb21vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb21vo.clspgr15jwgljybl1" id="fb21vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb21vo.clspgr16jwgljybl2" id="fb21vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb21vo.clspgr17jngljyje"
							id="fb21vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb21vo.clspgr18jngljybl1" id="fb21vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb21vo.clspgr19jngljybl2" id="fb21vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						商品(材料)销售
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb22vo.clspgr11jyzje"
							id="fb22vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb22vo.clspgr12gljyje" id="fb22vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb22vo.clspgr13gljybl" id="fb22vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb22vo.clspgr14jwgljyje"
							id="fb22vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb22vo.clspgr15jwgljybl1" id="fb22vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb22vo.clspgr16jwgljybl2" id="fb22vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb22vo.clspgr17jngljyje"
							id="fb22vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb22vo.clspgr18jngljybl1" id="fb22vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb22vo.clspgr19jngljybl2" id="fb22vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb22vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						劳务收入
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb23vo.clspgr11jyzje"
							id="fb23vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb23vo.clspgr12gljyje" id="fb23vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb23vo.clspgr13gljybl" id="fb23vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb23vo.clspgr14jwgljyje"
							id="fb23vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb23vo.clspgr15jwgljybl1" id="fb23vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb23vo.clspgr16jwgljybl2" id="fb23vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb23vo.clspgr17jngljyje"
							id="fb23vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb23vo.clspgr18jngljybl1" id="fb23vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb23vo.clspgr19jngljybl2" id="fb23vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb23vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						劳务支出
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb24vo.clspgr11jyzje"
							id="fb24vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb24vo.clspgr12gljyje" id="fb24vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb24vo.clspgr13gljybl" id="fb24vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb24vo.clspgr14jwgljyje"
							id="fb24vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb24vo.clspgr15jwgljybl1" id="fb24vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb24vo.clspgr16jwgljybl2" id="fb24vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb24vo.clspgr17jngljyje"
							id="fb24vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb24vo.clspgr18jngljybl1" id="fb24vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb24vo.clspgr19jngljybl2" id="fb24vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb24vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						受让无形资产
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb25vo.clspgr11jyzje"
							id="fb25vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb25vo.clspgr12gljyje" id="fb25vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb25vo.clspgr13gljybl" id="fb25vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb25vo.clspgr14jwgljyje"
							id="fb25vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb25vo.clspgr15jwgljybl1" id="fb25vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb25vo.clspgr16jwgljybl2" id="fb25vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb25vo.clspgr17jngljyje"
							id="fb25vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb25vo.clspgr18jngljybl1" id="fb25vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb25vo.clspgr19jngljybl2" id="fb25vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb25vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						出让无形资产
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb26vo.clspgr11jyzje"
							id="fb26vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb26vo.clspgr12gljyje" id="fb26vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb26vo.clspgr13gljybl" id="fb26vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb26vo.clspgr14jwgljyje"
							id="fb26vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb26vo.clspgr15jwgljybl1" id="fb26vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb26vo.clspgr16jwgljybl2" id="fb26vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb26vo.clspgr17jngljyje"
							id="fb26vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb26vo.clspgr18jngljybl1" id="fb26vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb26vo.clspgr19jngljybl2" id="fb26vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb26vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						受让固定资产
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb27vo.clspgr11jyzje"
							id="fb27vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb27vo.clspgr12gljyje" id="fb27vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb27vo.clspgr13gljybl" id="fb27vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb27vo.clspgr14jwgljyje"
							id="fb27vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb27vo.clspgr15jwgljybl1" id="fb27vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb27vo.clspgr16jwgljybl2" id="fb27vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb27vo.clspgr17jngljyje"
							id="fb27vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb27vo.clspgr18jngljybl1" id="fb27vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb27vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb27vo.clspgr19jngljybl2" id="fb27vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb21vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						出让固定资产
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb28vo.clspgr11jyzje"
							id="fb28vo.clspgr11jyzje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb28vo.clspgr12gljyje" id="fb28vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb28vo.clspgr13gljybl" id="fb28vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb28vo.clspgr14jwgljyje"
							id="fb28vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb28vo.clspgr15jwgljybl1" id="fb28vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb28vo.clspgr16jwgljybl2" id="fb28vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb28vo.clspgr17jngljyje"
							id="fb28vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb28vo.clspgr18jngljybl1" id="fb28vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb28vo.clspgr19jngljybl2" id="fb28vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb28vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						融资应计利息收入
					</td>
					<td align="center">
						————
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb29vo.clspgr12gljyje" id="fb29vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb29vo.clspgr12gljyje'/>" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb29vo.clspgr14jwgljyje"
							id="fb29vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb29vo.clspgr14jwgljyje'/>" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb29vo.clspgr16jwgljybl2" id="fb29vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb29vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb29vo.clspgr17jngljyje"
							id="fb29vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb29vo.clspgr17jngljyje'/>" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb29vo.clspgr19jngljybl2" id="fb29vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb29vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						融资应计利息支出
					</td>
					<td align="center">
						————
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb210vo.clspgr12gljyje" id="fb210vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb210vo.clspgr12gljyje'/>" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb210vo.clspgr14jwgljyje"
							id="fb210vo.clspgr14jwgljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb210vo.clspgr14jwgljyje'/>" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb210vo.clspgr16jwgljybl2" id="fb210vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb210vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="fb210vo.clspgr17jngljyje"
							id="fb210vo.clspgr17jngljyje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb210vo.clspgr17jngljyje'/>" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb210vo.clspgr19jngljybl2" id="fb210vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb210vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						其他
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb211vo.clspgr11jyzje" id="fb211vo.clspgr11jyzje"
							cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr11jyzje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb211vo.clspgr12gljyje" id="fb211vo.clspgr12gljyje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr12gljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb211vo.clspgr13gljybl" id="fb211vo.clspgr13gljybl"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr13gljybl'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb211vo.clspgr14jwgljyje" id="fb211vo.clspgr14jwgljyje"
							cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr14jwgljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb211vo.clspgr15jwgljybl1" id="fb211vo.clspgr15jwgljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr15jwgljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb211vo.clspgr16jwgljybl2" id="fb211vo.clspgr16jwgljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr16jwgljybl2'/>" />
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb211vo.clspgr17jngljyje" id="fb211vo.clspgr17jngljyje"
							cal="true" class="srx"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr17jngljyje'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb211vo.clspgr18jngljybl1" id="fb211vo.clspgr18jngljybl1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr18jngljybl1'/>" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;"
							name="fb211vo.clspgr19jngljybl2" id="fb211vo.clspgr19jngljybl2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb211vo.clspgr19jngljybl2'/>" />
					</td>
				</tr>
				<tr>
					<td>
						合计
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b5hjje1"
							id="b5hjje1" cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b5hjje2"
							id="b5hjje2" cal="true" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b5hjje4"
							id="b5hjje4" cal="true" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b5hjje6"
							id="b5hjje6" cal="true" />
					</td>
					<td>
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b5hjje7"
							id="b5hjje7" cal="true" />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<p align="center">
							<input readonly="readonly" tabindex="-1" class="read" type="text"
								style="width: 100%; text-align: right;" name="b5hjje10"
								id="b5hjje10" cal="true" />
					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> </span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="ssQs" styleId="ssQs"></html:hidden>
			<html:hidden property="ssQz" styleId="ssQz"></html:hidden>
			<html:hidden property="pzxh" styleId="pzxh"></html:hidden>
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
			<html:hidden property="fb211vo.sfayqzbtqzl"
				styleId="fb211vo.sfayqzbtqzl"></html:hidden>
			<html:hidden property="fb211vo.sfqdcbftxy"
				styleId="fb211vo.sfqdcbftxy"></html:hidden>
			<html:hidden property="fb211vo.mczbtqzl" styleId="fb211vo.mczbtqzl"></html:hidden>
			<html:hidden property="fb212vo.clspgr11jyzje" styleId="fb212vo.clspgr11jyzje"></html:hidden>
			<html:hidden property="fb212vo.clspgr12gljyje" styleId="fb212vo.clspgr12gljyje"></html:hidden>
			<html:hidden property="fb212vo.clspgr14jwgljyje" styleId="fb212vo.clspgr14jwgljyje"></html:hidden>
			<html:hidden property="fb212vo.clspgr16jwgljybl2" styleId="fb212vo.clspgr16jwgljybl2"></html:hidden>
			<html:hidden property="fb212vo.clspgr17jngljyje" styleId="fb212vo.clspgr17jngljyje"></html:hidden>
			<html:hidden property="fb212vo.clspgr19jngljybl2" styleId="fb212vo.clspgr19jngljybl2"></html:hidden>
		</div>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_glqyFb2.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
