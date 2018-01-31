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
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>广告费和业务宣传费跨年度纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395A105060Action.do" styleId="WB395A105060Form"
		method="post">
		<div id="mainDiv">
						<table width="95%" border="0" style="text-align: center;" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<br />
						<font size=4>广告费和业务宣传费跨年度纳税调整明细表</font>
						<br />
						<br />
					</td>
				</tr>
			</table>

			<table width="98%" style="border-collapse: collapse"  align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
				id="ggfxcftzmxTable">
				<tr style="text-align: center;" style="height: 20px;">
					<td width="10%">
						行 次
					</td>
					<td width="70%">
						项 目
					</td>
					<td width="20%">
						金 额
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						1
					</td>
					<td>
						一、本年广告费和业务宣传费支出
					</td>
					<td align="right">
						<bean:write property='wb395a105060vo.bnzcje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						2
					</td>
					<td>
						减：不允许扣除的广告费和业务宣传费支出
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.byxzcje'
							name='WB395A105060Form' />

					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						3
					</td>
					<td>
						二、本年符合条件的广告费和业务宣传费支出（1-2）
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.bnfhzcje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						4
					</td>
					<td>
						三、本年计算广告费和业务宣传费扣除限额的销售（营业）收入
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.bnjssrje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						5
					</td>
					<td>
						税收规定扣除率
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.kcl' name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						6
					</td>
					<td>
						四、本企业计算的广告费和业务宣传费扣除限额（4×5）
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.kcxeje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						7
					</td>
					<td>
						五、本年结转以后年度扣除额（3＞6，本行=3-6；3≤6，本行=0）
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.bnkceje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						8
					</td>
					<td>
						加：以前年度累计结转扣除额
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.ndljkceje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						9
					</td>
					<td>
						减：本年扣除的以前年度结转额 [3＞6，本行=0；3≤6，本行=8或（6-3）孰小值]
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.yqndjzeje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						10
					</td>
					<td>
						六、按照分摊协议归集至其他关联方的广告费和业务宣传费（10≤3或6孰小值）
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.ftgjzqtfyje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						11
					</td>
					<td>
						按照分摊协议从其他关联方归集至本企业的广告费和业务宣传费
					</td>
					<td  align="right">
						<bean:write property='wb395a105060vo.qtgjzbqyfyje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						12
					</td>
					<td>
						七、本年广告费和业务宣传费支出纳税调整金额（3＞6，本行=2+3-6+10-11；3≤6，本行=2+10-11-9）
					</td>
					<td align="right">
						<bean:write property='wb395a105060vo.bnzctzje'
							name='WB395A105060Form' />
					</td>
				</tr>
				<tr style="height: 20px;">
					<td style="text-align: center;">
						13
					</td>
					<td>
						八、累计结转以后年度扣除额（7+8-9）
					</td>
					<td align="right">
						<bean:write property='wb395a105060vo.ljkceje'
							name='WB395A105060Form' />
					</td>
				</tr>
			</table>
		</div>
		<input type="hidden" id="divHtml" name="divHtml">
			<SPAN id='a' bz="updata"><html:hidden property="sucessMsg"
					styleId="sucessMsg" /> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="proMessage"
					styleId="proMessage" /> <html:hidden property="handleDesc"
					styleId="handleDesc" /> <html:hidden property="handleCode"
					styleId="handleCode" /> </SPAN>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105060Print.js?<%=System.currentTimeMillis()%>"></script>
</html:html>
