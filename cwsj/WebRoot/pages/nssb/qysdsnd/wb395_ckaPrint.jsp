<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page ContentType="text/html;charset=UTF-8"%>
<%@include file="/common/common.jsp"%>

<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/css/tab.webfx.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script type="text/javascript" src="./public/js/tool/tabpane.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<script language="javascript" src="/public/js/tool/tabPanePrint.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>财务报表（企业会计制度适用）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckaAction.do" styleId="WB395ckaForm"
		method="post">
		<div style="width: 100%" align="center">
			<div class="tab-pane" id="tabPane" style="width: 98%">
				<div class="tab-page" id="tabPage1"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh1">
						资产负债表
					</h2>
					<br>
					<div id="div0">
						<p align="center" style="font-size: 20px">
							<br>
							<b>资产负债表<br>（企业会计制度适用）</b>
						</p>
						<br>
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							align="center">
							<tr>
								<td>
									<table width="98%" align="center" cellpadding="1"
										cellspacing="1" bordercolor="#000000"
										style="border-collapse: collapse">
										<tr>
											<td>
												<div align="center">
													税务管理码
												</div>
											</td>
											<td>
												<bean:write property="swglm" name="WB395ckaForm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会企01表
											</td>
										</tr>
										<tr>
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write property="bzdw" name="WB395ckaForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckaForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="qyzdzcfzb" width="98%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr>
											<td width="17%" align="center">
												资产
											</td>
											<td width="3%" align="center">
												行次
											</td>
											<td id="zctitleqc" width="13%" align="center">
												期初数
											</td>
											<td id="zctitleqm" width="13%" align="center">
												期末数
											</td>
											<td width="25%" align="center">
												负债和所有者权益（或股东权益）
											</td>
											<td width="3%" align="center">
												行次
											</td>
											<td id="fztitleqc" width="13%" align="center">
												期初数
											</td>
											<td id="fztitleqm" width="13%" align="center">
												期末数
											</td>
										</tr>
										<logic:present name="WB395ckaForm" property="zcsbxmlist">
											<logic:iterate id="dataid" name="WB395ckaForm"
												property="zcsbxmlist">
												<tr>
													<td align="left">
														<bean:write name="dataid" property="zcxmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="zchc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zcqcs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zcqms" />
													</td>
													<td align="left">
														<bean:write name="dataid" property="fzxmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="fzhc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzqcs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzqms" />
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
									<table width="98%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000">
										<tr>
											<td height="30" width="10%">
												单位负责人：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												财会负责人：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												复核：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												制表：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												编制日期：
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckaForm" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tab-page" id="tabPage2"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh2">
						利润表
					</h2>
					<br>
					<div id="div1">
						<p align="center" style="font-size: 20px">
							<br>
							<b>利 润 表<br>（企业会计制度适用）</b>
						</p>
						<br>
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							align="center">
							<tr>
								<td>
									<table width="98%" align="center" cellpadding="1"
										cellspacing="1" bordercolor="#000000"
										style="border-collapse: collapse">
										<tr>
											<td>
												<div align="center">
													税务管理码
												</div>
											</td>
											<td>
												<bean:write property="swglm" name="WB395ckaForm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会企02表
											</td>
										</tr>
										<tr>
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write property="bzdw" name="WB395ckaForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckaForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="qyzdlrb" width="98%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr>
											<td height="30" width="40%">
												<div align="center">
													项目
												</div>
											</td>
											<td width="10%">
												<div align="center">
													行次
												</div>
											</td>
											<td width="25%">
												<div align="center">
													本月数
												</div>
											</td>
											<td width="25%">
												<div align="center">
													本年累计数
												</div>
											</td>
										</tr>
										<logic:present name="WB395ckaForm" property="lrsbxmlist">
											<logic:iterate id="dataid" name="WB395ckaForm"
												property="lrsbxmlist">
												<tr>
													<td align="left">
														<bean:write name="dataid" property="xmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="hc" />
													</td>
													<td align="right">
														<logic:notEqual value="Y" name="WB395ckaForm"
															property="bsqxdm">
															<bean:write name="dataid" property="bqs" />
														</logic:notEqual>
													</td>
													<td align="right">
														<bean:write name="dataid" property="bnljs" />
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
									<table width="98%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000">
										<tr>
											<td height="30" width="10%">
												单位负责人：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												财会负责人：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												复核：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												制表：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												编制日期：
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckaForm" />
											</td>
										</tr>
									</table>
									<br>
									<table id="bczl" width="98%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr>
											<td height="30" colspan="5">
												补充资料
											</td>
										</tr>
										<tr>
											<td height="25" width="40%">
												<div align="center">
													项目
												</div>
											</td>
											<td width="5%">
												<div align="center">
													序号
												</div>
											</td>
											<td width="20%">
												<div align="center">
													本期数
												</div>
											</td>
											<td width="20%">
												<div align="center">
													本年累计数
												</div>
											</td>
											<td width="20%">
												<div align="center">
													上年实际数
												</div>
											</td>
										</tr>
										<logic:present name="WB395ckaForm" property="bcsbxmlist">
											<logic:iterate id="dataid" name="WB395ckaForm"
												property="bcsbxmlist">
												<tr>
													<td align="left">
														<bean:write name="dataid" property="xmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="hc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="bqs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="bnljs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="snsjs" />
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tab-page" id="tabPage3"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh3">
						现金流量表
					</h2>
					<br>
					<div id="div2">
						<p align="center" style="font-size: 20px">
							<br>
							<b>现金流量表<br>（企业会计制度适用）</b>
						</p>
						<br>
						<table width="100%" border="0" cellpadding="0" cellspacing="0"
							align="center">
							<tr>
								<td>
									<table width="98%" align="center" cellpadding="1"
										cellspacing="1" bordercolor="#000000"
										style="border-collapse: collapse">
										<tr>
											<td>
												<div align="center">
													税务管理码
												</div>
											</td>
											<td>
												<bean:write property="swglm" name="WB395ckaForm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会企03表
											</td>
										</tr>
										<tr>
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write property="bzdw" name="WB395ckaForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckaForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="qyzdxjllb" width="98%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr>
											<td width="50%">
												<div align="center">
													项目
												</div>
											</td>
											<td width="15%">
												<div align="center">
													行次
												</div>
											</td>
											<td width="35%">
												<div align="center">
													金额
												</div>
											</td>
										</tr>
										<logic:present id="dataid" name="WB395ckaForm"
											property="xjsbxmlist">
											<logic:iterate id="dataid" name="WB395ckaForm"
												property="xjsbxmlist">
												<tr>
													<td align="left">
														<bean:write name="dataid" property="xmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="hc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="je" />
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
									<table width="100%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000">
										<tr>
											<td height="30" width="10%">
												单位负责人：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												财会负责人：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												复核：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												制表：
											</td>
											<td width="10%">
												&nbsp;
											</td>
											<td width="10%">
												编制日期：
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckaForm" />
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<br>
			</div>
		</div>
		<html:hidden property="ssq" name="WB395ckaForm" styleId="ssq"></html:hidden>
		<html:hidden property="tabid" styleId="tabid" />
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_ckaPrint.js?<%=System.currentTimeMillis()%>"></script>
</html:html>