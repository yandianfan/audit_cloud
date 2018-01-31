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
	<title>财务报表（行政单位会计制度适用）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckiAction.do" styleId="WB395ckiForm"
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
												tabindex="-1" name="WB395ckiForm"></html:text>
											<html:text style="text-align: left;display: none;"
												property="nsrsbm" name="WB395ckiForm"></html:text>
										</td>
										<td></td>
										<td></td>
										<td>
											会行政01表
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
												tabindex="-1" name="WB395ckiForm"></html:text>
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
												value="<bean:write  name='WB395ckiForm' property='ssq'/>" />
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
									<logic:present name="WB395ckiForm" property="zcsbxmlist">
										<logic:iterate id="dataid" name="WB395ckiForm"
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
											<bean:write name="WB395ckiForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会行政02表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckiForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckiForm" property="ssq" />
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
									<logic:present name="WB395ckiForm" property="srzcxmList">
										<logic:iterate id="dataid" name="WB395ckiForm"
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
						财政拨款收入支出表
					</h2>
					<br>
					<p align="center" style="font-size: 20px">
						<br>
						<b>财政拨款收入支出表</b>
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
											<bean:write name="WB395ckiForm" property="swglm" />
										</td>
										<td></td>
										<td></td>
										<td>
											会行政03表
										</td>
									</tr>
									<tr>
										<td width="10%">
											<div align="center">
												编制单位
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckiForm" property="bzdw" />
										</td>
										<td width="10%">
											<div align="center">
												所属期
											</div>
										</td>
										<td width="30%">
											<bean:write name="WB395ckiForm" property="ssq" />
										</td>
										<td width="20%">
											单位：元
										</td>
									</tr>
								</table>
								<table id="czbksrb" width="98%" border="1"
									style="border-collapse: collapse" bordercolor="#000000"
									align="center" cellpadding="1" cellspacing="1">
									<tr>
										<td align="center" rowspan="2" width="20%">
											项目
										</td>
										<td align="center" colspan="2" width="16%">
											年初财政拨款结转结余
										</td>
										<td align="center" rowspan="2" width="8%">
											调整年初财政拨款结转结余
										</td>
										<td align="center" rowspan="2" width="8%">
											归集调入或上缴
										</td>
										<td align="center" colspan="2" width="16%">
											单位内部调剂
										</td>
										<td align="center" rowspan="2" width="8%">
											本年财政拨款
										</td>
										<td align="center" rowspan="2" width="8%">
											本年财政拨款支出
										</td>
										<td align="center" colspan="2" width="16%">
											年末财政拨款结转结余
										</td>
									</tr>
									<tr>
										<td align="center" width="8%">
											结转
										</td>
										<td align="center" width="8%">
											结余
										</td>
										<td align="center" width="8%">
											结转
										</td>
										<td align="center" width="8%">
											结余
										</td>
										<td align="center" width="8%">
											结转
										</td>
										<td align="center" width="8%">
											结余
										</td>
									</tr>
									<tr>
										<td>
											一、公共财政预算资金
											<input type="hidden" name="mxxh" value="1">
										</td>
										<td>
											<input id="ncjz1" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy1" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy1" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj1" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz1" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy1" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk1" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc1" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz1" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy1" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出
											<input type="hidden" name="mxxh" value="2">
										</td>
										<td>
											<input id="ncjz2" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy2" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy2" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj2" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz2" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy2" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk2" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc2" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz2" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy2" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="3">
										</td>
										<td>
											<input id="ncjz3" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy3" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy3" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj3" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz3" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy3" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk3" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc3" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz3" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy3" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="4">
										</td>
										<td>
											<input id="ncjz4" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy4" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy4" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj4" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz4" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy4" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk4" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc4" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz4" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy4" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出
											<input type="hidden" name="mxxh" value="5">
										</td>
										<td>
											<input id="ncjz5" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy5" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy5" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj5" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz5" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy5" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk5" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc5" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz5" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy5" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.
											<input id="xmmc1" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="1">
											<input type="hidden" name="mxxh" value="6">
										</td>
										<td>
											<input id="ncjz6" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy6" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy6" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj6" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz6" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy6" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk6" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc6" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz6" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy6" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="2">
											<input type="hidden" name="mxxh" value="7">
										</td>
										<td>
											<input id="ncjz7" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy7" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy7" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj7" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz7" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy7" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk7" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc7" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz7" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy7" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											3.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="3">
											<input type="hidden" name="mxxh" value="8">
										</td>
										<td>
											<input id="ncjz8" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy8" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy8" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj8" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz8" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy8" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk8" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc8" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz8" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy8" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											4.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="4">
											<input type="hidden" name="mxxh" value="9">
										</td>
										<td>
											<input id="ncjz9" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy9" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy9" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj9" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz9" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy9" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk9" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc9" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz9" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy9" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											5.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="5">
											<input type="hidden" name="mxxh" value="10">
										</td>
										<td>
											<input id="ncjz10" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy10" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy10" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj10" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz10" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy10" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk10" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc10" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz10" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy10" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											6.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="6">
											<input type="hidden" name="mxxh" value="11">
										</td>
										<td>
											<input id="ncjz11" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy11" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy11" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj11" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz11" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy11" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk11" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc11" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy11" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											7.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="7">
											<input type="hidden" name="mxxh" value="12">
										</td>
										<td>
											<input id="ncjz12" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy12" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy12" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj12" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz12" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy12" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk12" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc12" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz12" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy12" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											8.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="8">
											<input type="hidden" name="mxxh" value="13">
										</td>
										<td>
											<input id="ncjz13" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy13" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy13" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj13" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz13" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy13" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk13" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc13" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz13" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy13" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											9.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="9">
											<input type="hidden" name="mxxh" value="14">
										</td>
										<td>
											<input id="ncjz14" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy14" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy14" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj14" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz14" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy14" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk14" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc14" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz14" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy14" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											10.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="10">
											<input type="hidden" name="mxxh" value="15">
										</td>
										<td>
											<input id="ncjz15" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy15" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy15" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj15" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz15" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy15" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk15" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc15" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz15" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy15" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											二、政府性基金预算资金
											<input type="hidden" name="mxxh" value="16">
										</td>
										<td>
											<input id="ncjz16" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy16" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy16" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj16" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz16" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy16" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk16" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc16" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz16" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy16" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（一）基本支出
											<input type="hidden" name="mxxh" value="17">
										</td>
										<td>
											<input id="ncjz17" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy17" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy17" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj17" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz17" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy17" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk17" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc17" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz17" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy17" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.人员经费
											<input type="hidden" name="mxxh" value="18">
										</td>
										<td>
											<input id="ncjz18" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy18" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy18" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj18" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz18" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy18" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk18" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc18" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz18" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy18" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.日常公用经费
											<input type="hidden" name="mxxh" value="19">
										</td>
										<td>
											<input id="ncjz19" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy19" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy19" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj19" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz19" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy19" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk19" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc19" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz19" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy19" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											（二）项目支出
											<input type="hidden" name="mxxh" value="20">
										</td>
										<td>
											<input id="ncjz20" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy20" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy20" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj20" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz20" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy20" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk20" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc20" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz20" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy20" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											1.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="11">
											<input type="hidden" name="mxxh" value="21">
										</td>
										<td>
											<input id="ncjz21" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy21" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy21" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj21" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz21" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy21" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk21" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc21" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz21" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy21" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											2.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="12">
											<input type="hidden" name="mxxh" value="22">
										</td>
										<td>
											<input id="ncjz22" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy22" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy22" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj22" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz22" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy22" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk22" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc22" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz22" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy22" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											3.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="13">
											<input type="hidden" name="mxxh" value="23">
										</td>
										<td>
											<input id="ncjz23" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy23" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy23" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj23" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz23" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy23" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk23" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc23" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz23" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy23" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											4.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="14">
											<input type="hidden" name="mxxh" value="24">
										</td>
										<td>
											<input id="ncjz24" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy24" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy24" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj24" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz24" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy24" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk24" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc24" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz24" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy24" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											5.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="15">
											<input type="hidden" name="mxxh" value="25">
										</td>
										<td>
											<input id="ncjz25" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy25" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy25" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj25" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz25" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy25" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk25" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc25" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz25" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy25" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											6.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="16">
											<input type="hidden" name="mxxh" value="26">
										</td>
										<td>
											<input id="ncjz26" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy26" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy26" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj26" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz26" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy26" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk26" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc26" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz26" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy26" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											7.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="17">
											<input type="hidden" name="mxxh" value="27">
										</td>
										<td>
											<input id="ncjz27" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy27" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy27" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj27" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz27" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy27" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk27" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc27" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz27" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy27" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											8.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="18">
											<input type="hidden" name="mxxh" value="28">
										</td>
										<td>
											<input id="ncjz28" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy28" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy28" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj28" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz28" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy28" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk28" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc28" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz28" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy28" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											9.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="19">
											<input type="hidden" name="mxxh" value="29">
										</td>
										<td>
											<input id="ncjz29" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy29" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy29" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj29" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz29" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy29" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk29" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc29" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz29" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy29" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											10.
											<input id="xmmc" name="xmmc" value=""
												style="width: 60%; text-align: left; background-color: '#87CEFA';">
											项目
											<input type="hidden" name="xmxh" value="20">
											<input type="hidden" name="mxxh" value="30">
										</td>
										<td>
											<input id="ncjz30" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy30" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy30" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj30" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz30" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy30" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk30" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc30" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz30" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy30" name="nmjy" cal="true" format="2"
												style="width: 100%">
										</td>
									</tr>
									<tr>
										<td>
											总计
											<input type="hidden" name="mxxh" value="31">
										</td>
										<td>
											<input id="ncjz31" name="ncjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="ncjy31" name="ncjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="tzjy31" name="tzjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="gjsj31" name="gjsj" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjz31" name="dwjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="dwjy31" name="dwjy" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czbk31" name="czbk" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="czzc31" name="czzc" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjz31" name="nmjz" cal="true" format="2"
												style="width: 100%">
										</td>
										<td>
											<input id="nmjy31" name="nmjy" cal="true" format="2"
												style="width: 100%">
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
				name="WB395ckiForm" styleId="zt"></html:hidden> <html:hidden
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
	src="./nssb/wb395/wb395_cki.js?<%=System.currentTimeMillis()%>"></script>
</html:html>