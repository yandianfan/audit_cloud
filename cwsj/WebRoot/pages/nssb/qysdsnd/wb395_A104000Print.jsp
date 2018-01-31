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
	<title>期间费用明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A104000Action.do" method="post"
		styleId="WB395A104000Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />
			<br />

			<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: left;">
					<font size=4>A104000</font>
				</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>期间费用明细表</b> </font>
				</td>
			</tr>
		   </table>


			<table width="98%" style="border-collapse: collapse" align="center"
				id="tab1" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr>
			<td rowspan="2" align="center">
				行次
			</td>
			<td rowspan="2" align="center">
				项 目
			</td>
			<td align="center">
				销售费用
			</td>
			<td align="center">
				其中：境外支付
			</td>
			<td align="center">
				管理费用
			</td>
			<td align="center">
				其中：境外支付
			</td>
			<td align="center">
				财务费用
			</td>
			<td align="center">
				其中：境外支付
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td align="center">
				2
			</td>
			<td align="center">
				3
			</td>
			<td align="center">
				4
			</td>
			<td align="center">
				5
			</td>
			<td align="center">
				6
			</td>

		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、职工薪酬
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zgxcxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zgxcglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				二、劳务费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.lwfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.lwfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.lwfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.lwfglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				三、咨询顾问费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zxgwfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zxgwfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zxgwfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zxgwfglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				四、业务招待费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ywzdfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ywzdfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				五、广告费和业务宣传费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ggywxcfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ggywxcfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				六、佣金和手续费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjsxfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjsxfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjsxfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjsxfglfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjsxfcwfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjsxfcwfyjwzf' /></td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				七、资产折旧摊销费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zczjtxfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zczjtxfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				八、财产损耗、盘亏及毁损损失
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ccshxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ccshglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				九、办公费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.bgfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.bgfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				十、董事会费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.dshfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.dshfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				十一、租赁费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zlfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zlfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zlfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.zlfglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				十二、诉讼费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ssfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ssfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				十三、差旅费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.clfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.clfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				十四、保险费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.bxfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.bxfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				十五、运输、仓储费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ysccfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ysccfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ysccfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.ysccfglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				16
			</td>
			<td>
				十六、修理费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.xlfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.xlfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.xlfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.xlfglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				17
			</td>
			<td>
				十七、包装费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.bzfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.bzfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				18
			</td>
			<td>
				十八、技术转让费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.jszrfxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.jszrfxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.jszrfglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.jszrfglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				19
			</td>
			<td>
				十九、研究费用
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjfyxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjfyxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjfyglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.yjfyglfyjwzf' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				20
			</td>
			<td>
				二十、各项税费
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.gxsfxsfy' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.gxsfglfy' /></td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				21
			</td>
			<td>
				二十一、利息收支
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.lyszcwfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.lyszcwfyjwzf' /></td>
		</tr>
		<tr>
			<td align="center">
				22
			</td>
			<td>
				二十二、汇兑差额
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hdcecwfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hdcecwfyjwzf' /></td>
		</tr>
		<tr>
			<td align="center">
				23
			</td>
			<td>
				二十三、现金折扣
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.xjzkcwfy' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				24
			</td>
			<td>
				二十四、其他
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.qtxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.qtxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.qtglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.qtglfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.qtcwfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.qtcwfyjwzf' /></td>
		</tr>
		<tr>
			<td align="center">
				25
			</td>
			<td>
				合计(1+2+3+…24)
			</td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hjxsfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hjxsfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hjglfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hjglfyjwzf' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hjcwfy' /></td>
			<td align="right"><bean:write name='WB395A104000Form' property='vo.hjcwfyjwzf' /></td>
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
		src="./nssb/wb395/wb395_A104000Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>