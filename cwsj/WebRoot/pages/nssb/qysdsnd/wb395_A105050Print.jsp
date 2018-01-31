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
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>职工薪酬纳税调整明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A105050Action.do" method="post"
		styleId="WB395A105050Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />
			<br />

			<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: left;">
					<font size=4>A105050</font>
				</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>职工薪酬纳税调整明细表</b> </font>
				</td>
			</tr>
		   </table>


			<table width="98%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr align="center">
				<td rowspan="2" width="10%">
					行 次
				</td>
				<td rowspan="2" width="30%">
					项 目
				</td>
				<td width="10%">
					账载金额
				</td>
				<td width="10%">
					税收规定扣除率（%）
				</td>
				<td width="10%">
					以前年度累计结<br>转扣除额
				</td>
				<td width="10%">
					税收金额
				</td>
				<td width="10%">
					纳税调整金额
				</td>
				<td width="10%">
					累计结转以后年<br>度扣除额
				</td>
			</tr>
			<tr align="center">
				<td>
					1
				</td>
				<td>
					2
				</td>
				<td>
					3
				</td>
				<td>
					4
				</td>
				<td>
					5（1-4）
				</td>
				<td>
					6（1+3-4）
				</td>
			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td>
					一、工资薪金支出
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.gzxjzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.gzxjssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.gzxjnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：股权激励
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.gqjlzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.gqjlssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.gqjlnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					二、职工福利费支出
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgflzzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgflssgdkcl' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgflssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgflnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					三、职工教育经费支出
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgjyjfzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgjyjfyqndkcl' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgjyjfssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgjyjfnstzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zgjyjfyhndkcl' /></td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：按税收规定比例扣除的职工教育经费
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ablkczzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ablkcssgdkcl' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ablkcyqndkcl' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ablkcssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ablkcnstzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ablkcyhndkcl' /></td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按税收规定全额扣除的职工培训费用
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ajekczzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ajekcssgdkcl' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ajekcssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ajekcnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					四、工会经费支出
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ghjfzzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ghjfssgdkcl' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ghjfssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ghjfnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					五、各类基本社会保障性缴款
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.bzjkzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.bzjkssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.bzjknstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					六、住房公积金
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zfgjjzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zfgjjssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.zfgjjnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					七、补充养老保险
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ylbxzzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ylbxssgdkcl' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ylbxssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.ylbxnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					八、补充医疗保险
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.yilbxzzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.yilbxssgdkcl' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.yilbxssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.yilbxnstzje' /></td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					九、其他
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.qtzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.qtyqndkcl' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.qtssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.qtnstzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.qtyhndkcl' /></td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					合计（1+3+4+7+8+9+10+11+12）
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.hjzzje' /></td>
				<td align="center">
					*
				</td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.hjyqndkcl' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.hjssje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.hjnstzje' /></td>
				<td align="right"><bean:write name='WB395A105050Form' property='vo.hjyhndkcl' /></td>
			</tr>
		</table>


		</div>
		<input type="hidden" id="divHtml" name="divHtml">
		<span id="update"> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="handleDesc"
				styleId="handleDesc" /> <html:hidden property="handleCode"
				styleId="handleCode" /> <html:hidden property="errorMessage"
				styleId="errorMessage" /> </span>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105050Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>