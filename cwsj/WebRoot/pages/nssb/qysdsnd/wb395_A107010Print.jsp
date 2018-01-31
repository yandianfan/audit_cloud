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
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>免税、减计收入及加计扣除优惠明细表</title>
</head>
<body onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<div style="width: 95%">
	      <br/>
			<p align="left">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
				A107010
			</p>
		</div>
	<html:form action="/WB395A107010Action.do" styleId="WB395A107010Form"
		method="post">
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div align="center">
							<font size=4><B>免税、减计收入及加计扣除优惠明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<table id="tab1" width="80%" style="border-collapse: collapse"
				align="center" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr align="center">
					<td width="10%" style="text-align: center;">
						行 次
					</td>
					<td width="65%" style="text-align: center;">
						项 目
					</td>
					<td width="25%" style="text-align: center;">
						金 额
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						1
					</td>
					<td>
						一、免税收入（2+3+4+5）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.mssrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）国债利息收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.gzlxsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）符合条件的居民企业之间的股息、红利等权益性投资收益（填写A107011）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.qyxtzsysrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						4
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）符合条件的非营利组织的收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.fylzzsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（四）其他专项优惠（6+7+8+9+10+11+12+13+14）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.mssrqtzxyhhjje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						6
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.中国清洁发展机制基金取得的收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.zgqjfzjzjesrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.证券投资基金从证券市场取得的收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.zqtzjjscqdsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.证券投资基金投资者获得的分配收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.zqtzjjtzzfpsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.证券投资基金管理人运用基金买卖股票、债券的差价收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.zqtzjjcjsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						10
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.取得的地方政府债券利息所得或收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.dfzfzqsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.受灾地区企业取得的救灾和灾后恢复重建款项等收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.szdqqykxsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.中国期货保证金监控中心有限责任公司取得的银行存款利息等收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.yhcklxsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						13
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8.中国保险保障基金有限责任公司取得的保险保障基金等收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.bxbzjjsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						14
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.其他
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.mssrzxyhqtsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						15
					</td>
					<td>
						二、减计收入（16+17）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.jjsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						16
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）综合利用资源生产产品取得的收入（填写A107012）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.zhlyzyscqdsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）其他专项优惠（18+19+20）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.jjsrqtzxyhhjje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.金融、保险等机构取得的涉农利息、保费收入（填写A107013）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.snlxbfsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.取得的中国铁路建设债券利息收入
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.zgtljszqlxsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						20
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.其他
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.jjsrzxyhqtsrje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						21
					</td>
					<td>
						三、加计扣除（22+23+26）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.jjkcje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）开发新技术、新产品、新工艺发生的研究开发费用加计扣除（填写A107014）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.yjkffyjjkcje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）安置残疾人员及国家鼓励安置的其他就业人员所支付的工资加计扣除（24+25）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.azryzfgzjjkcje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.支付残疾人员工资加计扣除
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.cjrygzjjkcje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.国家鼓励的其他就业人员工资加计扣除
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.qtrygzjjkcje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）其他专项优惠
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.qtzxyhjjkcje' name='WB395A107010Form' />
					</td>
				</tr>
				<tr>
					<td style="text-align: center;">
						27
					</td>
					<td>
						合计（1+15+21）
					</td>
					<td style="text-align: right;">
						<bean:write property='vo.hjje' name='WB395A107010Form' />
					</td>
				</tr>
			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
	<script type="text/javascript" src="./nssb/wb395/wb395_A107010Print.js"></script>
</body>
</html:html>