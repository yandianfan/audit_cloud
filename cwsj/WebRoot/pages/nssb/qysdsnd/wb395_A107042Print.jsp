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
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<script type="text/javascript" src="./public/js/tool/wsbs.js"></script>
	<script language="javascript" type="text/javascript"
		src="./public/js/tool/caltb.js?<%=System.currentTimeMillis()%>"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>软件、集成电路企业优惠情况及明细表</title>
</head>
<body>
	<html:form action="/WB395A107042Action.do" method="post"
		styleId="WB395A107042Form">
		<div id="toolbar" style="width: 100%" align="right"></div>
		<br />
		<div style="width: 95%">
			<p align="left">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A107042
			</p>
		</div>
		<div id="mainDiv">
			<table width="98%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr height="20px">
					<td style="text-align: center;">
						<font size=4><b>软件、集成电路企业优惠情况及明细表</b> </font>
					</td>
				</tr>
			</table>
			<table id="tab1" width="85%" style="border-collapse: collapse"
				align="center" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr align="center">
					<td style="text-align: center;">
						行 次
					</td>
					<td colspan="4" style="text-align: center;">
						基本信息
					</td>
				</tr>
				<tr>
					<td align="center" width="5%" style="text-align: center;">
						1
					</td>
					<td width="25%">
						企业成立日期
					</td>
					<td width="25%">
						<bean:write name='WB395A107042Form' property='vo.str_qyclrq' />
					</td>
					<td width="20%">
						软件企业证书取得日期
					</td>
					<td>
						<bean:write name='WB395A107042Form' property='vo.str_rjqyzsqdrq' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						2
					</td>
					<td>
						软件企业认定证书编号
					</td>
					<td>
						<bean:write name='WB395A107042Form' property='vo.rjqyrdzsbh' />
					</td>
					<td>
						软件产品登记证书编号
					</td>
					<td>
						<bean:write name='WB395A107042Form' property='vo.rjcpdjzsbh' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						3
					</td>
					<td>
						计算机信息系统集成资质等级认定证书编号
					</td>
					<td>
						<bean:write name='WB395A107042Form' property='vo.jsjrdzsbh' />
					</td>
					<td>
						集成电路生产企业认定文号
					</td>
					<td>
						<bean:write name='WB395A107042Form' property='vo.jcqyrdh' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						4
					</td>
					<td>
						集成电路设计企业认定证书编号
					</td>
					<td colspan="3">
						<bean:write name='WB395A107042Form' property='vo.jcqyrdbh' />
					</td>
				</tr>
			</table>
			<table width="85%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr>
					<td align="center" style="text-align: center;">
						5
					</td>
					<td align="center" colspan="3" style="text-align: center;">
						关键指标情况（2011年1月1日以后成立企业填报）
					</td>
				</tr>
				<tr>
					<td align="center" width="5%" style="text-align: center;">
						6
					</td>
					<td rowspan="5" width="12%">
						&nbsp;&nbsp;人员指标
					</td>
					<td width="58%">
						一、企业本年月平均职工总人数
					</td>
					<td width="25%" style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qynypjrs' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:签订劳动合同关系且具有大学专科以上学历的职工人数
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qdhtdxz' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						8
					</td>
					<td>
						二、研究开发人员人数
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.yfrys' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						9
					</td>
					<td>
						三、签订劳动合同关系且具有大学专科以上学历的职工人数占企业当年月平均<br/>职工总人数的比例（7÷6）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qdhtbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						10
					</td>
					<td>
						四、研究开发人员占企业本年月平均职工总数的比例（8÷6）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.yfrybl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						11
					</td>
					<td rowspan="15">
						&nbsp;&nbsp;收入指标
					</td>
					<td>
						五、企业收入总额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qyzsre' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						12
					</td>
					<td>
						六、集成电路制造销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jcdlsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						13
					</td>
					<td>
						七、集成电路制造销售（营业）收入占企业收入总额的比例（12÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jcdlbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						14
					</td>
					<td>
						八、集成电路设计销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jcsjsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：集成电路自主设计销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jczzsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						16
					</td>
					<td>
						九、集成电路设计企业的集成电路设计销售（营业）收入占企业收入总额的比例<br/>（14÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jcsjbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						17
					</td>
					<td>
						十、集成电路自主设计销售（营业）收入占企业收入总额的比例（15÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jczzbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						18
					</td>
					<td>
						十一、软件产品开发销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.rjcpsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：嵌入式软件产品和信息系统集成产品开发销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qrcpsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						20
					</td>
					<td>
						十二、软件产品自主开发销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.rjzzcpsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：嵌入式软件产品和信息系统集成产品自主开发销售（营业）收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qrsjcsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						22
					</td>
					<td>
						十三、软件企业的软件产品开发销售（营业）收入占企业收入总额的比例（18÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.rjqyxsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						23
					</td>
					<td>
						十四、嵌入式软件产品和信息系统集成产品开发销售（营业）收入占企业收入<br/>总额的比例（19÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qrsrjxsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						24
					</td>
					<td>
						十五、软件产品自主开发销售（营业）收入占企业收入总额的比例（20÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.rjcpzzbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						25
					</td>
					<td>
						十六、嵌入式软件产品和信息系统集成产品自主开发销售（营业）收入占企业收入<br/>总额的比例（21÷11）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qrsrjbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						26
					</td>
					<td rowspan="4">
						&nbsp;&nbsp;研究开发费用指标
					</td>
					<td>
						十七、研究开发费用总额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qrsxsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						27
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：企业在中国境内发生的研究开发费用金额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qydyfy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						28
					</td>
					<td>
						十八、研究开发费用总额占企业销售（营业）收入总额的比例
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.yffyzbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						29
					</td>
					<td>
						十九、企业在中国境内发生的研究开发费用金额占研究开发费用总额的比例（27÷26）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qyzgjnbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						30
					</td>
					<td colspan="3" align="center" style="text-align: center;">
						关键指标情况（2011年1月1日以前成立企业填报）
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						31
					</td>
					<td rowspan="3">
						&nbsp;&nbsp; 人员指标
					</td>
					<td>
						二十、企业职工总数
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qyzgs' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						32
					</td>
					<td>
						二十一、从事软件产品开发和技术服务的技术人员
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.cscpkfrs' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						33
					</td>
					<td>
						二十二、从事软件产品开发和技术服务的技术人员占企业职工总数的比例（32÷31）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.cscpkfbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						34
					</td>
					<td rowspan="5">
						&nbsp;&nbsp; 收入指标
					</td>
					<td>
						二十三、企业年总收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qynsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						35
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：企业年软件销售收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qyrjsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						36
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：自产软件销售收入
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.zcrjsr' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						37
					</td>
					<td>
						二十四、软件销售收入占企业年总收入比例（35÷34）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.rjxsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						38
					</td>
					<td>
						二十五、自产软件收入占软件销售收入比例（36÷35）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.zcxsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						39
					</td>
					<td rowspan="2">
						&nbsp;&nbsp; 研究开发经费指标
					</td>
					<td>
						二十六、软件技术及产品的研究开发经费
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qyjsfy' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						40
					</td>
					<td>
						二十七、软件技术及产品的研究开发经费占企业年软件收入比例（39÷35）
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.qyjsbl' />
					</td>
				</tr>
				<tr>
					<td align="center" style="text-align: center;">
						41
					</td>
					<td colspan="2">
						&nbsp;&nbsp; 减免税金额
					</td>
					<td style="text-align: right;">
						<bean:write name='WB395A107042Form' property='vo.jmsje' />
					</td>
				</tr>
			</table>
		</div>
		<input type="hidden" id="divHtml" name="divHtml">
		<html:hidden property="errorMessage" styleId="errorMessage" />
		<html:hidden property="sucessMsg" styleId="sucessMsg"></html:hidden>
		<html:hidden property="handleCode" styleId="handleCode"></html:hidden>
		<html:hidden property="handleDesc" styleId="handleDesc"></html:hidden>
		<html:hidden property="vo.pzxh" styleId="vo.pzxh"></html:hidden>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107042Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
