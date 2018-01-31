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
		<script type="text/javascript"
			src="/public/js/tool/wsbs.js?<%=System.currentTimeMillis()%>"></script>
		<script type="text/javascript"
			src="./nssb/yzjms.js?<%=System.currentTimeMillis()%>"></script>
		<title>附表列表</title>
	</head>
	<body onkeydown="enterTab()" style="overflow: hidden;">
		<div id="toolbar" style="width: 100%" align="right"></div>
		<html:form action="/WB390fbListAction.do" styleId="WB390fbListForm"
			method="post">
			<br>
			<p align="center" style="font-size: 20px">
				<br>
				<b>企业所得税月(季)度预缴纳税申报表(A类，2015年版)附表列表</b>
			</p>
			<br>
			<div align="center">
				<fieldset style="width: 95%">
					<legend style="font-size: 12px">
						未申报列表
					</legend>
					<br>
					<table width="96%" border="1" align="center" cellpadding="1"
						cellspacing="1" bordercolor="#000000" id="grsds"
						style="border-collapse: collapse">
						<tr>
							<td width="5%" height="25" align="center"
								background="images/tz.gif">
								序号
							</td>
							<td height="25" align="center" background="images/tz.gif">
								附表名称
							</td>
							<td height="25" width="15%" align="center"
								background="images/tz.gif">
								操作
							</td>
						</tr>
						<logic:notEmpty name="WB390fbListForm" property="fbpzzlList">
							<logic:iterate indexId="index1" name="WB390fbListForm"
								id="dataid" property="fbpzzlList">
								<tr>
									<td align='center'><jsp:expression>index1.intValue() + 1</jsp:expression>
									</td>
									<td>
										<bean:write name="dataid" property="fbpzzlmc" />
									</td>
									<td align='center'>
										<input type="button" name="tempBtn" value="申 报" class="button"
											onclick='openFB("<bean:write name='dataid' property='url' />","<bean:write name='dataid' property='fbpzzldm' />","<bean:write name='dataid' property='pzzldm' />")' />
										<logic:equal value="QA004" name='dataid' property="fbpzzldm">
											<input type="button" name="scBtn" value="上传EXCEL"
												class="button"
												onclick="openMaxWindow('/WB390upLoadAction.do?pzxh=<bean:write name='WB390fbListForm' property='pzxh'/>&ssqs=<bean:write name='WB390fbListForm' property='ssqs'/>&ssqz=<bean:write name='WB390fbListForm' property='ssqz'/>')" />
										</logic:equal>
									</td>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>
					<br>
				</fieldset>
				<fieldset style="width: 95%">
					<legend style="font-size: 12px">
						已申报列表
					</legend>
					<br>
					<table width="96%" border="1" align="center" cellpadding="1"
						cellspacing="1" bordercolor="#000000" id="grsdsYsb"
						style="border-collapse: collapse">
						<tr height="20">
							<td align='center' background="images/tz.gif" width="5%">
								序号
							</td>
							<td align='center' background="images/tz.gif">
								报表种类
							</td>
							<td width="20%" align='center' background="images/tz.gif">
								填表时间
							</td>
							<td width="15%%" align='center' background="images/tz.gif">
								操作
							</td>
						</tr>

						<logic:notEmpty name="WB390fbListForm" property="ysbList">
							<logic:iterate indexId="index1" name="WB390fbListForm"
								id="dataid" property="ysbList">
								<tr>
									<td align='center'><jsp:expression>index1.intValue() + 1</jsp:expression>
									</td>
									<td>
										<bean:write name="dataid" property="fbpzzlmc" />
									</td>
									<td align="center">
										<bean:write name="dataid" property="tbrq" />
									</td>
									<td align='center'>
										<logic:notEqual name="dataid" property="zt" value="0">
											<logic:notEqual name="dataid" property="zt" value="4">
												<input type="button" value="查 询" class="button"
													onclick='editFB("<bean:write name='dataid' property='url' />","<bean:write name='dataid' property='fbpzzldm' />","<bean:write name='dataid' property='pzzldm' />","<bean:write name='dataid' property='sbbxh' />")' />
											</logic:notEqual>
										</logic:notEqual>
										<logic:equal name="dataid" property="zt" value="0">
											<input type="button" name="tempBtn" value="修 改"
												class="button"
												onclick='editFB("<bean:write name='dataid' property='url' />","<bean:write name='dataid' property='fbpzzldm' />","<bean:write name='dataid' property='pzzldm' />","<bean:write name='dataid' property='sbbxh' />")' />
											<input type="button" name="tempBtn" value="删 除"
												class="button"
												onclick='delFB("<bean:write name='WB390fbListForm' property='pzxh' />","<bean:write name='dataid' property='fbpzzldm' />","<bean:write name='dataid' property='sbbxh' />")' />
										</logic:equal>
										<logic:equal name="dataid" property="zt" value="4">
											<input type="button" name="tempBtn" value="修 改"
												class="button"
												onclick='editFB("<bean:write name='dataid' property='url' />","<bean:write name='dataid' property='fbpzzldm' />","<bean:write name='dataid' property='pzzldm' />","<bean:write name='dataid' property='sbbxh' />")' />
											<input type="button" name="tempBtn" value="删 除"
												class="button"
												onclick='delFB("<bean:write name='WB390fbListForm' property='pzxh' />","<bean:write name='dataid' property='fbpzzldm' />","<bean:write name='dataid' property='sbbxh' />")' />
										</logic:equal>
									</td>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</fieldset>
			</div>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg" /> </span>
			<html:hidden property="handleDesc" styleId="handleDesc" />
			<html:hidden property="handleCode" styleId="handleCode" />
			<html:hidden property="pzxh" styleId="pzxh" />
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("BBZT")%>">
				<input type="hidden" id="sessionId"
				value="<%=request.getParameter("sessionId")%>">
			<html:hidden property="sbbxh" styleId="sbbxh" />
			<html:hidden property="fbpzzldm" styleId="fbpzzldm" />
			<html:hidden property="ssqs" styleId="ssqs" />
			<html:hidden property="ssqz" styleId="ssqz" />
			<%@include file="/nssb/nsryhinfo.jsp"%>
		</html:form>
		<script type="text/javascript"
			src="./nssb/wb390/wb390_fbList.js?<%=System.currentTimeMillis()%>"></script>
	</body>
</html>
