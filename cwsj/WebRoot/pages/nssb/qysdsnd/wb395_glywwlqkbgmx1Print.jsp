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
	<title>关联业务往来情况报告明细表一</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395glywwlqkbgmx1Action.do" method="post"
		styleId="WB395glywwlqkbgmx1Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<br />
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;" style="width :100%; font-size: 18px; font-weight: bold">
						<bean:write name='WB395glywwlqkbgmx1Form' property='vo.nd' />
						<font size=4><b>关联业务往来情况报告明细表一</b> </font>
					</td>
				</tr>
			</table>
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td colspan="8" align="right">
						单位：万元
					</td>
				</tr>
				<tr>
					<td align="left" width="10%">
						纳税人名称（公章）：
					</td>
					<td align="left">
						<bean:write name='WB395glywwlqkbgmx1Form' property='vo.nsrmc' />
					</td>
					<td align="left" width="7%">
						纳税人识别号：
					</td>
					<td align="left" width="13%">
						<bean:write name='WB395glywwlqkbgmx1Form' property='vo.nsrsbm' />
					</td>
					<td align="left" width="5%">
						联系电话：
					</td>
					<td align="left" width="10%">
						<bean:write name='WB395glywwlqkbgmx1Form' property='vo.lxdh' />
					</td>
					<td align="right" width="10%">
						主管税务机关： &nbsp;
					</td>
					<td align="left">
						<bean:write name='WB395glywwlqkbgmx1Form' property='vo.zgswjgmc' />
					</td>
				</tr>
			</table>
			<table id="tab1" width="98%" align="center" cellpadding="1"
				cellspacing="1" border="1" bordercolor="#000000">
				<tr align="center">
					<td rowspan="2" width="10%">
						关联方名称
					</td>
					<td rowspan="2" width="5%">
						关联关系
						<br />
						类型
					</td>
					<td rowspan="2" width="5%">
						关联方企
						<br />
						税税率
					</td>
					<td rowspan="2" width="10%">
						关联方享受税收优惠
						<br />
						政策情况
					</td>
					<td rowspan="2" width="10%">
						关联方企业所得税
						<br />
						管理机关
					</td>
					<td rowspan="2" width="11%">
						交易类型
					</td>
					<td width="10%">
						关联交易金额
					</td>
					<td width="10%">
						关联交易占比
					</td>
					<td width="10%">
						关联交易毛利率
					</td>
					<td width="10%">
						交易总金额
					</td>
					<td width="9%">
						本类交易综合毛利率
					</td>
				</tr>
				<tr align="center">
					<td>
						1
					</td>
					<td>
						3＝1/2
					</td>
					<td>
						&nbsp;
					</td>
					<td>
						2
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
				<logic:present name="WB395glywwlqkbgmx1Form" property="list">
					<logic:iterate id="dataid" name="WB395glywwlqkbgmx1Form"
						property="list">
						<tr height="20px">
							<td>
								<bean:write name='dataid' property='glfmc' />
							</td>
							<td>
								<bean:write name='dataid' property='glgxlx' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='glfqssl' />
							</td>
							<td>
								<bean:write name='dataid' property='glfxsyhqk' />
							</td>
							<td>
								<bean:write name='dataid' property='glfsdsgljg' />
							</td>
							<td>														
					    	<logic:equal value="01" property="jylx"	name="dataid">材料(商品)购入</logic:equal>
					    	<logic:equal value="02" property="jylx"	name="dataid">商品(材料)销售</logic:equal>
					    	<logic:equal value="03" property="jylx"	name="dataid">劳务收入</logic:equal>
					    	<logic:equal value="04" property="jylx"	name="dataid">劳务支出</logic:equal>
					    	<logic:equal value="05" property="jylx"	name="dataid">受让无形资产</logic:equal>
					    	<logic:equal value="06" property="jylx"	name="dataid">出让无形资产</logic:equal>
					    	<logic:equal value="07" property="jylx"	name="dataid">受让固定资产</logic:equal>
					    	<logic:equal value="08" property="jylx"	name="dataid">出让固定资产</logic:equal>
					    	<logic:equal value="09" property="jylx"	name="dataid">融资应计利息收入</logic:equal>
					    	<logic:equal value="10" property="jylx"	name="dataid">融资应计利息支出</logic:equal>
					    	<logic:equal value="11" property="jylx"	name="dataid">应收款项</logic:equal>
					    	<logic:equal value="12" property="jylx"	name="dataid">应付款项</logic:equal>
					    	<logic:equal value="13" property="jylx"	name="dataid">其他</logic:equal>
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='gljyje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='gljyzb' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='gljymll' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='jyzje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='bljyzhmll' />
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
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
		src="./nssb/wb395/wb395_glywwlqkbgmx1Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
