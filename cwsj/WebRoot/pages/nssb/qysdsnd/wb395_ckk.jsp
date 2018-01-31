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
	<title>民间非营利组织会计制度</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckkAction.do" styleId="WB395ckkForm"
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
					<div id="div1">
						<p align="center" style="font-size: 20px">
							<br>
							<b>资产负债表<br>（民间非营利组织会计制度适用）</b>
						</p>
						<br>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
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
													tabindex="-1" name="WB395ckkForm"></html:text>
												<html:text style="text-align: left;display: none;"
													property="nsrsbm" name="WB395ckkForm"></html:text>
											</td>
											<td></td>
											<td></td>
											<td>
												会民非01表
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
													tabindex="-1" name="WB395ckkForm"></html:text>
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
													value="<bean:write  name='WB395ckkForm' property='ssq'/>" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="xqyzdzcfzb" width="98%" border="1"
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
												负债和净资产
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
										<logic:present id="dataid" name="WB395ckkForm"
											property="zcsbxmlist">
											<logic:iterate id="dataid" name="WB395ckkForm"
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
													<td align="center">
														<input name="zncs"
															id="zncs<bean:write name='dataid' property='hh' />"
															value="<bean:write name="dataid" property="zncs"/>"
															cal="true" format="2" style="width: 100%">
													</td>
													<td>
														<input name="zqms"
															id="zqms<bean:write name='dataid' property='hh' />"
															value="<bean:write name="dataid" property="zqms"/>"
															cal="true" format="2" style="width: 100%">
													</td>
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
													<td align="center">
														<input name="fzncs"
															id="fzncs<bean:write name='dataid' property='hh' />"
															value="<bean:write name="dataid" property="fzncs"/>"
															cal="true" format="2" style="width: 100%">
													</td>
													<td>
														<input name="fzqms"
															id="fzqms<bean:write name='dataid' property='hh' />"
															value="<bean:write name="dataid" property="fzqms"/>"
															cal="true" format="2" style="width: 100%">
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
									<table width="98%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000" class="wz">
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
												<html:text style="text-align: left;width:100%"
													property="bzrq" styleClass="read" name="WB395ckkForm"></html:text>
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
						业务活动表
					</h2>
					<br>
					<div id="div2">
						<p align="center" style="font-size: 20px">
							<br>
							<b>业务活动表<br>（民间非营利组织会计制度适用）</b>
						</p>
						<br>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
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
												<bean:write name="WB395ckkForm" property="swglm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会民非02表
											</td>
										</tr>
										<tr>
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write name="WB395ckkForm" property="bzdw" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write name="WB395ckkForm" property="ssq" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="xqyzdlrb" width="98%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr>
											<td width="40%" rowspan="2">
												<div align="center">
													项目
												</div>
											</td>
											<td width="10%" rowspan="2">
												<div align="center">
													行次
												</div>
											</td>
											<td width="25%" colspan="3">
												<div align="center">
													本月数
												</div>
											</td>
											<td width="25%" colspan="3">
												<div align="center">
													本年累计数
												</div>
											</td>
										</tr>
										<tr>
											<td align="center">
												非限定性
											</td>
											<td align="center">
												限定性
											</td>
											<td align="center">
												合计
											</td>
											<td align="center">
												非限定性
											</td>
											<td align="center">
												限定性
											</td>
											<td align="center">
												合计
											</td>
										</tr>
										<tr>
											<td>
												一、收入
											</td>
											<td>
												<input type="hidden" name="mxxh" value="1">
											</td>
											<td>
												<input id="byfjdx1" name="byfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byjdx1" name="byjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byhj1" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx1" name="bnfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnjdx1" name="bnjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnhj1" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>

										</tr>
										<tr>
											<td>
												其中：捐赠收入
											</td>
											<td align="center">
												1
												<input type="hidden" name="mxxh" value="2">
											</td>
											<td>
												<input id="byfjdx2" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx2" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj2" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx2" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx2" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj2" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												会费收入
											</td>
											<td align="center">
												2
												<input type="hidden" name="mxxh" value="3">
											</td>
											<td>

												<input id="byfjdx3" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx3" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj3" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx3" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx3" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj3" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												提供服务收入
											</td>
											<td align="center">
												3
												<input type="hidden" name="mxxh" value="4">
											</td>
											<td>

												<input id="byfjdx4" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx4" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj4" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx4" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx4" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj4" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												商品销售收入
											</td>
											<td align="center">
												4
												<input type="hidden" name="mxxh" value="5">
											</td>
											<td>

												<input id="byfjdx5" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx5" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj5" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx5" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx5" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj5" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												政府补助收入
											</td>
											<td align="center">
												5
												<input type="hidden" name="mxxh" value="6">
											</td>
											<td>

												<input id="byfjdx6" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx6" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj6" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx6" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx6" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj6" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												投资收益
											</td>
											<td align="center">
												6
												<input type="hidden" name="mxxh" value="7">
											</td>
											<td>

												<input id="byfjdx7" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx7" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj7" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx7" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx7" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj7" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												其他收入
											</td>
											<td align="center">
												9
												<input type="hidden" name="mxxh" value="8">
											</td>
											<td>

												<input id="byfjdx8" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx8" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj8" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx8" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx8" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj8" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												收入合计
											</td>
											<td align="center">
												11
												<input type="hidden" name="mxxh" value="9">
											</td>
											<td>

												<input id="byfjdx9" name="byfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byjdx9" name="byjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byhj9" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx9" name="bnfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnjdx9" name="bnjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnhj9" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												二、费用
											</td>
											<td align="center">
												<input type="hidden" name="mxxh" value="10">
											</td>

											<td>

												<input id="byfjdx10" name="byfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byjdx10" name="byjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byhj10" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx10" name="bnfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnjdx10" name="bnjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnhj10" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												（一）业务活动成本
											</td>
											<td align="center">
												12
												<input type="hidden" name="mxxh" value="11">
											</td>
											<td>

												<input id="byfjdx11" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx11" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj11" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx11" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx11" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj11" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="1">
												其中：
												<input id="ywhdnr" name="ywhdnr" value=""
													style="width: 80%; text-align: left;">
											</td>
											<td align="center">
												13
												<input type="hidden" name="mxxh" value="12">
											</td>
											<td>

												<input id="byfjdx12" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx12" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj12" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx12" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx12" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj12" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="2">
												<input id="ywhdnr" name="ywhdnr" value=""
													style="width: 100%; text-align: left;">
											</td>
											<td align="center">
												14
												<input type="hidden" name="mxxh" value="13">
											</td>
											<td>

												<input id="byfjdx13" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx13" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj13" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx13" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx13" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj13" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="3">
												<input id="ywhdnr" name="ywhdnr" value=""
													style="width: 100%; text-align: left;">
											</td>
											<td align="center">
												15
												<input type="hidden" name="mxxh" value="14">
											</td>
											<td>

												<input id="byfjdx14" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx14" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj14" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx14" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx14" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj14" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="4">
												<input id="ywhdnr" name="ywhdnr" value=""
													style="width: 100%; text-align: left;">
											</td>
											<td align="center">
												16
												<input type="hidden" name="mxxh" value="15">
											</td>
											<td>

												<input id="byfjdx15" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx15" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj15" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx15" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx15" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj15" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												（二）管理费用
											</td>
											<td align="center">
												21
												<input type="hidden" name="mxxh" value="16">
											</td>
											<td>

												<input id="byfjdx16" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx16" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj16" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx16" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx16" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj16" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												（三）筹资费用
											</td>
											<td align="center">
												24
												<input type="hidden" name="mxxh" value="17">
											</td>
											<td>

												<input id="byfjdx17" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx17" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj17" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx17" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx17" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj17" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												（四）其他费用
											</td>
											<td align="center">
												28
												<input type="hidden" name="mxxh" value="18">
											</td>
											<td>

												<input id="byfjdx18" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx18" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj18" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx18" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx18" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj18" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												费用合计
											</td>
											<td align="center">
												35
												<input type="hidden" name="mxxh" value="19">
											</td>
											<td>

												<input id="byfjdx19" name="byfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byjdx19" name="byjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="byhj19" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx19" name="bnfjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnjdx19" name="bnjdx" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnhj19" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												三、限定性净资产转为非限定性净资产
											</td>
											<td align="center">
												40
												<input type="hidden" name="mxxh" value="20">
											</td>
											<td>

												<input id="byfjdx20" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx20" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj20" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx20" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx20" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj20" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
										<tr>
											<td>
												四、净资产变动额（若为净资产减少额，以“-”号填列）
											</td>
											<td align="center">
												45
												<input type="hidden" name="mxxh" value="21">
											</td>
											<td>

												<input id="byfjdx21" name="byfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byjdx21" name="byjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="byhj21" name="byhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
											<td>
												<input id="bnfjdx21" name="bnfjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnjdx21" name="bnjdx" cal="true" format="2"
													style="width: 100%">
											</td>
											<td>
												<input id="bnhj21" name="bnhj" cal="true" format="2"
													class="read" readonly="readonly" style="width: 100%">
											</td>
										</tr>
									</table>
									<table width="98%" align="center" cellpadding="1"
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
												<html:text style="text-align: left;width:100%"
													property="bzrq" styleClass="read" name="WB395ckkForm"></html:text>
											</td>
										</tr>
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
					<div id="div3">
						<p align="center" style="font-size: 20px">
							<br>
							<b>现金流量表<br>（民间非营利组织会计制度适用）</b>
						</p>
						<br>
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
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
												<bean:write name="WB395ckkForm" property="swglm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会民非03表
											</td>
										</tr>
										<tr>
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write name="WB395ckkForm" property="bzdw" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write name="WB395ckkForm" property="ssq" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="xjllb" width="98%" border="1"
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
										<logic:present id="dataid" name="WB395ckkForm"
											property="xjsbxmlist">
											<logic:iterate id="dataid" name="WB395ckkForm"
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
															cal="true" format="2" style="width: 100%">
													</td>
												</tr>
											</logic:iterate>
										</logic:present>

									</table>
									<table width="98%" align="center" cellpadding="1"
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
												<html:text style="text-align: left;width:100%"
													property="bzrq" styleClass="read" name="WB395ckkForm"></html:text>
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
			<span id="ajaxform"> <html:hidden property="zt"
					name="WB395ckkForm" styleId="zt"></html:hidden> <html:hidden
					property="pzXh" styleId="pzXh"></html:hidden> <html:hidden
					property="sbmxxh" styleId="sbmxxh" /> <html:hidden
					property="errorMessage" styleId="errorMessage" /> <html:hidden
					property="handleDesc" styleId="handleDesc" /> <html:hidden
					property="handleCode" styleId="handleCode" /> <html:hidden
					property="sucessMsg" styleId="sucessMsg" /> </span>
			<html:hidden property="hdmxString" styleId="hdmxString"></html:hidden>
			<html:hidden property="hdmxFbString" styleId="hdmxFbString"></html:hidden>
			<script language="javascript" src="/public/js/tool/tabPanePrint.js"></script>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_ckk.js?<%=System.currentTimeMillis()%>"></script>
</html:html>