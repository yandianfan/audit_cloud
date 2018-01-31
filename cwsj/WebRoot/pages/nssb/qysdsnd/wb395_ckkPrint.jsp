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
	<title>民间非营利组织会计制度</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckkAction.do"
		styleId="WB395ckkForm" method="post">
		<div style="width: 100%" align="center" id="mainDiv">
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
							<b>资产负债表<br>（民间非营利组织会计制度适用）</b>
						</p>
						<br>
						<table align="center" width="98%" border="0" cellpadding="0"
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
												<bean:write property="swglm" name="WB395ckkForm" />
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
												<bean:write property="bzdw" name="WB395ckkForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckkForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="jrqysyzcfzb" width="100%" border="1"
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
													</td>
													<td align="center">
														<bean:write name="dataid" property="zchc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zncs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zqms" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzxmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="fzhc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzncs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzqms" />
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
												编制日期
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckkForm" />
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
					<div id="div1">
						<p align="center" style="font-size: 20px">
							<br>
							<b>业务活动表<br>（民间非营利组织会计制度适用）</b>
						</p>
						<br>
						<table align="center" width="98%" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>
									<table width="100%" cellpadding="1" cellspacing="1"
										bordercolor="#000000" style="border-collapse: collapse">
										<tr>
											<td>
												<div align="center">
													税务管理码
												</div>
											</td>
											<td>
												<bean:write property="swglm" name="WB395ckkForm" />
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
												<bean:write property="bzdw" name="WB395ckkForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckkForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="jrqysylrb" width="100%" border="1"
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
												</input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												其中：捐赠收入
											</td>
											<td align="center">
												1
												<input type="hidden" name="mxxh" value="2"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												会费收入
											</td>
											<td align="center">
												2
												<input type="hidden" name="mxxh" value="3"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												提供服务收入
											</td>
											<td align="center">
												3
												<input type="hidden" name="mxxh" value="4"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												商品销售收入
											</td>
											<td align="center">
												4
												<input type="hidden" name="mxxh" value="5"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												政府补助收入
											</td>
											<td align="center">
												5
												<input type="hidden" name="mxxh" value="6"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												投资收益
											</td>
											<td align="center">
												6
												<input type="hidden" name="mxxh" value="7"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												其他收入
											</td>
											<td align="center">
												9
												<input type="hidden" name="mxxh" value="8"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												收入合计
											</td>
											<td align="center">
												11
												<input type="hidden" name="mxxh" value="9"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												二、费用
											</td>
											<td align="center">
												<input type="hidden" name="mxxh" value="10"></input>
											</td>

											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												（一）业务活动成本
											</td>
											<td align="center">
												12
												<input type="hidden" name="mxxh" value="11"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="1"></input>
												其中：
												<input id="ywhdnr" name="ywhdnr"
													style="width: 80%; text-align: left;"></input>
											</td>
											<td align="center">
												13
												<input type="hidden" name="mxxh" value="12"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="2"></input>
												<input id="ywhdnr" name="ywhdnr"
													style="width: 100%; text-align: left;"></input>
											</td>
											<td align="center">
												14
												<input type="hidden" name="mxxh" value="13"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="3"></input>
												<input id="ywhdnr" name="ywhdnr"
													style="width: 100%; text-align: left;"></input>
											</td>
											<td align="center">
												15
												<input type="hidden" name="mxxh" value="14"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												<input type="hidden" name="ywhdfbxh" value="4"></input>
												<input id="ywhdnr" name="ywhdnr"
													style="width: 100%; text-align: left;"></input>
											</td>
											<td align="center">
												16
												<input type="hidden" name="mxxh" value="15"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												（二）管理费用
											</td>
											<td align="center">
												21
												<input type="hidden" name="mxxh" value="16"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												（三）筹资费用
											</td>
											<td align="center">
												24
												<input type="hidden" name="mxxh" value="17"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												（四）其他费用
											</td>
											<td align="center">
												28
												<input type="hidden" name="mxxh" value="18"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												费用合计
											</td>
											<td align="center">
												35
												<input type="hidden" name="mxxh" value="19"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												三、限定性净资产转为非限定性净资产
											</td>
											<td align="center">
												40
												<input type="hidden" name="mxxh" value="20"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>
										<tr>
											<td>
												四、净资产变动额（若为净资产减少额，以“-”号填列）
											</td>
											<td align="center">
												45
												<input type="hidden" name="mxxh" value="21"></input>
											</td>
											<td class="byfjdx" align="right">

											</td>
											<td class="byjdx" align="right">

											</td>
											<td class="byhj" align="right">

											</td>
											<td class="bnfjdx" align="right">

											</td>
											<td class="bnjdx" align="right">

											</td>
											<td class="bnhj" align="right">

											</td>
										</tr>

									</table>
									<table width="100%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000">
										<tr>
											<td width="10%">
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
												编制日期
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckkForm" />
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
						<div id="div2">
							<p align="center" style="font-size: 20px">
								<br>
								<b>现金流量表<br>（民间非营利组织会计制度适用）</b>
							</p>
							<br>
							<table align="center" width="98%" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td>
										<table width="100%" cellpadding="1" cellspacing="1"
											bordercolor="#000000" style="border-collapse: collapse">
											<tr>
												<td>
													<div align="center">
														税务管理码
													</div>
												</td>
												<td>
													<bean:write property="swglm" name="WB395ckkForm" />
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
													<bean:write property="bzdw" name="WB395ckkForm" />
												</td>
												<td width="10%">
													<div align="center">
														所属期
													</div>
												</td>
												<td width="30%">
													<bean:write property="ssq" name="WB395ckkForm" />
												</td>
												<td width="20%">
													单位：元
												</td>
											</tr>
										</table>
										<table id="jrqysyxjllb" width="100%" border="1"
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
												<td width="10%">
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
													编制日期
												</td>
												<td width="10%">
													<bean:write property="bzrq" name="WB395ckkForm" />
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
		<br>
		<html:hidden property="tabid" styleId="tabid" />
		<html:hidden property="xjllbbj" styleId="xjllbbj" />
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
		<html:hidden property="hdmxString" styleId="hdmxString"></html:hidden>
		<html:hidden property="hdmxFbString" styleId="hdmxFbString"></html:hidden>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_ckkPrint.js?<%=System.currentTimeMillis()%>"></script>
</html:html>