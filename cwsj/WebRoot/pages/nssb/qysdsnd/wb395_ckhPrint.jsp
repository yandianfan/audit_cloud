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
	<title>财务报表（企业会计准则-证券公司适用）</title>
</head>
<html:html>
<body leftMargin="0" topMargin="0">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckhAction.do"
		styleId="WB395ckhForm" method="post">
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
							<b>资产负债表<br>（企业会计准则 —— 证券公司适用）</b>
						</p>
						<br>
						<table width="98%" align="center" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>
									<table width="100%" align="center" cellpadding="1"
										cellspacing="1" bordercolor="#000000"
										style="border-collapse: collapse">
										<tr style="height: 20px">
											<td>
												<div align="center">
													税务管理码
												</div>
											</td>
											<td>
												<bean:write property="swglm" name="WB395ckhForm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会证01表
											</td>
										</tr>
										<tr style="height: 20px">
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write property="bzdw" name="WB395ckhForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckhForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="zqgssyzcfzb" width="100%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr style="height: 20px">
											<td width="20%">
												<div align="center">
													资产
												</div>
											</td>
											<td width="6%">
												<div align="center">
													序号
												</div>
											</td>
											<td width="12%">
												<div align="center">
													期末余额
												</div>
											</td>
											<td width="12%">
												<div align="center">
													年初余额
												</div>
											</td>
											<td width="20%">
												<div align="center">
													负债和所有者权益（或股东权益）
												</div>
											</td>
											<td width="6%">
												<div align="center">
													序号
												</div>
											</td>
											<td width="12%">
												<div align="center">
													期末余额
												</div>
											</td>
											<td width="12%">
												<div align="center">
													年初余额
												</div>
											</td>
										</tr>
										<logic:present id="dataid" name="WB395ckhForm"
											property="zcsbxmlist">
											<logic:iterate id="dataid" name="WB395ckhForm"
												property="zcsbxmlist">
												<tr style="height: 20px">
													<td>
														<bean:write name="dataid" property="zcxmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="zchc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zcqmye" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zcncye" />
													</td>
													<td>
														<bean:write name="dataid" property="fzxmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="fzhc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzqmye" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="fzncye" />
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
									<table width="100%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000">
										<tr style="height: 20px">
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
												编制日期：
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckhForm" />
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
							<b>利 润 表<br>（企业会计准则 —— 证券公司适用）</b>
						</p>
						<br>
						<table width="98%" align="center" border="0" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>
									<table width="100%" align="center" cellpadding="1"
										cellspacing="1" bordercolor="#000000"
										style="border-collapse: collapse">
										<tr style="height: 20px">
											<td>
												<div align="center">
													税务管理码
												</div>
											</td>
											<td>
												<bean:write property="swglm" name="WB395ckhForm" />
											</td>
											<td></td>
											<td></td>
											<td>
												会证02表
											</td>
										</tr>
										<tr style="height: 20px">
											<td width="10%">
												<div align="center">
													编制单位
												</div>
											</td>
											<td width="30%">
												<bean:write property="bzdw" name="WB395ckhForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckhForm" />
											</td>
											<td width="20%">
												单位：元
											</td>
										</tr>
									</table>
									<table id="zqgssylrb" width="100%" border="1"
										style="border-collapse: collapse" bordercolor="#000000"
										align="center" cellpadding="1" cellspacing="1">
										<tr style="height: 20px">
											<td width="40%">
												<div align="center">
													项目
												</div>
											</td>
											<td width="10%">
												<div align="center">
													行次
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
										<logic:present id="dataid" name="WB395ckhForm"
											property="lrsbxmlist">
											<logic:iterate id="dataid" name="WB395ckhForm"
												property="lrsbxmlist">
												<tr style="height: 20px">
													<td>
														<bean:write name="dataid" property="xmmc" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="hc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="bqje" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="sqje" />
													</td>
												</tr>
											</logic:iterate>
										</logic:present>
									</table>
									<table width="100%" align="center" cellpadding="1"
										cellspacing="1" style="border-collapse: collapse"
										bordercolor="#000000">
										<tr style="height: 20px">
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
												编制日期：
											</td>
											<td width="10%">
												<bean:write property="bzrq" name="WB395ckhForm" />
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
								<b>现 金 流 量 表<br>（企业会计准则 —— 证券公司适用）</b>
							</p>
							<br>
							<table width="98%" align="center" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td>
										<table width="100%" align="center" cellpadding="1"
											cellspacing="1" bordercolor="#000000"
											style="border-collapse: collapse">
											<tr style="height: 20px">
												<td>
													<div align="center">
														税务管理码
													</div>
												</td>
												<td>
													<bean:write property="swglm" name="WB395ckhForm" />
												</td>
												<td></td>
												<td></td>
												<td>
													会证03表
												</td>
											</tr>
											<tr style="height: 20px">
												<td width="10%">
													<div align="center">
														编制单位
													</div>
												</td>
												<td width="30%">
													<bean:write property="bzdw" name="WB395ckhForm" />
												</td>
												<td width="10%">
													<div align="center">
														所属期
													</div>
												</td>
												<td width="30%">
													<bean:write property="ssq" name="WB395ckhForm" />
												</td>
												<td width="20%">
													单位：元
												</td>
											</tr>
										</table>
										<table id="zqgssyxjllb" width="100%" border="1"
											style="border-collapse: collapse" bordercolor="#000000"
											align="center" cellpadding="1" cellspacing="1">
											<tr style="height: 20px">
												<td width="50%">
													<div align="center">
														项目
													</div>
												</td>
												<td width="10%">
													<div align="center">
														行次
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
											<logic:present id="dataid" name="WB395ckhForm"
												property="xjsbxmlist">
												<logic:iterate id="dataid" name="WB395ckhForm"
													property="xjsbxmlist">
													<tr style="height: 20px">
														<td>
															<bean:write name="dataid" property="xmmc" />
														</td>
														<td align="center">
															<bean:write name="dataid" property="hc" />
														</td>
														<td align="right">
															<bean:write name="dataid" property="bqje" />
														</td>
														<td align="right">
															<bean:write name="dataid" property="sqje" />
														</td>
													</tr>
												</logic:iterate>
											</logic:present>
										</table>
										<table width="100%" align="center" cellpadding="1"
											cellspacing="1" style="border-collapse: collapse"
											bordercolor="#000000">
											<tr style="height: 20px">
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
													编制日期：
												</td>
												<td width="10%">
													<bean:write property="bzrq" name="WB395ckhForm" />
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
		<html:hidden property="tabid" styleId="tabid" />
		<html:hidden property="xjllbbj" styleId="xjllbbj" />
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
</body>
<script type="text/javascript" src="./nssb/wb395/wb395_ckhPrint.js"></script>
</html:html>