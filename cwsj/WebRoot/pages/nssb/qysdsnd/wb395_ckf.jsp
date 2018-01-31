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
	<title>财务报表（企业会计准则——商业银行）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckfAction.do" styleId="WB395ckfForm"
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
						<b>资产负债表<br>（企业会计准则 —— 商业银行）</b>
					</p>
					<br>
					<table width="98%" align="center" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>
								<table width="100%" align="center" cellpadding="1"
									cellspacing="1" bordercolor="#000000"
									style="border-collapse: collapse">
									<tr>
										<td>
											<div align="center">
												税务管理码
											</div>
										</td>
										<td>
											<html:text style="text-align: left;width:100%"
												property="swglm" maxlength="30" styleClass="srx"
												name="WB395ckfForm"></html:text>
											<html:text style="text-align: left;display: none;"
												property="nsrsbm" name="WB395ckfForm"></html:text>
										</td>
										<td></td>
										<td></td>
										<td>
											会商银01表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<html:text style="text-align: left;width:100%"
												maxlength="100" styleClass="srx" property="bzdw"
												name="WB395ckfForm"></html:text>
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
												value="<bean:write  name='WB395ckfForm' property='ssq'/>" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="syyhsyzcfzb" width="100%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="20%">
											<div align="center">
												资产
											</div>
										</td>
										<td width="4%">
											<div align="center">
												序号
											</div>
										</td>
										<td width="13%">
											<div align="center">
												期末余额
											</div>
										</td>
										<td width="13%">
											<div align="center">
												年初余额
											</div>
										</td>
										<td width="20%">
											<div align="center">
												负债和所有者权益（或股东权益）
											</div>
										</td>
										<td width="4%">
											<div align="center">
												序号
											</div>
										</td>
										<td width="13%">
											<div align="center">
												期末余额
											</div>
										</td>
										<td width="13%">
											<div align="center">
												年初余额
											</div>
										</td>
									</tr>
									<logic:present id="dataid" name="WB395ckfForm"
										property="zcsbxmlist">
										<logic:iterate id="dataid" name="WB395ckfForm"
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
													if (a != 18 && a != 25) {
												%>
												<td align="center">
													<input name="zcqmye" hc="<%=a%>" lh="1"
														id="zcqmye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqmye"/>"
														cal="true" negative="false" format="2" style="width: 100%">
												</td>
												<td>
													<input name="zcncye" hc="<%=a%>" lh="2"
														id="zcncye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcncye"/>"
														cal="true" negative="false" format="2" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td align="center">
													<input name="zcqmye" hc="<%=a%>" lh="1"
														id="zcqmye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqmye"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<td>
													<input name="zcncye" hc="<%=a%>" lh="2"
														id="zcncye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcncye"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<%
													}
												%>
												<td>
													<bean:write name="dataid" property="fzxmmc" />
													<input type="hidden" name="fzxmdm"
														value="<bean:write name="dataid" property="fzxmdm"/>">
												</td>
												<td>
													<bean:write name="dataid" property="fzhc" />
													<input type="hidden" name="fzhc"
														value="<bean:write name="dataid" property="fzhc"/>">
												</td>
												<%
													if (a < 23 && a != 19 && a != 20 && a != 15 && a != 16
																	&& a != 9 && a != 10) {
												%>
												<td align="center">
													<input name="fzqmye" hc="<%=a%>" lh="3"
														id="fzqmye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqmye"/>"
														cal="true" negative="false" format="2" style="width: 100%">
												</td>
												<td>
													<input name="fzncye" hc="<%=a%>" lh="4"
														id="fzncye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzncye"/>"
														cal="true" negative="false" format="2" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td align="center">
													<input name="fzqmye" hc="<%=a%>" lh="3"
														id="fzqmye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqmye"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<td>
													<input name="fzncye" hc="<%=a%>" lh="4"
														id="fzncye<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzncye"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<%
													}
												%>
											</tr>
										</logic:iterate>
									</logic:present>
								</table>
								<table width="100%" align="center" cellpadding="1"
									cellspacing="1" style="border-collapse: collapse"
									bordercolor="#000000">
									<tr>
										<td width="10%">
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
											<bean:write name="WB395ckfForm" property="bzrq" />
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
					<p id="lrb_tsxx" align="left">
						本表中"本期金额"填报本年1月至填报截止所属月份的累计数，"上期金额"填报去年同期数。
					</p>
					<p align="center" style="font-size: 20px">
						<br>
						<b>利 润 表<br>（企业会计准则 —— 商业银行）</b>
					</p>
					<br>
					<table width="98%" align="center" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>
								<table width="100%" align="center" cellpadding="1"
									cellspacing="1" bordercolor="#000000"
									style="border-collapse: collapse">
									<tr>
										<td>
											<div align="center">
												税务管理码
											</div>
										</td>
										<td>
											<bean:write name="WB395ckfForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会商银01表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckfForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckfForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="syyhsylrb" width="100%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="40%">
											<div align="center">
												项目
											</div>
										</td>
										<td width="10%">
											<div align="center">
												序号
											</div>
										</td>
										<td width="20%">
											<div align="center">
												本期金额
											</div>
										</td>
										<td width="20%">
											<div align="center">
												上期金额
											</div>
										</td>
									</tr>
									<logic:present id="dataid" name="WB395ckfForm"
										property="lrsbxmlist">
										<logic:iterate id="dataid" name="WB395ckfForm"
											property="lrsbxmlist" indexId="index">
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
													if (a == 3 || a == 4 || a == 6 || a == 7 || a == 14
																	|| a == 15 || a == 17 || a == 19 || a == 20) {
												%>
												<td>
													<input
														id="lrbqje<bean:write name='dataid' property='hh' />"
														name="lrbqje" hc="<%=a%>" lh="5"
														value="<bean:write name="dataid" property="bqje"/>"
														cal="true" negative="false" format="2" style="width: 100%">
												</td>
												<td>
													<input
														id="lrsqje<bean:write name='dataid' property='hh' />"
														name="lrsqje" hc="<%=a%>" lh="6"
														value="<bean:write name="dataid" property="sqje"/>"
														cal="true" negative="false" format="2" style="width: 100%">
												</td>
												<%
													} else {
												%>
												<td>
													<input
														id="lrbqje<bean:write name='dataid' property='hh' />"
														name="lrbqje" hc="<%=a%>" lh="5"
														value="<bean:write name="dataid" property="bqje"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<td>
													<input
														id="lrsqje<bean:write name='dataid' property='hh' />"
														name="lrsqje" hc="<%=a%>" lh="6"
														value="<bean:write name="dataid" property="sqje"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<%
													}
												%>
											</tr>
										</logic:iterate>
									</logic:present>
								</table>
								<table width="100%" align="center" cellpadding="1"
									cellspacing="1" style="border-collapse: collapse"
									bordercolor="#000000">
									<tr>
										<td width="10%">
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
											<bean:write name="WB395ckfForm" property="bzrq" />
										</td>
									</tr>
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
					<br>
					<p align="center" style="font-size: 20px">
						<br>
						<b>现 金 流 量 表<br>（企业会计准则 —— 商业银行）</b>
					</p>
					<br>
					<table width="98%" align="center" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>
								<table width="100%" align="center" cellpadding="1"
									cellspacing="1" bordercolor="#000000"
									style="border-collapse: collapse">
									<tr>
										<td>
											<div align="center">
												税务管理码
											</div>
										</td>
										<td>
											<bean:write name="WB395ckfForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会商银01表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckfForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckfForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="syyhsyxjllb" width="100%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="50%">
											<div align="center">
												项目
											</div>
										</td>
										<td width="10%">
											<div align="center">
												序号
											</div>
										</td>
										<td width="20%">
											<div align="center">
												本期金额
											</div>
										</td>
										<td width="20%">
											<div align="center">
												上期金额
											</div>
										</td>
									</tr>
									<logic:present id="dataid" name="WB395ckfForm"
										property="xjsbxmlist">
										<logic:iterate id="dataid" name="WB395ckfForm"
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
													<input
														id="xjbqje<bean:write name='dataid' property='hh' />"
														name="xjbqje"
														value="<bean:write name="dataid" property="bqje"/>"
														cal="true" format="2" style="width: 100%">
												</td>
												<td>
													<input
														id="xjsqje<bean:write name='dataid' property='hh' />"
														name="xjsqje"
														value="<bean:write name="dataid" property="sqje"/>"
														cal="true" format="2" style="width: 100%">
												</td>
											</tr>
										</logic:iterate>
									</logic:present>
								</table>
								<table width="100%" align="center" cellpadding="1"
									cellspacing="1" style="border-collapse: collapse"
									bordercolor="#000000">
									<tr>
										<td width="10%">
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
											<bean:write name="WB395ckfForm" property="bzrq" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<br>
		<input type="hidden" id="bbZt"
			value="<%=request.getParameter("bbZt")%>">
		<html:hidden property="pageTips" styleId="pageTips"></html:hidden>
		<span id="ajaxform"> <html:hidden property="zt" styleId="zt"></html:hidden>
			<html:hidden property="pzXh" styleId="pzXh"></html:hidden> <html:hidden
				property="sbmxxh" styleId="sbmxxh" /> <html:hidden
				property="errorMessage" styleId="errorMessage" /> <html:hidden
				property="handleDesc" styleId="handleDesc" /> <html:hidden
				property="handleCode" styleId="handleCode" /> <html:hidden
				property="sucessMsg" styleId="sucessMsg" /> </span>
		<script language="javascript" src="/public/js/tool/tabPanePrint.js"></script>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_ckf.js?<%=System.currentTimeMillis()%>"></script>
</html:html>