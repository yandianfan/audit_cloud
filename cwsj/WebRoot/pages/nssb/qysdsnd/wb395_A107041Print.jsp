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
	<title>高新技术企业优惠情况及明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A107041Action.do" method="post"
		styleId="WB395A107041Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<br />
		<div style="width: 95%">
			<p align="left">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A107041
			</p>
		</div>
		<div id="mainDiv">
			<table width="85%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>高新技术企业优惠情况及明细表</b> </font>
					</td>
				</tr>
			</table>
			<table width="85%" align="center" style="border-collapse: collapse"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr>
					<td width="5%" style="text-align: center;">
						行 次
					</td>
					<td colspan="4" style="text-align: center;">
						基本信息
					</td>
				</tr>
				<tr>
					<td align="center" width="5%" style="text-align: center;">
						1
					</td>
					<td width="15%" style="text-align: center;">
						高新技术企业
						<br />
						证书编号
					</td>
					<td width="50%">
						<bean:write name='WB395A107041Form' property='vo.gxqyzsbh' />
					</td>
					<td width="15%" style="text-align: center;">
						高新技术企业
						<br />
						证书取得时间
					</td>
					<td width="15%" style="text-align: center;">
						<bean:write name='WB395A107041Form' property='vo.str_gxjsqyzsqdsj' />
					</td>
				</tr>
				<tr height="80px">
					<td align="center" style="text-align: center;">
						2
					</td>
					<td style="text-align: center;">
						产品（服务）属于
						<br />
						《国家重点支持的
						<br />
						高新技术领域》规
						<br />
						定的范围（填写具
						<br />
						体范围名称）
					</td>
					<td style="text-align: center;">
						<bean:write name='WB395A107041Form' property='vo.cpfwmc'
							filter="false" />
					</td>
					<td style="text-align: center;">
						是否发生重大安全、
						<br />
						质量事故
					</td>
					<td style="text-align: center;">
						<bean:write name='WB395A107041Form' property='vo.sffspsxw' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						3
					</td>
					<td style="text-align: center;">
						是否有环境等违
						<br />
						法、违规行为，
						<br />
						受到有关部门处
						<br />
						罚的
					</td>
					<td style="text-align: center;">
						<bean:write name='WB395A107041Form' property='vo.sffszdsg' />
					</td>
					<td style="text-align: center;">
						是否发生偷骗税行为
					</td>
					<td style="text-align: center;">
						<bean:write name='WB395A107041Form' property='vo.sfyhjwfxw' />
					</td>
				</tr>
			</table>
			<table width="85%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr>
					<td align="center" style="text-align: center;">
						4
					</td>
					<td colspan="3" align="center" style="text-align: center;">
						关键指标情况
					</td>
				</tr>
				<tr>
					<td width="5%" align="center" style="text-align: center;">
						5
					</td>
					<td width="15%" rowspan="5" style="text-align: center;">
						收入指标
					</td>
					<td width="65%">
						一、本年高新技术产品（服务）收入（6+7）
					</td>
					<td width="15%" style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bngxjssr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						6
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：产品（服务）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.cpfwsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 技术性收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.jsxsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						8
					</td>
					<td>
						二、本年企业总收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnqysr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						9
					</td>
					<td>
						三、本年高新技术产品（服务）收入占企业总收入的比例（5÷8）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bngxfwsrbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						10
					</td>
					<td rowspan="5" style="text-align: center;">
						人员指标
					</td>
					<td>
						四、本年具有大学专科以上学历的科技人员数
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnjydzxlrs' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						11
					</td>
					<td>
						五、本年研发人员数
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnyfrys' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						12
					</td>
					<td>
						六、本年职工总数
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnzgzs' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						13
					</td>
					<td>
						七、本年具有大学专科以上学历的科技人员占企业当年职工总数的比例 （10÷12）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnjyzczzsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						14
					</td>
					<td>
						八、本年研发人员占企业当年职工总数的比例（11÷12）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnyfryzzsb' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						15
					</td>
					<td rowspan="14" style="text-align: center;">
						研究开发费用指标
					</td>
					<td>
						九、本年归集的高新研发费用金额（16+25）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bngjyfje' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						16
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp; （一）内部研究开发投入（17+18+19+20+21+22+24）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.nbyjkftr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.人员人工
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.ryrg' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.直接投入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.zjtr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.折旧费用与长期费用摊销
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.zjfytx' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						20
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.设计费用
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.sjfy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.装备调试费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.zbtsf' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.无形资产摊销
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.wxzctx' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.其他费用
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.qtfy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：可计入研发费用的其他费用
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.qzjryfqt' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）委托外部研究开发费用（26+27）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.wtwbyffy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.境内的外部研发费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.jnwbyffy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						27
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.境外的外部研发费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.jwwbyffy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						28
					</td>
					<td>
						十、本年研发费用占销售（营业）收入比例
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.bnyffyzb' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						29
					</td>
					<td colspan="2">
						&nbsp;&nbsp;减免税金额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107041Form' property='vo.jmsje' />
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
		src="./nssb/wb395/wb395_A107041Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
