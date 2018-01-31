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
	<title>劳务表（表四)</title>
</head>
<body>
	<html:form action="/WB395glqyFb4Action.do"  styleId="WB395GlqyForm" method="post">
		<div id="toolbar" align="right"></div>
		<br />
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>劳务表（表四)</b> </font>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb4" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000"  cellspacing="1"
				style="border-collapse: collapse">
				<tr height="23">
					<td colspan="12" align="right">
							<strong>金额单位：人民币元（列至角分）</strong>
					</td>
				</tr>
				<tr height="23">
					<td colspan="12">
						<strong>一、总劳务交易</strong>
					</td>
				</tr>
				<tr height="23">
					<td colspan="3" align="center">
							劳务收入
					</td>
					<td colspan="2" width="12%" align="center">
							金额
					</td>
					<td colspan="5" align="center">
							劳务支出
					</td>
					<td colspan="2" width="12%" align="center">
							金额
					</td>
				</tr>
				<tr>
					<td colspan="3">
						劳务收入1=2+5
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.lwsrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.lwsrje'/>" ></input>
					</td>
					<td colspan="5">
						劳务支出8=9+12
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.lwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.lwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td rowspan="6" width="16%" align="center">
						其中
					</td>
					<td colspan="2">
						境外劳务收入2=3+4
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jwlwsrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwlwsrje'/>" ></input>
					</td>
					<td colspan="2" rowspan="6" align="center">
						其中
					</td>
					<td colspan="3">
						境外劳务支出9=10+11
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jwlwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwlwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td rowspan="2" width="12%" align="center">
						其中
					</td>
					<td>
						非关联劳务收入3
					</td>
					<td colspan="2" width="12%">
						<input  type="text" style="width: 100%;" name="fb4vo.jwfgllwsrje"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwfgllwsrje'/>" ></input>
					</td>
					<td rowspan="2" width="12%" align="center">
						其中
					</td>
					<td colspan="2" width="12%">
						非关联劳务支出10
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jwfgllwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwfgllwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td>
						关联劳务收入4
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jwgllwsrje"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwgllwsrje'/>" ></input>
					</td>
					<td colspan="2">
						关联劳务支出11
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jwgllwzcje"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jwgllwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						境内劳务收入5=6+7
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jnlwsrje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnlwsrje'/>" ></input>
					</td>
					<td colspan="3">
						境内劳务支出12=13+14
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jnlwzcje" 
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnlwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td rowspan="2" align="center">
						其中
					</td>
					<td>
						非关联劳务收入6
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jnfgllwsrje"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnfgllwsrje'/>" ></input>
					</td>
					<td rowspan="2" align="center">
						其中
					</td>
					<td colspan="2">
						非关联劳务支出13
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jnfgllwzcje"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jnfgllwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td>
						关联劳务收入7
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jngllwsrje"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jngllwsrje'/>" ></input>
					</td>
					<td colspan="2">
						关联劳务支出14
					</td>
					<td colspan="2">
						<input  type="text" style="width: 100%;" name="fb4vo.jngllwzcje"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.jngllwzcje'/>" ></input>
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<strong>二、境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3"><bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc1'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq1'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdqmc1'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwglfjyje1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje1'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfdjff1'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz1'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc2'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq2'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdqmc2'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwglfjyje2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje2'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfdjff2'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz2'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc3'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq3'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdqmc3'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwglfjyje3"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje3'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfdjff3'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz3'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfmc4'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdq4'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfgjdqmc4'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwglfjyje4"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfjyje4'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfdjff4'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwglfbz4'/>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外非关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc1'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq1'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdqmc1'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwfglfjyje1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje1'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz1'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc2'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq2'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdqmc2'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwfglfjyje2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje2'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz2'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc3'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq3'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdqmc3'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwfglfjyje3"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje3'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz3'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfmc4'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdq4'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfgjdqmc4'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.srjwfglfjyje4"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfjyje4'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.srjwfglfbz4'/>
					</td>
				</tr>
				<tr>
					<td colspan="12">
						<strong>三、境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易</strong>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc1'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq1'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdqmc1'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwglfjyje1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje1'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfdjff1'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz1'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc2'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq2'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdqmc2'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwglfjyje2"
							id="fb4vo.zcjwglfjyje2"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje2'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfdjff2'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz2'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc3'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq3'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdqmc3'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwglfjyje3"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje3'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfdjff3'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz33'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfmc4'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdq4'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfgjdqmc4'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwglfjyje4"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfjyje4'/>" ></input>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfdjff4'/>
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwglfbz34'/>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="center">
						境外非关联方名称
					</td>
					<td colspan="3" align="center">
						国家(地区)
					</td>
					<td colspan="2" align="center">
						交易金额
					</td>
					<td colspan="3" align="center">
						定价方法
					</td>
					<td align="center">
						备注
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfmc1'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdq1'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdqmc1'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwfglfjyje1"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfjyje1'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfbz1'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfmc2'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdq2'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdqmc2'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwfglfjyje2"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfjyje2'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfbz2'/>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfmc3'/>
					</td>
					<td colspan="3">
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdq3'/>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfgjdqmc3'/>
					</td>
					<td colspan="2">
						<input type="text" style="width: 100%;" name="fb4vo.zcjwfglfjyje3"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfjyje3'/>" ></input>
					</td>
					<td colspan="3" align="center">
						————
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb4vo.zcjwfglfbz3'/>
					</td>
				</tr>
				<tr height="23">
					<td colspan="12">
						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：
					</td>
				</tr>
				
			</table>
			
		</div>
		<html:hidden property="divHtml" styleId="divHtml"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>	
	</html:form>
</body>
</html:html>
<script type="text/javascript" src="./nssb/wb395/wb395_glqyFb4print.js?<%=System.currentTimeMillis()%>">
</script>