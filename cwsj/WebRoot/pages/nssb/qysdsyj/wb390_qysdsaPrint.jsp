<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
		<script type="text/javascript" src="/public/js/tool/caltb.js"></script>
		<object id="factory" viewastext style="display: none"
			classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
			codebase="/scriptx/smsx.cab#Version=6,3,436,14">
		</object>
		<title>中华人民共和国企业所得税月(季)度预缴纳税申报表(A类，2015年版)</title>
	</head>
	<body>
		<div id="toolbar" style="width: 100%" align="right"></div>
		<br />
		<br />
		<html:form action="/WB390qysdsaAction.do" method="post"
			styleId="WB390qysdsaForm">
			<div align="center" id="mainDiv">
				<table width="90%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td colspan="3">
							<div align="center">
								<font size=4><b>中华人民共和国</b> </font>
								</br>
								<font size=4><b>企业所得税月(季)度预缴纳税申报表(A类，2015年版)</b> </font>
							</div>
							<br>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div align="center">
								税款所属期间:
								<bean:write property='vo.str_sfssqqsrq' name='WB390qysdsaForm' />
								至
								<bean:write property='vo.str_sfssqzzrq' name='WB390qysdsaForm' />
							</div>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;纳税人识别码
							<bean:write property='vo.nsrsbh' name='WB390qysdsaForm' />
						</td>
						<td>
						</td>
						<td>
							<div align="center">
								税务管理码
								<bean:write property='vo.swglm' name='WB390qysdsaForm' />
							</div>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;纳税人名称
							<bean:write property='vo.nsrmc' name='WB390qysdsaForm' />
						</td>
						<td>
						</td>
						<td>
							<div align="center">
								金额单位：元（列至角分）
							</div>
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3">
							<table width="100%" border="1" style="border-collapse: collapse"
								bordercolor="#000000" id="jstb" align="center" cellpadding="1"
								cellspacing="1">
								<tr>
									<td width="6%">
										<div align="center">
											行次
										</div>
									</td>
									<td colspan="2">
										<div align="center">
											项目
										</div>
									</td>
									<td width="27%">
										<div align="center">
											本期金额
										</div>
									</td>
									<td width="27%">
										<div align="center">
											累计金额
										</div>
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											1
										</div>
									</td>
									<td colspan="4">
										<b>一、按照实际利润额预缴</b>
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											2
										</div>
									</td>
									<td colspan="2">
										营业收入
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.yysrbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.yysrljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											3
										</div>
									</td>
									<td colspan="2">
										营业成本
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.yycbbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.yycbljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											4
										</div>
									</td>
									<td colspan="2">
										利润总额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.lrzebqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.lrzeljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											5
										</div>
									</td>
									<td colspan="2">
										加：特定业务计算的应纳税所得额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.tdywbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.tdywljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											6
										</div>
									</td>
									<td colspan="2">
										减:不征税收入和税基减免应纳税所得额（请填附表1）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bzsbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bzsljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											7
										</div>
									</td>
									<td colspan="2">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;固定资产加速折旧（扣除）调减额（请填附表2）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.gdzcjszjtjbqje'
											name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.gdzcjszjtjljje'
											name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											8
										</div>
									</td>
									<td colspan="2">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;弥补以前年度亏损
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.nbksbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.nbksljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											9
										</div>
									</td>
									<td colspan="2">
										实际利润额（4行+5行-6行-7行-8行）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.sjlrbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.sjlrljje' name='WB390qysdsaForm' />
									</td>
								</tr>

								<tr>
									<td>
										<div align="center">
											10
										</div>
									</td>
									<td colspan="2">
										税率（25%）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bqsl' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.ljsl' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											11
										</div>
									</td>
									<td colspan="2">
										应纳所得税额（9行×10行）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.ynsdsbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.ynsdsljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											12
										</div>
									</td>
									<td colspan="2">
										减:减免所得税额（请填附表3）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.jmbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.jmljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											13
										</div>
									</td>
									<td colspan="2">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;实际已预缴所得税额
									</td>
									<td>
										<div align="center">
											--
										</div>
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.sjyyjljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											14
										</div>
									</td>
									<td colspan="2">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;特定业务预缴（征）所得税额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.tdywyzbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.tdywyzljje' name='WB390qysdsaForm' />
									</td>
								</tr>

								<tr>
									<td>
										<div align="center">
											15
										</div>
									</td>
									<td colspan="2">
										应补（退）所得税额（11行-12行-13行-14行）
									</td>
									<td>
										<div align="center">
											--
										</div>
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.ybtsdsljje' name='WB390qysdsaForm' />
									</td>
								</tr>

								<tr>
									<td>
										<div align="center">
											16
										</div>
									</td>
									<td colspan="2">
										减：以前年度多缴在本期抵缴所得税额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.yqnddjdkbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.yqnddjdkljje' name='WB390qysdsaForm' />
									</td>
								</tr>

								<tr>
									<td>
										<div align="center">
											17
										</div>
									</td>
									<td colspan="2">
										本月（季）实际应补（退）所得税额
									</td>
									<td>
										<div align="center">
											--
										</div>
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bysjybtseljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											18
										</div>
									</td>
									<td colspan="4">
										<b>二、按照上一纳税年度应纳税所得额平均额预缴</b>
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											19
										</div>
									</td>
									<td colspan="2">
										上一纳税年度应纳税所得额
									</td>
									<td>
										<div align="center">
											--
										</div>
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.sndynssdljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											20
										</div>
									</td>
									<td colspan="2">
										本月（季）应纳税所得额（19行×1/4或1/12）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.byynssdbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.byynssdljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											21
										</div>
									</td>
									<td colspan="2">
										税率（25%）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bq2sl' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.lj2sl' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											22
										</div>
									</td>
									<td colspan="2">
										本月（季）应纳所得税额（20行×21行）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.byynsdbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.byynsdljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											23
										</div>
									</td>
									<td colspan="2">
										减：减免所得税额(请填附表3）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.xwjmbq2je' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.xwjmlj2je' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											24
										</div>
									</td>
									<td colspan="2">
										本月（季）实际应纳所得税额（22行-23行）
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bysjynsdbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.bysjynsdljje' name='WB390qysdsaForm' />
									</td>
								</tr>

								<tr>
									<td>
										<div align="center">
											25
										</div>
									</td>
									<td colspan="4">
										<b>三、按照税务机关确定的其他方法预缴</b>
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											26
										</div>
									</td>
									<td colspan="2">
										三、按照税务机关确定的其他方法预缴
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.byswjgqdyjbqje'
											name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.byswjgqdyjljje'
											name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											27
										</div>
									</td>
									<td colspan="4" align="center">
										<b>总分机构纳税人（填报附表4）</b>
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											28
										</div>
									</td>
									<td width="3%" rowspan="4">
										<div align="center">
											总机构
										</div>
									</td>
									<td width="37%">
										总机构分摊所得税额(15行或24行或26行×总机构分摊预缴比例)
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.zjgftsdsbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.zjgftsdsljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											29
										</div>
									</td>
									<td>
										财政集中分配所得税额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.czjzfpsdsbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.czjzfpsdsljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											30
										</div>
									</td>
									<td>
										分支机构分摊所得税额(15行或24行或26行×分支机构分摊比例)
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.fzjgftsdsbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.fzjgftsdsljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											31
										</div>
									</td>
									<td>
										其中：总机构独立生产经营部门应分摊所得税额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.zjgdlftbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.zjgdlftljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											32
										</div>
									</td>
									<td>
										分支
									</td>
									<td>
										分配比例
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.fpbqbl' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.fpljbl' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td>
										<div align="center">
											33
										</div>
									</td>
									<td>
										机构
									</td>
									<td>
										分配的所得税额
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.fpsdbqje' name='WB390qysdsaForm' />
									</td>
									<td style="text-align: right;">
										<bean:write property='vo.fpsdljje' name='WB390qysdsaForm' />
									</td>
								</tr>
								<tr>
									<td colspan="3" style="text-align: center;">
										是否属于小型微利企业：
									</td>
									<td colspan="2" style="text-align: center;">
										<bean:write property='vo.xwqybj' name='WB390qysdsaForm' />
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table width="90%" border="1" align="center" cellpadding="1"
					cellspacing="1" style="border-collapse: collapse"
					bordercolor="#000000">
					<tr>
						<td colspan="3" align="right">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;谨声明：此纳税申报表是根据《中华人民共和国企业所得税法》、《中华人民共和国企业所得税法实施条例》和国家有关税收规定填报的，是真实的、可靠的、完整的。
						</td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center;">
							法定代表人（签字）：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日
						</td>
					</tr>
					<tr>
						<td width="33%">
							纳税人公章：
							<br />
							会计主管：
							<br />
							<br />
							填表日期：
							<bean:write property='tbrq' name='WB390qysdsaForm' />
						</td>
						<td width="33%">
							代理申报中介机构公章：
							<br />
							经办人：
							<br />
							受理人：
							<br />
							代理申报日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日
						</td>
						<td width="34%">
							主管税务机关受理专用章：
							<br />
							受理人：
							<br />
							<br />
							受理日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日
						</td>
					</tr>
				</table>
			</div>
			<input type="hidden" id="sessionId"
				value="<%=request.getParameter("sessionId")%>">
			<html:hidden property="divHtml" styleId="divHtml" />
			<html:hidden property="handleCode" styleId="handleCode" />
		</html:form>
		<script type="text/javascript" src="./nssb/wb390/wb390_qysdsaPrint.js"></script>
	</body>
</html>
