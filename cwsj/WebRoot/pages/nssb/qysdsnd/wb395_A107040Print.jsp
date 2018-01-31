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
	<title>减免所得税优惠明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A107040Action.do" method="post"
		styleId="WB395A107040Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<br />
		<div style="width: 95%">
			<p align="left">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
				A107040
			</p>
		</div>
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>减免所得税优惠明细表</b> </font>
					</td>
				</tr>
			</table>
			<br />
			<table id="tab1" width="80%" style="border-collapse: collapse"
				align="center" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr align="center">
					<td width="10%" style="text-align: center;">
						行 次
					</td>
					<td width="65%" style="text-align: center;">
						项 目
					</td>
					<td width="25%" style="text-align: center;">
						金 额
					</td>
				</tr>
				<tr>
					<td align="center">
						1
					</td>
					<td>
						一、符合条件的小型微利企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.fhtjxwqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：减半征税
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jbzs' />
					</td>
				</tr>
				<tr>
					<td align="center">
						3
					</td>
					<td>
						二、国家需要重点扶持的高新技术企业（4+5）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.gjxyzdfzgxqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						4
					</td>
					<td>
						（一）高新技术企业低税率优惠（填写A107041）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.gxjsqydslyh' />
					</td>
				</tr>
				<tr>
					<td align="center">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）经济特区和上海浦东新区新设立的高新技术企业定期减免（填写A107041）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jjtqpdxq' />
					</td>
				</tr>
				<tr>
					<td align="center">
						6
					</td>
					<td>
						三、其他专项优惠（7+8+9+10+11…+14+15+16+…+31）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.qtzxyh' />
					</td>
				</tr>
				<tr>
				<td align="center">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）受灾地区损失严重的企业（7.1+7.2+7.3）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.szdqssyzqy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						7.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1.
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						7.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						7.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
					<td align="center">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）受灾地区农村信用社（8.1+8.2+8.3）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.szdqncxys' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						8.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						8.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						8.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
					<td align="center">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）受灾地区的促进就业企业（9.1+9.2+9.3）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.szdqcjjyqy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						9.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						9.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						9.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
					<td align="center">
						10
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（四）支持和促进重点群体创业就业企业(10.1+10.2+10.3)
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.zccjqtcyqy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						10.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中:1.下岗失业人员再就业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xgsyryzjy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						10.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.高校毕业生就业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.gxbysjy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						10.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.退役士兵就业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.tysbjy' />
					</td>
				</tr>	
				<tr>
					<td align="center">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（五）技术先进型服务企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jsxjxfwqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（六）动漫企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.dmqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						13
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（七）集成电路线宽小于0.8微米（含）的集成电路生产企业						                              
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jcdlscqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						14
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（八）集成电路线宽小于0.25微米的集成电路生产企业（14.1+14.2）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jcdlerqy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						14.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1.定期减免企业所得税
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jcdqjmqysds' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						14.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;2.减按15%税率征收企业所得税
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jcslzsqysds' />
					</td>
				</tr>
				<tr>
					<td align="center">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（九）投资额超过80亿元人民币的集成电路生产企业（15.1+15.2）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.tzcgqy' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						15.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1.定期减免企业所得税
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.tzdqjmqysds' />
					</td>
				</tr>
				<tr>
				    <td align="center">
						15.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;2.减按15%税率征收企业所得税
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.tzslzsqysds' />
					</td>
				</tr>
				<tr>
					<td align="center">
						16
					</td>
					<td>
						（十）新办集成电路设计企业（填写A107042）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xbjcdlqy' />
					</td>
				</tr>	
				<tr>
					<td align="center">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十一）国家规划布局内重点集成电路设计企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.gjghbju' />
					</td>
				</tr>
				<tr>
					<td align="center">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十二）集成电路封装、测试企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jcdlfzcsqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十三）集成电路关键专用材料生产企业或集成电路专用设备生产企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jcdlgjzyclscqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						20
					</td>
					<td>
						（十四）符合条件的软件企业（填写A107042）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.fhtjrjqy' />
					</td>
				</tr>	
				<tr>
					<td align="center">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十五）国家规划布局内重点软件企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.gjghbjzd' />
					</td>
				</tr>
				<tr>
					<td align="center">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十六）经营性文化事业单位转制企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jyxwhsydwqy' />
					</td>
				</tr>	
				<tr>
					<td align="center">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十七）符合条件的生产和装配伤残人员专门用品企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.zpscryqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十八）设在西部地区的鼓励类产业企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xbdqglqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十九）新疆困难地区新办企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xjkndqxbqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十）新疆喀什、霍尔果斯特殊经济开发区新办企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xjkstsjjkfqy' />
					</td>
				</tr>	
				<tr>
					<td align="center">
						27
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十一）横琴新区、平潭综合实验区和前海深港现代化服务业合作区企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.hqxqhzqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						28
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十二）享受过渡期税收优惠企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xsgssyhqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						29
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十三）其他1
						<bean:write name='WB395A107040Form' property='vo.qt1' />
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.qt1je' />
					</td>
				</tr>	
				<tr>
					<td align="center">
						30
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十四）其他2
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.qt2je' />
					</td>
				</tr>
				<tr>
					<td align="center">
						31
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十五）其他3
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.qt3je' />
					</td>
				</tr>
				<tr>
					<td align="center">
						32
					</td>
					<td>
						四、减：项目所得额按法定税率减半征收企业所得税叠加享受减免税优惠
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.xmsdyh' />
					</td>
				</tr>																		
				<tr>
					<td align="center">
						33
					</td>
					<td>
						五、减免地方分享所得税的民族自治地方企业
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.jmdfsdszzqy' />
					</td>
				</tr>
				<tr>
					<td align="center">
						34
					</td>
					<td>
						合计：（1+3+6-32+33）
					</td>
					<td align="right">
						<bean:write name='WB395A107040Form' property='vo.hj' />
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
		src="./nssb/wb395/wb395_A107040Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
