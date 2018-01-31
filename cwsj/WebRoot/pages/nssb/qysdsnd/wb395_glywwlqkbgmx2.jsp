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
	<title><bean:write name='WB395glywwlqkbgmx2Form'
			property='glywwlqkbgmx2aVO.nd' />年度关联业务往来情况报告明细表二</title>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB395glywwlqkbgmx2Action.do"
		styleId="WB395glywwlqkbgmx2Form" method="post">
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td>
						<div align="center">
							<font size=4><B><br>
									<input type="text"
										style="text-align: right width :   100%; font-size: 18px; font-weight: bold"
										readOnly="readOnly" name="glywwlqkbgmx2aVO.nd" id="glywwlqkbgmx2aVO.nd"
										value="<bean:write name='WB395glywwlqkbgmx2Form' property='glywwlqkbgmx2aVO.nd' />" />
									年度关联业务往来情况报告明细表二</B> </font>
						</div>
						<br>
					</td>
				</tr>
			</table>

			<table width="98%" border="0" align="center" cellpadding="0"
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
							readOnly="true" name="glywwlqkbgmx2aVO.nsrmc"
							id="glywwlqkbgmx2aVO.nsrmc"
							value="<bean:write name='WB395glywwlqkbgmx2Form' property='glywwlqkbgmx2aVO.nsrmc' />">
					</td>
					<td align="left" width="7%">
						纳税人识别号：
					</td>
					<td align="left" width="13%">
						<input type="text" style="text-align: left; width: 100%;"
							readOnly="true" name="glywwlqkbgmx2aVO.nsrsbm"
							id="glywwlqkbgmx2aVO.nsrsbm"
							value="<bean:write name='WB395glywwlqkbgmx2Form' property='glywwlqkbgmx2aVO.nsrsbm' />" />
					</td>
					<td align="left" width="5%">
						联系电话：
					</td>
					<td align="left" width="10%">
						<input type="text" style="text-align: left; width: 100%;"
							class="srx" name="glywwlqkbgmx2aVO.lxdh"
							id="glywwlqkbgmx2aVO.lxdh"
							value="<bean:write name='WB395glywwlqkbgmx2Form' property='glywwlqkbgmx2aVO.lxdh' />" />
					</td>
					<td align="right" width="10%">
						主管税务机关： &nbsp;
					</td>
					<td align="left">
						<input type="text" style="text-align: left; width: 100%;"
							readOnly="true" name="glywwlqkbgmx2aVO.zgswjgmc"
							id="glywwlqkbgmx2aVO.zgswjgmc"
							value="<bean:write name='WB395glywwlqkbgmx2Form' property='glywwlqkbgmx2aVO.zgswjgmc' />" />
					</td>
				</tr>
			</table>

			<table width="98%" align="center" cellpadding="1" cellspacing="1"
				border="1" bordercolor="#000000" id="tab1">
				<tr align="center">
					<td>
						关联方名称
					</td>
					<td>
						关联关系类型
					</td>
					<td>
						关联方企税税率
					</td>
					<td>
						关联方享受税收优惠政策情况
					</td>
					<td>
						关联方企业所得税管理机关
					</td>
					<td>
						交易类型
					</td>
					<td>
						财产类型
					</td>
					<td>
						关联交易金额
					</td>
					<td>
						财产净值
					</td>
					<td>
						相关税费
					</td>
				</tr>
				<logic:present name="WB395glywwlqkbgmx2Form" property="list">
					<logic:iterate id="dataid" name="WB395glywwlqkbgmx2Form"
						property="list">
						<tr height="20px">

							<td style="text-align: left;" width="17%">
								<input type="text" style="width: 100%; text-align: left;"
									name="glfmc" class="srx"
									value="<bean:write name='dataid' property='glfmc'/>" />
							</td>
							<td style="text-align: center;" width="4%">
								<html:select property="glgxlx" name="dataid" styleId="glgxlx"
									styleClass="srx" style="width:100%">
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
							<td style="text-align: right;" width="5%">
								<input type="text" style="width: 100%; text-align: right;"
									name="glfqssl" class="srx" cal="true"
									value="<bean:write name='dataid' property='glfqssl'/>" />
							</td>
							<td style="text-align: right;" width="18%">
								<input type="text" style="width: 100%; text-align: left;"
									name="glfxsyhqk" class="srx"
									value="<bean:write name='dataid' property='glfxsyhqk'/>" />
							</td>
							<td style="text-align: right;" width="18%">
								<input type="text" style="width: 100%; text-align: left;"
									name="glfsdsgljg" class="srx"
									value="<bean:write name='dataid' property='glfsdsgljg'/>" />
							</td>
							<td style="text-align: right;" width="10%">
								<html:select property="jylx" name="dataid" styleClass="srx">
									<html:option value=""></html:option>
									<html:optionsCollection property="jylxList"
										name="WB395glywwlqkbgmx2Form"></html:optionsCollection>
								</html:select>
							</td>
							<td style="text-align: right;" width="6%">
								<html:select property="cclx" name="dataid" styleId="cclx"
									styleClass="srx">
									<html:option value=""></html:option>
									<html:option value="01">无形资产</html:option>
									<html:option value="02">固定资产</html:option>
									<html:option value="03">股权投资</html:option>
									<html:option value="04">其他</html:option>
								</html:select>
							</td>
							<td style="text-align: right;" width="8%">
								<input type="text" style="width: 100%; text-align: right;"
									name="glfjyje" class="srx" cal="true"
									value="<bean:write name='dataid' property='glfjyje'/>" />
							</td>
							<td style="text-align: right;">
								<input type="text" style="width: 100%; text-align: right;"
									name="ccjz" class="srx" cal="true"
									value="<bean:write name='dataid' property='ccjz'/>" />
							</td>
							<td style="text-align: right;">
								<input type="text" style="width: 100%; text-align: right;"
									name="xgsf" class="srx" cal="true"
									value="<bean:write name='dataid' property='xgsf'/>" />

							</td>
						</tr>
					</logic:iterate>
				</logic:present>

			</table>

		</div>
		<input type="hidden" id="bbZt" name="bbzt"
			value="<%=request.getParameter("bbZt")%>" />
		<SPAN id='b' bz="update"> <html:hidden property="errorMessage"
				styleId="errorMessage" /> <html:hidden property="handleCode"
				styleId="handleCode" /> <html:hidden property="pzXh" styleId="pzXh" />
			<html:hidden property="sucessMsg" styleId="sucessMsg" /> <html:hidden
				property="proMessage" styleId="proMessage" /> <html:hidden
				property="sbmxxh" styleId="sbmxxh" /> </SPAN>
		<%@include file="/nssb/caInclude.jsp"%>
		<%@include file="/nssb/nsryhinfo.jsp"%>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_glywwlqkbgmx2.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
