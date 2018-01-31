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
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>财务报表（事业单位会计制度适用）</title>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
</head>
<html:html>
<body leftMargin="0" topMargin="0" onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395ckjAction.do" styleId="WB395ckjForm"
		method="post">
		<div style="width: 100%" align="center" id="mainDiv">
			<br>
			<table align="center" width="98%">
				<tr>
					<td>
						<font color="red" style="font-weight: bold; text-align: left"
							size="3">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;根据《征管法》规定，您负有向税务机关如实提供涉税信息的义务。请您确认和提供信息，并对信息的真实性、准确性、完整性负责，否则将承担相应法律责任。</font>
					</td>
				</tr>
			</table>
			<br>
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
												<bean:write property="swglm" name="WB395ckjForm" />
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
												<bean:write property="bzdw" name="WB395ckjForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckjForm" />
											</td>
											<td width="20%">
												单位：元（以下至角分）
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
													<td align="center">
														<bean:write name="dataid" property="zcxmmc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zcqcs" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="zcqms" />
													</td>
													<td align="center">
														<bean:write name="dataid" property="fzxmmc" />
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
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tab-page" id="tabPage2"
					style="width: 100%; page-break-after: always;">
					<h2 class="tab" id="tabh2">
						收入支出表
					</h2>
					<br>
					<div id="div1">
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
												<bean:write property="swglm" name="WB395ckjForm" />
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
												<bean:write property="bzdw" name="WB395ckjForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckjForm" />
											</td>
											<td width="20%">
												单位：元(以下至角分)
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
													<td align="center">
														<bean:write name="dataid" property="srxmmc" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="srbys" />
													</td>
													<td align="right">
														<bean:write name="dataid" property="srljs" />
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
						财政补助收入支出表
					</h2>
					<br>
					<div id="div2">
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
												<bean:write property="swglm" name="WB395ckjForm" />
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
												<bean:write property="bzdw" name="WB395ckjForm" />
											</td>
											<td width="10%">
												<div align="center">
													所属期
												</div>
											</td>
											<td width="30%">
												<bean:write property="ssq" name="WB395ckjForm" />
											</td>
											<td width="20%">
												单位：元(以下至角分)
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
												<input type="hidden" name="mxxh" value="1"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出结转
												<input type="hidden" name="mxxh" value="2"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="3"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="4"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出结转
												<input type="hidden" name="mxxh" value="5"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="6"></input>
												<input type="hidden" name="xmxh" value="1"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（三）项目支出结余
												<input type="hidden" name="mxxh" value="7"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												二、调整年初财政补助结转结余
												<input type="hidden" name="mxxh" value="8"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出结转
												<input type="hidden" name="mxxh" value="9"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="10"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="11"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出结转
												<input type="hidden" name="mxxh" value="12"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="13"></input>
												<input type="hidden" name="xmxh" value="2"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（三）项目支出结余
												<input type="hidden" name="mxxh" value="14"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												三、本年归集调入财政补助结转结余
												<input type="hidden" name="mxxh" value="15"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出结转
												<input type="hidden" name="mxxh" value="16"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="17"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="18"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出结转
												<input type="hidden" name="mxxh" value="19"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="20"></input>
												<input type="hidden" name="xmxh" value="3"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（三）项目支出结余
												<input type="hidden" name="mxxh" value="21"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												四、本年上缴财政补助结转结余
												<input type="hidden" name="mxxh" value="22"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出结转
												<input type="hidden" name="mxxh" value="23"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="24"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="25"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出结转
												<input type="hidden" name="mxxh" value="26"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="27"></input>
												<input type="hidden" name="xmxh" value="4"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（三）项目支出结余
												<input type="hidden" name="mxxh" value="28"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												五、本年财政补助收入
												<input type="hidden" name="mxxh" value="29"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出
												<input type="hidden" name="mxxh" value="30"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="31"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="32"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出
												<input type="hidden" name="mxxh" value="33"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="34"></input>
												<input type="hidden" name="xmxh" value="5"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												六、本年财政补助支出
												<input type="hidden" name="mxxh" value="35"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出
												<input type="hidden" name="mxxh" value="36"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="37"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="38"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出
												<input type="hidden" name="mxxh" value="39"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="40"></input>
												<input type="hidden" name="xmxh" value="6"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="right">
											</td>
										</tr>
										<tr>
											<td>
												七、年末财政补助结转结余
												<input type="hidden" name="mxxh" value="41"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（一）基本支出结转
												<input type="hidden" name="mxxh" value="42"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												1.人员经费
												<input type="hidden" name="mxxh" value="43"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												2.日常公用经费
												<input type="hidden" name="mxxh" value="44"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（二）项目支出结转
												<input type="hidden" name="mxxh" value="45"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td class="xmmc">
												<input type="hidden" name="mxxh" value="46"></input>
												<input type="hidden" name="xmxh" value="7"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
												——
											</td>
										</tr>
										<tr>
											<td>
												（三）项目支出结余
												<input type="hidden" name="mxxh" value="47"></input>
											</td>
											<td class="bnsr" align="right">
											</td>
											<td class="snsr" align="center">
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
		</div>
		<html:hidden property="tabid" styleId="tabid" />
		<html:hidden property="bizData" styleId="bizData" />
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
		<script language="javascript" src="/public/js/tool/tabPanePrint.js"></script>
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_ckjPrint.js?<%=System.currentTimeMillis()%>"></script>
</html:html>