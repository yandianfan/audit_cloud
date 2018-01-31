<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<head>
	<meta charset="utf-8" />

		<!-- basic styles -->
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="public/css/wsbs.css" rel="stylesheet" />
<script type="text/javascript" src="./nssb/wb395/wb395_A100000.js?<%=System.currentTimeMillis()%>"></script>
	<!-- 引入 -->
	<script src="static/1.9.1/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/ace-elements.min.js"></script>
	<script src="static/js/ace.min.js"></script>
	<script type="text/javascript" src="static/js/bootbox.min.js"></script>
	<script type="text/javascript" src="public/js/tool/common.js"></script>	

<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>	
<style>
/* pc jsp css */
body {
	font-family: 'Microsoft Yahei';
}

.a-text {
	text-decoration: none;
	color: #866666;
}

.breadcrumb li {
	color: #5e5e5e !important;
}

.page-content {
	margin-top: 20px;
	padding: 10px;
}

.page-content .page-header {
	font-size: 20px;
}

.page-header .sb-title1 {
	margin-left: 242px;
}

.page-header .sb-title2 {
	margin-left: 58px;
}

.page-header .sb-title3 {
	margin-left: 134px;
}

.btn-menu {
	float: right;
	margin-right: 20px
}

.footable-table-class thead th,.footable-table-class tbody td {
	text-align: center;
}

.myinput {
	width: 80%;
	margin: 1px;
}

#ab_div1 {
	font-size: 12px;
	min-width: 1676px;
}

#ab_div2 {
	font-size: 12px;
	min-width: 1000px;
}

.read {
	background: #F0F1F3;
}

.noborder {
	border: none;
}

.need {
	background: #CAD4EF;
}
/*input type=file修改默认样式*/
input[type=file] {
	width: 100%;
	opacity: 0.5;
}

input[type=file]:hover {
	cursor: pointer;
	background-color: #78c3f3;
}
</style>
	<title>资产损失（专项申报）税前扣除及纳税调整明细表</title>
</head>
<body onkeydown="enterTab()">
<form action="" method="post" name="WB395A104000Form" id="WB395A104000Form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">资产损失（专项申报）税前扣除及纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
          
		<SPAN id="b" bz="updata">
			<table width="98%" style="border-collapse: collapse" align="center"
				id="tab1" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr align="center">
					<td rowspan="2" width="6%">
						行 次
					</td>
					<td width="20%">
						项 目
					</td>
					<td>
						账载金额
					</td>
					<td>
						处置收入
					</td>
					<td>
						赔偿收入
					</td>
					<td>
						计税基础
					</td>
					<td>
						税收金额
					</td>
					<td>
						纳税调整金额
					</td>
				</tr>
				<tr align="center">
					<td>
						1
					</td>
					<td>
						2
					</td>
					<td>
						3
					</td>
					<td>
						4
					</td>
					<td>
						5
					</td>
					<td>
						6（5-3-4）
					</td>
					<td>
						7（2-6）
					</td>
				</tr>
				<tr height="20px">
					<td align="center">
						1
					</td>
					<td>
						一、货币资产损失(2+3+4+5)
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="hbsszzjehj" id="hbsszzjehj" cal="true}
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="hbssczsrjehj" id="hbssczsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="hbsspcsrjehj" id="hbsspcsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="hbssjsjcjehj" id="hbssjsjcjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="hbssssjehj" id="hbssssjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="hbssnstzjehj" id="hbssnstzjehj" cal="true}

					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="hbsslist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="hbsslist">
						<tr height="20px">

							<td align="center">

								<bean:write name="dataid" property="xh}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="xmmc}"
									name="hbssxmmc">

							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="zzje}"
									name="hbsszzje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="czsrje}"
									name="hbssczsrje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="pcsrje}"
									name="hbsspcsrje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="jsjcje}"
									name="hbssjsjcje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="ssje}"
									name="hbssssje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
									value="<bean:write name="dataid" property="nstzje}"
									name="hbssnstzje" cal="true">
							</td>
						</tr>
					</logic:iterate>
				</logic:present>
				<tr height="20px">
					<td align="center">
						6
					</td>
					<td>
						二、非货币资产损失(7+8+9+10)
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="fhbsszzjehj" id="fhbsszzjehj" cal="true}
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="fhbssczsrjehj" id="fhbssczsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="fhbsspcsrjehj" id="fhbsspcsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="fhbssjsjcjehj" id="fhbssjsjcjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="fhbssssjehj" id="fhbssssjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="fhbssnstzjehj" id="fhbssnstzjehj" cal="true}

					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="fhbsslist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="fhbsslist">
						<tr height="20px">

							<td align="center">
								<bean:write name="dataid" property="xh}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="xmmc}"
									name="fhbssxmmc">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="zzje}"
									name="fhbsszzje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="czsrje}"
									name="fhbssczsrje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="pcsrje}"
									name="fhbsspcsrje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="jsjcje}"
									name="fhbssjsjcje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="ssje}"
									name="fhbssssje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
									value="<bean:write name="dataid" property="nstzje}"
									name="fhbssnstzje" cal="true">
							</td>
						</tr>
					</logic:iterate>
				</logic:present>

				<tr height="20px">
					<td align="center">
						11
					</td>
					<td>
						三、投资损失(12+13+14+15)
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="tzsszzjehj" id="tzsszzjehj" cal="true}
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="tzssczsrjehj" id="tzssczsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="tzsspcsrjehj" id="tzsspcsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="tzssjsjcjehj" id="tzssjsjcjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="tzssssjehj" id="tzssssjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="tzssnstzjehj" id="tzssnstzjehj" cal="true}

					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="tzsslist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="tzsslist">
						<tr height="20px">

							<td align="center">
								<bean:write name="dataid" property="xh}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="xmmc}"
									name="tzssxmmc">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="zzje}"
									name="tzsszzje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="czsrje}"
									name="tzssczsrje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="pcsrje}"
									name="tzsspcsrje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="jsjcje}"
									name="tzssjsjcje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="ssje}"
									name="tzssssje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
									value="<bean:write name="dataid" property="nstzje}"
									name="tzssnstzje" cal="true">
							</td>
						</tr>
					</logic:iterate>
				</logic:present>

				<tr height="20px">
					<td align="center">
						16
					</td>
					<td>
						四、其他(17+18+19)
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="qtzzjehj" id="qtzzjehj" cal="true}
					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="qtczsrjehj" id="qtczsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="qtpcsrjehj" id="qtpcsrjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="qtjsjcjehj" id="qtjsjcjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="qtssjehj" id="qtssjehj" cal="true}

					</td>
					<td>
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							name="qtnstzjehj" id="qtnstzjehj" cal="true}

					</td>
				</tr>
				<logic:present name="WB395A105091_2Form" property="qtlist">
					<logic:iterate id="dataid" name="WB395A105091_2Form"
						property="qtlist">
						<tr height="20px">

							<td align="center">
								<bean:write name="dataid" property="xh}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="xmmc}"
									name="qtxmmc">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="zzje}"
									name="qtzzje" cal="true">
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="czsrje}"
									name="qtczsrje" cal="true}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="pcsrje}"
									name="qtpcsrje" cal="true}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="jsjcje}"
									name="qtjsjcje" cal="true}
							</td>
							<td>
								<input type="text" style="width: 90%;" class="srx"
									value="<bean:write name="dataid" property="ssje}"
									name="qtssje" cal="true}
							</td>
							<td>
								<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
									value="<bean:write name="dataid" property="nstzje}"
									name="qtnstzje" cal="true}
							</td>
						</tr>
					</logic:iterate>
				</logic:present>

				<tr>
					<td align="center" colspan="2">
						合计
					</td>
					<td align="right">
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${zzjehj}"
							name="zzjehj" cal="true}
					</td>
					<td align="right">
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${czsrjehj}"
							name="czsrjehj" cal="true}
					</td>
					<td align="right">
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${pcsrjehj}"
							name="pcsrjehj" cal="true}
					</td>
					<td align="right">
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${jsjcjehj}"
							name="jsjcjehj" cal="true}
					</td>
					<td align="right">
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${ssjehj}"
							name="ssjehj" cal="true}

					</td>
					<td align="right">
						<input type="text" style="width: 90%;" readonly="readonly" class="fsrx"  tabindex="-1" 
							value="${nstzjehj}"
							name="nstzjehj" cal="true}
					</td>
				</tr>
			</table> </SPAN>
		<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提示信息1：资产损失金额以正数填报<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提示信息2：请按规定进行资产损失专项申报，不符合税前扣除要求的，第6列税收金额填报0</font>
		<br />

	</div></div>
	</form>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105091_2.js?<%=System.currentTimeMillis()%>"></script>
</html>
