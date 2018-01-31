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
	<title>财务报表（小企业会计准则）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395cklAction.do" styleId="WB395cklForm"
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
						<b>资产负债表<br>（小企业会计准则）</b>
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
												tabindex="-1" name="WB395cklForm"></html:text>
											<html:text style="text-align: left;display: none;"
												property="nsrsbm" name="WB395cklForm"></html:text>
										</td>
										<td></td>
										<td></td>
										<td>
											会小企01表
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
												tabindex="-1" name="WB395cklForm"></html:text>
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
												value="<bean:write  name='WB395cklForm' property='ssq'/>" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="xqyzzzcfzb" width="98%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="17%" align="center">
											资产
										</td>
										<td width="3%" align="center">
											行次
										</td>
										<td id="zctitleqmye" width="13%" align="center">
											期末余额
										</td>
										<td id="zctitlencye" width="13%" align="center">
											年初余额
										</td>
										<td width="25%" align="center">
											负债和所有者权益
										</td>
										<td width="3%" align="center">
											行次
										</td>
										<td id="fztitleqmye" width="13%" align="center">
											期末余额
										</td>
										<td id="fztitlencye" width="13%" align="center">
											年初余额
										</td>
									</tr>
									<logic:present name="WB395cklForm" property="zcsbxmlist">
										<logic:iterate id="dataid" name="WB395cklForm"
											property="zcsbxmlist" indexId="index">
											<%
												int a = index.intValue() + 1;
											%>
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
													if (a == 2 || a == 3 || a == 4 || (a >= 10 && a < 15)
																	|| (a >= 18 && a <= 21) || a == 23 || a == 24
																	|| (a >= 26 && a < 30)) {
												%>
												<td align="center">
													<input name="zcqms" hc="<%=a%>" lh="1"
														id="zcqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqms"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<td>
													<input name="zcqcs" hc="<%=a%>" lh="2"
														id="zcqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqcs"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td align="center">
													<input name="zcqms" hc="<%=a%>" lh="1"
														id="zcqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqms"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="zcqcs" hc="<%=a%>" lh="2"
														id="zcqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqcs"/>"
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
													if ((a >= 14 && a < 16) || a == 27 || a == 29) {
												%>
												<td align="center">
													<input name="fzqms" hc="<%=a%>" lh="3"
														id="fzqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqms"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<td>
													<input name="fzqcs" hc="<%=a%>" lh="4"
														id="fzqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqcs"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td align="center">
													<input name="fzqms" hc="<%=a%>" lh="3"
														id="fzqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqms"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="fzqcs" hc="<%=a%>" lh="4"
														id="fzqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqcs"/>"
														cal="true" style="width: 100%">
												</td>
												<%
													}
												%>
											</tr>
										</logic:iterate>
									</logic:present>
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
						<b>利润表<br>（小企业会计准则适用）</b>
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
											<bean:write name="WB395cklForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会小企02表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395cklForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395cklForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="xqyzzlrb" width="98%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="40%" align="center">
											项目
										</td>
										<td width="10%" align="center">
											行次
										</td>
										<td id="lrtitlebyje" width="25%" align="center">
											本月金额
										</td>
										<td id="lrtitlebnljje" width="25%" align="center">
											本年累计金额
										</td>
									</tr>
									<logic:present name="WB395cklForm" property="lrsbxmlist">
										<logic:iterate id="dataid" name="WB395cklForm"
											property="lrsbxmlist" indexId="index">
											<%
												int a = index.intValue() + 1;
											%>
											<tr>
												<td>
													<bean:write name="dataid" property="xmmc" />
													<input type="hidden" name="lrxmdm"
														value="<bean:write name="dataid" property="lrxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="hc" />
													<input type="hidden" name="lrhc"
														value="<bean:write name="dataid" property="hc"/>">
												</td>
												<%
													if ((a > 11 && a < 14) || (a >= 22 && a <= 29)) {
												%>
												<td>
													<input name="byje" hc="<%=a%>" lh="5"
														id="byje<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="bqs"/>"
														cal="true" style="width: 100%">
												</td>
												<td align="center">
													<input name="bnljje" hc="<%=a%>" lh="6"
														id="bnljje<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" negative="false" style="width: 100%">
													<input type="hidden"
														id="calcbnljje<bean:write name='dataid' property='hh' />"
														name="calcbnljje"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" negative="false" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td>
													<input name="byje" hc="<%=a%>" lh="5"
														id="byje<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="bqs"/>"
														cal="true" style="width: 100%">
												</td>
												<td align="center">
													<input name="bnljje" hc="<%=a%>" lh="6"
														id="bnljje<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
													<input type="hidden"
														id="calcbnljje<bean:write name='dataid' property='hh' />"
														name="calcbnljje"
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
						<b>现金流量表<br>（小企业会计准则适用）</b>
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
											<bean:write name="WB395cklForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会小企03表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395cklForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395cklForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="xqyzzxjllb" width="98%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="40%" align="center">
											项目
										</td>
										<td width="10%" align="center">
											行次
										</td>
										<td id="xjtitlebnljje" width="25%" align="center">
											本年累计金额
										</td>
										<td id="xjtitlebyje" width="25%" align="center">
											本月金额
										</td>

									</tr>
									<logic:present name="WB395cklForm" property="xjllsbxmlist">
										<logic:iterate id="dataid" name="WB395cklForm"
											property="xjllsbxmlist">
											<tr>
												<td>
													<bean:write name="dataid" property="xmmc" />
													<input type="hidden" name="xjxmdm"
														value="<bean:write name="dataid" property="xjxmdm"/>">
												</td>
												<td align="center">
													<bean:write name="dataid" property="hc" />
													<input type="hidden" name="xjhc"
														value="<bean:write name="dataid" property="hc"/>">
												</td>
												<td align="center">
													<input name="xjbnljje"
														id="xjbnljje<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
													<input type="hidden"
														id="calcxjbnljje<bean:write name='dataid' property='hh' />"
														name="calcxjbnljje"
														value="<bean:write name="dataid" property="bnljs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="xjbyje"
														id="xjbyje<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="je"/>"
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
				<br>
			</div>
		</div>
		<input type="hidden" id="bbZt"
			value="<%=request.getParameter("bbZt")%>">
		<html:hidden property="pageTips" styleId="pageTips"></html:hidden>
		<span id="ajaxform"> <html:hidden property="zt"
				name="WB395cklForm" styleId="zt"></html:hidden> <html:hidden
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
	src="./nssb/wb395/wb395_ckl.js?<%=System.currentTimeMillis()%>"></script>
</html:html>