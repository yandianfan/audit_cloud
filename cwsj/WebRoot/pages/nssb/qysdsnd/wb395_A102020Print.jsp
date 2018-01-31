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
	<title>金融企业支出明细表</title>
</head>

<body>
<html:form action="/WB395A102020Action.do" styleId="WB395A102020Form" >

	<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
	<br />
	
	<table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr height="20px">
			<td style="text-align: left;">
				<font size=2>A102020</font>
			</td>
		</tr>	
		<tr height="20px">
			<td style="text-align: center;">
				<font size=4><b>金融企业支出明细表</b> </font>
			</td>
		</tr>
	</table>
	<br />		
		<table width="70%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
		<tr height="20px">
			<td width="10%" align="center">
				行次
			</td>
			<td width="60%" align="center">
				项 目
			</td>
			<td align="center">
				金 额
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				1
			</td>
			<td>
				一、营业支出（2+15+25+31+32）
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.yyzc' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）银行业务支出（3+11）
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.yhywzc' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.银行利息支出（4+5+6+7+8+9+10）
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.yhlxzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）同业存放
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.tycf' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）向中央银行借款
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.xzyyhjk' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）拆入资金
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.zrje' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）吸收存款
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.xsck' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）卖出回购金融资产
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.mshgjrzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）发行债券
			</td>
			<td align="right"> 
		        <bean:write name='WB395A102020Form' property='a102020VO.fxzq' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）其他
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.yhlxzcqt' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				11
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.银行手续费及佣金支出（12+13+14）
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.yhsxfjyjzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）手续费支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.sxfzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）佣金支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.yjzc' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）其他
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.yhsxfjyjzcqt' />		 			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）保险业务支出（16+17-18+19-20+21+22-23+24）
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.bxywzc' />		 						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				16
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.退保金
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.tbj' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				17
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.赔付支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.pfzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				18
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减：摊回赔付支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.thpfzc' />							
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.提取保险责任准备金
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.tqbxzrzbj' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减：摊回保险责任准备金
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.thbxzrzbj' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				21
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.保单红利支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.bdhlzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.分保费用
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.fbfy' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减：摊回分保费用
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.thfbfy' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				24
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.保险业务手续费及佣金支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.bxywsxfjyjzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				25
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）证券业务支出（26+30）
			</td>
			<td align="right">
		      <bean:write name='WB395A102020Form' property='a102020VO.zqywzc' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.证券业务手续费及佣金支出（27+28+29）
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.zqywsxfjyjzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）证券经纪业务手续费支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.zqjjywsxfzc' />							
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				28
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）佣金支出
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.zqywsxfjyjzcyjzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				29
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）其他
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.zqywsxfjyjzcqt' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				30
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.其他证券业务支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.qtzqywzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				31
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他金融业务支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.qtjrywzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				32
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）其他业务成本
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.qtywcb' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				33
			</td>
			<td>
				二、营业外支出（34+35+36+37+38+39+40）
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.yywzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				34
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非流动资产处置损失
			</td>
			<td align="right">	
		       <bean:write name='WB395A102020Form' property='a102020VO.fldzcczss' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				35
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换损失
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.fhbzcjhss' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				36
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）债务重组损失
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.zwczss' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				37
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）捐赠支出
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.jzzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				38
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）非常损失
			</td>
			<td align="right">
		       <bean:write name='WB395A102020Form' property='a102020VO.fcss' />							
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				39
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）其他
			</td>
			<td align="right">
		        <bean:write name='WB395A102020Form' property='a102020VO.yywzcqt' />						
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
		src="./nssb/wb395/wb395_A102020Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>