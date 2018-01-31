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
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>资产损失（专项申报）税前扣除及纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395A105091_2Action.do" styleId="WB395A105091_2Form"
		method="post">
		<div id="mainDiv">
			<table width="98%" border="0"  style="text-align: center;" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div  style="text-align: center;">
							<font size=4><b><br>资产损失（专项申报）税前扣除及纳税调整明细表</b> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<table width="98%" style="border-collapse: collapse" align="center"
				id="tab1" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr  style="text-align: center;">
					<td rowspan="2" width="6%">
						行 次
					</td>
					<td width="20%">
						项 目
					</td>
					<td>
						账载金额
					</td>
					<td>
						处置收入
					</td>
					<td>
						赔偿收入
					</td>
					<td>
						计税基础
					</td>
					<td>
						税收金额
					</td>
					<td>
						纳税调整金额
					</td>
				</tr>
				<tr  style="text-align: center;">
					<td>
						1
					</td>
					<td>
						2
					</td>
					<td>
						3
					</td>
					<td>
						4
					</td>
					<td>
						5
					</td>
					<td>
						6（5-3-4）
					</td>
					<td>
						7（2-6）
					</td>
				</tr>
				<tr height="20px">
					<td  style="text-align: center;">
						1
					</td>
					<td>
						一、货币资产损失(2+3+4+5)
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="hbsszzjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="hbssczsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="hbsspcsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="hbssjsjcjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="hbssssjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="hbssnstzjehj" />
					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="hbsslist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="hbsslist">
						<tr height="20px">

							<td  style="text-align: center;">
								<bean:write name="dataid" property="xh" />
							</td>
							<td style="text-align: center;">
								<bean:write name="dataid" property="xmmc" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="zzje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="czsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="pcsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="jsjcje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="ssje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="nstzje" />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
				<tr height="20px">
					<td  style="text-align: center;">
						6
					</td>
					<td>
						二、非货币资产损失(7+8+9+10)
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="fhbsszzjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="fhbssczsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="fhbsspcsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="fhbssjsjcjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="fhbssssjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="fhbssnstzjehj" />
					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="fhbsslist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="fhbsslist">
						<tr height="20px">

							<td  style="text-align: center;">
								<bean:write name="dataid" property="xh" />
							</td>
							<td style="text-align: center;">
								<bean:write name="dataid" property="xmmc" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="zzje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="czsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="pcsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="jsjcje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="ssje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="nstzje" />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>

				<tr height="20px">
					<td  style="text-align: center;">
						11
					</td>
					<td>
						三、投资损失(12+13+14+15)
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="tzsszzjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="tzssczsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="tzsspcsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="tzssjsjcjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="tzssssjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="tzssnstzjehj" />
					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="tzsslist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="tzsslist">
						<tr height="20px">

							<td  style="text-align: center;">
								<bean:write name="dataid" property="xh" />
							</td>
							<td style="text-align: center;">
								<bean:write name="dataid" property="xmmc" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="zzje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="czsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="pcsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="jsjcje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="ssje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="nstzje" />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>

				<tr height="20px">
					<td  style="text-align: center;">
						16
					</td>
					<td>
						四、其他(17+18+19)
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="qtzzjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="qtczsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="qtpcsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="qtjsjcjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="qtssjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="qtnstzjehj" />
					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="qtlist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="qtlist">
						<tr height="20px">
							<td  style="text-align: center;">
								<bean:write name="dataid" property="xh" />
							</td>
							<td style="text-align: center;">
								<bean:write name="dataid" property="xmmc" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="zzje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="czsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="pcsrje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="jsjcje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="ssje" />
							</td>
							<td align="right">
								<bean:write name="dataid" property="nstzje" />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>

				<tr>
					<td style="text-align: center;" colspan="2">
						合计
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="zzjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="czsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="pcsrjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="jsjcjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="ssjehj" />
					</td>
					<td align="right">
						<bean:write name="WB395A105091_2Form" property="nstzjehj" />
					</td>
				</tr>
			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105091_2Print.js?<%=System.currentTimeMillis()%>"></script>
</html:html>
