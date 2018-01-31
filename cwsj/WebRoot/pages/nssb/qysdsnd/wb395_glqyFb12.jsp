<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/common/common.jsp"%>
<%@ taglib uri="/WEB-INF/cssnj.tld" prefix="cssnj"%>
<html:html>
<head>
	<title>受控外国企业信息报告表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="./public/css/wsbs.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/ext/resources/css/ext-all.css" />
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script type="text/javascript" src="/public/js/tool/edittable.js"></script>
	<script language="javascript"
		src="/public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
</head>
<body>
	<div id="toolbar" style="width: 100%" align="right"></div>
	<br />
	<br />
	<table width="98%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr height="20px">
			<td style="text-align: center;">
				<font size=4><b>受控外国企业信息报告表</b> </font>
			</td>
		</tr>
	</table>
	<html:form action="/WB395glqyFb12Action.do" styleId="WB395glqyFb12Form">
		<div style="width: 100%" align="center" id="mainDiv">
			<table id="zbTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="4" align="left">
						<b>一、报告人信息</b>
					</td>
				</tr>
				<tr>
					<td width="15%">
						企业名称
					</td>
					<td width="20%" style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left;"
							id="vo.mc" readonly="readonly"
							value="<bean:write property='vo.mc' name='WB395glqyFb12Form' />"
							name="vo.mc" />
					</td>
					<td width="15%">
						纳税识别号
					</td>
					<td width="50%" style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left;"
							id="vo.nsrsbh" readonly="readonly"
							value="<bean:write property='vo.nsrsbh' name='WB395glqyFb12Form' />"
							name="vo.nsrsbh" />
					</td>
				</tr>
				<tr height="20px">
					<td colspan="4" align="left">
						<b>二、受控外国企业信息</b>
					</td>
				</tr>
				<tr>
					<td>
						企业名称
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="vo.bkmc" class="srx" maxlength="100"
							value="<bean:write property='vo.bkmc' name='WB395glqyFb12Form' />"
							name="vo.bkmc" />
					</td>
					<td>
						纳税人识别号
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="vo.bknsrsbh" class="srx" maxlength="30"
							value="<bean:write property='vo.bknsrsbh' name='WB395glqyFb12Form' />"
							name="vo.bknsrsbh" />
					</td>
				</tr>
				<tr>
					<td>
						注册地址
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="vo.bkzcdz" class="srx" maxlength="100"
							value="<bean:write property='vo.bkzcdz' name='WB395glqyFb12Form' />"
							name="vo.bkzcdz" />
					</td>
					<td>
						法定代表人
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: left"
							id="vo.bkfr" class="srx" maxlength="50"
							value="<bean:write property='vo.bkfr' name='WB395glqyFb12Form' />"
							name="vo.bkfr" />
					</td>
				</tr>
				<tr>
					<td>
						成立时间
					</td>
					<td style="text-align: left;">
						<input type="text" name="vo.str_bkclsj" tabindex="-1"
							style="width: 100%; text-align: left; border: 0; background-color: #CAD4EF;"
							class="Wdate" size="12"
							value="<bean:write property='vo.str_bkclsj' name='WB395glqyFb12Form' />"
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>
						纳税年度起止
					</td>
					<td style="text-align: left;">
						<input type="text" name="vo.bknsqnq" tabindex="-1"
							style="width: 40%; text-align: left; border: 0; background-color: #CAD4EF;"
							class="Wdate" size="4"
							value="<bean:write property='vo.bknsqnq' name='WB395glqyFb12Form' />"
							onfocus="new WdatePicker(this,'%Y',false,'whyGreen')" />
						至
						<input type="text" name="vo.bknsqnz" tabindex="-1"
							style="width: 40%; text-align: left; border: 0; background-color: #CAD4EF;"
							class="Wdate" size="4"
							value="<bean:write property='vo.bknsqnz' name='WB395glqyFb12Form' />"
							onfocus="new WdatePicker(this,'%Y',false,'whyGreen')" />
					</td>
				</tr>

				<tr>
					<td>
						记账本位货币
					</td>
					<td style="text-align: left;">
						<cssnj:codeSelect namewidth="20%" id="vo.bkbz" name="vo.bkbz"
							prikey="DJZCZBBZ" classStyle="srx">
							<bean:write name="WB395glqyFb12Form" property="vo.bkbz" />
						</cssnj:codeSelect>
					</td>
					<td>
						折合人民币汇率选用
					</td>
					<td style="text-align: left;">
						<input type="text" style="width: 100%; text-align: right;"
							id="vo.bkhl" class="srx" cal="true"
							value="<bean:write property='vo.bkhl' name='WB395glqyFb12Form' />"
							name="vo.bkhl" />
					</td>
				</tr>
				<tr>
					<td>
						主营业务范围
					</td>
					<td style="text-align: left;" colspan="3">
						<cssnj:codeSelect namewidth="20%" id="hyml" name="hyml"
							prikey="DJGBHYML" classStyle="srx" childCtrl="hydl">
							<bean:write name="WB395glqyFb12Form" property="hyml" />
						</cssnj:codeSelect>
						<cssnj:codeSelect namewidth="20%" name="hydl" name="hydl"
							prikey="DJGBHYDL" classStyle="srx" childCtrl="vo.bkgbhydm"
							parentctrl="hyml">
							<bean:write name="WB395glqyFb12Form" property="hydl" />
						</cssnj:codeSelect>
						<cssnj:codeSelect namewidth="20%" id="vo.bkgbhydm"
							name="vo.bkgbhydm" prikey="DJGBHYXL" classStyle="srx"
							parentctrl="hydl">
							<bean:write name="WB395glqyFb12Form" property="vo.bkgbhydm" />
						</cssnj:codeSelect>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<b>三、受控外国企业构成条件</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bkqygctj"
							value="01">持股比例</html:radio>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bkqygctj"
							value="02">实质控制</html:radio>
					</td>
				</tr>
			</table>
			<table id="gdTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="8">
						<b>四、持有受控外国企业股份的中国居民股东持股信息</b>
					</td>
				</tr>
				<tr>
					<td align="center" width="5%">
						选择
					</td>
					<td width="15%">
						<div align="center">
							股东名称
						</div>
					</td>
					<td width="10%">
						<div align="center">
							持股数量
						</div>
					</td>
					<td width="10%">
						<div align="center">
							持股比例
						</div>
					</td>
					<td width="15%">
						<div align="center">
							直接持股数量和比例
						</div>
					</td>
					<td width="15%">
						<div align="center">
							起止时间
						</div>
					</td>
					<td width="15%">
						<div align="center">
							间接持股数量和比例
						</div>
					</td>
					<td width="15%">
						<div align="center">
							起止时间
						</div>
					</td>
				</tr>
				<tr style="display: none">
					<td align="center">
						<input type="checkbox" name="gdTableifcheck" class="wbk" />
					</td>
					<td>
						<input type="text" name="mc" class="wbk" maxlength="50"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="cgsl" class="wbk" cal="true"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="cgbl" class="wbk" cal="true" format="4"
							style="width: 100%; text-align: right;" />
					</td>
					<td>
						<input type="text" name="zjcgsl" class="wbk" cal="true"
							style="width: 40%; text-align: right;" />
						/
						<input type="text" name="zjcgbl" class="wbk"
							style="width: 40%; text-align: right;" cal="true" format="4" />
					</td>
					<td>
						<input type="text" name="str_zjsjq" tabindex="-1"
							style="width: 40%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						至
						<input type="text" name="str_zjsjz" tabindex="-1"
							style="width: 40%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
					<td>
						<input type="text" name="jjcgsl" class="wbk" cal="true"
							style="width: 40%; text-align: right;" />
						/
						<input type="text" name="jjcgbl" class="wbk"
							style="width: 40%; text-align: right;" cal="true" format="4" />
					</td>
					<td>
						<input type="text" name="str_jjsjq" tabindex="-1"
							style="width: 40%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
						至
						<input type="text" name="str_jjsjz" tabindex="-1"
							style="width: 40%; text-align: left; border: 0" class="Wdate"
							size="12" value=""
							onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
					</td>
				</tr>
				<logic:notEmpty name="WB395glqyFb12Form" property="gdList">
					<logic:iterate id="mxid" name="WB395glqyFb12Form"
						type="gov.jslt.taxevent.wsbs.nssb.wb395.WB395skwgqyGdqkVO"
						property="gdList" scope="request">
						<tr>
							<td align="center">
								<input type="checkbox" name="gdTableifcheck" class="wbk" />
							</td>
							<td>
								<input type="text" name="mc" class="wbk" maxlength="50"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="mc"/>' />
							</td>
							<td>
								<input type="text" name="cgsl" class="wbk" cal="true"
									style="width: 100%; text-align: right;"
									value='<bean:write name="mxid" property="cgsl"/>' />
							</td>
							<td>
								<input type="text" name="cgbl" class="wbk" cal="true"
									style="width: 100%; text-align: right;" format="4"
									value='<bean:write name="mxid" property="cgbl"/>' />
							</td>
							<td>
								<input type="text" name="zjcgsl" class="wbk" cal="true"
									style="width: 40%; text-align: right;"
									value='<bean:write name="mxid" property="zjcgsl"/>' />
								/
								<input type="text" name="zjcgbl" class="wbk"
									style="width: 40%; text-align: right;" cal="true" format="4"
									value='<bean:write name="mxid" property="zjcgbl"/>' />
							</td>
							<td>
								<input type="text" name="str_zjsjq" tabindex="-1"
									style="width: 40%; text-align: left; border: 0" class="Wdate"
									size="12"
									value='<bean:write name="mxid" property="str_zjsjq"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
								至
								<input type="text" name="str_zjsjz" tabindex="-1"
									style="width: 40%; text-align: left; border: 0" class="Wdate"
									size="12"
									value='<bean:write name="mxid" property="str_zjsjz"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
							</td>
							<td>
								<input type="text" name="jjcgsl" class="wbk" cal="true"
									style="width: 40%; text-align: right;"
									value='<bean:write name="mxid" property="jjcgsl"/>' />
								/
								<input type="text" name="jjcgbl" class="wbk"
									style="width: 40%; text-align: right;" cal="true" format="4"
									value='<bean:write name="mxid" property="jjcgbl"/>' />
							</td>
							<td>
								<input type="text" name="str_jjsjq" tabindex="-1"
									style="width: 40%; text-align: left; border: 0" class="Wdate"
									size="12"
									value='<bean:write name="mxid" property="str_jjsjq"/>'
									onfocus="new WdatePicker(this,'%Y-%M-%D',false,'whyGreen')" />
								至
								<input type="text" name="str_jjsjz" tabindex="-1"
									style="width: 40%; text-align: left; border: 0" class="Wdate"
									size="12"
									value='<bean:write name="mxid" property="str_jjsjz"/>'
									onfocus="new WdatePicker(this,' %Y-%M-%D',false,'whyGreen')" />
							</td>
						</tr>
					</logic:iterate>
				</logic:notEmpty>
				<tr>
					<td align="center" colspan="9">
						<input name="add"
							onclick="addRow('gdTable',2,$('gdTable').rows.length-1);"
							type="button" tabindex="-1" class="button" value=" 增 加 ">
						<input name="del" onclick="delRow('gdTable');" type="button"
							tabindex="-1" class="button" value=" 删 除 ">
					</td>
				</tr>
			</table>
			<table id="lwTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="6">
						<b>五、例外适用情况</b>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						1.受控外国企业是否在国家税务总局指定的非低税率国家（地区）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bklwqk1"
							value="01">是</html:radio>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bklwqk1"
							value="02">否</html:radio>
						<br />
						实际税负：
						<input type="text" style="width: 30%; text-align: left"
							id="vo.bklwsjsfje" name="vo.bklwsjsfje" class="srx" cal="true"
							value="<bean:write property='vo.bklwsjsfje' name='WB395glqyFb12Form' />" />
					</td>
				</tr>
				<tr>
					<td colspan="6">
						2.受控外国企业年度利润是否不高于500万元人民币&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bklwqk2"
							value="01">是</html:radio>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bklwqk2"
							value="02">否</html:radio>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						3.受控外国企业主要取得积极经营活动所得&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bklwqk3"
							value="01">是</html:radio>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<html:radio name="WB395glqyFb12Form" property="vo.bklwqk3"
							value="02">否</html:radio>
					</td>
				</tr>
			</table>
			<table id="skTable" width="98%" border="1" align="center"
				cellpadding="1" cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="6">
						<b>六、受控外国企业利润分配</b>
					</td>
				</tr>
				<tr>
					<td width="20%">
						<div>
							可分配利润总额
						</div>
					</td>
					<td colspan="2" width="30%">
						<input type="text" name="vo.bkfplrzje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkfplrzje"/>' />
					</td>
					<td width="15%">
						<div>
							可抵免外国税额
						</div>
					</td>
					<td colspan="2" width="20%">
						<input type="text" name="vo.bkdmfplrzje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkdmfplrzje"/>' />
					</td>
				</tr>
				<tr>
					<td>
						<div>
							以前年度已视同分配额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkyqndfpje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkyqndfpje"/>' />
					</td>
					<td>
						<div>
							可抵免外国税额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkdmyqndfpje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkdmyqndfpje"/>' />
					</td>
				</tr>
				<tr>
					<td>
						<div>
							本年度分配额超出以前年度已视同分配额的数额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkbndyfpje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkbndyfpje"/>' />
					</td>
					<td>
						<div>
							可抵免外国税额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkdmbndyfpje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkdmbndyfpje"/>' />
					</td>
				</tr>
				<tr>
					<td>
						<div>
							未分配利润额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkwfplrje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkwfplrje"/>' />
					</td>
					<td>
						<div>
							可抵免外国税额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkdmwfplrje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkdmwfplrje"/>' />
					</td>
				</tr>
				<tr>
					<td>
						<div>
							视同分配给报告人股息
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkbgrgxje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkbgrgxje"/>' />
					</td>
					<td>
						<div>
							可抵免外国税额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkdmbgrgxje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkdmbgrgxje"/>' />
					</td>
				</tr>
				<tr>
					<td>
						<div>
							视同分配给其他中国居民股东的股息
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkgdlxje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkgdlxje"/>' />
					</td>
					<td>
						<div>
							可抵免外国税额
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bkdmgdlxje" class="srx" cal="true"
							style="width: 100%; text-align: right;"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bkdmgdlxje"/>' />
					</td>
				</tr>

				<tr>
					<td>
						<div>
							备注
						</div>
					</td>
					<td colspan="2">
						<input type="text" name="vo.bz" class="srx"
							style="width: 100%; text-align: right;" maxlength="100"
							value='<bean:write name="WB395glqyFb12Form" property="vo.bz"/>' />
					</td>
					<td></td>
					<td colspan="2">
					</td>
				</tr>
			</table>
			<table width="98%" border="1" align="center" cellpadding="1"
				cellspacing="1" bordercolor="#000000"
				style="border-collapse: collapse">
				<tr height="20px">
					<td colspan="2">
						<b>七、报告人声明</b>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我谨在此声明：以上呈报事项准确无误，如有不实，愿承担相应的法律责任。
						<br>
						<br>
						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;报告人签字和盖章：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						报告日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;日
						<br>
					</td>
				</tr>
				<tr height="20px">
					<td colspan="2">
						<b>以下由主管税务机关填写</b>
					</td>
				</tr>
				<tr>
					<td width="50%" style="text-align: left;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;受理人：
						<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系电话：
						<br>
						<br>
					</td>
					<td width="50%" style="text-align: right;">
						税务机关（盖章）&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br>
						年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<br>
						<br>
					</td>
				</tr>
			</table>
			<br>
			<br>
			<input type="hidden" id="bbZt"
				value="<%=request.getParameter("bbZt")%>">
			<span id="update"> <html:hidden property="errorMessage"
					styleId="errorMessage" /> <html:hidden property="handleDesc"
					styleId="handleDesc" /> <html:hidden property="handleCode"
					styleId="handleCode" /> <html:hidden property="pzxh"
					styleId="pzxh" /> <html:hidden property="sucessMsg"
					styleId="sucessMsg" /> <html:hidden property="vo.sbmxxh"
					styleId="vo.sbmxxh" /> <html:hidden property="vo.pzxh"
					styleId="vo.pzxh" /> </span>
		</div>
	</html:form>
	<script type="text/javascript" src="/public/js/tool/createAuto.js"></script>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_glqyFb12.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>