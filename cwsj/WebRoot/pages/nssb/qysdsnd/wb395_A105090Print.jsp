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
	<title>资产损失税前扣除及纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395A105090Action.do" styleId="WB395A105090Form"
		method="post">
		<div id="mainDiv">
			<table width="98%" border="0"  style="text-align: center;" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div  style="text-align: center;">
							<font size=4><B><br>资产损失税前扣除及纳税调整明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<table width="98%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr  style="text-align: center;">
					<td rowspan="2" width="10%">
						行 次
					</td>
					<td rowspan="2" width="40%">
						项 目
					</td>
					<td width="10%">
						账载金额
					</td>
					<td width="10%">
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
						3（1-2）
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						1
					</td>
					<td>
						一、清单申报资产损失（2+3+4+5+6+7+8）
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						2
					</td>
					<td>
						（一）正常经营管理活动中，按照公允价格销售、转让、变卖非货币资产的损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						3
					</td>
					<td>
						（二）存货发生的正常损耗
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						4
					</td>
					<td>
						（三）固定资产达到或超过使用年限而正常报废清理的损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						5
					</td>
					<td>
						（四）生产性生物资产达到或超过使用年限而正常死亡发生的资产损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						6
					</td>
					<td>
						（五）按照市场公平交易原则，通过各种交易场所、市场等买卖债券、股票、期货、基金以及金融衍生产品等发生的损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						7
					</td>
					<td>
						（六）分支机构上报的资产损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						8
					</td>
					<td>
						（七）其他
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						9
					</td>
					<td>
						二、专项申报资产损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						10
					</td>
					<td>
						（一）货币资产损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						11
					</td>
					<td>
						（二）非货币资产损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						12
					</td>
					<td>
						（三）投资损失
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						13
					</td>
					<td>
						（四）其他
					</td>
					<td class="zzje" align="right">
					</td>
					<td class="ssje" align="right">
					</td>
					<td class="nstzje" align="right">
					</td>
				</tr>
				<tr>
					<td  style="text-align: center;">
						14
					</td>
					<td>
						合计（1+9）
					</td>
					<td class="zzjehj" align="right">
					</td>
					<td class="ssjehj" align="right">
					</td>
					<td class="nstzjehj" align="right">
					</td>
				</tr>
			</table>
		</div>
		<table style="display: none" id ="tab1">
			<tr>
				<td  style="text-align: center;" width="10%">
					<input type="hidden" name="sbmxxh" value="1" />
					1
				</td>
				<td width="50%">
					一、清单申报资产损失（2+3+4+5+6+7+8）
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="qdzzjehj" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="qdssjehj" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="qdnstzjehj" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="2" />
					2
				</td>
				<td>
					（一）正常经营管理活动中，按照公允价格销售、转让、变卖非货币资产的损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje1" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje1" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje1" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="3" />
					3
				</td>
				<td>
					（二）存货发生的正常损耗
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje2" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje2" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje2" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="4" />
					4
				</td>
				<td>
					（三）固定资产达到或超过使用年限而正常报废清理的损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje3" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje3" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje3" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="5" />
					5
				</td>
				<td>
					（四）生产性生物资产达到或超过使用年限而正常死亡发生的资产损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje4" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje4" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje4" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="6" />
					6
				</td>
				<td>
					（五）按照市场公平交易原则，通过各种交易场所、市场等买卖债券、股票、期货、基金以及金融衍生产品等发生的损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje5" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje5" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje5" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="7" />
					7
				</td>
				<td>
					（六）分支机构上报的资产损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje6" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje6" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje6" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="8" />
					8
				</td>
				<td>
					（七）其他
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zzje7" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="ssje7" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="nstzje7" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="9" />
					9
				</td>
				<td>
					二、专项申报资产损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zxzzjehj" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="zxssjehj" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="zxnstzjehj" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="10" />
					10
				</td>
				<td>
					（一）货币资产损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zxzzje1" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="zxssje1" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="zxnstzje1" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="11" />
					11
				</td>
				<td>
					（二）非货币资产损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zxzzje2" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="zxssje2" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="zxnstzje2" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="12" />
					12
				</td>
				<td>
					（三）投资损失
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zxzzje3" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="zxssje3" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="zxnstzje3" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					<input type="hidden" name="sbmxxh" value="13" />
					13
				</td>
				<td>
					（四）其他
				</td>
				<td width="10%">
					<input type="text" name="zzje" id="zxzzje4" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssje" id="zxssje4" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzje" id="zxnstzje4" cal="true" />
				</td>
			</tr>
			<tr>
				<td  style="text-align: center;">
					合计（1+9）
				</td>
				<td width="10%">
					<input type="text" name="zzjehj" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="ssjehj" cal="true" />
				</td>
				<td width="10%">
					<input type="text" name="nstzjehj" cal="true" />
				</td>
			</tr>
		</table>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="bizData" styleId="bizData" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105090Print.js?<%=System.currentTimeMillis()%>"></script>
</html:html>
