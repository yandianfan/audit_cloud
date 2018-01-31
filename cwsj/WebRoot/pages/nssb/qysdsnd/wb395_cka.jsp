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
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>关联企业-财务报表（企业会计制度）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckaAction.do" styleId="WB395ckaForm"
		method="post">
		<div style="width: 100%" align="center" id="mainDiv">
			<br>
			<div style="width: 98%" align="center" id="pageTipsDiv">
				根据《征管法》规定，您负有向税务机关如实提供涉税信息的义务。请您确认和提供信息，并对信息的真实性、准确性、完整性负责，否则将承担相应法律责任。
			</div>
			<br>
			<div class="tab-pane" id="tabPane" style="width: 98%">
				<div class="tab-page" id="tabPage1"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh1">
						资产负债表
					</h2>
					<br>
					<p align="center" style="font-size: 20px">
						<br>
						<b>资产负债表<br>（企业会计制度）</b>
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
											<html:text style="text-align: left;width:100%;"
												property="swglm" maxlength="30" styleClass="srx"
												tabindex="-1" name="WB395ckaForm"></html:text>
											<html:text style="text-align: left;display: none;"
												property="nsrsbm" name="WB395ckaForm"></html:text>
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
											<html:text style="text-align: left;width:100%;"
												styleClass="srx" maxlength="100" property="bzdw"
												tabindex="-1" name="WB395ckaForm"></html:text>
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<input style="text-align: left; background-color: #CAD4EF;"
												type="text" bt="所属期" class="Wdate" size="12" id="ssq"
												name="ssq"
												onfocus="new WdatePicker(this,'%Y-%M',false,'whyGreen')"
												value="<bean:write  name='WB395ckaForm' property='ssq'/>" />
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
											年初数
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
											年初数
										</td>
										<td id="fztitleqm" width="13%" align="center">
											期末数
										</td>
									</tr>
									<logic:present name="WB395ckaForm" property="zcsbxmlist">
										<logic:iterate id="dataid" name="WB395ckaForm" indexId="index"
											property="zcsbxmlist">
											<tr>
												<td>
													<bean:write name="dataid" property="zcxmmc" />
													<input type="hidden" name="zcxmdm"
														value="<bean:write name="dataid" property="zcxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="zchc" />
													<input type="hidden" name="zchc"
														value="<bean:write name="dataid" property="zchc"/>">
												</td>
												<%
													int a = index.intValue() + 1;
															if (a == 2 || a == 3 || a == 4 || a == 5 || a == 6
																	|| a == 10 || a == 11 || a == 13 || a == 17
																	|| a == 18 || a == 21 || a == 22 || a == 23
																	|| a == 24 || a == 26 || a == 27 || a == 31
																	|| a == 37) {
												%>
												<td align="center">
													<input name="zcqcs" hc="<%=a%>" lh="1"
														id="zcqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqcs"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<td>
													<input name="zcqms" hc="<%=a%>" lh="2"
														id="zcqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqms"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td align="center">
													<input name="zcqcs" hc="<%=a%>" lh="1"
														id="zcqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqcs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="zcqms" hc="<%=a%>" lh="2"
														id="zcqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqms"/>"
														cal="true" style="width: 100%">
												</td>
												<%
													}
												%>
												<td>
													<bean:write name="dataid" property="fzxmmc" />
													<input type="hidden" name="fzxmdm"
														value="<bean:write name="dataid" property="fzxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="fzhc" />
													<input type="hidden" name="fzhc"
														value="<bean:write name="dataid" property="fzhc"/>">
												</td>
												<%
													if (a == 2 || a == 3 || a == 8 || a == 13 || a == 14
																	|| a == 19 || a == 20 || a == 22 || a == 23
																	|| a == 30 || a == 31 || a == 34 || a == 35) {
												%>
												<td align="center">
													<input name="fzqcs" hc="<%=a%>" lh="3"
														id="fzqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqcs"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<td>
													<input name="fzqms" hc="<%=a%>" lh="4"
														id="fzqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqms"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td align="center">
													<input name="fzqcs" hc="<%=a%>" lh="3"
														id="fzqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqcs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="fzqms" hc="<%=a%>" lh="4"
														id="fzqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqms"/>"
														cal="true" style="width: 100%">
												</td>
												<%
													}
												%>
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
											<br>
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
											<html:text style="text-align: left;" property="bzrq"
												styleClass="read" name="WB395ckaForm"></html:text>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				<div class="tab-page" id="tabPage2"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh2">
						利润表
					</h2>
					<br>
					<p id="lrb_tsxx" align="left" style="display: none">
						财务报表按季报送的纳税人，“本月数”一栏填写当季数
					</p>
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
											<bean:write name="WB395ckaForm" property="swglm" />
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
											<bean:write name="WB395ckaForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckaForm" property="ssq" />
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
										<logic:iterate id="dataid" name="WB395ckaForm" indexId="index"
											property="lrsbxmlist">
											<%
												int a = index.intValue() + 1;
											%>
											<tr>
												<td>
													<bean:write name="dataid" property="xmmc" />
													<input type="hidden" name="lrxmdm"
														value="<bean:write name="dataid" property="pzxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="hc" />
													<input type="hidden" name="lrhc"
														value="<bean:write name="dataid" property="hc"/>">
												</td>
												<%
													if (a == 3 || a == 11 || a == 12 || a == 13) {
												%>
												<td>
													<input id="bqs<bean:write name='dataid' property='hh' />"
														name="bqs" hc="<%=a%>" lh="5"
														value="<bean:write name="dataid" property="bqs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input id="bnljs<bean:write name='dataid' property='hh' />"
														name="bnljs" hc="<%=a%>" lh="6"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" negative="false" style="width: 100%">
													<input type="hidden"
														id="calcbnljs<bean:write name='dataid' property='hh' />"
														name="calcbnljs"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td>
													<input id="bqs<bean:write name='dataid' property='hh' />"
														name="bqs" hc="<%=a%>" lh="5"
														value="<bean:write name="dataid" property="bqs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input id="bnljs<bean:write name='dataid' property='hh' />"
														name="bnljs" hc="<%=a%>" lh="6"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
													<input type="hidden"
														id="calcbnljs<bean:write name='dataid' property='hh' />"
														name="calcbnljs"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
												</td>
												<%
													}
												%>
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
											<br>
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
											<bean:write name="WB395ckaForm" property="bzrq" />
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
												<td>
													<bean:write name="dataid" property="xmmc" />
													<input type="hidden" name="bcxmdm"
														value="<bean:write name="dataid" property="pzxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="hc" />
													<input type="hidden" name="bchc"
														value="<bean:write name="dataid" property="hc"/>">
												</td>
												<td>
													<input id="bcbqs<bean:write name='dataid' property='hh' />"
														name="bcbqs"
														value="<bean:write name="dataid" property="bqs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input
														id="bcbnljs<bean:write name='dataid' property='hh' />"
														name="bcbnljs"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
													<input type="hidden"
														id="calcbcbnljs<bean:write name='dataid' property='hh' />"
														name="calccbnljs"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input
														id="bcsnsjs<bean:write name='dataid' property='hh' />"
														name="bcsnsjs"
														value="<bean:write name="dataid" property="snsjs"/>"
														cal="true" style="width: 100%">
												</td>
											</tr>
										</logic:iterate>
									</logic:present>
								</table>
							</td>
						</tr>
					</table>
				</div>
				<div class="tab-page" id="tabPage3"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh3">
						现金流量表
					</h2>
					<br>
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
											<bean:write name="WB395ckaForm" property="swglm" />
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
											<bean:write name="WB395ckaForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckaForm" property="ssq" />
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
												<td>
													<bean:write name="dataid" property="xmmc" />
													<input type="hidden" name="xjxmdm"
														value="<bean:write name="dataid" property="pzxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="hc" />
													<input type="hidden" name="xjhc"
														value="<bean:write name="dataid" property="hc"/>">
												</td>
												<td>
													<input id="je<bean:write name='dataid' property='hh' />"
														name="je"
														value="<bean:write name="dataid" property="je"/>"
														cal="true" style="width: 100%">
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
											<br>
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
											<bean:write name="WB395ckaForm" property="bzrq" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
				<br>
			</div>
		</div>
		<input type="hidden" id="bbZt"
			value="<%=request.getParameter("bbZt")%>">
		<html:hidden property="pageTips" styleId="pageTips"></html:hidden>
		<span id="ajaxform"> <html:hidden property="zt"
				name="WB395ckaForm" styleId="zt"></html:hidden> <html:hidden
				property="pzXh" styleId="pzXh"></html:hidden> <html:hidden
				property="sbmxxh" styleId="sbmxxh" /> <html:hidden
				property="errorMessage" styleId="errorMessage" /> <html:hidden
				property="handleDesc" styleId="handleDesc" /> <html:hidden
				property="handleCode" styleId="handleCode" /> <html:hidden
				property="sucessMsg" styleId="sucessMsg" /> </span>
		<script language="javascript" src="/public/js/tool/tabPanePrint.js"></script>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_cka.js?<%=System.currentTimeMillis()%>"></script>
</html:html>