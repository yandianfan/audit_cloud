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
	<title>非货币性资产投资递延纳税调整明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A105100_2Action.do" method="post"
		styleId="WB395A105100_2Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<br />
		<div style="width: 95%">
			<p align="left">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A105100_1
			</p>
		</div>
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td>
					<div align="center">
						<font size=4><B><br>非货币性资产投资递延纳税调整明细表</B> </font>
					</div>
				</td>
			</tr>
		</table>
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
				<tr>
					<td width="45%">

					</td>
					<td align="left" width="20%">
						所属年度：
						<bean:write name='WB395A105100_2Form' property='ssq' />
					</td>
					<td width="35%">

					</td>
				</tr>
				<tr>
					<td align="left">
						纳税人名称（盖章）：
						<bean:write name='WB395A105100_2Form' property='bt_nsrmc' />
					</td>
					<td align="left">
						纳税人识别号：
						<bean:write name='WB395A105100_2Form' property='bt_nsrsbh' />
					</td>
					<td align="right">
						金额单位：元（列至角分）
					</td>
				</tr>
			</table>
		<table width="98%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr height="20px" align="center">
				<td rowspan="2">
					行次
				</td>
				<td colspan="4">
					被投资企业情况
				</td>
				<td colspan="3">
					非货币性资产情况
				</td>
				<td colspan="5">
					非货币性资产投资基本信息
				</td>
				<td rowspan="2">
					本年税收<br/>金额
				</td>
				<td colspan="5">
					递延纳税差异调整额
				</td>
				<td rowspan="2">
					结转以后<br/>年度递延<br/>确认所得<br/>税收金额
				</td>
			</tr>
			<tr height="20px" align="center">
				<td>
					企业名称
				</td>
				<td>
					纳税人识别号
				</td>
				<td>
					主管税务机关
				</td>
				<td>
					（投资<br/>前）与投<br/>资方是否<br/>为关联企<br/>业
				</td>
				<td>
					公允价值
				</td>
				<td>
					账面价值
				</td>
				<td>
					计税基础
				</td>
				<td>
					非货币性<br/>资产转让<br/>收入实现<br/>年度
				</td>
				<td>
					本年账载<br/>金额
				</td>
				<td>
					非货币性<br/>资产转让<br/>所得（税<br/>收金额）
				</td>
				<td>
					分期确认<br/>税收所得<br/>年限
				</td>
				<td>
					分期均匀<br/>确认税收<br/>所得额
				</td>
				<td>
					前四年度
				</td>
				<td>
					前三年度
				</td>
				<td>
					前二年度
				</td>
				<td>
					前一年度
				</td>
				<td>
					本年
				</td>
			</tr>
			<tr height="20px" align="center">
				<td width="2.5%">
					&nbsp;
				</td>
				<td width="5%">
					1
				</td>
				<td width="5%">
					2
				</td>
				<td width="7.5%">
					3
				</td>
				<td width="5%">
					4
				</td>
				<td width="5%">
					5
				</td>
				<td width="5%">
					6
				</td>
				<td width="5%">
					7
				</td>
				<td width="5%">
					8
				</td>
				<td width="5%">
					9
				</td>
				<td width="5%">
					10=5-7
				</td>
				<td width="5%">
					11
				</td>
				<td width="5%">
					12
				</td>
				<td width="5%">
					13
				</td>
				<td width="5%">
					14
				</td>
				<td width="5%">
					15
				</td>
				<td width="5%">
					16
				</td>
				<td width="5%">
					17
				</td>
				<td width="5%">
					18=13-9
				</td>
				<td width="5%">
					19
				</td>
			</tr>
			<logic:present name="WB395A105100_2Form" property="list">
				<logic:iterate id="dataid" name="WB395A105100_2Form" property="list"
					indexId="number">
					<tr height="20px">
						<td align="center">
							<%=number.intValue() + 1%>
						</td>
						<td>
							<bean:write name='dataid' property='qymc'/>
						</td>
						<td>
							<bean:write name='dataid' property='nsrsbm'/>
						</td>
						<td>
							<bean:write name="dataid" property="zgswjgsheng" />
							<bean:write name="dataid" property="zgswjgshi" />
							<br />
							<bean:write name='dataid' property='zgswjgmc'/>
						</td>
						<td>
						     <logic:equal value="1" name="dataid" property='sfglqy'>是</logic:equal>
						     <logic:equal value="0" name="dataid" property='sfglqy'>否</logic:equal>
						</td>
						<td>
							<bean:write name='dataid' property='gyjzje'/>
						</td>
						<td>
							<bean:write name='dataid' property='zmjzje'/>
						</td>
						<td>
							<bean:write name='dataid' property='jsjcje'/>
						</td>
						<td align="center">
	                        <bean:write name='dataid' property='fhbxzrsrnd' />
						</td>
						<td>
							<bean:write name='dataid' property='bnzzje'/>
						</td>
						<td>
							<bean:write name='dataid' property='fhbxzrsdje'/>
						</td>
						<td>
					    	<bean:write name='dataid' property='fqqrnx'/>					
						</td>
						<td>
							<bean:write name='dataid' property='fqjjqrje'/>
						</td>
						<td>
							<bean:write name='dataid' property='bnssje'/>
						</td>
						<td>
					    	<bean:write name='dataid' property='dynsfourje'/>
						</td>
						<td>
							<bean:write name='dataid' property='dynsthreeje'/>
						</td>
						<td>
					    	<bean:write name='dataid' property='dynstwoje'/>
						</td>
						<td>
							<bean:write name='dataid' property='dynsoneje'/>
						</td>
						<td>
							<bean:write name='dataid' property='dynsbnje'/>
						</td>
						<td>
					    	<bean:write name='dataid' property='zjyhnddyje'/>
						</td>
					</tr>
				</logic:iterate>
			</logic:present>
			<tr height="20px">
				<td align="center">
					合 计
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='gyjzje_hj'/>
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='zmjzje_hj'/>
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='jsjcje_hj'/>
				</td>
				<td align="center">
					--
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='bnzzje_hj'/>
				</td>
				<td>
				   <bean:write name='WB395A105100_2Form' property='fhbxzrsdje_hj'/>
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='bnssje_hj'/>
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td align="center">
					--
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='dynsbnje_hj'/>
				</td>
				<td>
				    <bean:write name='WB395A105100_2Form' property='zjyhnddyje_hj'/>
				</td>
			</tr>
			<tr>
				<td colspan="20">
						<table width="100%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>
									&nbsp;&nbsp;谨声明：本人知悉并保证本表填报内容及所附证明材料真实、完整，并承担因资料虚假而产生的法律和行政责任。
								</td>
							</tr>
							<tr>
								<td align="right">
									法定代表人签章：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td align="right">
									年&nbsp;&nbsp;月&nbsp;&nbsp;日&nbsp;&nbsp;
								</td>
							</tr>
						</table>
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
		src="./nssb/wb395/wb395_A105100_2Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
