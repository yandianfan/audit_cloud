<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/common/common.jsp"%>
<html:html>
<head>
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
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>中华人民共和国企业所得税汇总纳税分支机构所得税分配表(2015年版)</title>
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
				style="border-collapse: collapse">
				<tr>
					<td colspan="3">
						<div align="center">
							税款所属期间:
							<bean:write name="WB390fpbForm" property="ssqs" />
							至
							<bean:write name="WB390fpbForm" property="ssqz" />
						</div>
					</td>
				</tr>
				<tr>
					<td width="30%" class="znsrmc">
						<div align="left">
							总机构名称：
							<bean:write name="WB390fpbForm" property="znsrmc" />
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
							总机构识别号
						</div>
					</td>
					<td>
						<div align="center">
							应纳所得税额
						</div>
					</td>
					<td colspan="2">
						<div align="center">
							总机构分摊所得税额
						</div>
					</td>
					<td>
						<div align="center">
							总机构财政集中分配所得税额
						</div>
					</td>
					<td width="16%" colspan="2">
						<div align="center">
							分支机构分摊的所得税额
						</div>
					</td>
				</tr>
				<tr style="height: 20px">
					<td class="znsrsbm" align="right" colspan="2"></td>
					<td class="zjgynsdse_je" align="right"></td>
					<td class="zjgftsdse_je" align="right" colspan="2"></td>
					<td class="zjgczjzfbsdse_je" align="right"></td>
					<td class="fzjgftsdseje" align="right" colspan="2"></td>
				</tr>
				<tr>
					<td rowspan="21">
						<div align="center">
							分支机构情况
						</div>
					</td>
					<td rowspan="2">
						<div align="center">
							纳税人识别号
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
							分配税额
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
				<logic:notEmpty name="WB390fpbForm" property="list">
					<logic:iterate name="WB390fpbForm" property="list" id="zhsb">
						<tr style="height: 20px">
							<td class="nsrsbm" align="right"></td>
							<td class="nsrmc" align="right"></td>
							<td class="srzeje" align="right"></td>
							<td class="gzzeje" align="right"></td>
							<td class="zczeje" align="right"></td>
							<td class="fpbl" align="right"></td>
							<td class="fpseje" align="right"></td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
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
					<td width="9%" class="srzehjje" align="right"></td>
					<td width="11%" class="gzzehjje" align="right"></td>
					<td width="12%" class="zczehjje" align="right"></td>
					<td width="6%" class="fpblzh" align="right"></td>
					<td width="10%" class="fpsehjje" align="right"></td>
				</tr>

			</table>
			<table width="98%" border="1" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000" class="wz"
				style="border-collapse: collapse">
				<tr>
					<td>
						纳税人公章：
						<br>
						主管：
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

		</div>
		<table id="jsbg" style="display: none;">
			<tr>
				<td>
					<input type="text" name="znsrsbm" id="znsrsbm"
						value="<bean:write property='fpbvo.nsrsbm' name='WB390fpbForm' />" />
				</td>
				<td>
					<input type="text" name="znsrmc" id="znsrmc"
						value="<bean:write property='fpbvo.nsrmc' name='WB390fpbForm' />" />
				</td>
				<td>
					<input type="text" name="zsrzeje" id="zsrzeje"
						value="<bean:write property='fpbvo.srzeje' name='WB390fpbForm' />"
						cal="true" />
				</td>
				<td>
					<input type="text" name="zgzzeje" id="zgzzeje" cal="true"
						value="<bean:write property='fpbvo.gzzeje' name='WB390fpbForm' />" />
				</td>
				<td>
					<input type="text" name="zzczeje" id="zzczeje" cal="true"
						value="<bean:write property='fpbvo.zczeje' name='WB390fpbForm' />" />
				</td>
				<td>
					<input type="text" name="fzjgftsdseje" id="fzjgftsdseje" cal="true"
						value="<bean:write property='fpbvo.fzjgftsdseje' name='WB390fpbForm' />" />
				</td>

				<td width="9%">
					<input type="text" name="zjgynsdse_je" id="zjgynsdse_je" cal="true"
						value="<bean:write property='fpbvo.zjgynsdseje' name='WB390fpbForm' />" />
				</td>
				<td width="11%">
					<input type="text" name="zjgftsdse_je" id="zjgftsdse_je" cal="true"
						value="<bean:write property='fpbvo.zjgftsdseje' name='WB390fpbForm' />" />
				</td>
				<td width="12%">
					<input type="text" name="zjgczjzfbsdse_je" id="zjgczjzfbsdse_je"
						cal="true"
						value="<bean:write property='fpbvo.zjgczjzfbsdseje' name='WB390fpbForm' />" />
				</td>
			</tr>
			<logic:notEmpty name="WB390fpbForm" property="list">
				<logic:iterate name="WB390fpbForm" property="list" id="zhsb">
					<tr>
						<td>
							<input type="text" name="nsrsbm"
								value="<bean:write property='nsrsbm' name='zhsb' />" />
						</td>
						<td>
							<input type="text" name="nsrmc"
								value="<bean:write property='nsrmc' name='zhsb' />">
						</td>
						<td>
							<input type="text" name="srzeje" cal="true"
								value="<bean:write property='srzeje' name='zhsb' />">
						</td>
						<td>
							<input type="text" name="gzzeje" cal="true"
								value="<bean:write property='gzzeje' name='zhsb' />">
						</td>
						<td>
							<input type="text" name="zczeje" cal="true"
								value="<bean:write property='zczeje' name='zhsb' />">
						</td>
						<td>
							<input type="text" name="fpbl" cal="true" format="4"
								value="<bean:write property='fpbl' name='zhsb' />">
						</td>
						<td>
							<input type="text" name="fpseje" cal="true"
								value="<bean:write property='fpseje' name='zhsb' />" />
						</td>
					</tr>
				</logic:iterate>
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
							id="fpblzh" cal="true" format="6" />
					</td>
					<td width="10%">
						<input type="text" style="width: 100%;" class="read"
							name="fpsehjje" id="fpsehjje" cal="true" />
					</td>
				</tr>
			</logic:notEmpty>
		</table>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
</body>
<script type="text/javascript"
	src="./nssb/wb390/wb390_fpbPrint.js?<%=System.currentTimeMillis()%>"></script>
</html:html>