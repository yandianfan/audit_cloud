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
	<title>企业重组纳税调整明细表</title>
</head>
<body>
<html:form action="/WB395A105100Action.do" method="post" styleId="WB395A105100Form" >

	<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
	<br />
	
	<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr height="20px">
			<td style="text-align: left;">
				<font size=2>A105100</font>
			</td>
		</tr>	
		<tr height="20px">
			<td style="text-align: center;">
				<font size=4><b>企业重组纳税调整明细表</b> </font>
			</td>
		</tr>
	</table>
	<br />		
	<table width="98%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
		<tr align="center" height="20px">
			<td rowspan="3">
				行 次
			</td>
			<td rowspan="3">
				项 目
			</td>
			<td colspan="3">
				一般性税务处理
			</td>
			<td colspan="3">
				特殊性税务处理
			</td>
			<td rowspan="2">
				纳税调整金额
			</td>
		</tr>
		<tr align="center" height="20px">
			<td>
				账载金额
			</td>
			<td>
				税收金额
			</td>
			<td>
				纳税调整金额
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
				3(2-1)
			</td>
			<td>
				4
			</td>
			<td>
				5
			</td>
			<td>
				6(5-4)
			</td>
			<td>
				7(3+6)
			</td>
		</tr>
		<tr height="20px">
			<td align="center" width="10%">
				1
			</td>
			<td width="20%">
				一、债务重组
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwczybxzzje' />			 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwczybxssje' /> 			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwczybxnstzje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwcztsxzzje' /> 		 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwcztsxssje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwcztsxnstzje' /> 	 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zwcznstzje' /> 	 	 	 			 
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：以非货币性资产清偿债务
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwybxzzje' /> 	 	  			
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwybxssje' /> 	 	  			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwybxnstzje' /> 	 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwtsxzzje' /> 	 	  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwtsxssje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwtsxnstzje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcqczwnstzje' /> 	 	  			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;债转股
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgybxzzje' /> 	 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgybxssje' /> 	 	 	 			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgybxnstzje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgtsxzzje' /> 	  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgtsxssje' /> 	  	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgtsxnstzje' /> 	  	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zzgnstzje' /> 				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				4
			</td>
			<td>
				二、股权收购
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgybxzzje' /> 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgybxssje' /> 	  			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgybxnstzje' /> 	   			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgtsxzzje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgtsxssje' /> 	 	  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgtsxnstzje' /> 	 	  		 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgnstzje' /> 	 			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：涉及跨境重组的股权收购
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgybxzzje' /> 	 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgybxssje' /> 			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgybxnstzje' /> 	  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgtsxzzje' /> 			
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgtsxssje' /> 	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgtsxnstzje' /> 	  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.gqsgsjkjczgqsgnstzje' /> 	   			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				6
			</td>
			<td>
				三、资产收购
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.zcsgybxzzje' />  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgybxssje' />  			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgybxnstzje' />  	 			
			</td>
			<td width="10%" align="right"> 
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgtsxzzje' />  			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgtsxssje' />   			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgtsxnstzje' />   	 			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgnstzje' />    			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：涉及跨境重组的资产收购
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgybxzzje' />    		 			
			</td>
			<td width="10%" align="right">
		         <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgybxssje' />   			
			</td>			
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgybxnstzje' /> 			 
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgybxnstzje' /> 		 			
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgtsxssje' />		
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgtsxnstzje' /> 			
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.zcsgsjkjczgqsgnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				8
			</td>
			<td>
				四、企业合并（9+10）
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyhbybxzzje' />		
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.qyhbybxssje' />		
			</td>			
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.qyhbybxnstzje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyhbtsxzzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyhbtsxssje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyhbtsxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyhbnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：同一控制下企业合并
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbybxzzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbybxssje' />	
			</td>			
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbybxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbtsxzzje' />		 	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbtsxssje' />		
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbtsxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.tikzxqyhbnstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非同一控制下企业合并
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbybxzzje' />		
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbybxssje' />	
			</td>			
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbybxnstzje' />			
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbtsxzzje' />	
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbtsxssje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbtsxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.ftikzxqyhbnstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				11
			</td>
			<td>
				五、企业分立
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyflybxzzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyflybxssje' />			
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyflybxnstzje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyfltsxzzje' />			
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyfltsxssje' />		
			</td>
			<td width="10%" align="right">
		      <bean:write name='WB395A105100Form' property='a105100VO.qyfltsxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qyflnstzje' />	
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				12
			</td>
			<td>
				六、其他
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qtybxzzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qtybxssje' />	
			</td>			
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.qtybxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qttsxzzje' />	
			</td>
			<td width="10%" align="right">
		      <bean:write name='WB395A105100Form' property='a105100VO.qttsxssje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.qttsxnstzje' />			
			</td>
			<td width="10%" align="right">
		      <bean:write name='WB395A105100Form' property='a105100VO.qtnstzje' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：以非货币性资产对外投资
			</td>
			<td width="10%" align="right">
		      <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtzybxzzje' />	
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtzybxssje' />	
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtzybxnstzje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtztsxzzje' />	
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtztsxssje' />		
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtztsxnstzje' />			
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.yfbbzcdwtznstzje' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				14
			</td>
			<td>
				合计（1+4+6+8+11+12）
			</td>
			<td width="10%" align="right">
		        <bean:write name='WB395A105100Form' property='a105100VO.hjybxzzje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.hjybxssje' />	
			</td>			
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.hjybxnstzje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.hjtsxzzje' />	
			</td>
			<td width="10%" align="right">
		      <bean:write name='WB395A105100Form' property='a105100VO.hjtsxssje' />	
			</td>
			<td width="10%" align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.hjtsxnstzje' />		
			</td>
			<td width="10%"align="right">
		       <bean:write name='WB395A105100Form' property='a105100VO.hjnstzje' />		
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
		src="./nssb/wb395/wb395_A105100Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>