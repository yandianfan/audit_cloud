<%@ page ContentType="text/html;charset=UTF-8"%>
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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script language="javascript" type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>	
	<title>跨地区经营汇总纳税企业年度分摊企业所得税明细表</title>
</head>
<body>
	<html:form action="/WB395A109000Action.do" styleId="WB395A109000Form">
		<div id="toolbar" style="width: 100%" align="right"></div>
		<br />
		<br />
		<div style="width: 100%" align="center" id="mainDiv">
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
					<td style="text-align: left;">
						A109000
					</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>跨地区经营汇总纳税企业年度分摊企业所得税明细表</b> </font>
				</td>
			</tr>
		</table>
		<br/>
		<br/>
	<table width="98%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
		<tr align="center" height="20px">
			<td width="10%">
				行 次
			</td>
			<td width="65%">
				项 目
			</td>
			<td width="25%">
				金 额
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				1
			</td>
			<td>
				一、总机构实际应纳所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgsjyns' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;减：境外所得应纳所得税额
			</td>		
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgsjynsjwsdyn' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;加：境外所得抵免所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgsjynsjwsddm' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				4
			</td>
			<td>
				二、总机构用于分摊的本年实际应纳所得税（1-2+3）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgftbnsjyn' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				5
			</td>
			<td>
				三、本年累计已预分、已分摊所得税（6+7+8+9）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.bnljyfft' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（一）总机构向其直接管理的建筑项目部所在地预分的所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.bnljyfftzjgjzxmyf' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（二）总机构已分摊所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.bnljyfftzjgft' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（三）财政集中已分配所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.bnljyfftczjzfp' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（四）总机构所属分支机构已分摊所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.bnljyfftzjgfzft' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：总机构主体生产经营部门已分摊所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.bnljyfftzjgscbmft' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				11
			</td>
			<td>
				四、总机构本年度应分摊的应补（退）的所得税（4-5）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgbnyftbt' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（一）总机构分摊本年应补（退）的所得税额（11×25%）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgbnyftbtzjgft' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（二）财政集中分配本年应补（退）的所得税额（11×25%）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgbnyftbtczjzfp' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（三）总机构所属分支机构分摊本年应补（退）的所得税额（11×50%）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgbnyftbtzjgfzft' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：总机构主体生产经营部门分摊本年应补（退）的所得税额
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgbnyftbtzjgscbm' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				16
			</td>
			<td>
				五、总机构境外所得抵免后的应纳所得税额（2-3）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgjwsddmhyn' />
			</td>
		</tr>
		<tr height="20px">
			<td align="center">
				17
			</td>
			<td>
				六、总机构本年应补（退）的所得税额（12+13+15+16）
			</td>
			<td align="right">
				<bean:write name='WB395A109000Form' property='vo.zjgbnbt' />
			</td>
		</tr>
	</table>
	</div>
	<html:hidden property="divHtml" styleId="divHtml" />
	<SPAN id='a' bz="update"> <html:hidden property="errorMessage"
				styleId="errorMessage" /> <html:hidden property="handleCode"
				styleId="handleCode" /> <html:hidden property="handleDesc"
				styleId="handleDesc" /> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="proMessage"
				styleId="proMessage" /> 
				
	</SPAN>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A109000Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
