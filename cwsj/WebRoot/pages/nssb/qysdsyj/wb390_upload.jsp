<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page ContentType="text/html;charset=UTF-8"%>
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
	<html:form method="post" action="/WB390upLoadAction.do"
		styleId="WB390upLoadForm" enctype="multipart/form-data">
		<div style="width: 100%" align="center" id="mainDiv">
			<p align="center" style="font-size: 20px">
				<br>
				<b>《中华人民共和国企业所得税汇总纳税分支机构所得税分配表(2015年版)》上传EXCEL</b>
			</p>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div align="center">
				请选择:
				<html:file property="file" styleId="file" style="width:35%"
					styleClass="need"></html:file>
			</div>
			<div align="center">
				<br>
				<br>
				<a href="<%=curWsbsPath%>/download/fzjgfpb.xls"><font
					style="font-size: 14px">点击下载《中华人民共和国企业所得税汇总纳税分支机构所得税分配表(2015年版)》上传模板</font>
				</a>
			</div>
			<input type="hidden" id="bbZt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="pzxh" styleId="pzxh" />
			<html:hidden property="ssqs" styleId="ssqs" />
			<html:hidden property="ssqz" styleId="ssqz" />
			<html:hidden property="zspmdm" styleId="zspmdm" />
			<html:hidden property="handleCode" styleId="handleCode" />
			<span id="update"> <html:hidden property="sucessMsg"
					styleId="sucessMsg" /> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="proMessage"
					styleId="proMessage" /> </span>
			<%@include file="/nssb/caInclude.jsp"%>
			<%@include file="/nssb/nsryhinfo.jsp"%>
		</div>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb390/wb390_upload.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
