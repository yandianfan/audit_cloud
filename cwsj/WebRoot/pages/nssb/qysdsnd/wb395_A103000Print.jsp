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
	<title>事业单位、民间非营利组织收入、支出明细表</title>
</head>

<body>
<html:form action="/WB395A103000Action.do" styleId="WB395A103000Form" >

	<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
	<br />
	
	<table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr height="20px">
			<td style="text-align: left;">
				<font size=2>A103000</font>
			</td>
		</tr>	
		<tr height="20px">
			<td style="text-align: center;">
				<font size=4><b>事业单位、民间非营利组织收入、支出明细表</b> </font>
			</td>
		</tr>
	</table>
	<br />		
		<table width="70%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
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
				一、事业单位收入（2+3+4+5+6+7）
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.sydwsr' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）财政补助收入
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.czbzsr' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）事业收入
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.sysr' />								
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）上级补助收入
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.sjbzsr' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）附属单位上缴收入 
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.fsdwsjsr' />		
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）经营收入
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.yysr' />			
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）其他收入（8+9）
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.sydwsrqtsr' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：投资收益
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.sydwsrtzxy' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其他
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.qt' />			 				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				10
			</td>
			<td>
				二、民间非营利组织收入(11+12+13+14+15+16+17)
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.mjfylzzsr' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				11
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）接受捐赠收入
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.jsjzsr' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）会费收入
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.hfsr' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）提供劳务收入
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.tglwsr' />								
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）商品销售收入
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.spxssr' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）政府补助收入
			</td>
			<td align="right"> 
		        <bean:write name='WB395A103000Form' property='a103000VO.zfbzsr' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				16
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）投资收益
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.mjfylzzsrtzxy' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				17
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）其他收入
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.mjfylzzsrqtsr' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				18
			</td>
			<td>
				三、事业单位支出（19+20+21+22+23）
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.sydwzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）事业支出
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.syzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）上缴上级支出
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.sjsjzc' />						
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				21
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）对附属单位补助
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.dfsdwbz' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）经营支出
			</td>
			<td align="right">
		        <bean:write name='WB395A103000Form' property='a103000VO.jyzc' />							
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）其他支出
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.qtzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				24
			</td>
			<td>
				四、民间非营利组织支出（25+26+27+28）
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.mjfylzzzc' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				25
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）业务活动成本
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.ywhdcb' />				
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）管理费用
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.glfy' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）筹资费用
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.czfy' />					
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				28
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他费用
			</td>
			<td align="right">
		       <bean:write name='WB395A103000Form' property='a103000VO.qyfy' />						
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
		src="./nssb/wb395/wb395_A103000Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>