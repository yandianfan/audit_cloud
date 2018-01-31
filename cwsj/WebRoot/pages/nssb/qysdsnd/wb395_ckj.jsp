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
	<title>财务报表（事业单位会计制度适用）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckjAction.do" styleId="WB395ckjForm"
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
						<b>资产负债表</b>
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
												tabindex="-1" name="WB395ckjForm"></html:text>
											<html:text style="text-align: left;display: none;"
												property="nsrsbm" name="WB395ckjForm"></html:text>
										</td>
										<td></td>
										<td></td>
										<td>
											会事业01表
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
												tabindex="-1" name="WB395ckjForm"></html:text>
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
												value="<bean:write  name='WB395ckjForm' property='ssq'/>" />
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
										<td width="20%" align="center">
											资产
										</td>
										<td width="15%" align="center">
											期末余额
										</td>
										<td id="zctitleqc" width="15%" align="center">
											年初余额
										</td>
										<td id="zctitleqm" width="20%" align="center">
											负债和净资产
										</td>
										<td width="15%" align="center">
											期末余额
										</td>
										<td width="15%" align="center">
											年初余额
										</td>
									</tr>
									<logic:present name="WB395ckjForm" property="zcsbxmlist">
										<logic:iterate id="dataid" name="WB395ckjForm"
											property="zcsbxmlist">
											<tr>
												<td>
													<bean:write name="dataid" property="zcxmmc" />
													<input type="hidden" name="zcxmdm"
														value="<bean:write name="dataid" property="zcxmdm"/>">
												</td>
												<td>
													<input name="zcqcs"
														id="zcqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqcs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="zcqms"
														id="zcqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="zcqms"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<bean:write name="dataid" property="fzxmmc" />
													<input type="hidden" name="fzxmdm"
														value="<bean:write name="dataid" property="fzxmdm"/>">
												</td>
												<td>
													<input name="fzqcs"
														id="fzqcs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqcs"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="fzqms"
														id="fzqms<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="fzqms"/>"
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
				<div class="tab-page" id="tabPage2"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh2">
						收入支出表
					</h2>
					<br>
					<p align="center" style="font-size: 20px">
						<br>
						<b>收入支出表</b>
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
											<bean:write name="WB395ckjForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会事业02表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckjForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckjForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="syzdsrzcb" width="98%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="60%">
											<div align="center">
												项目
											</div>
										</td>
										<td width="20%">
											<div align="center">
												本月数
											</div>
										</td>
										<td width="20%">
											<div align="center">
												本年累计数
											</div>
										</td>
									</tr>
									<logic:present name="WB395ckjForm" property="srzcxmList">
										<logic:iterate id="dataid" name="WB395ckjForm"
											property="srzcxmList">
											<tr>
												<td>
													<bean:write name="dataid" property="srxmmc" />
													<input type="hidden" name="srxmdm"
														value="<bean:write name="dataid" property="srxmdm"/>">
												</td>
												<td>
													<input name="srbys"
														id="srbys<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="srbys"/>"
														cal="true" style="width: 100%">
												</td>
												<td>
													<input name="srljs"
														id="srljs<bean:write name='dataid' property='hh' />"
														value="<bean:write name="dataid" property="srljs"/>"
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
						财政补助收入支出表
					</h2>
					<br>
					<p align="center" style="font-size: 20px">
						<br>
						<b>财政补助收入支出表</b>
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
											<bean:write name="WB395ckjForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会事业03表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckjForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckjForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="czbzsrb" width="98%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td width="60%">
											<div align="center">
												项目
											</div>
										</td>
										<td width="20%">
											<div align="center">
												本月数
											</div>
										</td>
										<td width="20%">
											<div align="center">
												本年累计数
											</div>
										</td>
									</tr>
									<tr>
										<td>
											一、年初财政补助结转结余
											<input type="hidden" name="mxxh" value="1">
										</td>
										<td>
											<input id="bnsr1" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr1" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出结转
											<input type="hidden" name="mxxh" value="2">
										</td>
										<td>
											<input id="bnsr2" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr2" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="3">
										</td>
										<td>
											<input id="bnsr3" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr3" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="4">
										</td>
										<td>
											<input id="bnsr4" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr4" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出结转
											<input type="hidden" name="mxxh" value="5">
										</td>
										<td>
											<input id="bnsr5" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr5" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc1" type="text" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="6">
											<input type="hidden" name="xmxh" value="1">
										</td>
										<td>
											<input id="bnsr6" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr6" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（三）项目支出结余
											<input type="hidden" name="mxxh" value="7">
										</td>
										<td>
											<input id="bnsr7" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr7" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											二、调整年初财政补助结转结余
											<input type="hidden" name="mxxh" value="8">
										</td>
										<td>
											<input id="bnsr8" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr8" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出结转
											<input type="hidden" name="mxxh" value="9">
										</td>
										<td>
											<input id="bnsr9" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr9" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="10">
										</td>
										<td>
											<input id="bnsr10" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr10" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="11">
										</td>
										<td>
											<input id="bnsr11" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr11" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出结转
											<input type="hidden" name="mxxh" value="12">
										</td>
										<td>
											<input id="bnsr12" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr12" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc2" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="13">
											<input type="hidden" name="xmxh" value="2">
										</td>
										<td>
											<input id="bnsr13" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr13" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（三）项目支出结余
											<input type="hidden" name="mxxh" value="14">
										</td>
										<td>
											<input id="bnsr14" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr14" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											三、本年归集调入财政补助结转结余
											<input type="hidden" name="mxxh" value="15">
										</td>
										<td>
											<input id="bnsr15" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr15" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出结转
											<input type="hidden" name="mxxh" value="16">
										</td>
										<td>
											<input id="bnsr16" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr16" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="17">
										</td>
										<td>
											<input id="bnsr17" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr17" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="18">
										</td>
										<td>
											<input id="bnsr18" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr18" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出结转
											<input type="hidden" name="mxxh" value="19">
										</td>
										<td>
											<input id="bnsr19" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr19" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc3" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="20">
											<input type="hidden" name="xmxh" value="3">
										</td>
										<td>
											<input id="bnsr20" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr20" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（三）项目支出结余
											<input type="hidden" name="mxxh" value="21">
										</td>
										<td>
											<input id="bnsr21" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr21" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											四、本年上缴财政补助结转结余
											<input type="hidden" name="mxxh" value="22">
										</td>
										<td>
											<input id="bnsr22" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr22" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出结转
											<input type="hidden" name="mxxh" value="23">
										</td>
										<td>
											<input id="bnsr23" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr23" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="24">
										</td>
										<td>
											<input id="bnsr24" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr24" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="25">
										</td>
										<td>
											<input id="bnsr25" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr25" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出结转
											<input type="hidden" name="mxxh" value="26">
										</td>
										<td>
											<input id="bnsr26" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr26" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc4" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="27">
											<input type="hidden" name="xmxh" value="4">
										</td>
										<td>
											<input id="bnsr27" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr27" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（三）项目支出结余
											<input type="hidden" name="mxxh" value="28">
										</td>
										<td>
											<input id="bnsr28" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr28" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											五、本年财政补助收入
											<input type="hidden" name="mxxh" value="29">
										</td>
										<td>
											<input id="bnsr29" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr29" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出
											<input type="hidden" name="mxxh" value="30">
										</td>
										<td>
											<input id="bnsr30" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr30" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="31">
										</td>
										<td>
											<input id="bnsr31" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr31" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="32">
										</td>
										<td>
											<input id="bnsr32" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr32" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出
											<input type="hidden" name="mxxh" value="33">
										</td>
										<td>
											<input id="bnsr33" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr33" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc5" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="34">
											<input type="hidden" name="xmxh" value="5">
										</td>
										<td>
											<input id="bnsr34" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr34" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											六、本年财政补助支出
											<input type="hidden" name="mxxh" value="35">
										</td>
										<td>
											<input id="bnsr35" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr35" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出
											<input type="hidden" name="mxxh" value="36">
										</td>
										<td>
											<input id="bnsr36" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr36" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="37">
										</td>
										<td>
											<input id="bnsr37" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr37" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="38">
										</td>
										<td>
											<input id="bnsr38" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr38" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出
											<input type="hidden" name="mxxh" value="39">
										</td>
										<td>
											<input id="bnsr39" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr39" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc6" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="40">
											<input type="hidden" name="xmxh" value="6">
										</td>
										<td>
											<input id="bnsr40" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="snsr40" name="snsr" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											七、年末财政补助结转结余
											<input type="hidden" name="mxxh" value="41">
										</td>
										<td>
											<input id="bnsr41" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr41" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出结转
											<input type="hidden" name="mxxh" value="42">
										</td>
										<td>
											<input id="bnsr42" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr42" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="43">
										</td>
										<td>
											<input id="bnsr43" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr43" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="44">
										</td>
										<td>
											<input id="bnsr44" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr44" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出结转
											<input type="hidden" name="mxxh" value="45">
										</td>
										<td>
											<input id="bnsr45" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr45" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											<input id="xmmc7" name="xmmc" value=""
												style="width: 80%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="mxxh" value="46">
											<input type="hidden" name="xmxh" value="7">
										</td>
										<td>
											<input id="bnsr46" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr46" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
									<tr>
										<td>
											（三）项目支出结余
											<input type="hidden" name="mxxh" value="47">
										</td>
										<td>
											<input id="bnsr47" name="bnsr" cal="true" format="2"
												style="width: 100%">
										</td>
										<td align="center">
											<input id="snsr47" type="hidden" name="snsr" cal="true"
												format="2" style="width: 100%">
											——
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<input type="hidden" id="bbZt"
			value="<%=request.getParameter("bbZt")%>">
		<html:hidden property="pageTips" styleId="pageTips"></html:hidden>
		<html:hidden property="bizData" styleId="bizData" />
		<span id="ajaxform"> <html:hidden property="zt"
				name="WB395ckjForm" styleId="zt"></html:hidden> <html:hidden
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
	src="./nssb/wb395/wb395_ckj.js?<%=System.currentTimeMillis()%>"></script>
</html:html>