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
	<title>购销表（表三）</title>
</head>
<body>
	<div id="toolbar" align="right"></div>
	<br />
	<br />
	<table width="98%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr height="20px">
			<td style="text-align: center;">
				<font size=4><b>购销表（表三）</b> </font>
			</td>
		</tr>
	</table>
	<html:form action="/WB395glqyFb3Action.do" styleId="WB395GlqyForm"
		method="post">
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb3" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000" cellspacing="1"
				style="border-collapse: collapse">
				<tr style="height: 22px">
					<td colspan="15">

					</td>
					<td colspan="2">
						金额单位：人民币元（列至角分）
					</td>
				</tr>
				<tr style="height: 22px">
					<td colspan="17">
						一、总购销
					</td>
				</tr>
				<tr style="height: 22px">
					<td colspan="5" align="center">
						材料（商品）购入
					</td>
					<td colspan="3" align="center">
						金额
					</td>
					<td colspan="7" align="center">
						商品（材料）销售
					</td>
					<td colspan="2" align="center">
						金额
					</td>
				</tr>
				<tr>
					<td colspan="5">
						购入总额1=2+5
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.grztje'/>
					</td>
					<td colspan="7">
						销售总额8=9+12
					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm' property='fb3vo.xszeje'/>
					</td>
				</tr>
				<tr>
					<td rowspan="6">
						<p align="center"></p>
						其
						<p align="center"></p>
						&nbsp;
						<p align="center"></p>
						中
					</td>
					<td colspan="4">
						进口购入2=3+4
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.jkgrje'/>
					</td>
					<td colspan="2" rowspan="6">
						<p align="center"></p>
						其
						<p align="center"></p>
						&nbsp;
						<p align="center"></p>
						中
					</td>
					<td colspan="5">
						出口销售9=10+11
					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm' property='fb3vo.jkxsje'/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p align="center"></p>
						其
						<p align="center"></p>
						中
					</td>
					<td colspan="3">
						非关联进口3
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.fgljkje'/>
					</td>
					<td rowspan="2">
						<p align="center"></p>
						其
						<p align="center"></p>
						中
					</td>
					<td colspan="4">
						非关联出口10
					</td>
					<td colspan="2">
					<bean:write name='WB395GlqyForm' property='fb3vo.fglckje'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						关联进口4
					</td>
					<td colspan="3">
					<bean:write name='WB395GlqyForm' property='fb3vo.gljkje'/>
					</td>
					<td colspan="4">
						关联出口11
					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm' property='fb3vo.glckje'/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						国内购入5=6+7
					</td>
					<td colspan="3">
					<bean:write name='WB395GlqyForm' property='fb3vo.gngrje'/>
					</td>
					<td colspan="5">
						国内销售12=13+14
					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm' property='fb3vo.gnxsje'/>
					</td>
				</tr>
				<tr>
					<td rowspan="2">
						<p align="center"></p>
						其
						<p align="center"></p>
						中
					</td>
					<td colspan="3">
						非关联购入6
					</td>
					<td colspan="3">
					<bean:write name='WB395GlqyForm' property='fb3vo.fglgrje'/>
					</td>
					<td rowspan="2">
						<p align="center"></p>
						其
						<p align="center"></p>
						中
					</td>
					<td colspan="4">
						非关联销售13
					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm' property='fb3vo.fglxsje'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						关联购入7
					</td>
					<td colspan="3">
					<bean:write name='WB395GlqyForm' property='fb3vo.glgrje'/>
					</td>
					<td colspan="4">
						关联销售14
					</td>
					<td colspan="2">
					<bean:write name='WB395GlqyForm' property='fb3vo.glxsje'/>
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>二、按出口贸易方式分类的出口销售收入</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" rowspan="2">
						<p align="center"></p>
						来料加工
					</td>
					<td>
						<p align="center"></p>
						关联金额
					</td>
					<td colspan="3">
						<p align="center"></p>
						非关联金额
					</td>
					<td colspan="5" rowspan="2">
						<p align="center"></p>
						其他贸易
						<p align="center"></p>
						方式
					</td>
					<td colspan="2">
						<p align="center"></p>
						关联金额
					</td>
					<td colspan="3">
						<p align="center"></p>
						非关联金额
					</td>
				</tr>
				<tr>
					<td>
					<bean:write name='WB395GlqyForm' property='fb3vo.lljgglje'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.lljgfglje'/>
					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm' property='fb3vo.qtmyglje'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.qtmyfglje'/>
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>三、占出口销售总额10%以上的境外销售对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center"></p>
						境外关联方名称
					</td>
					<td colspan="3">
						<p align="center"></p>
						国家(地区)
					</td>
					<td colspan="4">
						<p align="center"></p>
						交易金额
					</td>
					<td colspan="3">
						<p align="center"></p>
						定价方法
					</td>
					<td>
						<p align="center"></p>
						备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfmc1' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdq1' />
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdqmc1' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfjyje1'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfdjff1' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfbz1' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfmc2' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdq2' />
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdqmc2' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfjyje2'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfdjff2' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfbz2' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfmc3' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdq3' />
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfgjdqmc3' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfjyje3'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfdjff3' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwglfbz3' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center"></p>
						境外非关联方名称
					</td>
					<td colspan="3">
						<p align="center"></p>
						国家(地区)
					</td>
					<td colspan="4">
						<p align="center"></p>
						交易金额
					</td>
					<td colspan="3">
						<p align="center"></p>
						定价方法
					</td>
					<td>
						<p align="center"></p>
						备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfmc1' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdq1' />
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdqmc1' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfjyje1'/>
					</td>
					<td colspan="3">
						<p align="center"></p>
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfbz1' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfmc2' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdq2' />
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdqmc2' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfjyje2'/>
					</td>
					<td colspan="3">
						<p align="center"></p>
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfbz2' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfmc3' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdq3' />
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfgjdqmc3' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfjyje3'/>
					</td>
					<td colspan="3">
						<p align="center"></p>
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.xsjwfglfbz3' />
					</td>
				</tr>
				<tr>
					<td colspan="17">
						<strong>四、占进口采购总额10%以上的境外采购对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center"></p>
						境外关联方名称
					</td>
					<td colspan="3">
						<p align="center"></p>
						国家(地区)
					</td>
					<td colspan="4">
						<p align="center"></p>
						交易金额
					</td>
					<td colspan="3">
						<p align="center"></p>
						定价方法
					</td>
					<td>
						<p align="center"></p>
						备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfmc1' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdq1' />
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdqmc1' />
					</td>
					<td colspan="4">
					<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfjyje1'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfdjff1' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfbz1' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfmc2' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdq2' />
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdqmc2' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfjyje2'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfdjff2' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfbz2' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfmc3' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdq3' />
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfgjdqmc3' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfjyje3'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfdjff3' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwglfbz33' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="center"></p>
						境外非关联方名称
					</td>
					<td colspan="3">
						<p align="center"></p>
						国家(地区)
					</td>
					<td colspan="4">
						<p align="center"></p>
						交易金额
					</td>
					<td colspan="3">
						<p align="center"></p>
						定价方法
					</td>
					<td>
						<p align="center"></p>
						备注
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfmc1' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdq1' />
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdqmc1' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfjyje1'/>
					</td>
					<td colspan="3">
						<p align="center"></p>
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfbz1' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfmc2' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdq2' />
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdqmc2' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfjyje2'/>
					</td>
					<td colspan="3">
						<p align="center"></p>
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfbz2' />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfmc3' />
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdq3' />
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfgjdqmc3' />
					</td>
					<td colspan="4">
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfjyje3'/>
					</td>
					<td colspan="3">

						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb3vo.cgjwfglfbz3' />
					</td>
				</tr>
				<tr style="height: 22px">
					<td colspan="17">
						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：
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
	src="./nssb/wb395/wb395_glqyFb3print.js?<%=System.currentTimeMillis()%>">
</script>