<%@ page language="java" contentType="text/html; charset=utf-8"%>
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
	<script language="javascript" type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<title>中华人民共和国企业所得税月(季)度预缴纳税申报表(A类，2015年版)附表1-不征税收入和税基类减免应纳税所得额明细表</title>
</head>
<body onkeydown="enterTab()">
	<div id="toolbar" style="width: 100%" align="right"></div>
	<html:form action="/WB390sjjmbAction.do" styleId="WB390sjjmbForm"
		method="post">
		<br />
		<br />
		<div id="mainDiv" style="width: 90%; text-align: center;">
			<table width="90%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td colspan="4">
						<div align="center">
							<font size=4><B>中华人民共和国企业所得税月(季)度预缴纳税申报表(A类，2015年版)附表1</B>
							</font>
							<br />
							<font size=4><B>不征税收入和税基类减免应纳税所得额明细表</B> </font>
						</div>
						<br>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					</td>
					<td colspan="2" align="right">
						金额单位：列至元角
					</td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: center;">
						<table id="tab1" width="100%"
							style="border-collapse: collapse; text-align: center;"
							cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
							<tr style="text-align: center;">
								<td width="10%" style="text-align: center;">
									行 次
								</td>
								<td width="60%" style="text-align: center;">
									项 目
								</td>
								<td width="15%" style="text-align: center;">
									本期金额
								</td>
								<td width="15%" style="text-align: center;">
									累计金额
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									1
								</td>
								<td style="text-align: left">
									合计(2行+3行+14行+19行+30行+31行+32行+33行+34行...)
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqhjje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqhjje' name='WB390sjjmbForm' />"
										name="vo.bqhjje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljhjje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljhjje' name='WB390sjjmbForm' />"
										name="vo.ljhjje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									2
								</td>
								<td style="text-align: left">
									一、不征税收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqbzssrje"
										class="srx"
										value="<bean:write property='vo.bqbzssrje' name='WB390sjjmbForm' />"
										name="vo.bqbzssrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljbzssrje"
										class="srx"
										value="<bean:write property='vo.ljbzssrje' name='WB390sjjmbForm' />"
										name="vo.ljbzssrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									3
								</td>
								<td style="text-align: left">
									二、免税收入(4行+5行+……+13行)
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqmssrje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqmssrje' name='WB390sjjmbForm' />"
										name="vo.bqmssrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljmssrje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljmssrje' name='WB390sjjmbForm' />"
										name="vo.ljmssrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									4
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;1.国债利息收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqgzlxsrje"
										class="srx"
										value="<bean:write property='vo.bqgzlxsrje' name='WB390sjjmbForm' />"
										name="vo.bqgzlxsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljgzlxsrje"
										class="srx"
										value="<bean:write property='vo.ljgzlxsrje' name='WB390sjjmbForm' />"
										name="vo.ljgzlxsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									5
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;2.地方政府债券利息收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqdfzfzqlxsrje"
										class="srx"
										value="<bean:write property='vo.bqdfzfzqlxsrje' name='WB390sjjmbForm' />"
										name="vo.bqdfzfzqlxsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljdfzfzqlxsrje"
										class="srx"
										value="<bean:write property='vo.ljdfzfzqlxsrje' name='WB390sjjmbForm' />"
										name="vo.ljdfzfzqlxsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									6
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;3.符合条件的居民企业之间的股息、红利等权益性投资收益
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqjmqygxhlje"
										class="srx"
										value="<bean:write property='vo.bqjmqygxhlje' name='WB390sjjmbForm' />"
										name="vo.bqjmqygxhlje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljjmqygxhlje"
										class="srx"
										value="<bean:write property='vo.ljjmqygxhlje' name='WB390sjjmbForm' />"
										name="vo.ljjmqygxhlje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									7
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;4.符合条件的非营利组织的收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqfylzzsrje"
										class="srx"
										value="<bean:write property='vo.bqfylzzsrje' name='WB390sjjmbForm' />"
										name="vo.bqfylzzsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljfylzzsrje"
										class="srx"
										value="<bean:write property='vo.ljfylzzsrje' name='WB390sjjmbForm' />"
										name="vo.ljfylzzsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									8
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;5.证券投资基金投资者取得的免税收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqzqtzzmssrje"
										class="srx"
										value="<bean:write property='vo.bqzqtzzmssrje' name='WB390sjjmbForm' />"
										name="vo.bqzqtzzmssrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljzqtzzmssrje"
										class="srx"
										value="<bean:write property='vo.ljzqtzzmssrje' name='WB390sjjmbForm' />"
										name="vo.ljzqtzzmssrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									9
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;6.证券投资基金管理人取得的免税收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqzqglrmssrje"
										class="srx"
										value="<bean:write property='vo.bqzqglrmssrje' name='WB390sjjmbForm' />"
										name="vo.bqzqglrmssrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljzqglrmssrje"
										class="srx"
										value="<bean:write property='vo.ljzqglrmssrje' name='WB390sjjmbForm' />"
										name="vo.ljzqglrmssrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									10
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;7.中国清洁发展机制基金取得的收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqjfzjjsrje"
										class="srx"
										value="<bean:write property='vo.bqqjfzjjsrje' name='WB390sjjmbForm' />"
										name="vo.bqqjfzjjsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqjfzjjsrje"
										class="srx"
										value="<bean:write property='vo.ljqjfzjjsrje' name='WB390sjjmbForm' />"
										name="vo.ljqjfzjjsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									11
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;8.受灾地区企业取得的救灾和灾后恢复重建款项等收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqszdqsrje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqszdqsrje' name='WB390sjjmbForm' />"
										name="vo.bqszdqsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljszdqsrje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljszdqsrje' name='WB390sjjmbForm' />"
										name="vo.ljszdqsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									12
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;9.其他1：
									<html:select property="vo.qt1" style="width: 50%;"
										styleClass="srx">
										<html:optionsCollection property="lxList1"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt1je"
										class="srx"
										value="<bean:write property='vo.bqqt1je' name='WB390sjjmbForm' />"
										name="vo.bqqt1je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt1je"
										class="srx"
										value="<bean:write property='vo.ljqt1je' name='WB390sjjmbForm' />"
										name="vo.ljqt1je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									13
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;10.其他2：
									<html:select property="vo.qt2"
										style="width: 50%;display: none;" styleClass="fsrx">
										<html:optionsCollection property="lxList2"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt2je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqqt2je' name='WB390sjjmbForm' />"
										name="vo.bqqt2je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt2je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljqt2je' name='WB390sjjmbForm' />"
										name="vo.ljqt2je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									14
								</td>
								<td style="text-align: left">
									三、减计收入(15行+16行+17行+18行)
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqjjsrje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqjjsrje' name='WB390sjjmbForm' />"
										name="vo.bqjjsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljjjsrje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljjjsrje' name='WB390sjjmbForm' />"
										name="vo.ljjjsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;" title="填报综合利用资源生产产品取得收入*10%的积">
								<td style="text-align: center;">
									15
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;1.综合利用资源生产产品取得的收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqzhlysrje"
										class="srx"
										value="<bean:write property='vo.bqzhlysrje' name='WB390sjjmbForm' />"
										name="vo.bqzhlysrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljzhlysrje"
										class="srx"
										value="<bean:write property='vo.ljzhlysrje' name='WB390sjjmbForm' />"
										name="vo.ljzhlysrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;"
								title="填报金融保险等机构取得的涉农利息、保费收入*10%的积">
								<td style="text-align: center;">
									16
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;2.金融、保险等机构取得的涉农利息、保费收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqjrbxsrje"
										class="srx"
										value="<bean:write property='vo.bqjrbxsrje' name='WB390sjjmbForm' />"
										name="vo.bqjrbxsrje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljjrbxsrje"
										class="srx"
										value="<bean:write property='vo.ljjrbxsrje' name='WB390sjjmbForm' />"
										name="vo.ljjrbxsrje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;" title="填报取得的中国铁路建设债券利息收入*50%的积">
								<td style="text-align: center;">
									17
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;3.取得的中国铁路建设债券利息收入
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqzgtljszqje"
										class="srx"
										value="<bean:write property='vo.bqzgtljszqje' name='WB390sjjmbForm' />"
										name="vo.bqzgtljszqje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljzgtljszqje"
										class="srx"
										value="<bean:write property='vo.ljzgtljszqje' name='WB390sjjmbForm' />"
										name="vo.ljzgtljszqje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									18
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;4.其他：
									<html:select property="vo.qt3"
										style="width: 50%;display: none;" styleClass="fsrx">
										<html:optionsCollection property="lxList3"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt3je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqqt3je' name='WB390sjjmbForm' />"
										name="vo.bqqt3je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt3je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljqt3je' name='WB390sjjmbForm' />"
										name="vo.ljqt3je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									19
								</td>
								<td style="text-align: left">
									四、所得减免(20行+23行+24行+25行+26行+27行+28行+29行)
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqsdjmje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqsdjmje' name='WB390sjjmbForm' />"
										name="vo.bqsdjmje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljsdjmje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljsdjmje' name='WB390sjjmbForm' />"
										name="vo.ljsdjmje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									20
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;1.农、林、牧、渔业项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqnlymje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqnlymje' name='WB390sjjmbForm' />"
										name="vo.bqnlymje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljnlymje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljnlymje' name='WB390sjjmbForm' />"
										name="vo.ljnlymje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									21
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：免税项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqnlymmsje"
										class="srx"
										value="<bean:write property='vo.bqnlymmsje' name='WB390sjjmbForm' />"
										name="vo.bqnlymmsje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljnlymmsje"
										class="srx"
										value="<bean:write property='vo.ljnlymmsje' name='WB390sjjmbForm' />"
										name="vo.ljnlymmsje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									22
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减半征收项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqnlymjbzsje"
										class="srx"
										value="<bean:write property='vo.bqnlymjbzsje' name='WB390sjjmbForm' />"
										name="vo.bqnlymjbzsje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljnlymjbzsje"
										class="srx"
										value="<bean:write property='vo.ljnlymjbzsje' name='WB390sjjmbForm' />"
										name="vo.ljnlymjbzsje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									23
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;2.国家重点扶持的公共基础设施项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqgjzdfcjcxmje"
										class="srx"
										value="<bean:write property='vo.bqgjzdfcjcxmje' name='WB390sjjmbForm' />"
										name="vo.bqgjzdfcjcxmje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljgjzdfcjcxmje"
										class="srx"
										value="<bean:write property='vo.ljgjzdfcjcxmje' name='WB390sjjmbForm' />"
										name="vo.ljgjzdfcjcxmje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									24
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;3.符合条件的环境保护、节能节水项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqhjbhjnjsxmje"
										class="srx"
										value="<bean:write property='vo.bqhjbhjnjsxmje' name='WB390sjjmbForm' />"
										name="vo.bqhjbhjnjsxmje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljhjbhjnjsxmje"
										class="srx"
										value="<bean:write property='vo.ljhjbhjnjsxmje' name='WB390sjjmbForm' />"
										name="vo.ljhjbhjnjsxmje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									25
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;4.符合条件的技术转让项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqjszrxmje"
										class="srx"
										value="<bean:write property='vo.bqjszrxmje' name='WB390sjjmbForm' />"
										name="vo.bqjszrxmje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljjszrxmje"
										class="srx"
										value="<bean:write property='vo.ljjszrxmje' name='WB390sjjmbForm' />"
										name="vo.ljjszrxmje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									26
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;5.实施清洁发展机制项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqssqjfzjzxmje"
										class="srx"
										value="<bean:write property='vo.bqssqjfzjzxmje' name='WB390sjjmbForm' />"
										name="vo.bqssqjfzjzxmje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljssqjfzjzxmje"
										class="srx"
										value="<bean:write property='vo.ljssqjfzjzxmje' name='WB390sjjmbForm' />"
										name="vo.ljssqjfzjzxmje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									27
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;6.节能服务公司实施合同能源管理项目
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqjnfwxmje"
										class="srx"
										value="<bean:write property='vo.bqjnfwxmje' name='WB390sjjmbForm' />"
										name="vo.bqjnfwxmje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljjnfwxmje"
										class="srx"
										value="<bean:write property='vo.ljjnfwxmje' name='WB390sjjmbForm' />"
										name="vo.ljjnfwxmje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									28
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;7.其他1：
									<html:select property="vo.qt4" style="width: 50%;"
										styleClass="fsrx">
										<html:optionsCollection property="lxList4"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt4je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqqt4je' name='WB390sjjmbForm' />"
										name="vo.bqqt4je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt4je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljqt4je' name='WB390sjjmbForm' />"
										name="vo.ljqt4je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									29
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;8.其他2：
									<html:select property="vo.qt5" style="width: 50%;"
										styleClass="fsrx">
										<html:optionsCollection property="lxList5"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt5je"
										class="fsrx"
										value="<bean:write property='vo.bqqt5je' name='WB390sjjmbForm' />"
										name="vo.bqqt5je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt5je"
										class="fsrx"
										value="<bean:write property='vo.ljqt5je' name='WB390sjjmbForm' />"
										name="vo.ljqt5je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									30
								</td>
								<td style="text-align: left">
									五、新产品、新工艺、新技术研发费用加计扣除
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqxcpjjkcje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqxcpjjkcje' name='WB390sjjmbForm' />"
										name="vo.bqxcpjjkcje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljxcpjjkcje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljxcpjjkcje' name='WB390sjjmbForm' />"
										name="vo.ljxcpjjkcje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									31
								</td>
								<td style="text-align: left">
									六、抵扣应纳税所得额
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqdkynssdeje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqdkynssdeje' name='WB390sjjmbForm' />"
										name="vo.bqdkynssdeje" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljdkynssdeje"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljdkynssdeje' name='WB390sjjmbForm' />"
										name="vo.ljdkynssdeje" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									32
								</td>
								<td style="text-align: left">
									七、其他1：
									<html:select property="vo.qt6"
										style="width: 50%;display: none;" styleClass="fsrx">
										<html:optionsCollection property="lxList6"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt6je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqqt6je' name='WB390sjjmbForm' />"
										name="vo.bqqt6je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt6je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljqt6je' name='WB390sjjmbForm' />"
										name="vo.ljqt6je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									33
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;其他2：
									<html:select property="vo.qt7"
										style="width: 50%;display: none;" styleClass="fsrx">
										<html:optionsCollection property="lxList7"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt7je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqqt7je' name='WB390sjjmbForm' />"
										name="vo.bqqt7je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt7je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljqt7je' name='WB390sjjmbForm' />"
										name="vo.ljqt7je" cal="true" format="2" />
								</td>
							</tr>
							<tr style="text-align: center;">
								<td style="text-align: center;">
									34
								</td>
								<td style="text-align: left">
									&nbsp;&nbsp;&nbsp;&nbsp;其他3：
									<html:select property="vo.qt8"
										style="width: 50%;display: none;" styleClass="fsrx">
										<html:optionsCollection property="lxList8"
											name="WB390sjjmbForm"></html:optionsCollection>
									</html:select>
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.bqqt8je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.bqqt8je' name='WB390sjjmbForm' />"
										name="vo.bqqt8je" cal="true" format="2" />
								</td>
								<td>
									<input type="text" style="width: 100%" id="vo.ljqt8je"
										class="fsrx" readonly="readonly"
										value="<bean:write property='vo.ljqt8je' name='WB390sjjmbForm' />"
										name="vo.ljqt8je" cal="true" format="2" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<input type="hidden" id="bbZt" name="bbzt"
			value="<%=request.getParameter("bbZt")%>">
		<SPAN id="a" bz="update"> <html:hidden property="errorMessage"
				styleId="errorMessage" /> <html:hidden property="handleDesc"
				styleId="handleDesc" /> <html:hidden property="handleCode"
				styleId="handleCode" /> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="proMessage"
				styleId="proMessage" /> <html:hidden property="vo.pzxh"
				styleId="vo.pzxh" /> </SPAN>
		<%@include file="/nssb/caInclude.jsp"%>
		<%@include file="/nssb/nsryhinfo.jsp"%>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb390/wb390_sjjmb.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>