<%@ page ContentType="text/html;charset=UTF-8"%>
<%@include file="/common/common.jsp"%>
<%@ taglib uri="/WEB-INF/cssnj.tld" prefix="cssnj"%>
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
	<script language="javascript" type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>关联业务往来情况报告明细表一</title>
</head>
<body onkeydown="enterTab()">
	<html:form action="/WB395glywwlqkbgmx1Action.do" method="post"
		styleId="WB395glywwlqkbgmx1Form">
		<div id="toolbar" style="width: 100%" align="right"></div>
		<br />
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b> <input type="text"
								style="text-align: right width :   100%; font-size: 18px; font-weight: bold"
								readOnly="readOnly" name="vo.nd" id="vo.nd"
								value="<bean:write name='WB395glywwlqkbgmx1Form' property='vo.nd' />" />
							年度关联业务往来情况报告明细表一</b> </font>
				</td>
			</tr>
		</table>
		<table id="tab2" width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td colspan="8" align="right">
					单位：万元
				</td>
			</tr>
			<tr>
				<td align="left" width="10%">
					纳税人名称（公章）：
				</td>
				<td align="left">
					<input type="text" style="text-align: left; width: 100%;"
						readOnly="true" name="vo.nsrmc" id="vo.nsrmc"
						value="<bean:write name='WB395glywwlqkbgmx1Form' property='vo.nsrmc' />">
				</td>
				<td align="left" width="7%">
					纳税人识别号：
				</td>
				<td align="left" width="13%">
					<input type="text" style="text-align: left; width: 100%;"
						readOnly="true" name="vo.nsrsbm" id="vo.nsrsbm"
						value="<bean:write name='WB395glywwlqkbgmx1Form' property='vo.nsrsbm' />" />
				</td>
				<td align="left" width="5%">
					联系电话：
				</td>
				<td align="left" width="10%">
					<input type="text" style="text-align: left; width: 100%;"
						class="srx" name="vo.lxdh" id="vo.lxdh"  cal="true" format="0"
						value="<bean:write name='WB395glywwlqkbgmx1Form' property='vo.lxdh' />" />
				</td>
				<td align="right" width="10%">
					主管税务机关： &nbsp;
				</td>
				<td align="left">
					<input type="text" style="text-align: left; width: 100%;"
						readOnly="true" name="vo.zgswjgmc" id="vo.zgswjgmc"
						value="<bean:write name='WB395glywwlqkbgmx1Form' property='vo.zgswjgmc' />" />
				</td>
			</tr>
		</table>
		<table id="tab1" width="98%" align="center" cellpadding="1"
			cellspacing="1" border="1" bordercolor="#000000">
			<tr align="center">
				<td rowspan="2" width="10%">
					关联方名称
				</td>
				<td rowspan="2" width="5%">
					关联关系
					<br />
					类型
				</td>
				<td rowspan="2" width="5%">
					关联方企
					<br />
					税税率
				</td>
				<td rowspan="2" width="10%">
					关联方享受税收优惠
					<br />
					政策情况
				</td>
				<td rowspan="2" width="10%">
					关联方企业所得税
					<br />
					管理机关
				</td>
				<td rowspan="2" width="11%">
					交易类型
				</td>
				<td width="10%">
					关联交易金额
				</td>
				<td width="10%">
					关联交易占比
				</td>
				<td width="10%">
					关联交易毛利率
				</td>
				<td width="10%">
					交易总金额
				</td>
				<td width="9%">
					本类交易综合毛利率
				</td>
			</tr>
			<tr align="center">
				<td>
					1
				</td>
				<td>
					3＝1/2
				</td>
				<td>
					&nbsp;
				</td>
				<td>
					2
				</td>
				<td>
					&nbsp;
				</td>
			</tr>
			<logic:present name="WB395glywwlqkbgmx1Form" property="list">
				<logic:iterate id="dataid" name="WB395glywwlqkbgmx1Form"
					property="list">
					<tr>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: left;"
								name="glfmc" id="glfmc" class="srx"
								value="<bean:write name='dataid' property='glfmc'/>" />
						</td>
						<td>
							<html:select property="glgxlx" styleId="glgxlx" name='dataid'
								style="width: 100%;">
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
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: right;"
								name="glfqssl" id="glfqssl" cal="true" class="srx"
								value="<bean:write name='dataid' property='glfqssl'/>" />
						</td>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: left;"
								name="glfxsyhqk" id="glfxsyhqk" class="srx"
								value="<bean:write name='dataid' property='glfxsyhqk'/>" />
						</td>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: left;"
								name="glfsdsgljg" id="glfsdsgljg" class="srx"
								value="<bean:write name='dataid' property='glfsdsgljg'/>" />
						</td>
						<td>
							<html:select property="jylx" name="dataid" styleClass="srx"
								style="width: 100%;">
								<html:option value="">请选择</html:option>
								<html:optionsCollection property="gjList"
									name="WB395glywwlqkbgmx1Form"></html:optionsCollection>
							</html:select>
						</td>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: right;"
								name="gljyje" id="gljyje" cal="true" class="srx"
								value="<bean:write name='dataid' property='gljyje'/>" />
						</td>
						<td>
							<input type="text" style="width: 100%; text-align: right;"
								name="gljyzb" id="gljyzb" cal="true" readonly="readonly"
								class="fsrx"
								value="<bean:write name='dataid' property='gljyzb'/>" />
						</td>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: right;"
								name="gljymll" id="gljymll" cal="true" class="srx"
								value="<bean:write name='dataid' property='gljymll'/>" />
						</td>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: right;"
								name="jyzje" id="jyzje" cal="true" class="srx"
								value="<bean:write name='dataid' property='jyzje'/>" />
						</td>
						<td style="background-color: #CAD4EF">
							<input type="text" style="width: 100%; text-align: right;"
								name="bljyzhmll" id="bljyzhmll" cal="true" class="srx"
								value="<bean:write name='dataid' property='bljyzhmll'/>" />
						</td>
					</tr>
				</logic:iterate>
			</logic:present>
		</table>

		<input type="hidden" id="bbZt" name="bbzt"
			value="<%=request.getParameter("bbZt")%>">
		<SPAN id='z' bz="update"> <html:hidden property="errorMessage"
				styleId="errorMessage" /> <html:hidden property="sucessMsg"
				styleId="sucessMsg"></html:hidden> <html:hidden
				property="proMessage" styleId="proMessage" /> <html:hidden
				property="xh" styleId="xh"></html:hidden> <html:hidden
				property="vo.sbmxxh" styleId="vo.sbmxxh"></html:hidden> </SPAN>
		<html:hidden property="pzXh" styleId="pzXh"></html:hidden>
		<html:hidden property="vo.zgswjgdm" styleId="vo.zgswjgdm"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
		<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
		<%@include file="/nssb/caInclude.jsp"%>
		<%@include file="/nssb/nsryhinfo.jsp"%>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_glywwlqkbgmx1.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
