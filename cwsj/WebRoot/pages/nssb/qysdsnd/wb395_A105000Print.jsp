<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
	<link rel="stylesheet" type="text/css"
		href="./public/css/autocomplete.css" />
	<script type="text/javascript" src="/public/js/tool/autoComplete.js"></script>
	<script type="text/javascript" src="/public/js/tool/wsbs.js"></script>
	<script language="javascript" src="/public/js/tool/caltb.js"></script>
	<script language="javascript" type="text/javascript"
		src="/public/date/WdatePicker.js"></script>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
	<title>纳税调整项目明细表</title>
</head>

<body onkeydown="enterTab()">
	<html:form action="/WB395A105000Action.do" method="post"
		styleId="WB395A105000Form">
		<div style="width: 100%" id="toolbar" align="right"></div>
		<div id="mainDiv">
			<br />
			<br />

			<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr height="20px">
				<td style="text-align: left;">
					<font size=4>A105000</font>
				</td>
			</tr>
			<tr height="20px">
				<td style="text-align: center;">
					<font size=4><b>纳税调整项目明细表</b> </font>
				</td>
			</tr>
		   </table>


			<table width="98%" style="border-collapse: collapse" align="center"
				id="tab1" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr>
			<td rowspan="2" align="center" width="10%">
				行次
			</td>
			<td rowspan="2" align="center" width="50%">
				项 目
			</td>
			<td align="center" width="10%">
				账载金额
			</td>
			<td align="center" width="10%">
				税收金额
			</td>
			<td align="center" width="10%">
				调增金额
			</td>
			<td align="center" width="10%">
				调减金额
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td align="center">
				2
			</td>
			<td align="center">
				3
			</td>
			<td align="center">
				4
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、收入类调整项目（2+3+4+5+6+7+8+10+11）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srltzxmtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srltzxmtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）视同销售收入（填入A105010）
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.stxssrssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.stxssrtzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）未按权责发生制原则确认的收入（填入A105020）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.waqzsrzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.waqzsrssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.waqzsrtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.waqzsrtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）投资收益（填入A105030）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tzsyzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tzsyssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tzsytzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tzsytjje' /></td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）按权益法核算长期股权投资对初始投资成本调整确认收益
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.aqyfhstjje' /></td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）交易性金融资产初始投资调整
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
			   *
			</td>
			<td  align="right"><bean:write name='WB395A105000Form' property='vo.jyxjrzctzje' /></td>
			<td  align="right"><bean:write name='WB395A105000Form' property='vo.jyxjrzctjje' /></td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）公允价值变动净损益
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.gyjzbdzzje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.gyjzbdtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.gyjzbdtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）不征税收入
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.bzssrtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.bzssrtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：专项用途财政性资金（填入A105040）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zxytzczjtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zxytzczjtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）销售折扣、折让和退回
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.xszkzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.xszkssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.xszktzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.xszktjje' /></td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）其他
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srlxmqtzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srlxmqtssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srlxmqttzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srlxmqttjje' /></td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				二、扣除类调整项目 （13+14+15+16+17+18+19+20+21+22+23+24+26+27+28+29）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kcltzxmtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kcltzxmtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）视同销售成本（填入A105010）
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.stxxtbssje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.stxxcbtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）职工薪酬（填入A105050）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zgxczzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zgxcssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zgxctzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zgxctjje' /></td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）业务招待费支出
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ywzdfzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ywzdfssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ywzdftzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				16
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）广告费和业务宣传费支出（填入A105060）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ggywxcftzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ggywxcftjje' /></td>
		</tr>
		<tr>
			<td align="center">
				17
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）捐赠支出（填入A105070）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.jzzczzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.jzzcssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.jzzctzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				18
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）利息支出
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.lxzczzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.lxzcssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.lxzctzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.lxzctjje' /></td>
		</tr>
		<tr>
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）罚金、罚款和被没收财物的损失
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.fjfkzzje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.fjfktzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）税收滞纳金、加收利息
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ssznjzzje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.ssznjtzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				21
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）赞助支出
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zzzczzje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zzzctzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十）与未实现融资收益相关在当期确认的财务费用
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.wsxrzsyzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.wsxrzsyssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.wsxrzsytzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.wsxrzsytjje' /></td>
		</tr>
		<tr>
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十一）佣金和手续费支出
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.yjssfzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.yjssfssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.yjssftzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				24
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十二）不征税收入用于支出所形成的费用
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.bzssryyzftzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				25
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：专项用途财政性资金用于支出所形成的费用（填入A105040）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zxytczxzjtzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十三）跨期扣除项目
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kqkcxmzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kqkcxmssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kqkcxmtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kqkcxmtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十四）与取得收入无关的支出
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srwgdzczzje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.srwgdzctzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				28
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十五）境外所得分摊的共同支出
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.jwsdzctzje' /></td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				29
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十六）其他
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kclxmqtzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kclxmqtssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kclxmqttzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.kclxmqttjje' /></td>
		</tr>
		<tr>
			<td align="center">
				30
			</td>
			<td>
				三、资产类调整项目（31+32+33+34）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zclxmtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zclxmtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				31
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）资产折旧、摊销 （填入A105080）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zczjtxzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zczjtxssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zczjtxtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zczjtxtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				32
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）资产减值准备金
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcjzzbjzzje' /></td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcjzzbjtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcjzzbjtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				33
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）资产损失（填入A105090）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcsszzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcssssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcsstzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcsstjje' /></td>
		</tr>
		<tr>
			<td align="center">
				34
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zclxmqtzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zclxmqtssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zclxmqttzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zclxmqttjje' /></td>
		</tr>
		<tr>
			<td align="center">
				35
			</td>
			<td>
				四、特殊事项调整项目（36+37+38+39+40）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tssxxmtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tssxxmtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				36
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）企业重组（填入A105100）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.qyczzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.qyczssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.qycztzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.qycztjje' /></td>
		</tr>
		<tr>
			<td align="center">
				37
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）政策性搬迁（填入A105110）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcxbqtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.zcxbqtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				38
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）特殊行业准备金（填入A105120）
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tshyzbjzzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tshyzbjssje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tshyzbjtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tshyzbjtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				39
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）房地产开发企业特定业务计算的纳税调整额(填入A105010)
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.fdcqynstzessje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.fdcqynstzetzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.fdcqynstzetjje' /></td>
		</tr>
		<tr>
			<td align="center">
				40
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）其他
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tssxxmqttzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tssxxmqttjje' /></td>
		</tr>
		<tr>
			<td align="center">
				41
			</td>
			<td>
				五、特别纳税调整应税所得
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tbnsyssdtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.tbnsyssdtjje' /></td>
		</tr>
		<tr>
			<td align="center">
				42
			</td>
			<td>
				六、其他
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.qttzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.qttjje' /></td>
		</tr>
		<tr>
			<td align="center">
				43
			</td>
			<td>
				合计（1+12+30+35+41+42）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.hjtzje' /></td>
			<td align="right"><bean:write name='WB395A105000Form' property='vo.hjtjje' /></td>
		</tr>
			</table>


		</div>
		<input type="hidden" id="divHtml" name="divHtml">
		<span id="update"> <html:hidden property="sucessMsg"
				styleId="sucessMsg" /> <html:hidden property="handleDesc"
				styleId="handleDesc" /> <html:hidden property="handleCode"
				styleId="handleCode" /> <html:hidden property="errorMessage"
				styleId="errorMessage" /> </span>
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105000Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>