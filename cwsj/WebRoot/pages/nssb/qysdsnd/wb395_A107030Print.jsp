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
	<title>抵扣应纳税所得额明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A107030Action.do" method="post"
		styleId="WB395A107030Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />

			<table width="70%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: left;">
						<font size=2>A107030</font>
					</td>
				</tr>				
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>抵扣应纳税所得额明细表</b> </font>
					</td>
				</tr>
			</table>

            <br />
			<table width="70%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
		<tr align="center" height="20px">
			<td width="10%">
				行 次
			</td>
			<td width="70%">
				项 目
			</td>
			<td>
				金 额
			</td>
		</tr>
		<tr height="20px">
		    <td align="left" colspan="3">
		      一、创业投资企业直接投资于未上市中小高新企业按投资额一定比例抵扣应纳税所得额
		    </td>
		</tr>
		<tr height="20px">
			<td align="center">
				1
			</td>
			<td>
				本年新增的符合条件的股权投资额
			</td>
			<td align="right">
		      <bean:write name='WB395A107030Form' property='a107030VO.bnxzfhtjgqtze' />  
            </td>
		</tr>
		<tr height="20px">
			<td align="center">
				2
			</td>
			<td>
				税收规定的抵扣率
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.ssgddkl' />
            </td>
		</tr>
		<tr height="20px">
			<td align="center">
				3
			</td>
			<td>
				本年新增的可抵扣的股权投资额（1×2）
			</td>
			<td align="right">
		      <bean:write name='WB395A107030Form' property='a107030VO.bnxzkdkgqtze' />
            </td>
		</tr>
		<tr height="20px">
			<td align="center">
				4
			</td>
			<td>
				以前年度结转的尚未抵扣的股权投资余额
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.yqndjzswdkgqtzye' />
            </td>
		</tr>
		<tr height="20px">
			<td align="center">
				5
			</td>
			<td>
				本年可抵扣的股权投资额（3+4）
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.bnkdkgqtze' />
            </td>
		</tr>
		<tr height="20px">
			<td align="center">
				6
			</td>
			<td>
				本年可用于抵扣的应纳税所得额
			</td>
			<td align="right">
		      <bean:write name='WB395A107030Form' property='a107030VO.bnkyydkynssde' /> 
            </td>
		</tr>
		<tr height="20px">
			<td align="center">
				7
			</td>
			<td>
				本年实际抵扣应纳税所得额（5≤6，本行=5行；5＞6，本行=6行）
			</td>
			<td align="right">
		      <bean:write name='WB395A107030Form' property='a107030VO.bnsjdkynssde' />
            </td>
		</tr>
		<tr height="20px">  
			<td align="center">
				8
			</td>
			<td>
				结转以后年度抵扣的股权投资余额（5＞6，本行=5-7行；5≤6，本行=0）
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.jzyhnddkgqtzye' />
            </td>
		</tr>
		<tr>
		    <td align="left" colspan="3">
		      二、通过有限合伙制创业投资企业投资未上市中小高新企业按一定比例抵扣分得的应纳税所得额
		    </td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				本年从有限合伙创投企业应分得的应纳税所得额
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.bnhhyfdynssde' />
            </td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				本年新增的可抵扣投资额
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.bnxzkdktze' />
            </td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				以前年度结转的可抵扣投资额余额
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.yqndzjkdktzeye' />
            </td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				本年可抵扣投资额（10行+11行）
			</td>
			<td align="right">
		        <bean:write name='WB395A107030Form' property='a107030VO.bnkdktze' />
            </td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				本年实际抵扣应分得的应纳税所得额（9行≤12行，本行=9行；9行＞12行，本行=12行）
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.bnsjdkyfdynssde' />
            </td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				结转以后年度抵扣的投资额余额（9行≤12行，本行=12行-9行；9行＞12行，本行=0）
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.zjnddktzye' />
            </td>
		</tr>
		<tr>
		    <td align="left" colspan="3">
		      三、抵扣应纳税所得额合计
		    </td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				合计：（7行+13行）
			</td>
			<td align="right">
		       <bean:write name='WB395A107030Form' property='a107030VO.hjje' />
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
		src="./nssb/wb395/wb395_A107030Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>