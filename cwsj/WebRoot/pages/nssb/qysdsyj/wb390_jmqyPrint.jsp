<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/common/common.jsp"%>
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
		<link rel="stylesheet" type="text/css"
			href="./public/ext/resources/css/ext-all.css" />
		<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
		<script type="text/javascript" src="/public/js/tool/caltb.js"></script>
		<object id="factory" viewastext style="display: none"
			classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
			codebase="/scriptx/smsx.cab#Version=6,3,436,14">
		</object>
		<title>居民企业参股外国企业信息报告表</title>
	</head>
	<body>
		<div id="toolbar" style="width: 100%" align="right"></div>
		<br />
		<br />
		<html:form action="/WB390jmqyAction.do" styleId="WB390jmqyForm"
			method="post">
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
							<bean:write property='zbvo.qymc' name='WB390jmqyForm' />
						</td>
						<td width="15%">
							纳税识别号：
						</td>
						<td width="50%" style="text-align: left;">
							<bean:write property='zbvo.nsrsbh' name='WB390jmqyForm' />
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
							<bean:write property='zbvo.btzqymc' name='WB390jmqyForm' />
						</td>
						<td>
							所在国纳税识别号：
						</td>
						<td style="text-align: left;">
							<bean:write property='zbvo.btznsrsbh' name='WB390jmqyForm' />
						</td>
					</tr>
					<tr>
						<td>
							成立地：
						</td>
						<td style="text-align: left;">
							<bean:write property='zbvo.btzcld' name='WB390jmqyForm' />
						</td>
						<td>
							主营业务类型：
						</td>
						<td style="text-align: left;">
							<bean:write name="WB390jmqyForm" property="zbvo.btzgbhydm" />
						</td>
					</tr>
					<tr>
						<td>
							报告人持股比例：
						</td>
						<td colspan="3">
							<bean:write property='zbvo.btzcgbl' name='WB390jmqyForm' />
						</td>
					</tr>
				</table>
				<table id="gdTable" width="98%" border="1" align="center"
					cellpadding="1" cellspacing="1" bordercolor="#000000"
					style="border-collapse: collapse">
					<tr height="20px">
						<td colspan="5">
							<b>持有外国企业10%以上股份或有表决权股份的其他股东情况</b>
						</td>
					</tr>
					<tr>
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
					<logic:notEmpty name="WB390jmqyForm" property="gdList">
						<logic:iterate id="mxid" name="WB390jmqyForm"
							type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqyGdqkVO"
							property="gdList" scope="request">
							<tr style="height: 25px;">
								<td>
									<bean:write name="mxid" property="gdmc" />
								</td>
								<td>
									<bean:write name="mxid" property="cld" />
								</td>
								<td>
									<bean:write name="mxid" property="cglx" />
								</td>
								<td>
									<bean:write name="mxid" property="cgbl" />
								</td>
								<td>
									<bean:write name="mxid" property="str_qsrq" />
								</td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
				<table id="rzTable" width="98%" border="1" align="center"
					cellpadding="1" cellspacing="1" bordercolor="#000000"
					style="border-collapse: collapse">
					<tr height="20px">
						<td colspan="5">
							<b>中国居民个人担任外国企业高管或董事情况</b>
						</td>
					</tr>
					<tr height="20px">
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
					<logic:notEmpty name="WB390jmqyForm" property="rzList">
						<logic:iterate id="mxid" name="WB390jmqyForm"
							type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqyRzqkVO"
							property="rzList" scope="request">
							<tr style="height: 25px;">
								<td>
									<bean:write name="mxid" property="xm" />
								</td>
								<td>
									<bean:write name="mxid" property="czd" />
								</td>
								<td>
									<bean:write name="mxid" property="sfsbh" />
								</td>
								<td>
									<bean:write name="mxid" property="zw" />
								</td>
								<td>
									<bean:write name="mxid" property="str_rzrq" />
								</td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
				<table id="sgTable" width="98%" border="1" align="center"
					cellpadding="1" cellspacing="1" bordercolor="#000000"
					style="border-collapse: collapse">
					<tr height="20px">
						<td colspan="5">
							<b>三、外国企业股份变动信息</b>
						</td>
					</tr>
					<tr height="20px">
						<td colspan="5">
							<b>报告人收购外国企业股份情况</b>
						</td>
					</tr>
					<tr height="20px">
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
					<logic:notEmpty name="WB390jmqyForm" property="sgList">
						<logic:iterate id="mxid" name="WB390jmqyForm"
							type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqySgqkVO"
							property="sgList" scope="request">
							<tr style="height: 25px;">
								<td>
									<bean:write name="mxid" property="sglx" />
								</td>
								<td>
									<bean:write name="mxid" property="str_jyrq" />
								</td>
								<td>
									<bean:write name="mxid" property="sgfs" />
								</td>
								<td>
									<bean:write name="mxid" property="sgqcgbl" />
								</td>
								<td>
									<bean:write name="mxid" property="sghcgbl" />
								</td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
				<table id="czTable" width="98%" border="1" align="center"
					cellpadding="1" cellspacing="1" bordercolor="#000000"
					style="border-collapse: collapse">
					<tr height="20px">
						<td colspan="5">
							<b>报告人处置外国企业股份情况</b>
						</td>
					</tr>
					<tr height="20px">
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
					<logic:notEmpty name="WB390jmqyForm" property="czList">
						<logic:iterate id="mxid" name="WB390jmqyForm"
							type="gov.jslt.taxevent.wsbs.nssb.wb372.WBjmqyCzqkVO"
							property="czList" scope="request">
							<tr style="height: 25px;">
								<td>
									<bean:write name="mxid" property="czlx" />
								</td>
								<td>
									<bean:write name="mxid" property="str_czrq" />
								</td>
								<td>
									<bean:write name="mxid" property="czfs" />
								</td>
								<td>
									<bean:write name="mxid" property="czqcgbl" />
								</td>
								<td>
									<bean:write name="mxid" property="czhcgbl" />
								</td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
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
			</div>
			<html:hidden property="divHtml" styleId="divHtml" />
			<html:hidden property="handleCode" styleId="handleCode" />
		</html:form>
		<script type="text/javascript" src="./nssb/wb390/WB390_jmqyPrint.js"></script>
	</body>
</html>
