<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page ContentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/WEB-INF/cssnj.tld" prefix="cssnj"%>
<%@include file="/common/common.jsp"%>
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
		<link rel="stylesheet" type="text/css"
			href="./public/ext/resources/css/ext-all.css" />
		<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
		<script language="javascript"
			src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
		<script type="text/javascript" src="/public/js/tool/edittable.js"></script>
		<title>关联关系表(表一)</title>
	</head>
	<body onkeydown="enterTab()">
		<html:form action="/WB395glqyFb1Action.do" method="post"
			styleId="WB395GlqyForm">
			<div id="toolbar" align="right"></div>
			<br />
			<br />
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>关联关系表(表一)</b> </font>
					</td>
				</tr>
			</table>

			<div style="width: 100%" align="center" id="main">
				<table id="t1" width="98%" border="1" align="center" cellpadding="1"
					bordercolor="#000000" cellspacing="1"
					style="border-collapse: collapse">
					<tr>
						<td colspan="7">
							<p align="center">
								税款所属期间：
								<html:text property="ssQs" styleId="ssQs"
									style="width:100;text-align:right" readonly="true"
									name="WB395GlqyForm" styleClass="read"></html:text>
								至
								<html:text property="ssQz" styleId="ssQz"
									style="width:100;text-align:left" name="WB395GlqyForm"
									readonly="true" styleClass="read"></html:text>
							</p>
						</td>
					</tr>
					<tr>
						<td width="8%" align="center">
						</td>
						<td width="21%" align="center">
							关联方名称
						</td>
						<td width="13%" align="center">
							纳税人识别号
						</td>
						<td width="11%" align="center">
							国家(地区)
						</td>
						<td width="27%" align="center">
							地址
						</td>
						<td width="12%" align="center">
							法定代表人
						</td>
						<td width="13%" align="center">
							关联关系类型
						</td>
					</tr>
					<logic:notEmpty name="WB395GlqyForm" property="glfb1list">
						<logic:iterate indexId="index" name="WB395GlqyForm"
							property="glfb1list" id="dataid">
							<tr>
								<td width="8%" align="center">
									<input type="checkbox" name="t1ifcheck">
								</td>
								<td>
									<input type="text" style="width: 100%; text-align: left;"
										name="glfmc" class="srx"
										value="<bean:write name='dataid' property='glfmc'/>" />
								</td>
								<td>
									<input type="text" style="width: 100%; text-align: left;"
										name="nsrsbm" class="srx"
										value="<bean:write name='dataid' property='nsrsbm'/>" />
								</td>
								<td>
									<cssnj:codeSelect name="gjdqdm" prikey="DJGJDQ"
										classStyle="inputneed" inTable="true" codewidth="30%"
										namewidth="70%">
										<bean:write name='dataid' property='gjdqdm' />
									</cssnj:codeSelect>
								</td>
								<td>
									<input type="text" style="width: 100%; text-align: left;"
										class="srx" name="dz"
										value="<bean:write name='dataid' property='dz'/>" />
								</td>
								<td>
									<input type="text" style="width: 100%; text-align: left;"
										name="frdbr" class="srx"
										value="<bean:write name='dataid' property='frdbr'/>" />
								</td>
								<td align="center">
									<html:select property="glgxlx" name="dataid" styleId="glgxlx">
										<html:option value=""></html:option>
										<html:option value="A">A</html:option>
										<html:option value="B">B</html:option>
										<html:option value="C">C</html:option>
										<html:option value="D">D</html:option>
										<html:option value="E">E</html:option>
										<html:option value="F">F</html:option>
										<html:option value="G">G</html:option>
										<html:option value="H">H</html:option>
									</html:select>
								</td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>

					<tr style="display: none;">
						<td width="8%" align="center">
							<input type="checkbox" name="t1ifcheck">
						</td>
						<td>
							<input type="text" style="width: 100%; text-align: left;"
								class="srx" name="glfmc" value="" />
						</td>
						<td>
							<input type="text" style="width: 100%; text-align: left;"
								class="srx" name="nsrsbm" value="" />
						</td>
						<td>
							<cssnj:codeSelect name="gjdqdm" prikey="DJGJDQ"
								classStyle="inputneed" inTable="true" codewidth="30%"
								namewidth="70%">
							</cssnj:codeSelect>
						</td>
						<td>
							<input type="text" style="width: 100%; text-align: left;"
								class="srx" name="dz" value="" />
						</td>
						<td>
							<input type="text" style="width: 100%; text-align: left;"
								class="srx" name="frdbr" value="" />
						</td>
						<td align="center">
							<html:select property="glgxlx" styleId="glgxlx">
								<html:option value=""></html:option>
								<html:option value="A">A</html:option>
								<html:option value="B">B</html:option>
								<html:option value="C">C</html:option>
								<html:option value="D">D</html:option>
								<html:option value="E">E</html:option>
								<html:option value="F">F</html:option>
								<html:option value="G">G</html:option>
								<html:option value="H">H</html:option>
							</html:select>
						</td>
					</tr>
				</table>
				<br />
				<div align="left" style="width: 98%">
					业务处理规则
					<br>
					1．“纳税人识别号”：填报关联方所在国家或地区用于纳税申报的纳税人号码。
					<br>
					2．“国家（地区）”：填报关联方所在国家或地区的名称。
					<br>
					3．“地址”：填报关联企业注册地址和实际经营管理机构所在地地址或关联个人住所。
					<br>
					4．“关联关系类型”：应按以下关联关系标准填报代码A、B、C等，有多个关联关系类型的应填报多个代码：
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;A．一方直接或间接持有另一方的股份总和达到25%或以上；或者双方直接或间接同为第三方所持有股份达到25%或以上。若一方通过中间方对另一方间接持有股份，只要一方对中间方持股比例达到25%或以上，则一方对另一方的持股比例按照中间方对另一方的持股比例计算；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;B．一方与另一方（独立金融机构除外）之间借贷资金占一方实收资本50%或以上，或者一方借贷资金总额的10%或以上是由另一方（独立金融机构除外）担保；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;C．一方半数以上的高级管理人员（包括董事会成员和经理）或至少一名可以控制董事会的董事会高级成员是由另一方委派，或者双方半数以上的高级管理人员（包括董事会成员和经理）或至少一名可以控制董事会的董事会高级成员同为第三方委派；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;D．一方半数以上的高级管理人员（包括董事会成员和经理）同时担任另一方的高级管理人员（包括董事会成员和经理），或者一方至少一名可以控制董事会的董事会高级成员同时担任另一方的董事会高级成员；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;E．一方的生产经营活动必须由另一方提供的工业产权、专有技术等特许权才能正常进行；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;F．一方的购买或销售活动主要由另一方控制；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;G．一方接受或提供劳务主要由另一方控制；
					<br>
					&nbsp;&nbsp;&nbsp;&nbsp;H．一方对另一方的生产经营、交易具有实质控制、或者双方在利益上具有相关联的其它关系，包括虽未达到A项持股比例，但一方与另一方的主要持股方享受基本相同的经济利益，以及家族、亲属关系等
					<br>
				</div>
			</div>
			<span id="update"> <html:hidden property="errorMessage"
					name="WB395GlqyForm" styleId="errorMessage" /> <html:hidden
					property="sucessMsg" name="WB395GlqyForm" styleId="sucessMsg"></html:hidden>
			</span>
			<input type="hidden" id="bbZt" name="bbzt"
				value="<%=request.getParameter("bbZt")%>">
			<html:hidden property="swglm" styleId="swglm"></html:hidden>
			<html:hidden property="pzxh" styleId="pzxh"></html:hidden>
			<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
			<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
		</html:form>
		<script type="text/javascript"
			src="./nssb/wb395/wb395_glqyFb1.js?<%=System.currentTimeMillis()%>"></script>
	</body>
</html>