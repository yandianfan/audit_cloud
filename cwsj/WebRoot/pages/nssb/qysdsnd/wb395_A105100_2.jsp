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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script language="javascript" type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>非货币性资产投资递延纳税调整明细表</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<br />
	<div style="width: 95%">
		<p align="left">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A105100_1
		</p>
	</div>
	<html:form action="/WB395A105100_2Action.do"
		styleId="WB395A105100_2Form" method="post">
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div align="center">
							<font size=4><B><br>非货币性资产投资递延纳税调整明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>
			<SPAN id="a" bz="tab1">
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
						<td align="left" >
							纳税人名称（盖章）：
							<bean:write name='WB395A105100_2Form' property='bt_nsrmc' />
						</td>
						<td align="left">
							纳税人识别号：
							<bean:write name='WB395A105100_2Form' property='bt_nsrsbh' />
						</td>
						<td align="right" >
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
							本年税收金额
						</td>
						<td colspan="5">
							递延纳税差异调整额
						</td>
						<td rowspan="2">
							结转以后年度递延确认所得税收金额
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
							（投资前）与投资方是否为关联企业
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
							非货币性资产转让收入实现年度
						</td>
						<td>
							本年账载金额
						</td>
						<td>
							非货币性资产转让所得（税收金额）
						</td>
						<td>
							分期确认税收所得年限
						</td>
						<td>
							分期均匀确认税收所得额
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
							19=[本表第10列-第13列(第1年该项目填报时)]或=[上年度明细表的相应行次第19列-本表第13列(以后递延期间该项目填报时)]
						</td>
					</tr>
					<logic:present name="WB395A105100_2Form" property="list">
						<logic:iterate id="dataid" name="WB395A105100_2Form"
							property="list" indexId="number">
							<tr height="20px" align="center">
								<td align="center">
									<%=number.intValue() + 1%>
								</td>
								<td>
									<bean:write name='dataid' property='qymc' />
								</td>
								<td>
									<bean:write name='dataid' property='nsrsbm' />
								</td>
								<td align="center">
									<bean:write name="dataid" property="zgswjgsheng" />
									&nbsp;
									<bean:write name="dataid" property="zgswjgshi" />
									&nbsp;
									<bean:write name='dataid' property='zgswjgmc' />
								</td>
								<td>
									<logic:equal value="1" name="dataid" property='sfglqy'>是</logic:equal>
									<logic:equal value="0" name="dataid" property='sfglqy'>否</logic:equal>
								</td>
								<td>
									<bean:write name='dataid' property='gyjzje' />
								</td>
								<td>
									<bean:write name='dataid' property='zmjzje' />
								</td>
								<td>
									<bean:write name='dataid' property='jsjcje' />
								</td>
								<td align="center">
									<bean:write name='dataid' property='fhbxzrsrnd' />
								</td>
								<td>
									<bean:write name='dataid' property='bnzzje' />
								</td>
								<td>
									<bean:write name='dataid' property='fhbxzrsdje' />
								</td>
								<td>
									<bean:write name='dataid' property='fqqrnx' />
								</td>
								<td>
									<bean:write name='dataid' property='fqjjqrje' />
								</td>
								<td>
									<bean:write name='dataid' property='bnssje' />
								</td>
								<td>
									<bean:write name='dataid' property='dynsfourje' />
								</td>
								<td>
									<bean:write name='dataid' property='dynsthreeje' />
								</td>
								<td>
									<bean:write name='dataid' property='dynstwoje' />
								</td>
								<td>
									<bean:write name='dataid' property='dynsoneje' />
								</td>
								<td>
									<bean:write name='dataid' property='dynsbnje' />
								</td>
								<td>
									<bean:write name='dataid' property='zjyhnddyje' />
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
							<bean:write name='WB395A105100_2Form' property='gyjzje_hj' />
						</td>
						<td>
							<bean:write name='WB395A105100_2Form' property='zmjzje_hj' />
						</td>
						<td>
							<bean:write name='WB395A105100_2Form' property='jsjcje_hj' />
						</td>
						<td align="center">
							--
						</td>
						<td>
							<bean:write name='WB395A105100_2Form' property='bnzzje_hj' />
						</td>
						<td>
							<bean:write name='WB395A105100_2Form' property='fhbxzrsdje_hj' />
						</td>
						<td align="center">
							--
						</td>
						<td align="center">
							--
						</td>
						<td>
							<bean:write name='WB395A105100_2Form' property='bnssje_hj' />
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
							<bean:write name='WB395A105100_2Form' property='dynsbnje_hj' />
						</td>
						<td>
							<bean:write name='WB395A105100_2Form' property='zjyhnddyje_hj' />
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
				</table> <logic:equal name="WB395A105100_2Form" property="handleCode"
					value="queryData">
					<div class="maintable">
						<table width="98%" cellspacing="0" cellpadding="0" align="center">
							<tr bgcolor="#FFFFFF">
								<td>
									<bean:write name="WB395A105100_2Form" property="pageLink"
										filter="false" />
								</td>
							</tr>
						</table>
					</div>
				</logic:equal> </SPAN>
		</div>
		<input type="hidden" id="bbZt" name="bbzt"
			value="<%=request.getParameter("bbZt")%>">
		<SPAN id="b" bz="tab1"> <html:hidden property="errorMessage"
				styleId="errorMessage" /> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="proMessage"
				styleId="proMessage" /> </SPAN>
		<html:hidden property="ssq" styleId="ssq" />
		<html:hidden property="pzXh" styleId="pzXh" />
		<html:hidden property="sum" styleId="sum" />
		<html:hidden property="curPage" styleId="curPage" />
		<html:hidden property="handleDesc" styleId="handleDesc" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105100_2.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>

