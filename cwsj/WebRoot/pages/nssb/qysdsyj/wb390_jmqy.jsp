<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/common/common.jsp"%>
<%@ taglib uri="/WEB-INF/cssnj.tld" prefix="cssnj"%>
<html:html>
<head>
	<title>居民企业参股外国企业信息报告表</title>
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
	<script type="text/javascript" src="/public/js/tool/edittable.js"></script>
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB390jmqyAction.do" styleId="WB390jmqyForm">
		<div style="width: 100%" align="center" id="mainDiv">
			<p align="center" style="font-size: 20px">
				<br>
				<b>居民企业参股外国企业信息报告表</b>
			</p>
			<br>
			<table id="zbTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="4" align="left">
						<b>一、报告人信息</b>
					</td>
				</tr>
				<tr>
					<td width="15%">
						企业名称：
					</td>
					<td width="20%" style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left;"
							id="zbvo.qymc" readonly="readonly"
							value="<bean:write property='zbvo.qymc' name='WB390jmqyForm' />"
							name="zbvo.qymc" />
					</td>
					<td width="15%">
						纳税识别号：
					</td>
					<td width="50%" style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left;"
							id="zbvo.nsrsbh" readonly="readonly"
							value="<bean:write property='zbvo.nsrsbh' name='WB390jmqyForm' />"
							name="zbvo.nsrsbh" />
					</td>
				</tr>
				<tr height="20px">
					<td colspan="4" align="left">
						<b>二、被投资外国企业信息</b>
					</td>
				</tr>
				<tr>
					<td>
						外国企业名称：
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="zbvo.btzqymc" class="need"
							value="<bean:write property='zbvo.btzqymc' name='WB390jmqyForm' />"
							name="zbvo.btzqymc" />
					</td>
					<td>
						所在国纳税识别号：
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="zbvo.btznsrsbh" class="need"
							value="<bean:write property='zbvo.btznsrsbh' name='WB390jmqyForm' />"
							name="zbvo.btznsrsbh" />
					</td>
				</tr>
				<tr>
					<td>
						成立地：
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="zbvo.btzcld" class="need"
							value="<bean:write property='zbvo.btzcld' name='WB390jmqyForm' />"
							name="zbvo.btzcld" />
					</td>
					<td>
						主营业务类型：
					</td>
					<td style="text-align: left;">
						<cssnj:codeSelect namewidth="20%" id="hyml" name="hyml"
							prikey="DJGBHYML" classStyle="need" childCtrl="hydl">
							<bean:write name="WB390jmqyForm" property="hyml" />
						</cssnj:codeSelect>
						<cssnj:codeSelect namewidth="20%" name="hydl" name="hydl"
							prikey="DJGBHYDL" classStyle="need" childCtrl="zbvo.btzgbhydm"
							parentctrl="hyml">
							<bean:write name="WB390jmqyForm" property="hydl" />
						</cssnj:codeSelect>
						<cssnj:codeSelect namewidth="20%" id="zbvo.btzgbhydm"
							name="zbvo.btzgbhydm" prikey="DJGBHYXL" classStyle="need"
							parentctrl="hydl">
							<bean:write name="WB390jmqyForm" property="zbvo.btzgbhydm" />
						</cssnj:codeSelect>
					</td>
				</tr>
				<tr>
					<td>
						报告人持股比例：
					</td>
					<td colspan="3">
						<input type="text" style="width: 100%; text-align: left"
							class="need" id="zbvo.btzcgbl" name="zbvo.btzcgbl" cal="true"
							format="4"
							value="<bean:write property='zbvo.btzcgbl' name='WB390jmqyForm' />" />
					</td>
				</tr>
			</table>
			<table id="gdTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="6">
						<b>持有外国企业10%以上股份或有表决权股份的其他股东情况</b>
					</td>
				</tr>
				<tr>
					<td align="center" width="5%">
						选择
					</td>
					<td width="20%">
						<div align="center">
							持股股东名称
						</div>
					</td>
					<td width="20%">
						<div align="center">
							居住地或成立地
						</div>
					</td>
					<td width="15%">
						<div align="center">
							持股类型
						</div>
					</td>
					<td width="10%">
						<div align="center">
							持股比例
						</div>
					</td>
					<td width="10%">
						<div align="center">
							达到10%以上权益份额的起始日期
						</div>
					</td>
				</tr>
				<tr style="display: none">
					<td align="center">
						<input type="checkbox" name="gdTableifcheck" class="wbk" />
					</td>
					<td>
						<input type="text" name="gd_mc" class="wbk" maxlength="50"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="gd_cld" class="wbk" maxlength="100"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<html:select name="WB390jmqyForm" property="gd_cglx"
							style="width:99%" styleClass="wbk">
							<html:optionsCollection property="cglxList" name="WB390jmqyForm" />
						</html:select>
						<input type="hidden" name="temp_gdcglx" value='' />
					</td>
					<td>
						<input type="text" name="gd_cgbl" class="wbk"
							style="width: 100%; text-align: right;" cal="true" format="4" />
					</td>
					<td>
						<input type="text" name="gd_qsrq" tabindex="-1"
							style="width: 100%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
				</tr>
				<logic:notEmpty name="WB390jmqyForm" property="gdList">
					<logic:iterate id="mxid" name="WB390jmqyForm"
						type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqyGdqkVO"
						property="gdList" scope="request">
						<tr>
							<td align="center">
								<input type="checkbox" name="gdTableifcheck" class="wbk" />
							</td>
							<td>
								<input type="text" name="gd_mc" class="wbk" maxlength="50"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="gdmc"/>' />
							</td>
							<td>
								<input type="text" name="gd_cld" class="wbk" maxlength="100"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="cld"/>' />
							</td>
							<td>
								<html:select name="WB390jmqyForm" property="gd_cglx"
									style="width:99%" styleClass="wbk">
									<html:optionsCollection property="cglxList"
										name="WB390jmqyForm" />
								</html:select>
								<input type="hidden" name="temp_gdcglx"
									value='<bean:write name="mxid" property="cglx"/>' />
							</td>
							<td>
								<input type="text" name="gd_cgbl" class="wbk"
									style="width: 100%; text-align: right;" cal="true" format="4"
									value='<bean:write name="mxid" property="cgbl"/>' />
							</td>
							<td>
								<input type="text" name="gd_qsrq" tabindex="-1"
									style="width: 100%; text-align: left; border: 0" class="Wdate"
									size="12" value='<bean:write name="mxid" property="str_qsrq"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
							</td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
				<tr>
					<td align="center" colspan="9">
						<input name="add"
							onclick="addRow('gdTable',2,document.getElementById('gdTable').rows.length-1);"
							type="button" tabindex="-1" class="button" value=" 增 加 ">
						<input name="del" onclick="delRow('gdTable');" type="button"
							tabindex="-1" class="button" value=" 删 除 ">
					</td>
				</tr>
			</table>
			<table id="rzTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="6">
						<b>中国居民个人担任外国企业高管或董事情况</b>
					</td>
				</tr>
				<tr height="20px">
					<td align="center" width="5%">
						选择
					</td>
					<td width="20%">
						<div align="center">
							中国居民个人姓名
						</div>
					</td>
					<td width="20%">
						<div align="center">
							中国境内常住地
						</div>
					</td>
					<td width="15%">
						<div align="center">
							身份识别号
						</div>
					</td>
					<td width="10%">
						<div align="center">
							职务
						</div>
					</td>
					<td width="10%">
						<div align="center">
							任职起止日期
						</div>
					</td>
				</tr>
				<tr style="display: none">
					<td align="center">
						<input type="checkbox" name="rzTableifcheck" class="wbk" />
					</td>
					<td>
						<input type="text" name="rz_mc" class="wbk" maxlength="50"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="rz_czd" class="wbk" maxlength="100"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="rz_sfsbh" class="wbk"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="rz_zw" class="wbk" maxlength="10"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="rz_rzrq" tabindex="-1"
							style="width: 100%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
				</tr>
				<logic:notEmpty name="WB390jmqyForm" property="rzList">
					<logic:iterate id="mxid" name="WB390jmqyForm"
						type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqyRzqkVO"
						property="rzList" scope="request">
						<tr>
							<td align="center">
								<input type="checkbox" name="rzTableifcheck" class="wbk" />
							</td>
							<td>
								<input type="text" name="rz_mc" class="wbk" maxlength="50"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="xm"/>' />
							</td>
							<td>
								<input type="text" name="rz_czd" class="wbk" maxlength="100"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="czd"/>' />
							</td>
							<td>
								<input type="text" name="rz_sfsbh" class="wbk"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="sfsbh"/>' />
							</td>
							<td>
								<input type="text" name="rz_zw" class="wbk"
									style="width: 100%; text-align: right;" maxlength="10"
									value='<bean:write name="mxid" property="zw"/>' />
							</td>
							<td>
								<input type="text" name="rz_rzrq" tabindex="-1"
									style="width: 100%; text-align: left; border: 0" class="Wdate"
									size="12" value='<bean:write name="mxid" property="str_rzrq"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
							</td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
				<tr>
					<td align="center" colspan="9">
						<input name="add"
							onclick="addRow('rzTable',2,document.getElementById('rzTable').rows.length-1);"
							type="button" tabindex="-1" class="button" value=" 增 加 ">
						<input name="del" onclick="delRow('rzTable');" type="button"
							tabindex="-1" class="button" value=" 删 除 ">
					</td>
				</tr>
			</table>
			<table id="sgTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="6">
						<b>三、外国企业股份变动信息</b>
					</td>
				</tr>
				<tr height="20px">
					<td colspan="6">
						<b>报告人收购外国企业股份情况</b>
					</td>
				</tr>
				<tr height="20px">
					<td align="center" width="5%">
						选择
					</td>
					<td width="20%">
						<div align="center">
							被收购股份类型
						</div>
					</td>
					<td width="20%">
						<div align="center">
							交易日期
						</div>
					</td>
					<td width="15%">
						<div align="center">
							收购方式
						</div>
					</td>
					<td width="10%">
						<div align="center">
							收购前报告人在外国企业持股份额
						</div>
					</td>
					<td width="10%">
						<div align="center">
							收购后报告人在外国企业持股份额
						</div>
					</td>
				</tr>
				<tr style="display: none">
					<td align="center">
						<input type="checkbox" name="sgTableifcheck" class="wbk" />
					</td>
					<td>
						<html:select name="WB390jmqyForm" property="sg_gflx"
							style="width:99%" styleClass="wbk">
							<html:optionsCollection property="cglxList" name="WB390jmqyForm" />
						</html:select>

						<input type="hidden" name="temp_sggflx" value='' />
					</td>
					<td>
						<input type="text" name="sg_jyrq" tabindex="-1"
							style="width: 100%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>
						<input type="text" name="sg_sgfs" class="wbk" maxlength="10"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="sg_qcgfe" class="wbk" cal="true"
							format="4" style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="sg_hcgfe" class="wbk" cal="true"
							format="4" style="width: 100%; text-align: right;">
					</td>
				</tr>
				<logic:notEmpty name="WB390jmqyForm" property="sgList">
					<logic:iterate id="mxid" name="WB390jmqyForm"
						type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqySgqkVO"
						property="sgList" scope="request">
						<tr>
							<td align="center">
								<input type="checkbox" name="sgTableifcheck" class="wbk" />
							</td>
							<td>
								<html:select name="WB390jmqyForm" property="sg_gflx"
									style="width:99%" styleClass="wbk">
									<html:optionsCollection property="cglxList"
										name="WB390jmqyForm" />
								</html:select>

								<input type="hidden" name="temp_sggflx"
									value='<bean:write name="mxid" property="sglx"/>' />
							</td>
							<td>
								<input type="text" name="sg_jyrq" tabindex="-1"
									style="width: 100%; text-align: left; border: 0" class="Wdate"
									size="12" value='<bean:write name="mxid" property="str_jyrq"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
							</td>
							<td>
								<input type="text" name="sg_sgfs" class="wbk" maxlength="10"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="sgfs"/>' />
							</td>
							<td>
								<input type="text" name="sg_qcgfe" class="wbk" cal="true"
									format="4" style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="sgqcgbl"/>' />
							</td>
							<td>
								<input type="text" name="sg_hcgfe" class="wbk" cal="true"
									format="4" style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="sghcgbl"/>' />
							</td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
				<tr>
					<td align="center" colspan="9">
						<input name="add"
							onclick="addRow('sgTable',3,document.getElementById('sgTable').rows.length-1);"
							type="button" tabindex="-1" class="button" value=" 增 加 ">
						<input name="del" onclick="delRow('sgTable');" type="button"
							tabindex="-1" class="button" value=" 删 除 ">
					</td>
				</tr>
			</table>
			<table id="czTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="6">
						<b>报告人处置外国企业股份情况</b>
					</td>
				</tr>
				<tr height="20px">
					<td align="center" width="5%">
						选择
					</td>
					<td width="20%">
						<div align="center">
							被处置股份类型
						</div>
					</td>
					<td width="20%">
						<div align="center">
							处置日期
						</div>
					</td>
					<td width="15%">
						<div align="center">
							处置方式
						</div>
					</td>
					<td width="10%">
						<div align="center">
							处置前报告人在外国企业持股份额
						</div>
					</td>
					<td width="10%">
						<div align="center">
							处置后报告人在外国企业持股份额
						</div>
					</td>
				</tr>
				<tr style="display: none">
					<td align="center">
						<input type="checkbox" name="czTableifcheck" class="wbk" />
					</td>
					<td>
						<html:select name="WB390jmqyForm" property="cz_gflx"
							style="width:99%" styleClass="wbk">
							<html:optionsCollection property="cglxList" name="WB390jmqyForm" />
						</html:select>

						<input type="hidden" name="temp_czgflx" value='' />
					</td>
					<td>
						<input type="text" name="cz_jyrq" tabindex="-1"
							style="width: 100%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>
						<input type="text" name="cz_czfs" class="wbk" maxlength="10"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="cz_qcgfe" class="wbk" cal="true"
							format="4" style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="cz_hcgfe" class="wbk" cal="true"
							format="4" style="width: 100%; text-align: right;">
					</td>
				</tr>
				<logic:notEmpty name="WB390jmqyForm" property="czList">
					<logic:iterate id="mxid" name="WB390jmqyForm"
						type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqyCzqkVO"
						property="czList" scope="request">
						<tr>
							<td align="center">
								<input type="checkbox" name="czTableifcheck" class="wbk" />
							</td>
							<td>
								<html:select name="WB390jmqyForm" property="cz_gflx"
									style="width:99%" styleClass="wbk">
									<html:optionsCollection property="cglxList"
										name="WB390jmqyForm" />
								</html:select>

								<input type="hidden" name="temp_czgflx"
									value='<bean:write name="mxid" property="czlx"/>' />
							</td>
							<td>
								<input type="text" name="cz_jyrq" tabindex="-1"
									style="width: 100%; text-align: left; border: 0" class="Wdate"
									size="12" value='<bean:write name="mxid" property="str_czrq"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
							</td>
							<td>
								<input type="text" name="cz_czfs" class="wbk" maxlength="10"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="czfs"/>' />
							</td>
							<td>
								<input type="text" name="cz_qcgfe" class="wbk" cal="true"
									format="4" style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="czqcgbl"/>' />
							</td>
							<td>
								<input type="text" name="cz_hcgfe" class="wbk" cal="true"
									format="4" style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="czhcgbl"/>' />
							</td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
				<tr>
					<td align="center" colspan="9">
						<input name="add"
							onclick="addRow('czTable',2,document.getElementById('czTable').rows.length-1);"
							type="button" tabindex="-1" class="button" value=" 增 加 ">
						<input name="del" onclick="delRow('czTable');" type="button"
							tabindex="-1" class="button" value=" 删 除 ">
					</td>
				</tr>
			</table>
			<table width="98%" border="1" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="2">
						<b>四、报告人声明</b>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我谨在此声明：以上呈报事项准确无误，如有不实，愿承担相应的法律责任。
						<br>
						<br>
						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报告人签字和盖章：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						报告日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;日
						<br>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经办人：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						联系电话：
						<br>
						<br>
						<br>
						<b>以下由主管税务机关填写</b>
					</td>
				</tr>
				<tr>
					<td width="50%" style="text-align: left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;受理人：
						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：
						<br>
						<br>
					</td>
					<td width="50%" style="text-align: right;">
						税务机关（盖章）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br>
						年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br>
						<br>
					</td>
				</tr>
			</table>
			<br>
			<br>
			<table width="98%" border="0" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr>
					<td>
						填表说明：
						<br>
						1.按照《国家税务总局关于居民企业报告境外投资和所得信息的公告》（以下称公告）第一条规定应该填报本表的企业为本表报告人。报告人直接或间接投资多家外国企业，并符合规定条件的，应该分别按每个符合条件的被投资外国企业填报本表。
						<br>
						2.持股股东名称栏仅填报在被投资外国企业直接持有10%以上股份或有表决权股份的所有股东。
						<br>
						3.持股类型栏、被收购股份类型栏和被处置股份类型栏按照有表决权股份和无表决权股份填报。
						<br>
						4.持股比例栏按照《特别纳税调整实施办法（试行）》第七十七条第二款规定计算填报。
						<br>
						5.中国居民个人姓名栏应该填报担任被投资外国企业高管和董事，且按照个人所得税法规定构成在中国有住所，或者在中国无住所但在中国境内居住满一年的所有个人。
						<br>
						6.身份识别号栏按中国居民个人所持身份证件的识别号填报。
						<br>
						7. 交易日期栏和处置日期栏按中国会计制度确认的相关交易或处置行为完成的日期填报。
						<br>
						8.收购外国企业股份情况仅填报导致公告第一条规定情形的一次或多次收购交易及其相关情况。
						<br>
						9.外国企业股份处置情况仅填报导致公告第一条规定情形的一次或多次股份处置交易及其相关情况。
						<br>
						10.本表相关栏目应填报的名称为外文的，应同时填报中文译文名称。
						<br>
					</td>
				</tr>
			</table>
			<br>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="handleDesc"
					styleId="handleDesc" /> <html:hidden property="handleCode"
					styleId="handleCode" /> <html:hidden property="pzxh"
					styleId="pzxh" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg" /> <html:hidden property="zbvo.sbmxxh"
					styleId="zbvo.sbmxxh" /> <html:hidden property="zbvo.swglm"
					styleId="zbvo.swglm" /> </span>
			<%@include file="/nssb/caInclude.jsp"%>
			<%@include file="/nssb/nsryhinfo.jsp"%>
		</div>
	</html:form>
	<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
	<script type="text/javascript"
		src="./nssb/wb390/wb390_jmqy.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>