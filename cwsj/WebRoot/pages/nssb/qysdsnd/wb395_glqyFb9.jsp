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
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>对外支付款项情况表（表九）</title>
</head>
<body>
	<html:form action="/WB395glqyFb9Action.do"
		styleId="WB395GlqyForm" method="post">
		<div id="toolbar" align="right"></div>
			<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>对外支付款项情况表（表九）</b> </font>
					</td>
				</tr>
			</table>
		<div style="width: 100%" align="center" id="initPage">
			<table id="t9" width="98%" border="1" align="center" cellpadding="1"
				bordercolor="#000000"  cellspacing="1"
				style="border-collapse: collapse">
				<tr>
					<td colspan="6">
						<p align="right">
							金额单位：人民币元（列至角分）
					</td>
				</tr>
				<tr align="center">
					<td>

						项目

					</td>
					<td>

						本年度向境外支付款项金额

					</td>
					<td>

						其中：向境外关联企业支付款项金额

					</td>
					<td>

						已扣缴企业所得税金额

					</td>
					<td>
						是否享受税收协定优惠

					</td>
				</tr>
				<tr>
					<td>

						1.股息、红利

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje1" id="fb9vo.xjwzfkxje1" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje1'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje1" id="fb9vo.xjwglqyzfkxje1" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje1'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje1" id="fb9vo.ykjqysdsje1" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje1'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj1"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
				    <td>
						2.利息
					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje2" id="fb9vo.xjwzfkxje2" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje2'/>" />

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje2" id="fb9vo.xjwglqyzfkxje2" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje2'/>" />

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje2" id="fb9vo.ykjqysdsje2" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje2'/>" />

					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj2"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						3.租金

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje3" id="fb9vo.xjwzfkxje3" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje3'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje3" id="fb9vo.xjwglqyzfkxje3" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje3'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje3" id="fb9vo.ykjqysdsje3" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje3'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj3"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						4.特许权使用费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje4" id="fb9vo.xjwzfkxje4" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje4'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje4" id="fb9vo.xjwglqyzfkxje4" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje4'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje4" id="fb9vo.ykjqysdsje4" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje4'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj4"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						其中: 商标费

					</td>
					<td style="background-color: #CAD4EF" >

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje5" id="fb9vo.xjwzfkxje5" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje5'/>" />

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje5" id="fb9vo.xjwglqyzfkxje5" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje5'/>" />

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje5" id="fb9vo.ykjqysdsje5" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje5'/>" />

					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj5"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;技术使用费

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje6" id="fb9vo.xjwzfkxje6" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje6'/>" />

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje6" id="fb9vo.xjwglqyzfkxje6" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje6'/>" />

					</td>
					<td style="background-color: #CAD4EF">

						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje6" id="fb9vo.ykjqysdsje6" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje6'/>" />

					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj6"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						5.财产转让支出

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje7" id="fb9vo.xjwzfkxje7" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje7'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje7" id="fb9vo.xjwglqyzfkxje7" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje7'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje7" id="fb9vo.ykjqysdsje7" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje7'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj7"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						6.佣金

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje8" id="fb9vo.xjwzfkxje8" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje8'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje8" id="fb9vo.xjwglqyzfkxje8" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje8'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje8" id="fb9vo.ykjqysdsje8" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje8'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj8"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						7.设计费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje9" id="fb9vo.xjwzfkxje9" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje9'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje9" id="fb9vo.xjwglqyzfkxje9" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje9'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje9" id="fb9vo.ykjqysdsje9" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje9'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj9"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						8.咨询费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje10" id="fb9vo.xjwzfkxje10" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje10'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje10" id="fb9vo.xjwglqyzfkxje10"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje10'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje10" id="fb9vo.ykjqysdsje10" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje10'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj10"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						9.培训费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje11" id="fb9vo.xjwzfkxje11" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje11'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje11" id="fb9vo.xjwglqyzfkxje11"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje11'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje11" id="fb9vo.ykjqysdsje11" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje11'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj11"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						10.管理服务费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje12" id="fb9vo.xjwzfkxje12" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje12'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje12" id="fb9vo.xjwglqyzfkxje12"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje12'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje12" id="fb9vo.ykjqysdsje12" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje12'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj12"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						11.承包工程款

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje13" id="fb9vo.xjwzfkxje13" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje13'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje13" id="fb9vo.xjwglqyzfkxje13"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje13'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje13" id="fb9vo.ykjqysdsje13" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje13'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj13"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						12.建筑安装款

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje14" id="fb9vo.xjwzfkxje14" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje14'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje14" id="fb9vo.xjwglqyzfkxje14"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje14'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje14" id="fb9vo.ykjqysdsje14" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje14'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj14"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						13.文体演出款

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje15" id="fb9vo.xjwzfkxje15" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje15'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje15" id="fb9vo.xjwglqyzfkxje15"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje15'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje15" id="fb9vo.ykjqysdsje15" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje15'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj15"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						14.认证、检测费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje16" id="fb9vo.xjwzfkxje16" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje16'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje16" id="fb9vo.xjwglqyzfkxje16"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje16'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje16" id="fb9vo.ykjqysdsje16" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje16'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj16"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>
						15.市场拓展费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje17" id="fb9vo.xjwzfkxje17" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje17'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje17" id="fb9vo.xjwglqyzfkxje17"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje17'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje17" id="fb9vo.ykjqysdsje17" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje17'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj17"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>
						16.售后服务费

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje18" id="fb9vo.xjwzfkxje18" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje18'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje18" id="fb9vo.xjwglqyzfkxje18"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje18'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje18" id="fb9vo.ykjqysdsje18" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje18'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj18"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						17.其他

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje19" id="fb9vo.xjwzfkxje19" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje19'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje19" id="fb9vo.xjwglqyzfkxje19"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje19'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje19" id="fb9vo.ykjqysdsje19" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje19'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj19"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td style="background-color: #CAD4EF">

						&nbsp;&nbsp;&nbsp;&nbsp;其中：
						<input class="srx" type="text" style="width: 50%; text-align: left;"
							name="fb9vo.xmdm20" id="fb9vo.xmdm20"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xmdm20'/>" />

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje20" id="fb9vo.xjwzfkxje20" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje20'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje20" id="fb9vo.xjwglqyzfkxje20"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje20'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje20" id="fb9vo.ykjqysdsje20" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje20'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj20"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: left;"
							name="fb9vo.xmdm21" id="fb9vo.xmdm21"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xmdm21'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje21" id="fb9vo.xjwzfkxje21" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje21'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje21" id="fb9vo.xjwglqyzfkxje21"
							cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje21'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje21" id="fb9vo.ykjqysdsje21" cal="true"
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje21'/>" />
					</td>
					<td style="background-color: #CAD4EF">
						<html:select style="width: 100%;" property="fb9vo.xsyhbj21"
							name="WB395GlqyForm">
							<html:option value=""></html:option>
							<html:option value="0">是</html:option>
							<html:option value="1">否</html:option>
						</html:select>
					</td>
				</tr>
				<tr>
					<td>

						合计

					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="b9hjje1" id="b9hjje1"
							cal="true" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="b9hjje2" id="b9hjje2"
							cal="true" />
					</td>
					<td style="background-color: #CAD4EF">
						<input class="srx" type="text" style="width: 100%; text-align: right;"
							readonly="readonly" class="read" name="b9hjje3" id="b9hjje3"
							cal="true" />
					</td>
					<td align="center">
						*
					</td>
				</tr>
				<tr>
					<td colspan="6">
						经办人（签章）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法定代表人（签章）：
					</td>
				</tr>
			</table>
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg"></html:hidden> </span>
			<input class="srx" type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="fb9vo.str_sfssqqsrq"
				styleId="fb9vo.str_sfssqqsrq"></html:hidden>
			<html:hidden property="fb9vo.str_sfssqzzrq"
				styleId="fb9vo.str_sfssqzzrq"></html:hidden>
			<html:hidden property="fb9vo.swglm" styleId="fb9vo.swglm"></html:hidden>
			<html:hidden property="fb9vo.pzxh" styleId="fb9vo.pzxh"></html:hidden>
			<input type="hidden" name="fb9vo.sbmxxh" id="fb9vo.sbmxxh" value="1">
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
		</div>
	</html:form>

</body>
</html:html>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb9.js?<%=System.currentTimeMillis()%>">
</script>
