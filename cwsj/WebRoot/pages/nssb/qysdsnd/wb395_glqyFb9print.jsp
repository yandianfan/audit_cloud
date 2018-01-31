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
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="fb9" width="98%" border="1" align="center"
				cellpadding="1" bordercolor="#000000" 
				cellspacing="1" style="border-collapse: collapse">
				<tr style="display: none">
					<td width="20%"></td>
					<td width="20%"></td>
					<td width="20%"></td>
					<td width="20%"></td>
					<td width="20%"></td>
				</tr>
				<tr>
					<td colspan="6">
						<p align="right">
							金额单位：人民币元（列至角分）
						</p>
					</td>
				</tr>
				<tr>
					<td>
						<p align="center">
							项目
						</p>
					</td>
					<td>
						<p align="center">
							本年度向境外支付款项金额
						</p>
					</td>
					<td>
						<p align="center">
							其中：向境外关联企业支付款项金额
						</p>
					</td>
					<td>
						<p align="center">
							已扣缴企业所得税金额
						</p>
					</td>
					<td>
						<p align="center">
							是否享受税收协定优惠
						</p>
					</td>
				</tr>
				<tr>
					<td>

						1.股息、红利

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje1" id="fb9vo.xjwzfkxje1" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje1'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje1" id="fb9vo.xjwglqyzfkxje1" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje1'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje1" id="fb9vo.ykjqysdsje1" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje1'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj1' />
					</td>
				</tr>
				<tr>
					<td>
						2.利息
					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje2" id="fb9vo.xjwzfkxje2" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje2'/>" ></input>

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje2" id="fb9vo.xjwglqyzfkxje2" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje2'/>" ></input>

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje2" id="fb9vo.ykjqysdsje2" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje2'/>" ></input>

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj2' />
					</td>
				</tr>
				<tr>
					<td>

						3.租金

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje3" id="fb9vo.xjwzfkxje3" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje3'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje3" id="fb9vo.xjwglqyzfkxje3" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje3'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje3" id="fb9vo.ykjqysdsje3" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje3'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj3' />
					</td>
				</tr>
				<tr>
					<td>

						4.特许权使用费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje4" id="fb9vo.xjwzfkxje4" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje4'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje4" id="fb9vo.xjwglqyzfkxje4" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje4'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje4" id="fb9vo.ykjqysdsje4" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje4'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj4' />
					</td>
				</tr>
				<tr>
					<td>

						其中: 商标费

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje5" id="fb9vo.xjwzfkxje5" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje5'/>" ></input>

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje5" id="fb9vo.xjwglqyzfkxje5" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje5'/>" ></input>

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje5" id="fb9vo.ykjqysdsje5" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje5'/>" ></input>

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj5' />
					</td>
				</tr>
				<tr>
					<td>

						技术使用费

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje6" id="fb9vo.xjwzfkxje6" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje6'/>" ></input>

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje6" id="fb9vo.xjwglqyzfkxje6" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje6'/>" ></input>

					</td>
					<td>

						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje6" id="fb9vo.ykjqysdsje6" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje6'/>" ></input>

					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj6' />
					</td>
				</tr>
				<tr>
					<td>

						5.财产转让支出

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje7" id="fb9vo.xjwzfkxje7" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje7'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje7" id="fb9vo.xjwglqyzfkxje7" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje7'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje7" id="fb9vo.ykjqysdsje7" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje7'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj7' />
					</td>
				</tr>
				<tr>
					<td>

						6.佣金

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje8" id="fb9vo.xjwzfkxje8" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje8'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje8" id="fb9vo.xjwglqyzfkxje8" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje8'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje8" id="fb9vo.ykjqysdsje8" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje8'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj8' />
					</td>
				</tr>
				<tr>
					<td>

						7.设计费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje9" id="fb9vo.xjwzfkxje9" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje9'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje9" id="fb9vo.xjwglqyzfkxje9" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje9'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje9" id="fb9vo.ykjqysdsje9" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje9'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj9' />
					</td>
				</tr>
				<tr>
					<td>

						8.咨询费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje10" id="fb9vo.xjwzfkxje10" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje10'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje10" id="fb9vo.xjwglqyzfkxje10"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje10'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje10" id="fb9vo.ykjqysdsje10" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje10'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj10' />
					</td>
				</tr>
				<tr>
					<td>

						9.培训费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje11" id="fb9vo.xjwzfkxje11" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje11'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje11" id="fb9vo.xjwglqyzfkxje11"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje11'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje11" id="fb9vo.ykjqysdsje11" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje11'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj11' />
					</td>
				</tr>
				<tr>
					<td>

						10.管理服务费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje12" id="fb9vo.xjwzfkxje12" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje12'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje12" id="fb9vo.xjwglqyzfkxje12"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje12'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje12" id="fb9vo.ykjqysdsje12" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje12'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj12' />
					</td>
				</tr>
				<tr>
					<td>

						11.承包工程款

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje13" id="fb9vo.xjwzfkxje13" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje13'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje13" id="fb9vo.xjwglqyzfkxje13"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje13'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje13" id="fb9vo.ykjqysdsje13" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje13'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj13' />
					</td>
				</tr>
				<tr>
					<td>

						12.建筑安装款

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje14" id="fb9vo.xjwzfkxje14" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje14'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje14" id="fb9vo.xjwglqyzfkxje14"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje14'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje14" id="fb9vo.ykjqysdsje14" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje14'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj14' />
					</td>
				</tr>
				<tr>
					<td>

						13.文体演出款

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje15" id="fb9vo.xjwzfkxje15" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje15'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje15" id="fb9vo.xjwglqyzfkxje15"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje15'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje15" id="fb9vo.ykjqysdsje15" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje15'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj15' />
					</td>
				</tr>
				<tr>
					<td>

						14.认证、检测费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje16" id="fb9vo.xjwzfkxje16" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje16'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje16" id="fb9vo.xjwglqyzfkxje16"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje16'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje16" id="fb9vo.ykjqysdsje16" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje16'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj16' />
					</td>
				</tr>
				<tr>
					<td>

						15.市场拓展费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje17" id="fb9vo.xjwzfkxje17" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje17'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje17" id="fb9vo.xjwglqyzfkxje17"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje17'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje17" id="fb9vo.ykjqysdsje17" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje17'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj17' />
					</td>
				</tr>
				<tr>
					<td>

						16.售后服务费

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje18" id="fb9vo.xjwzfkxje18" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje18'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje18" id="fb9vo.xjwglqyzfkxje18"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje18'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje18" id="fb9vo.ykjqysdsje18" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje18'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj18' />
					</td>
				</tr>
				<tr>
					<td>

						17.其他

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje19" id="fb9vo.xjwzfkxje19" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje19'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje19" id="fb9vo.xjwglqyzfkxje19"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje19'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje19" id="fb9vo.ykjqysdsje19" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje19'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj19' />
					</td>
				</tr>
				<tr>
					<td >

						其中：
						<input type="text" style="width: 72%; text-align: left;"
							name="fb9vo.xmdm20" id="fb9vo.xmdm20" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xmdm20'/>" ></input>

					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje20" id="fb9vo.xjwzfkxje20" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje20'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje20" id="fb9vo.xjwglqyzfkxje20"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje20'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje20" id="fb9vo.ykjqysdsje20" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje20'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj20' />
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" style="width: 100%; text-align: left;"
							name="fb9vo.xmdm21" id="fb9vo.xmdm21" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xmdm21'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwzfkxje21" id="fb9vo.xjwzfkxje21" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwzfkxje21'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.xjwglqyzfkxje21" id="fb9vo.xjwglqyzfkxje21"
							cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.xjwglqyzfkxje21'/>" ></input>
					</td>
					<td>
						<input type="text" style="width: 100%; text-align: right;"
							name="fb9vo.ykjqysdsje21" id="fb9vo.ykjqysdsje21" cal="true" 
							value="<bean:write name='WB395GlqyForm' property='fb9vo.ykjqysdsje21'/>" ></input>
					</td>
					<td>
						<bean:write name='WB395GlqyForm'
							property='fb9vo.xsyhbj21' />
					</td>
				</tr>
				<tr>
					<td>

						合计

					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='b9hjje1' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='b9hjje2' />
					</td>
					<td>
						<bean:write name='WB395GlqyForm' property='b9hjje3' />
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

		</div>
		<html:hidden property="divHtml" styleId="divHtml"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
	</html:form>

</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_glqyFb9print.js?<%=System.currentTimeMillis()%>"></script>
</html:html>

