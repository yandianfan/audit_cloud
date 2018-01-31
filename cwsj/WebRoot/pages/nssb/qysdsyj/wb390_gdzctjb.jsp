<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/common/common.jsp"%>
<%@ taglib uri="/WEB-INF/cssnj.tld" prefix="cssnj"%>

<html:html>
<head>
	<title>固定资产加速折旧(扣除)明细表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB390gdzctjbAction.do" styleId="WB390gdzctjbForm">
		<div style="width: 100%" style="overflow-x: scroll;">
			<div style="width: 130%" align="center" id="mainDiv">
				<br />
				<br />
				<p align="center" style="font-size: 20px">
					<b>中华人民共和国企业所得税月（季）度预缴申报表(A类，2015年版) 附表2</b>
					<br>
					<b>固定资产加速折旧(扣除)明细表</b>
				</p>
				<br>
				<table id="tab1" width="98%" border="1" align="center"
					cellpadding="1" cellspacing="1" bordercolor="#000000"
					style="border-collapse: collapse">
					<tr>
						<td rowspan="4" style="width: 2%; text-align: center;">
							行次
						</td>
						<td rowspan="4" style="width: 24%; text-align: center;">
							项 目
						</td>
						<td rowspan="4" style="width: 6%; text-align: center;">
							是否适用
							<br />
							加速折旧
							<br />
							优惠政策
							<br />
							（税总2014年
							<br />
							64号公告）
						</td>
						<td colspan="3" style="width: 12%; text-align: center;">
							房屋、建筑物
						</td>
						<td colspan="3" style="width: 12%; text-align: center;">
							机器设备和
							<br />
							其他固定资产
						</td>
						<td colspan="11" style="width: 44%; text-align: center;">
							合 计
						</td>
					</tr>
					<tr>
						<td style="width: 4%; text-align: center;" rowspan="2">
							原值
						</td>
						<td style="width: 4%; text-align: center;" rowspan="2">
							本期税收
							<br />
							加速折旧
							<br />
							（扣除）额
						</td>
						<td style="width: 4%; text-align: center;" rowspan="2">
							累计税收
							<br />
							加速折旧
							<br />
							（扣除）额
						</td>
						<td style="width: 4%; text-align: center;" rowspan="2">
							原值
						</td>
						<td style="width: 4%; text-align: center;" rowspan="2">
							本期税收
							<br />
							加速折旧
							<br />
							（扣除）额
						</td>
						<td style="width: 4%; text-align: center;" rowspan="2">
							累计税收
							<br />
							加速折旧
							<br />
							（扣除）额
						</td>
						<td style="width: 4%; text-align: center;" rowspan="2">
							原值
						</td>
						<td style="width: 20%; text-align: center;" colspan="5">
							本期折旧（扣除）额
						</td>
						<td style="width: 20%; text-align: center;" colspan="5">
							累计折旧（扣除）额
						</td>
					</tr>
					<tr>
						<td style="width: 4%; text-align: center;">
							会计
							<br />
							折旧额
						</td>
						<td style="width: 4%; text-align: center;">
							正常
							<br />
							折旧额
						</td>
						<td style="width: 4%; text-align: center;">
							税收加速
							<br />
							折旧额
						</td>
						<td style="width: 4%; text-align: center;">
							纳税
							<br />
							调整额
						</td>
						<td style="width: 4%; text-align: center;">
							加速折旧
							<br />
							优惠统计额
						</td>
						<td style="width: 4%; text-align: center;">
							会计
							<br />
							折旧额
						</td>
						<td style="width: 4%; text-align: center;">
							正常
							<br />
							折旧额
						</td>
						<td style="width: 4%; text-align: center;">
							税收加速
							<br />
							折旧额
						</td>
						<td style="width: 4%; text-align: center;">
							纳税
							<br />
							调整额
						</td>
						<td style="width: 4%; text-align: center;">
							加速折旧
							<br />
							优惠统计额
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							1
						</td>
						<td style="text-align: center;">
							2
						</td>
						<td style="text-align: center;">
							3
						</td>
						<td style="text-align: center;">
							4
						</td>
						<td style="text-align: center;">
							5
						</td>
						<td style="text-align: center;">
							6
						</td>
						<td style="text-align: center;">
							7=1+4
						</td>
						<td style="text-align: center;">
							8
						</td>
						<td style="text-align: center;">
							9
						</td>
						<td style="text-align: center;">
							10=2+5
						</td>
						<td style="text-align: center;">
							11=10-8
						</td>
						<td style="text-align: center;">
							12=10-9
						</td>
						<td style="text-align: center;">
							13
						</td>
						<td style="text-align: center;">
							14
						</td>
						<td style="text-align: center;">
							15=6+3
						</td>
						<td style="text-align: center;">
							16=15-13
						</td>
						<td style="text-align: center;">
							17=15-14
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							1
							<input type="hidden" name="sbmxxh" value="1" />
						</td>
						<td style="text-align: left;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="一、允许加速折旧的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td align="center">
							--
							<input type="hidden" name="sytj" value="">
						</td>
						<td>
							<input type="text" style="width: 100%;" name="fjyje" id="fjyje1"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="fjbqje"
								id="fjbqje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="fjljje"
								id="fjljje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje1"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje1"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje1" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							2
							<input type="hidden" name="sbmxxh" value="2" />
						</td>
						<td style="text-align: left;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								class="srx" name="temp_xmmc" value="" />
							<input type="hidden" name="xmmc" value="" />
						</td>
						<td align="center">
							--
							<input type="hidden" name="sytj" value="" />
						</td>
						<td>
							<div id="div_fjyje1" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjyje2">
								<input type="text" style="width: 100%;" name="fjyje" id="fjyje2"
									value="" cal="true" readonly="readonly" class="fsrx" />
							</div>
						</td>
						<td>
							<div id="div_fjbqje1" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjbqje2">
								<input type="text" style="width: 100%;" name="fjbqje"
									id="fjbqje2" value="" cal="true" readonly="readonly"
									class="fsrx" />
							</div>
						</td>
						<td>
							<div id="div_fjljje1" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjljje2">
								<input type="text" style="width: 100%;" name="fjljje"
									id="fjljje2" value="" cal="true" readonly="readonly"
									class="fsrx" />
							</div>
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje2"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje2"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje2" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							2-1
							<input type="hidden" name="sbmxxh" value="3" />
						</td>
						<td style="text-align: left;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="其中：税、会一致按加速折旧处理的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_2" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_2" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td>
							<div id="div_fjyje3" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjyje4">
								<input type="text" style="width: 100%;" name="fjyje" id="fjyje3"
									value="" cal="true" readonly="readonly" class="fsrx"
									negative="false" />
							</div>
						</td>
						<td>
							<div id="div_fjbqje3" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjbqje4">
								<input type="text" style="width: 100%;" name="fjbqje"
									id="fjbqje3" value="" cal="true" readonly="readonly"
									class="fsrx" negative="false" />
							</div>
						</td>
						<td>
							<div id="div_fjljje3" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjljje4">
								<input type="text" style="width: 100%;" name="fjljje"
									id="fjljje3" value="" cal="true" readonly="readonly"
									class="fsrx" negative="false" />
							</div>
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje3"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje3" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje3" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje3"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqkjzjje" id="hjbqkjzjje3" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje3" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje3" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqnstzje" id="hjbqnstzje3" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje3" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljkjzjje" id="hjljkjzjje3" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje3" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje3" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljnstzje" id="hjljnstzje3" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje3" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							2-2
							<input type="hidden" name="sbmxxh" value="4" />
						</td>
						<td style="text-align: left;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="税、会处理不一致，会计未按加速折旧处理的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_3" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_3" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td>
							<div id="div_fjyje5" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjyje6">
								<input type="text" style="width: 100%;" name="fjyje" id="fjyje4"
									value="" cal="true" readonly="readonly" class="fsrx"
									negative="false" />
							</div>
						</td>
						<td>
							<div id="div_fjbqje5" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjbqje6">
								<input type="text" style="width: 100%;" name="fjbqje"
									id="fjbqje4" value="" cal="true" readonly="readonly"
									class="fsrx" negative="false" />
							</div>
						</td>
						<td>
							<div id="div_fjljje5" style="display: none; text-align: center;">
								--
							</div>
							<div id="div_fjljje6">
								<input type="text" style="width: 100%;" name="fjljje"
									id="fjljje4" value="" cal="true" readonly="readonly"
									class="fsrx" negative="false" />
							</div>
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje4"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje4" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje4" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje4"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje4" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqzczjje" id="hjbqzczjje4" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje4" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje4" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqyhje" id="hjbqyhje4" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje4" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljzczjje" id="hjljzczjje4" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje4" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje4" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljyhje" id="hjljyhje4" value=""
								cal="true" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							3
							<input type="hidden" name="sbmxxh" value="5" />
						</td>
						<td style="text-align: left;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="二、允许一次性扣除的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td align="center">
							--
							<input type="hidden" name="sytj" value="" />
						</td>
						<td align="center">
							*
							<input type="hidden" name="fjyje" id="fjyje5" value="" cal="true" />
						</td>
						<td align="center">
							*
							<input type="hidden" name="fjbqje" id="fjbqje5" value=""
								cal="true" />
						</td>
						<td align="center">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje5" value="" cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje5"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje5"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje5" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							4
							<input type="hidden" name="sbmxxh" value="6" />
						</td>
						<td style="text-align: left;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="（一）单位价值不超过100万元的研发仪器、设备" readonly="readonly"
								class="fsrx" />
						</td>
						<td align="center">
							--
							<input type="hidden" name="sytj" value="" />
						</td>
						<td align="center">
							*
							<input type="hidden" name="fjyje" id="fjyje6" value="" cal="true" />
						</td>
						<td align="center">
							*
							<input type="hidden" name="fjbqje" id="fjbqje6" value=""
								cal="true" />
						</td>
						<td align="center">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje6" value="" cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje6"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje6"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje6" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							4-1
							<input type="hidden" name="sbmxxh" value="7" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="其中：税、会一致按一次性扣除处理研发仪器、设备" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_6" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_6" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td align="center">
							*
							<input type="hidden" name="fjyje" id="fjyje7" value="" cal="true"
								negative="false" />
						</td>
						<td align="center">
							*
							<input type="hidden" name="fjbqje" id="fjbqje7" value=""
								cal="true" negative="false" />
						</td>
						<td align="center">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje7" value="" cal="true" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje7"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje7" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje7" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje7"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqkjzjje" id="hjbqkjzjje7" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje7" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje7" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqnstzje" id="hjbqnstzje7" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje7" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljkjzjje" id="hjljkjzjje7" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje7" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje7" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljnstzje" id="hjljnstzje7" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje7" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							4-2
							<input type="hidden" name="sbmxxh" value="8" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="税、会处理不一致，会计按折旧处理的研发仪器、设备" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_7" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_7" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje8" value="" cal="true"
								negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje8" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje8" value="" cal="true" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje8"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje8" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje8" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje8"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje8" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqzczjje" id="hjbqzczjje8" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje8" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje8" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqyhje" id="hjbqyhje8" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje8" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljzczjje" id="hjljzczjje8" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje8" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje8" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljyhje" id="hjljyhje8" value=""
								cal="true" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							5
							<input type="hidden" name="sbmxxh" value="9" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="其中：六大行业小型微利企业研发和生产经营共用的仪器、设备"
								readonly="readonly" class="fsrx" />
						</td>
						<td style="text-align: center;">
							--
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje9" value="" cal="true" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje9" value=""
								cal="true" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje9" value="" cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje9"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje9"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje9" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							5-1
							<input type="hidden" name="sbmxxh" value="10" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="其中：税、会一致按一次性扣除处理研发仪器、设备" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_9" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_9" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje10" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje10" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje10" value="" cal="true" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje10"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje10" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje10" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje10"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqkjzjje" id="hjbqkjzjje10" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje10" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje10" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqnstzje" id="hjbqnstzje10" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje10" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljkjzjje" id="hjljkjzjje10" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje10" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje10" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljnstzje" id="hjljnstzje10" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje10" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							5-2
							<input type="hidden" name="sbmxxh" value="11" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="税、会处理不一致，会计按折旧处理的研发仪器、设备" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_10" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_10" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje11" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje11" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje11" value="" cal="true" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje11"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje11" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje11" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje11"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje11" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqzczjje" id="hjbqzczjje11" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje11" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje11" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqyhje" id="hjbqyhje11" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje11" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljzczjje" id="hjljzczjje11" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje11" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje11" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljyhje" id="hjljyhje11" value=""
								cal="true" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							6
							<input type="hidden" name="sbmxxh" value="12" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="（二）单位价值不超过5000元的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							--
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje12" value=""
								cal="true" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje12" value=""
								cal="true" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje12" value="" cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje12"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje12"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje12" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							6-1
							<input type="hidden" name="sbmxxh" value="13" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="其中：税、会一致按一次性扣除处理的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_12" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_12" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje13" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje13" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje13" value="" cal="true" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje13"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje13" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje13" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje13"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqkjzjje" id="hjbqkjzjje13" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje13" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje13" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqnstzje" id="hjbqnstzje13" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje13" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljkjzjje" id="hjljkjzjje13" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje13" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje13" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljnstzje" id="hjljnstzje13" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje13" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							6-2
							<input type="hidden" name="sbmxxh" value="14" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="税、会处理不一致，会计按折旧处理的固定资产" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							<input type="radio" name="tmp_sytj_13" value="01"
								onclick="clearReadRow(this,'01');">
							是&nbsp;&nbsp;
							<input type="radio" name="tmp_sytj_13" value="02"
								onclick="clearReadRow(this,'02');">
							否
							<input type="hidden" name="sytj" value="" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjyje" id="fjyje14" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="fjbqje" id="fjbqje14" value=""
								cal="true" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" style="width: 100%;" name="fjljje"
								id="fjljje14" value="" cal="true" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje14"
								value="" cal="true" readonly="readonly" class="fsrx"
								negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje14" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje14" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje14"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje14" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqzczjje" id="hjbqzczjje14" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje14" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje14" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjbqyhje" id="hjbqyhje14" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje14" value="" cal="true" readonly="readonly"
								class="fsrx" negative="false" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljzczjje" id="hjljzczjje14" value=""
								cal="true" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje14" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje14" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td style="text-align: center;">
							*
							<input type="hidden" name="hjljyhje" id="hjljyhje14" value=""
								cal="true" />
						</td>
					</tr>
					<tr>
						<td style="text-align: center;">
							7
							<input type="hidden" name="sbmxxh" value="15" />
						</td>
						<td style="text-align: center;">
							<input type="hidden" name="hybj" value="" />
							<input type="text" style="width: 100%; text-align: left;"
								name="xmmc" value="合计" readonly="readonly" class="fsrx" />
						</td>
						<td style="text-align: center;">
							--
							<input type="hidden" name="sytj" value="" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="fjyje" id="fjyje15"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="fjbqje"
								id="fjbqje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="fjljje"
								id="fjljje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqyje" id="jqyje15"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqbqje"
								id="jqbqje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="jqljje"
								id="jqljje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjyje" id="hjyje15"
								value="" cal="true" readonly="readonly" class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqkjzjje"
								id="hjbqkjzjje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqzczjje"
								id="hjbqzczjje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqsszjje"
								id="hjbqsszjje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqnstzje"
								id="hjbqnstzje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjbqyhje"
								id="hjbqyhje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljkjzjje"
								id="hjljkjzjje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljzczjje"
								id="hjljzczjje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljsszjje"
								id="hjljsszjje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljnstzje"
								id="hjljnstzje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
						<td>
							<input type="text" style="width: 100%;" name="hjljyhje"
								id="hjljyhje15" value="" cal="true" readonly="readonly"
								class="fsrx" />
						</td>
					</tr>
				</table>
				<input type="hidden" id="bbZt"
					value="<bean:write name='WB390gdzctjbForm' property='bbzt'/>">
				<html:hidden property="pzxh" styleId="pzxh" />
				<html:hidden property="zbvo.nsrsbm" styleId="zbvo.nsrsbm" />
				<html:hidden property="zbvo.nsrmc" styleId="zbvo.nsrmc" />
				<html:hidden property="zbvo.hydm" styleId="zbvo.hydm" />
				<html:hidden property="zbvo.str_sssjq" styleId="zbvo.str_sssjq" />
				<html:hidden property="zbvo.str_sssjz" styleId="zbvo.str_sssjz" />
				<html:hidden property="zbvo.swglm" styleId="zbvo.swglm" />
				<html:hidden property="zbvo.pzxh" styleId="zbvo.pzxh" />
				<html:hidden property="zbvo.swglm" styleId="zbvo.swglm" />
				<html:hidden property="bizData" styleId="bizData" />
				<html:hidden property="temp_hybj" styleId="temp_hybj" />
				<span id="update"> <html:hidden property="errorMessage"
						styleId="errorMessage" /> <html:hidden property="handleDesc"
						styleId="handleDesc" /> <html:hidden property="handleCode"
						styleId="handleCode" /> <html:hidden property="sucessMsg"
						styleId="sucessMsg" name="WB390gdzctjbForm" /> <html:hidden
						property="proMessage" styleId="proMessage" /> </span>
				<%@include file="/nssb/caInclude.jsp"%>
				<%@include file="/nssb/nsryhinfo.jsp"%>
			</div>
			<br />
		</div>
	</html:form>
	<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
	<script type="text/javascript"
		src="./nssb/wb390/wb390_gdzctjb.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>