<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script type="text/javascript" src="./public/js/tool/caltb.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>关联交易汇总表(表二)</title>
</head>
<body>
	<html:form action="/WB395glqyFb2Action.do" styleId="WB395GlqyForm"
		method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>关联交易汇总表(表二)</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb2" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr height="30">
					<td colspan="10">
						1.本年度是否按要求准备同期资料：
						<logic:equal value="0" property="fb211vo.sfayqzbtqzl"
							name="WB395GlqyForm">是</logic:equal>
						<logic:equal value="1" property="fb211vo.sfayqzbtqzl"
							name="WB395GlqyForm">否</logic:equal>
						2．本年度免除准备同期资料
						<logic:equal value="0" property="fb211vo.mczbtqzl"
							name="WB395GlqyForm">是</logic:equal>
						<logic:equal value="1" property="fb211vo.mczbtqzl"
							name="WB395GlqyForm">否</logic:equal>

						3．本年度是否签订成本分摊协议：
						<logic:equal value="0" property="fb211vo.sfqdcbftxy"
							name="WB395GlqyForm">是</logic:equal>
						<logic:equal value="1" property="fb211vo.sfqdcbftxy"
							name="WB395GlqyForm">否</logic:equal>

					</td>
				</tr>
				<tr height="30">
					<td colspan="7">
						&nbsp;
					</td>
					<td colspan="3">
						<p align="right">
							金额单位：人民币元(列至角分)
						</p>
					</td>
				</tr>
				<tr height="30">
					<td rowspan="3" align="center">
						交易类型
					</td>
					<td rowspan="2" align="center">
						交易总金额
					</td>
					<td colspan="2" align="center">
						关联交易
					</td>
					<td colspan="3" align="center">
						境外关联交易
					</td>
					<td colspan="3" align="center">
						境内关联交易
					</td>
				</tr>
				<tr height="30">
					<td align="center">
						金额
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						金 额
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						金额
					</td>
					<td align="center">
						比例%
					</td>
					<td align="center">
						比例%
					</td>
				</tr>
				<tr height="30">
					<td align="center">
						1
					</td>
					<td align="center">
						2=4+7
					</td>
					<td align="center">
						3=2/1
					</td>
					<td align="center">
						4
					</td>
					<td align="center">
						5=4/1
					</td>
					<td align="center">
						6=4/2
					</td>
					<td align="center">
						7
					</td>
					<td align="center">
						8=7/1
					</td>
					<td align="center">
						9=7/2
					</td>
				</tr>
				<tr>
					<td>
						材料(商品)购入
					</td>
					<td>

					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr11jyzje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr13gljybl' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr15jwgljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr18jngljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						商品(材料)销售
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr11jyzje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr13gljybl' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr15jwgljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr18jngljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb22vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						劳务收入
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr11jyzje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr13gljybl' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr15jwgljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb23vo.clspgr18jngljybl1' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb23vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						劳务支出
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr11jyzje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr13gljybl' />
					</td>
					<td>
				    <bean:write name='WB395GlqyForm' property='fb24vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr15jwgljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr16jwgljybl2' />
					</td>
					<td>
				    <bean:write name='WB395GlqyForm' property='fb24vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr18jngljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb24vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						受让无形资产
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr11jyzje' />
					</td>
					<td>
				    <bean:write name='WB395GlqyForm' property='fb25vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr13gljybl' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr15jwgljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr17jngljyje' />
					</td>
					<td>
			    	<bean:write name='WB395GlqyForm' property='fb25vo.clspgr18jngljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb25vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						出让无形资产
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr11jyzje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr13gljybl' />
					</td>
					<td>
			    	<bean:write name='WB395GlqyForm' property='fb26vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr15jwgljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb26vo.clspgr18jngljybl1' />
					</td>
					<td>
				    <bean:write name='WB395GlqyForm' property='fb26vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						受让固定资产
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb27vo.clspgr11jyzje' />
					</td>
					<td>
			    	<bean:write name='WB395GlqyForm' property='fb27vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb27vo.clspgr13gljybl' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb27vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb27vo.clspgr15jwgljybl1' />
					</td>
					<td>
		        	<bean:write name='WB395GlqyForm' property='fb27vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb27vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb27vo.clspgr18jngljybl1' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb21vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						出让固定资产
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb28vo.clspgr11jyzje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb28vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb28vo.clspgr13gljybl' />
					</td>
					<td>
			    	<bean:write name='WB395GlqyForm' property='fb28vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb28vo.clspgr15jwgljybl1' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb28vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb28vo.clspgr17jngljyje' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb28vo.clspgr18jngljybl1' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb28vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						融资应计利息收入
					</td>
					<td align="center">
						————
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb29vo.clspgr12gljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb29vo.clspgr14jwgljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb29vo.clspgr16jwgljybl2' />
					</td>
					<td>
			<bean:write name='WB395GlqyForm' property='fb29vo.clspgr17jngljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb29vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						融资应计利息支出
					</td>
					<td align="center">
						————
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb210vo.clspgr12gljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb210vo.clspgr14jwgljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb210vo.clspgr16jwgljybl2' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb210vo.clspgr17jngljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb210vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						其他
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb211vo.clspgr11jyzje' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb211vo.clspgr12gljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb211vo.clspgr13gljybl' />
					</td>
					<td>
			<bean:write name='WB395GlqyForm' property='fb211vo.clspgr14jwgljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb211vo.clspgr15jwgljybl1' />
					</td>
					<td>
				<bean:write name='WB395GlqyForm' property='fb211vo.clspgr16jwgljybl2' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb211vo.clspgr17jngljyje' />
					</td>
					<td>
					<bean:write name='WB395GlqyForm' property='fb211vo.clspgr18jngljybl1' />
					</td>
					<td>
			<bean:write name='WB395GlqyForm' property='fb211vo.clspgr19jngljybl2' />
					</td>
				</tr>
				<tr>
					<td>
						合计
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb212vo.clspgr11jyzje' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb212vo.clspgr12gljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb212vo.clspgr14jwgljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb212vo.clspgr16jwgljybl2' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb212vo.clspgr17jngljyje' />
					</td>
					<td align="center">
						——
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb212vo.clspgr19jngljybl2' />
					</td>
				</tr>
			</table>
		</div>
		<html:hidden property="divHtml" styleId="divHtml"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
	</html:form>
</body>
</html:html>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb2print.js?<%=System.currentTimeMillis()%>"></script>