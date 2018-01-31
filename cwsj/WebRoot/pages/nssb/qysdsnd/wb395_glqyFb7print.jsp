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
	<title>融通资金表（表七）</title>
</head>
<body>
	<html:form action="/WB395glqyFb7Action.do"
		styleId="WB395GlqyForm" method="post">
		<div id="toolbar" align="right"></div>
		<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>融通资金表（表七）</b> </font>
					</td>
				</tr>
			</table>
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb7" width="98%" border="1" align="center"
				cellpadding="1" bordercolor="#000000" 
				cellspacing="1" style="border-collapse: collapse">
				<tr style="height: 25px">
					<td colspan="7">
						<p align="left">
							企业从其关联方接受的债权性投资与企业接受的权益性投资的比例:
					</td>
					<td colspan="2">
						<p align="left">
					</td>
					<td colspan="4">
						<p align="right">
							金额单位：人民币元（列至角分）
					</td>
				</tr>
				<tr style="height: 25px">
					<td rowspan="7" width="4%">

						定期融资
					</td>
					<td rowspan="2" width="10%">

						境外关联方名称
					</td>
					<td rowspan="2" width="8%">

						国家 （地区）
					</td>
					<td rowspan="2" width="8%">

						币种
					</td>
					<td colspan="2" width="10%">

						融资金额
					</td>
					<td rowspan="2" width="5%">

						利 率
					</td>
					<td rowspan="2" width="14%">

						融资 起止时间
					</td>
					<td rowspan="2" width="6%">

						应计利息支出
					</td>
					<td rowspan="2" width="7%">

						应计利息收入
					</td>
					<td rowspan="2" width="7%">

						担保方名称
					</td>
					<td rowspan="2" width="8%">

						担保费
					</td>
					<td rowspan="2" width="8%">

						担保 费率
					</td>
				</tr>
				<tr style="height: 25px">
					<td>
						融入金额
					</td>
					<td>
						融出金额
					</td>
				</tr>
				<tr style="height: 25px">
					<td>
						<bean:write name='WB395GlqyForm' property='fb7vo.glfmc' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb7vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb7vo.gjdqmc' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='fb7vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb7vo.bzmc' />
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb7vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb7vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb7vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm' property='fb7vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm' property='fb7vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb7vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb7vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb7vo.dbfmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb7vo.dbfje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb7vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						<bean:write name='WB395GlqyForm' property='fb72vo.glfmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb72vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb72vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb72vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb72vo.bzmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb72vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb72vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb72vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb72vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb72vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb72vo.yjlxzcje' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb72vo.yjlxsrje' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb72vo.dbfmc' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb72vo.dbfje' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb72vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						<bean:write name='WB395GlqyForm' property='fb73vo.glfmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb73vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb73vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb73vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb73vo.bzmc' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb73vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb73vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb73vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb73vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb73vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb73vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb73vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb73vo.dbfmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb73vo.dbfje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb73vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						<bean:write name='WB395GlqyForm' property='fb74vo.glfmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb74vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb74vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb74vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb74vo.bzmc' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb74vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb74vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb74vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb74vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb74vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb74vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb74vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb74vo.dbfmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb74vo.dbfje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb74vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						<bean:write name='WB395GlqyForm' property='fb75vo.glfmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb75vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb75vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb75vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb75vo.bzmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb75vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb75vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb75vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb75vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb75vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb75vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb75vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb75vo.dbfmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb75vo.dbfje' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb75vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td rowspan="2" style="text-align: center;">

						其他合计

					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb76vo.rzrrje' />
					</td>
					<td style="text-align: right;">
						——
					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb76vo.yjlxzcje' />

					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb76vo.dbfje' />
					</td>
					<td style="text-align: center;">
						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb77vo.rzrcje' />

					</td>
					<td style="text-align: center;">
						—
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb77vo.yjlxsrje' />

					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb77vo.dbfje' />
					</td>
					<td style="text-align: center;">
						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td colspan="2" style="text-align: center;">

						合计
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syqhj3' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syqhj4' />
					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syqhj7' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syqhj8' />

					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syqhj10' />

					</td>
					<td style="text-align: center;">
						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td rowspan="5">

						定期融资
					</td>
					<td rowspan="2">

						境内关联方名称
					</td>
					<td rowspan="2">

						国家 （地区）
					</td>
					<td rowspan="2">

						币种
					</td>
					<td colspan="2">

						融资金额
					</td>
					<td rowspan="2">

						利 率
					</td>
					<td rowspan="2">

						融资 起止时间
					</td>
					<td rowspan="2">

						应计利息支出
					</td>
					<td rowspan="2">

						应计利息收入
					</td>
					<td rowspan="2">

						担保方名称
					</td>
					<td rowspan="2">

						担保费
					</td>
					<td rowspan="2">

						担保 费率
					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						融入金额
					</td>
					<td>

						融出金额
					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						<bean:write name='WB395GlqyForm' property='fb78vo.glfmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb78vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb78vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb78vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb78vo.bzmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb78vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb78vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb78vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb78vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb78vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb78vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb78vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb78vo.dbfmc' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb78vo.dbfje' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb78vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td>

						<bean:write name='WB395GlqyForm' property='fb79vo.glfmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb79vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb79vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb79vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb79vo.bzmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb79vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb79vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb79vo.dbfmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.dbfje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb79vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td>
						<bean:write name='WB395GlqyForm' property='fb710vo.glfmc' />
					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb710vo.gjdqdm' />
						<bean:write name='WB395GlqyForm' property='fb710vo.gjdqmc' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb710vo.bzdm' />
						<bean:write name='WB395GlqyForm' property='fb710vo.bzmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.rzrrje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.rzrcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.ll' />

					</td>
					<td style="text-align: center;">
						<bean:write name='WB395GlqyForm'
							property='fb710vo.str_rzqssj'></bean:write>
						-
						<bean:write name='WB395GlqyForm'
							property='fb710vo.str_rzzzsj'></bean:write>
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.yjlxzcje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.yjlxsrje' />

					</td>
					<td>

						<bean:write name='WB395GlqyForm' property='fb710vo.dbfmc' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.dbfje' />

					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb710vo.dbffl' />

					</td>
				</tr>
				<tr style="height: 25px">
					<td rowspan="2" style="text-align: center;">
						其他合计
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='fb711vo.rzrrje' />
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb711vo.yjlxzcje' />

					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb711vo.dbfje' />

					</td>
					<td style="text-align: center;">

						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb712vo.rzrcje' />

					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb712vo.yjlxsrje' />

					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='fb712vo.dbfje' />

					</td>
					<td style="text-align: center;">

						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td colspan="2" style="text-align: center;">

						合计
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syhjje3' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syhjje4' />
					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syhjje7' />
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syhjje8' />
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7syhjje10' />
					</td>
					<td style="text-align: center;">
						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td colspan="2" style="text-align: center;">

						总计
					</td>
					<td style="text-align: center;">
						——
					</td>
					<td style="text-align: center;">
						—
					</td>
					<td style="text-align: right;">

						<bean:write name='WB395GlqyForm' property='b7zhjje3' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7zhjje4' />

					</td>
					<td style="text-align: center;">

						—
					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7zhjje7' />

					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7zhjje8' />

					</td>
					<td style="text-align: center;">

						——
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395GlqyForm' property='b7zhjje10' />
					</td>
					<td style="text-align: center;">
						——
					</td>
				</tr>
				<tr style="height: 25px">
					<td colspan="13">
						<p align="left">
							经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
	src="./nssb/wb395/wb395_glqyFb7print.js?<%=System.currentTimeMillis()%>">
</script>