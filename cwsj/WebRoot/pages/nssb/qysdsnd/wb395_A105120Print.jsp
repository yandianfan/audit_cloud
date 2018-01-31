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
	<title>特殊行业准备金纳税调整明细表</title>
</head>

<body>
<html:form action="/WB395A105120Action.do" styleId="WB395A105120Form" >

	<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
	<br />
	<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr height="20px">
			<td style="text-align: left;">
				<font size=2>A105120</font>
			</td>
		</tr>	
		<tr height="20px">
			<td style="text-align: center;">
				<font size=4><b>特殊行业准备金纳税调整明细表</b> </font>
			</td>
		</tr>
	</table>
	<br />	
	<table width="80%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
		<tr align="center" height="20px">
			<td rowspan="2">
				行 次
			</td>
			<td rowspan="2">
				项 目
			</td>
			<td>
				账载金额
			</td>
			<td>
				税收金额
			</td>
			<td>
				纳税调整金额
			</td>
		</tr>
		<tr align="center" height="20px">
			<td>
				1
			</td>
			<td>
				2
			</td>
			<td>
				3(1-2)
			</td>
		</tr>
		<tr height="20px">
			<td align="center" width="10%">
				1
			</td>
			<td width="45%">
				一、保险公司（2+3+6+7+8+9+10）
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.bxgszzje' />	
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.bxgsssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.bxgsnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）未到期责任准备金
			</td>
			<td width="15%" align="right" >
		       <bean:write name='WB395A105120Form' property='a105120VO.wdqzrzbjzzje' />	
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.wdqzrzbjssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.wdqzrzbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）未决赔款准备金（4+5）
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.wjpkzbjzzje' />		
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.wjpkzbjssje' />	
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.wjpkzbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：已发生已报案未决赔款准备金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.yfsybawjpkzbjzzje' />		
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.yfsybawjpkzbjssje' />			
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.yfsybawjpkzbjnstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已发生未报案未决赔款准备金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.yfswbawjpkzbjzzje' />			
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.yfswbawjpkzbjssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.yfswbawjpkzbjnstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）巨灾风险准备金
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.jzfxzbjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jzfxzbjssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jzfxzbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）寿险责任准备金
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.sxzrzbjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.sxzrzbjssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.sxzrzbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）长期健康险责任准备金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.cqjkxzrzbjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.cqjkxzrzbjssje' />	
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.cqjkxzrzbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）保险保障基金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.bxbzjjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.bxbzjjssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.bxbzjjnstzje' />		 
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）其他
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.bxgsqtzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.bxgsqtssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.bxgsqtnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				11
			</td>
			<td>
				二、证券行业（12+13+14+15）
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zqhyzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqhyssje' />		
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zqhynstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）证券交易所风险基金
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zqjysfxjjzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqjysfxjjssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqjysfxjjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）证券结算风险基金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqjsfxjjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqjsfxjjssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqjsfxjjnstzje' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）证券投资者保护基金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqtzzbhjjzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqtzzbhjjssje' />		
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.zqtzzbhjjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqhyqtzzje' />		
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zqhyqtssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zqhyqtnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				16
			</td>
			<td>
				三、期货行业（17+18+19+20）
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhhyzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhhyssje' />		
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.qhhynstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				17
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）期货交易所风险准备金
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.qhjysfxzbjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhjysfxzbjssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhjysfxzbjnstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				18
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）期货公司风险准备金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhgsfxzbjzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhgsfxzbjssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhgsfxzbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）期货投资者保障基金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhtzzbzjjzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhtzzbzjjssje' />
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhtzzbzjjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.qhhyqtzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhhyqtssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qhhyqtnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				21
			</td>
			<td>
				四、金融企业（22+23+24)
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jrqyzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jrqyssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jrqynstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）涉农和中小企业贷款损失准备金
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.snhzxqydksszbjzzje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.snhzxqydksszbjssje' />		
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.snhzxqydksszbjnstzje' />		
			</td>
		</tr>
		<tr height="20px"> 
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）贷款损失准备金
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.dksczbjzzje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.dksczbjssje' />			
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.dksczbjnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				24
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jrqyqtzzje' />	 
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jrqyqtssje' />	
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.jrqyqtnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				25
			</td>
			<td>
				五、中小企业信用担保机构(26+27+28)
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.zxqyxydbjgzzje' /> 			
			</td>
			<td width="15%" align="right">
		      <bean:write name='WB395A105120Form' property='a105120VO.zxqyxydbjgssje' />		
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zxqyxydbjgnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）担保赔偿准备
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.dbpczbzzje' />	
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.dbpczbssje' />			
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.dbpczbnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）未到期责任准备
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.wdqzrzbzzje' />		
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.wdqzrzbssje' />		
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.wdqzrzbnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				28
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zxqyxydbjgqtzzje' />	
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.zxqyxydbjgqtssje' />			
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.zxqyxydbjgqtnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				29
			</td>
			<td>
				六、其他
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.qtzzje' />		
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.qtssje' />			
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.qtnstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				30
			</td>
			<td>
				合计(1+11+16+21+25+29)
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.hjzzje' />			
			</td>
			<td width="15%" align="right">
		        <bean:write name='WB395A105120Form' property='a105120VO.hjssje' />		
			</td>
			<td width="15%" align="right">
		       <bean:write name='WB395A105120Form' property='a105120VO.hjnstzje' />		
			</td>
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
		src="./nssb/wb395/wb395_A105120Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>