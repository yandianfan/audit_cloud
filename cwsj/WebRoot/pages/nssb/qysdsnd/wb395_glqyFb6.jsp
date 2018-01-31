<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page ContentType="text/html;charset=UTF-8"%>
<%@include file="/common/common.jsp"%>
<html:html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>固定资产表（表六）</title>
</head>
<body>
	<html:form action="/WB395glqyFb6Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>固定资产表（表六）</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t6" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr>
					<td colspan="12">
						<p align="right">
							金额单位：人民币元（列至角分）
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="2" rowspan="4">
						<p align="center">
							项目
						</p>
					</td>
					<td colspan="5">
						<p align="center">
							受让
						</p>
					</td>
					<td colspan="5">
						<p align="center">
							出让
						</p>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p align="center">
							总交易金额
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							从境外受让固定资产
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							从境内受让固定资产
						</p>
					</td>
					<td rowspan="2">
						<p align="center">
							总交易金额
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							向境外出让固定资产
						</p>
					</td>
					<td colspan="2">
						<p align="center">
							向境内出让固定资产
						</p>
					</td>
				</tr>
				<tr>
					<td width="9%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="8%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							关联交易金额
						</p>
					</td>
					<td width="7%">
						<p align="center">
							非关联交易金额
						</p>
					</td>
				</tr>
				<tr>
					<td width="8%">
						<p align="center">
							1=2+3+4+5
						</p>
					</td>
					<td width="9%">
						<p align="center">
							2
						</p>
					</td>
					<td width="7%">
						<p align="center">
							3
						</p>
					</td>
					<td width="7%">
						<p align="center">
							4
						</p>
					</td>
					<td width="8%">
						<p align="center">
							5
						</p>
					</td>
					<td width="9%">
						<p align="center">
							6=7+8+9+10
						</p>
					</td>
					<td width="7%">
						<p align="center">
							7
						</p>
					</td>
					<td width="7%">
						<p align="center">
							8
						</p>
					</td>
					<td width="7%">
						<p align="center">
							9
						</p>
					</td>
					<td width="7%">
						<p align="center">
							10
						</p>
					</td>
				</tr>
				<tr>
					<td width="2%" rowspan="7">
						<p>
							使用权
						</p>
					</td>
					<td width="22%">
						<p>
							房屋、建筑物
						</p>
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="1">
						<input type="text" style="width: 100%;" id="srzjyje1"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje1" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje1" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje1" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje1" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje1"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje1" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje1" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje1" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje1" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						飞机、火车、轮船、机器、机械和其他生产设备
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="2">
						<input type="text" style="width: 100%;" id="srzjyje2"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje2" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje2" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje2" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje2" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje2"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje2" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje2" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje2" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje2" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						与生产经营活动有关的器具、工具、家具等
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="3">
						<input type="text" style="width: 100%;" id="srzjyje3"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje3" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje3" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje3" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje3" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje3"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje3" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje3" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje3" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje3" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						飞机、火车、轮船以外的运输工具
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="4">
						<input type="text" style="width: 100%;" id="srzjyje4"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje4" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje4" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje4" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje4" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje4"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje4" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje4" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje4" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje4" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						电子设备
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="5">
						<input type="text" style="width: 100%;" id="srzjyje5"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje5" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje5" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje5" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje5" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje5"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje5" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje5" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje5" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje5" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						其他
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="6">
						<input type="text" style="width: 100%;" id="srzjyje6"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje6" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje6" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje6" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje6" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje6"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje6" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje6" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje6" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje6" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						合计
					</td>
					<td width="8%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj1"
							id="b6syqhj1" cal="true" />
					</td>
					<td width="9%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj2"
							id="b6syqhj2" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj3"
							id="b6syqhj3" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj4"
							id="b6syqhj4" cal="true" />
					</td>
					<td width="8%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj5"
							id="b6syqhj5" cal="true" />
					</td>
					<td width="9%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj6"
							id="b6syqhj6" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj7"
							id="b6syqhj7" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj8"
							id="b6syqhj8" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj9"
							id="b6syqhj9" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syqhj10"
							id="b6syqhj10" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="2%" rowspan="7">
						所有权
					</td>
					<td width="22%">
						房屋、建筑物
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="7">
						<input type="text" style="width: 100%;" id="srzjyje7"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje7" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje7" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje7" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje7" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje7"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje7" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje7" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje7" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje7" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						飞机、火车、轮船、机器、机械和其他生产设备
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="8">
						<input type="text" style="width: 100%;" id="srzjyje8"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje8" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje8" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje8" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje8" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje8"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje8" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje8" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje8" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje8" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						与生产经营活动有关的器具、工具、家具等
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="9">
						<input type="text" style="width: 100%;" id="srzjyje9"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje9" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje9" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje9" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje9" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje9"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje9" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje9" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje9" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje9" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						飞机、火车、轮船以外的运输工具
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="10">
						<input type="text" style="width: 100%;" id="srzjyje10"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje10" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje10" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje10" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje10" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje10"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje10" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje10" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje10" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje10" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						电子设备
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="11">
						<input type="text" style="width: 100%;" id="srzjyje11"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje11" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje11" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje11" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje11" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje11"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje11" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje11" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje11" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje11" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						其他
					</td>
					<td width="8%">
						<input class="srx" type="hidden" name="xh" value="12">
						<input type="text" style="width: 100%;" id="srzjyje12"
							name="srzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="9%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrgljyje12" name="jwsrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwsrfgljyje12" name="jwsrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrgljyje12" name="jnsrgljyje" cal="true" />
					</td>
					<td width="8%">
						<input class="srx" type="text" style="width: 100%;"
							id="jnsrfgljyje12" name="jnsrfgljyje" cal="true" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" id="crzjyje12"
							name="crzjyje" cal="true" readonly="readonly" tabindex="-1"
							class="read" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrgljyje12" name="jwcrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jwcrfgljyje12" name="jwcrfgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrgljyje12" name="jncrgljyje" cal="true" />
					</td>
					<td width="7%">
						<input class="srx" type="text" style="width: 100%;"
							id="jncrfgljyje12" name="jncrfgljyje" cal="true" />
					</td>
				</tr>
				<tr>
					<td width="22%">
						合计
					</td>
					<td width="8%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje1"
							id="b6syhjje1" cal="true" />
					</td>
					<td width="9%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje2"
							id="b6syhjje2" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje3"
							id="b6syhjje3" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje4"
							id="b6syhjje4" cal="true" />
					</td>
					<td width="8%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje5"
							id="b6syhjje5" cal="true" />
					</td>
					<td width="9%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje6"
							id="b6syhjje6" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje7"
							id="b6syhjje7" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje8"
							id="b6syhjje8" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje9"
							id="b6syhjje9" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6syhjje10"
							id="b6syhjje10" cal="true" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<p align="center">
							总计
					</td>
					<td width="8%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje1"
							id="b6zhjje1" cal="true" />
					</td>
					<td width="9%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje2"
							id="b6zhjje2" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje3"
							id="b6zhjje3" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje4"
							id="b6zhjje4" cal="true" />
					</td>
					<td width="8%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje5"
							id="b6zhjje5" cal="true" />
					</td>
					<td width="9%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje6"
							id="b6zhjje6" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje7"
							id="b6zhjje7" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje8"
							id="b6zhjje8" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje9"
							id="b6zhjje9" cal="true" />
					</td>
					<td width="7%">
						<input readonly="readonly" tabindex="-1" class="read" type="text"
							style="width: 100%; text-align: right;" name="b6zhjje10"
							id="b6zhjje10" cal="true" />
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<p align="left">
							经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：



						
					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> </span>
			<html:hidden property="fb6vo" styleId="fb6vo"></html:hidden>
			<html:hidden property="ssQs" styleId="ssQs"></html:hidden>
			<html:hidden property="ssQz" styleId="ssQz"></html:hidden>
			<html:hidden property="pzxh" styleId="pzxh"></html:hidden>
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
		</div>
	</html:form>

</body>
</html:html>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb6.js?<%=System.currentTimeMillis()%>">
</script>