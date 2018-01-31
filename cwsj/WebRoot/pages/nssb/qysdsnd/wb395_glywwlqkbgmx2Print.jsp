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
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
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
							<font size=4><B><br> <bean:write
										name='WB395glywwlqkbgmx2Form' property='glywwlqkbgmx2aVO.nd' />年度关联业务往来情况报告明细表二</B>
							</font>
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
						<bean:write name='WB395glywwlqkbgmx2Form'
							property='glywwlqkbgmx2aVO.nsrmc' />
					</td>
					<td align="left" width="7%">
						纳税人识别号：
					</td>
					<td align="left" width="13%">
						<bean:write name='WB395glywwlqkbgmx2Form'
							property='glywwlqkbgmx2aVO.nsrsbm' />
					</td>
					<td align="left" width="5%">
						联系电话：
					</td>
					<td align="left" width="10%">
						<bean:write name='WB395glywwlqkbgmx2Form'
							property='glywwlqkbgmx2aVO.lxdh' />
					</td>
					<td align="right" width="10%">
						主管税务机关： &nbsp;
					</td>
					<td align="left">
						<bean:write name='WB395glywwlqkbgmx2Form'
							property='glywwlqkbgmx2aVO.zgswjgmc' />
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
								<bean:write name='dataid' property='glfmc' />
							</td>
							<td style="text-align: center;" width="4%">
								<bean:write name='dataid' property='glgxlx' />

							</td>
							<td style="text-align: right;" width="5%">
								<bean:write name='dataid' property='glfqssl' />
							</td>
							<td style="text-align: left;" width="18%">
								<bean:write name='dataid' property='glfxsyhqk' />
							</td>
							<td style="text-align: left;" width="18%">
								<bean:write name='dataid' property='glfsdsgljg' />
							</td>
							<td style="text-align: left;" width="10%">
								<bean:write name='dataid' property='jylx' />

							</td>
							<td style="text-align: left;" width="6%">
								<bean:write name='dataid' property='cclx' />

							</td>
							<td style="text-align: right;" width="8%">
								<bean:write name='dataid' property='glfjyje' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='ccjz' />
							</td>
							<td style="text-align: right;">
								<bean:write name='dataid' property='xgsf' />

							</td>
						</tr>
					</logic:iterate>
				</logic:present>

			</table>

		</div>
		<html:hidden property="divHtml" styleId="divHtml" />
		<html:hidden property="handleCode" styleId="handleCode" />
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_glywwlqkbgmx2Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
