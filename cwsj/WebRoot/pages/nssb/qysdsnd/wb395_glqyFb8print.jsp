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
	<title>对外投资情况表（表八）</title>
</head>
<body>
	<html:form action="/WB395glqyFb8Action.do"
		styleId="WB395GlqyForm" method="post">
		<div id="toolbar" align="right"></div>
			<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>对外投资情况表（表八）</b> </font>
					</td>
				</tr>
			</table>
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb8" width="98%" border="1" align="center"
				cellpadding="1" bordercolor="#000000" 
				cellspacing="1" style="border-collapse: collapse">
				<tr>
					<td colspan="6" align="right">

						<strong>金额单位：人民币元（列至角分）</strong>

					</td>
				</tr>
				<tr>
					<td colspan="6" valign="top">

						<strong>一、企业基本信息</strong>

					</td>
				</tr>
				<tr>
					<td colspan="1">

						企业名称

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.qymc' />

					</td>
					<td colspan="1">

						纳税人识别号

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.nsrsbm' />

					</td>
				</tr>
				<tr>
					<td colspan="1">

						注册地址

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.zcdz' />

					</td>
					<td colspan="1">

						法定代表人

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.frdbmc' />

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>二、被投资外国企业基本信息</strong>

					</td>
				</tr>
				<tr>
					<td>

						企业名称

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqymc' />

					</td>
					<td colspan="1">

						纳税人识别号

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm'
							property='fb8vo.btzqynsrsbm' />

					</td>
				</tr>
				<tr>
					<td>

						注册地址

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyzcdz' />

					</td>
					<td colspan="1">

						法定代表人

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyfrmc' />

					</td>
				</tr>
				<tr>
					<td>

						主要经营地址

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyjydz' />

					</td>
					<td colspan="1">

						成立时间

					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqyclsj'></bean:write>
					</td>
				</tr>
				<tr>
					<td>

						法定代表人居住地址

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyfrzz' />

					</td>
					<td colspan="1">

						记账本位货币

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyhbdm' />
						<bean:write name='WB395GlqyForm' property='bzmc' />
					</td>
				</tr>
				<tr>
					<td rowspan="2">

						主营业务范围

					</td>
					<td colspan="2" rowspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyywfw' />

					</td>
					<td colspan="1">

						对人民币汇率

					</td>
					<td colspan="2">

						<bean:write name='WB395GlqyForm' property='fb8vo.btzqyhl' />

					</td>
				</tr>
				<tr>
					<td colspan="1">

						纳税年度起止

					</td>
					<td colspan="2">
						<bean:write name='WB395GlqyForm'
							property='fb8vo.btzqynsqsnd'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.btzqynszznd'></bean:write>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						被投资外国企业总股份信息

					</td>
					<td colspan="4" align="center">

						企业持有被投资外国企业股份信息

					</td>
				</tr>
				<tr>
					<td align="center">

						总股份量

					</td>
					<td align="center">

						起止时间

					</td>
					<td align="center">

						股份种类

					</td>
					<td align="center">

						起止时间

					</td>
					<td align="center">

						持股数量

					</td>
					<td align="center">

						持股比例%

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

						6=5/1

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm'
							property='fb8vo.btzqyzgfsl1' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqygfqssj1'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqygfzzsj1'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfzl1' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_qycygfqssj1'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_qycygfzzsj1'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfsl1' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfbl1' />

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm'
							property='fb8vo.btzqyzgfsl2' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqygfqssj2'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqygfzzsj2'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfzl2' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_qycygfqssj2'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_qycygfzzsj2'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfsl2' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfbl2' />

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm'
							property='fb8vo.btzqyzgfsl3' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqygfqssj3'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_btzqygfzzsj3'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfzl3' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_qycygfqssj3'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_qycygfzzsj3'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfsl3' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.qycygfbl3' />

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>三、被投资外国企业是否在国家税务总局指定的非低税率国家（地区）：</strong>
						<logic:equal value="0" property="fb8vo.zfdslgjbj"
							name="WB395GlqyForm">是</logic:equal>
						<logic:equal value="1" property="fb8vo.zfdslgjbj"
							name="WB395GlqyForm">否</logic:equal>




					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>四、被投资外国企业年度利润是否不高于500万元人民币：</strong>
						<logic:equal value="0" property="fb8vo.nlrgy5bj"
							name="WB395GlqyForm">是</logic:equal>
						<logic:equal value="1" property="fb8vo.nlrgy5bj"
							name="WB395GlqyForm">否</logic:equal>

						<strong></strong>

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>五、被投资外国企业年度企业所得税税负信息</strong>

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						应纳税所得额

					</td>
					<td align="center">

						实际缴纳所得税

					</td>
					<td align="center">

						税后利润额

					</td>
					<td align="center">

						实际税负比率%

					</td>
					<td align="center">

						被投资企业法定所得税率

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						7

					</td>
					<td align="center">

						8

					</td>
					<td align="center">

						9=7-8

					</td>
					<td align="center">

						10=8/7

					</td>
					<td align="center">

						11

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<bean:write name='WB395GlqyForm' property='fb8vo.ynssdeje' />
					</td>
					<td align="center">
						<bean:write name='WB395GlqyForm' property='fb8vo.sjjnsdsje' />
					</td>
					<td align="center">
						<bean:write name='WB395GlqyForm' property='fb8vo.shlreje' />
					</td>
					<td align="center">
						<bean:write name='WB395GlqyForm' property='fb8vo.sjsfbl' />
					</td>
					<td align="center">
						<bean:write name='WB395GlqyForm' property='fb8vo.fdsdssl' />
					</td>

				</tr>
				<tr>
					<td colspan="6">

						<strong>六、被投资外国企业全部股东信息</strong>

					</td>
				</tr>
				<tr>
					<td align="center">

						股东名称

					</td>
					<td align="center">

						国家（地区）

					</td>
					<td align="center">

						纳税人识别号

					</td>
					<td align="center">

						持股种类

					</td>
					<td align="center">

						起止时间

					</td>
					<td align="center">

						占全部股份比例%

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdmc1' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm1' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm1' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl1' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdqssj1'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdzzsj1'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl1' />

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdmc2' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm2' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm2' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl2' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdqssj2'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdzzsj2'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl2' />

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdmc3' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm3' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm3' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl3' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdqssj3'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdzzsj2'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl3' />

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdmc4' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm4' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm4' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl4' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdqssj4'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdzzsj4'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl4' />

					</td>
				</tr>
				<tr>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdmc5' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdgjdqdm5' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdnsrsbm5' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdcgzl5' />

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdqssj5'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb8vo.str_gdzzsj5'></bean:write>
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb8vo.gdzgfbl5' />

					</td>
				</tr>
				<tr>
					<td colspan="4">

						<strong>七、被投资外国企业年度损益表</strong>

					</td>
					<td colspan="2">

						<strong>八、被投资外国企业资产负债表</strong>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						项目

					</td>
					<td colspan="1">

						金额

					</td>
					<td colspan="2">

						项目

					</td>
					<td colspan="1">

						金额

					</td>
				</tr>
				<tr>
					<td colspan="2">

						收入总额

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.srzeje"  cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.srzeje'/>" ></input>

					</td>
					<td colspan="2">

						现金

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.xjje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.xjje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						成本

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.cbje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.cbje'/>" ></input>

					</td>
					<td colspan="2">

						应收账款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.yszkje"cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.yszkje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						毛利润

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.mlrje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.mlrje'/>" ></input>

					</td>
					<td colspan="2">

						存货

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.chje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.chje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						股息、红利收入

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.gxhlsrje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gxhlsrje'/>" ></input>

					</td>
					<td colspan="2">

						其它流动资产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qtldzcje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtldzcje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						利息收入

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.lxsrje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.lxsrje'/>" ></input>

					</td>
					<td colspan="2">

						向股东或其它关联方贷款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.xgdhqtglfdkje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.xgdhqtglfdkje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						租金、特许权使用费收入

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.zjtxqsyfsrje"  cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zjtxqsyfsrje'/>" ></input>

					</td>
					<td colspan="2">

						对附属机构投资

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.dfsjgtzje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.dfsjgtzje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						财产转让收益（损失）

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.cczrsyje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.cczrsyje'/>" ></input>

					</td>
					<td colspan="2">

						其它投资

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qttzje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qttzje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						其他收入

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qtsrje"  cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtsrje'/>" ></input>

					</td>
					<td colspan="2">

						建筑物及其它可折旧财产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.zjccje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zjccje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						扣减补偿支出

					</td>
					<td colspan="1" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.kjbczcje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.kjbczcje'/>" ></input>

					</td>
					<td colspan="2">

						土地

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.tdje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.tdje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						租金、特许权使用总支出

					</td>
					<td colspan="1" valign="top">
						<input type="text" style="width: 100%;" 
							name="fb8vo.zztxqsyfzcje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zztxqsyfzcje'/>" ></input>

					</td>
					<td colspan="2">

						无形资产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.wxzcje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.wxzcje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						利息支出

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.lxzcje" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb8vo.lxzcje'/>" ></input>

					</td>
					<td colspan="2">

						其它财产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qtccje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtccje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						折旧

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.zzje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zzje'/>" ></input>

					</td>
					<td colspan="2">

						总资产

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.zzcje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zzcje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						税金

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.sjje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.sjje'/>" ></input>

					</td>
					<td colspan="2">

						应付账款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.yfzkje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.yfzkje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						其它扣除

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qtkcje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtkcje'/>" ></input>

					</td>
					<td colspan="2">

						其它流动负债

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qtldfzje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtldfzje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						年度利润总额

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.ndlrzeje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.ndlrzeje'/>" ></input>

					</td>
					<td colspan="2">

						股东或其它关联方贷款

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.gdhqtglfdkje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gdhqtglfdkje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						其它负债

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.qtfzje" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.qtfzje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						股本

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.gbje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.gbje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						未分配利润

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.wfplrje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.wfplrje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="2">

						&nbsp;

					</td>
					<td colspan="1">

						&nbsp;

					</td>
					<td colspan="2">

						总负债

					</td>
					<td colspan="1">

						<input type="text" style="width: 100%;" 
							name="fb8vo.zfzje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.zfzje'/>" ></input>

					</td>
				</tr>
				<tr>
					<td colspan="6">

						<strong>九、企业从被投资外国企业分得的股息情况</strong>

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						本年度应分配股息额

					</td>
					<td colspan="2" align="center">

						本年度实际分配股息额

					</td>
					<td colspan="2" align="center">

						比例%

					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">

						12

					</td>
					<td colspan="2" align="center">

						13

					</td>
					<td colspan="2" align="center">

						14

					</td>
				</tr>
				<tr>
					<td colspan="2" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.yfpgxeje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.yfpgxeje'/>" ></input>

					</td>
					<td colspan="2" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.sjfpgxeje"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.sjfpgxeje'/>" ></input>

					</td>
					<td colspan="2" valign="top">

						<input type="text" style="width: 100%;" 
							name="fb8vo.bl"  cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb8vo.bl'/>" ></input>

					</td>
				</tr>

				<tr>
					<td colspan="6" valign="top">

						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb8print.js?<%=System.currentTimeMillis()%>">
</script>