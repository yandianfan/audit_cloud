<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<html:html>
<head>
	<title>中华人民共和国企业所得税汇总纳税分支机构所得税分配表(2015年版)</title>
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
	<html:form action="/WB390fpbAction.do" styleId="WB390fpbForm">
		<div style="width: 100%" align="center" id="mainDiv">
			<p align="center" style="font-size: 20px">
				<br>
				<b>中华人民共和国企业所得税汇总纳税分支机构所得税分配表(2015年版)</b>
			</p>
			<br>
			<table width="98%" border="0" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000" class="wz"
				style="border-collapse: collapse; margin-bottom: 5px;">
				<tr>
					<td colspan="3">
						<div align="center">
							税款所属期间:
							<html:text property="ssqs" styleId="ssqs" style="text-align:left"
								readonly="true" styleClass="read" />
							至
							<html:text property="ssqz" styleId="ssqz" style="text-align:left"
								readonly="true" styleClass="read" />
						</div>
					</td>
				</tr>
				<tr>
					<td width="30%" nowrap="nowrap">
						<div align="left">
							总机构名称：
							<html:hidden property="zjglx" value="1" styleId="zjglx"
								name="zjglx" />
							<input type="text"
								style="width: 75%; text-align: left; border-bottom-style: solid;"
								name="znsrmc" id="znsrmc"
								value="<bean:write name='WB390fpbForm' property='znsrmc'/>" />
						</div>
					</td>
					<td width="45%"></td>
					<td width="25%">
						<div align="center">
							金额单位：人民币元（列至角分）
						</div>
					</td>
				</tr>
			</table>
			<table width="98%" border="1" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse" id="shzfpTable">
				<tr>
					<td width="13%" colspan="2">
						<div align="center">
							总机构纳税人识别号
						</div>
					</td>
					<td>
						<div align="center">
							应纳所得税额
						</div>
					</td>
					<td colspan="2">
						<div align="center">
							总机构分摊所得税额（25%）
						</div>
					</td>
					<td>
						<div align="center">
							总机构财政集中分配所得税额（25%）
						</div>
					</td>
					<td width="16%" colspan="2">
						<div align="center">
							分支机构分摊所得税额（50%）
						</div>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="znsrsbm"
							id="znsrsbm"
							value="<bean:write name='WB390fpbForm' property='znsrsbm'/>" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="zjgynsdse_je"
							id="zjgynsdse_je" cal="true"
							value="<bean:write name='WB390fpbForm' property='zjgynsdse_je'/>" />
					</td>
					<td width="11%" colspan="2">
						<input type="text" style="width: 100%;" name="zjgftsdse_je"
							id="zjgftsdse_je" cal="true"
							value="<bean:write name='WB390fpbForm' property='zjgftsdse_je'/>" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zjgczjzfbsdse_je"
							id="zjgczjzfbsdse_je" cal="true"
							value="<bean:write name='WB390fpbForm' property='zjgczjzfbsdse_je'/>" />
					</td>
					<td width="16%" colspan="2">
						<input type="text" style="width: 100%;" name="fzjgftsdseje"
							id="fzjgftsdseje" cal="true"
							value="<bean:write name='WB390fpbForm' property='fzjgftsdseje'/>" />
					</td>
				</tr>
				<tr>
					<td rowspan="21">
						<div align="center">
							分支机构情况
						</div>
					</td>
					<td rowspan="2">
						<div align="center">
							分支机构纳税人识别号
						</div>
					</td>
					<td rowspan="2">
						<div align="center">
							分支机构名称
						</div>
					</td>
					<td colspan="3">
						<div align="center">
							三项因素
						</div>
					</td>
					<td rowspan="2">
						<div align="center">
							分配比例
						</div>
					</td>
					<td rowspan="2">
						<div align="center">
							分配所得税额
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							营业收入
						</div>
					</td>
					<td>
						<div align="center">
							职工薪酬
						</div>
					</td>
					<td>
						<div align="center">
							资产总额
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm"
							value="<bean:write name='WB390fpbForm' property='fpbvo.nsrsbm'/>" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc"
							value="<bean:write name='WB390fpbForm' property='fpbvo.nsrmc'/>" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%;" name="nsrsbm" />
					</td>
					<td>
						<html:hidden property="jglx" value="2" />
						<input type="text" style="width: 100%;" name="nsrmc" />
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" name="srzeje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" name="gzzeje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" name="zczeje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" name="fpbl" cal="true"
							format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" name="fpseje" cal="true" />
					</td>
				</tr>
				<tr>
					<td>
						<div align="center">
							合计
						</div>
					</td>
					<td>
						<div align="center">
							——
						</div>
					</td>
					<td width="9%">
						<input type="text" style="width: 100%;" class="read"
							name="srzehjje" id="srzehjje" cal="true" />
					</td>
					<td width="11%">
						<input type="text" style="width: 100%;" class="read"
							name="gzzehjje" id="gzzehjje" cal="true" />
					</td>
					<td width="12%">
						<input type="text" style="width: 100%;" class="read"
							name="zczehjje" id="zczehjje" cal="true" />
					</td>
					<td width="6%">
						<input type="text" style="width: 100%;" class="read" name="fpblzh"
							id="fpblzh" cal="true" format="4" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" class="read"
							name="fpsehjje" id="fpsehjje" cal="true" />
					</td>
				</tr>
			</table>
			<table width="98%" border="1" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000" class="wz"
				style="border-collapse: collapse">
				<tr>
					<td>
						纳税人公章：
						<br>
						会计主管：
						<br>
						填表日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;日
					</td>
					<td>
						主管税务机关受理专用章：
						<br>
						受理人：
						<br>
						受理日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;日
					</td>
				</tr>
			</table>
			<div align="right">
				国家税务总局监制&nbsp;&nbsp;
			</div>
			<input type="hidden" id="bbZt" name="bbzt" value="<%=request.getParameter("bbZt")%>">
			<input type="hidden" id="sessionId" value="<%=request.getParameter("sessionId")%>">
			<html:hidden property="bizData" styleId="bizData" />
			<html:hidden property="gs" styleId="gs" />
			<html:hidden property="gljgdm" styleId="gljgdm" />
			<html:hidden property="swglm" styleId="swglm" />
			<html:hidden property="zspmdm" styleId="zspmdm" />
			<input type="hidden" id="bcsbcs" name="bcsbcs"
				value="<%=request.getAttribute("sbcs")%>" />
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="handleDesc"
					styleId="handleDesc" /> <html:hidden property="handleCode"
					styleId="handleCode" /> <html:hidden property="pzxh"
					styleId="pzxh" name="WB390fpbForm" /> <html:hidden
					property="sucessMsg" styleId="sucessMsg" name="WB390fpbForm" /> <html:hidden
					property="sbmxxh" styleId="sbmxxh" /> </span>
			<%@include file="/nssb/caInclude.jsp"%>
			<%@include file="/nssb/nsryhinfo.jsp"%>
		</div>
	</html:form>
	<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
	<script type="text/javascript"
		src="./nssb/wb390/wb390_fpb.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>