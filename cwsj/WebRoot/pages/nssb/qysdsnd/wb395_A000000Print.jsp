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
	<title>中华人民共和国企业所得税年度纳税申报表（A类）</title>
	<object id="factory" viewastext style="display: none"
		classid="clsid:1663ed61-23eb-11d2-b92f-008048fdd814"
		codebase="/scriptx/smsx.cab#Version=6,3,436,14">
	</object>
</head>
<body>
	<html:form action="/WB395A000000Action.do" method="post"
		styleId="WB395A000000Form">
		<div style="width: 100%" id="toolbar"></div>
		<div id="mainDiv">
			<br />
			<br />
			<div style="width: 95%">
				<p align="left">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A000000
				</p>
			</div>
			<p class="dbt" align="center">
				企业基础信息表
			</p>
			<!--  
			<div style="width: 98%" align="center">
				<p align="left">
					<logic:equal value="1" property="vo.sblx" name="WB395A000000Form">正常申报</logic:equal>
					<logic:equal value="2" property="vo.sblx" name="WB395A000000Form">更正申报</logic:equal>
					<logic:equal value="3" property="vo.sblx" name="WB395A000000Form">补充申报</logic:equal>
				</p>
			</div>-->
			<table width="90%" style="border-collapse: collapse" align="center"
				cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
				id="qysdsNb_JbxxTable">
				<tr height="25px" height="25px" align="center">
					<td colspan="4" align="center">
						基本信息
					</td>
				</tr>
				<tr height="25px">
					<td>
						汇总纳税企业
					</td>
					<td colspan="3">
						<logic:equal value="1" property="vo.hznsqylx"
							name="WB395A000000Form">总机构</logic:equal>
						<logic:equal value="2" property="vo.hznsqylx"
							name="WB395A000000Form">按比例缴纳总机构</logic:equal>
						<logic:equal value="3" property="vo.hznsqylx"
							name="WB395A000000Form">否</logic:equal>
					</td>
				</tr>
				<tr height="25px">
					<td width="25%">
						注册资本（万元）
					</td>
					<td width="35%">
						<bean:write property="vo.zczb" name="WB395A000000Form" />
					</td>
					<td width="15%">
						所属行业明细代码
					</td>
					<td>
						<bean:write property="vo.hyzxldm" name="WB395A000000Form" />
						&nbsp;&nbsp;&nbsp;&nbsp;
						<bean:write property="vo.hyzxlmc" name="WB395A000000Form" />
					</td>
				</tr>
				<tr height="25px">
					<td>
						境外中资控股居民企业
					</td>
					<td>
						<logic:equal value="1" property="vo.sfjwzzkk"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfjwzzkk"
							name="WB395A000000Form">否</logic:equal>
					</td>
					<td>
						从事国家非限制和禁止行业
					</td>
					<td>
						<logic:equal value="1" property="vo.fxzhy" name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.fxzhy" name="WB395A000000Form">否</logic:equal>
					</td>
				</tr>
				<tr height="25px">
					<td>
						从业人数
					</td>
					<td>
						<bean:write property="vo.cyrs" name="WB395A000000Form" />
					</td>
					<td>
						存在境外关联交易
					</td>
					<td>
						<logic:equal value="1" property="vo.sfjwgljy"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfjwgljy"
							name="WB395A000000Form">否</logic:equal>
					</td>
				</tr>

				<tr height="25px">
					<td>
						资产总额（万元）
					</td>
					<td>
						<bean:write property="vo.zcze" name="WB395A000000Form" />
					</td>
					<td>
						上市公司
					</td>
					<td>
						<logic:equal value="1" property="vo.sfssgs"
							name="WB395A000000Form">境内</logic:equal>
						<logic:equal value="2" property="vo.sfssgs"
							name="WB395A000000Form">境外</logic:equal>
						<logic:equal value="3" property="vo.sfssgs"
							name="WB395A000000Form">否</logic:equal>


					</td>
				</tr>
				<tr height="25px">
					<td colspan="4">
						主要会计政策和估计
					</td>
				</tr>
				<tr height="25px">
					<td>
						适用的会计准则或会计制度
					</td>

					<td colspan="3">
						<logic:equal value="CKE" property="vo.kjzd"
							name="WB395A000000Form">企业会计准则(一般企业)</logic:equal>
						<logic:equal value="CKF" property="vo.kjzd"
							name="WB395A000000Form">企业会计准则(银行)</logic:equal>
						<logic:equal value="CKH" property="vo.kjzd"
							name="WB395A000000Form">企业会计准则(证券)</logic:equal>
						<logic:equal value="CKG" property="vo.kjzd"
							name="WB395A000000Form">企业会计准则(保险)</logic:equal>
						<logic:equal value="CKQ" property="vo.kjzd"
							name="WB395A000000Form">企业会计准则(担保)</logic:equal>
						<logic:equal value="CKL" property="vo.kjzd"
							name="WB395A000000Form">小企业会计准则</logic:equal>
						<logic:equal value="CKA" property="vo.kjzd"
							name="WB395A000000Form">企业会计制度</logic:equal>
						<logic:equal value="CKJ" property="vo.kjzd"
							name="WB395A000000Form">事业单位会计准则(事业单位会计制度)</logic:equal>
						<logic:equal value="CKJ_2" property="vo.kjzd"
							name="WB395A000000Form">事业单位会计准则(科学事业单位会计制度)</logic:equal>
						<logic:equal value="CKJ_3" property="vo.kjzd"
							name="WB395A000000Form">事业单位会计准则(医院会计制度)</logic:equal>
						<logic:equal value="CKJ_4" property="vo.kjzd"
							name="WB395A000000Form">事业单位会计准则(高等学校会计制度)</logic:equal>
						<logic:equal value="CKJ_5" property="vo.kjzd"
							name="WB395A000000Form">事业单位会计准则(中小学校会计制度)</logic:equal>
						<logic:equal value="CKJ_6" property="vo.kjzd"
							name="WB395A000000Form">事业单位会计准则(彩票机构会计制度)</logic:equal>
						<logic:equal value="CKM" property="vo.kjzd"
							name="WB395A000000Form">民间非营利组织会计制度</logic:equal>
						<logic:equal value="CKO" property="vo.kjzd"
							name="WB395A000000Form">村集体经济组织会计制度</logic:equal>
						<logic:equal value="CKP" property="vo.kjzd"
							name="WB395A000000Form">农民专业合作社财务会计制度（试行）</logic:equal>
						<logic:equal value="CKZ" property="vo.kjzd"
							name="WB395A000000Form">其他</logic:equal>


					</td>

				</tr>
				<tr height="25px">
					<td>
						会计档案的存放地
					</td>
					<td>
						<bean:write property="vo.dacfd" name="WB395A000000Form" />

					</td>
					<td>
						会计核算软件
					</td>
					<td>
						<bean:write property="vo.kjhsrj" name="WB395A000000Form" />

					</td>
				</tr>
				<tr height="25px">
					<td>
						记账本位币
					</td>
					<td>
						<logic:equal value="1" property="vo.jzbwb" name="WB395A000000Form">人民币</logic:equal>
						<logic:equal value="2" property="vo.jzbwb" name="WB395A000000Form">其他</logic:equal>



					</td>
					<td>
						会计政策和估计是否发生变化
					</td>
					<td>
						<logic:equal value="1" property="vo.kjzcsfbh"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.kjzcsfbh"
							name="WB395A000000Form">否</logic:equal>
					</td>
				</tr>
				<tr height="25px">
					<td>
						固定资产折旧方法
					</td>
					<td colspan="3">
						<label id="gdzczjff_01" style="display: none;">
							年限平均法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="gdzczjff_02" style="display: none;">
							工作量法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="gdzczjff_03" style="display: none;">
							双倍余额递减法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="gdzczjff_04" style="display: none;">
							年数总和法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="gdzczjff_99" style="display: none;">
							其他
						</label>
					</td>

				</tr>
				<tr height="25px">
					<td>
						存货成本计价方法
					</td>
					<td colspan="3">
						<label id="chcbjjff_01" style="display: none;">
							先进先出法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_02" style="display: none;">
							移动加权平均法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_03" style="display: none;">
							月末一次加权平均法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_04" style="display: none;">
							个别计价法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_05" style="display: none;">
							毛利率法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_06" style="display: none;">
							零售价法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_07" style="display: none;">
							计划成本法&nbsp;&nbsp;&nbsp;&nbsp;
						</label>
						<label id="chcbjjff_99" style="display: none;">
							其他
						</label>



					</td>
				</tr>
				<tr height="25px">
					<td>
						坏账损失核算方法
					</td>
					<td colspan="3">
						<logic:equal value="01" property="vo.hzsshsff"
							name="WB395A000000Form">备抵法</logic:equal>
						<logic:equal value="02" property="vo.hzsshsff"
							name="WB395A000000Form">直接核销法</logic:equal>
					</td>
				</tr>
				<tr height="25px">
					<td>
						所得税计算方法
					</td>
					<td colspan="3">
						<logic:equal value="01" property="vo.sdsjsff"
							name="WB395A000000Form">应付税款法</logic:equal>
						<logic:equal value="02" property="vo.sdsjsff"
							name="WB395A000000Form">资产负债表债务法</logic:equal>




					</td>
				</tr>
				<tr height="25px">
					<td align="center" colspan="4">
						企业主要股东及对外投资情况
					</td>
				</tr>
				<tr height="25px">
					<td align="left" colspan="4">
						企业主要股东（前5位）
					</td>
				</tr>
				<tr height="25px">
					<td colspan="4">
						<table width="100%" border="1" align="center" cellpadding="1"
							bordercolor="#000000" cellspacing="1" frame="void"
							style="border-collapse: collapse;">
							<tr height="25px">
								<td align="center" width="25%">
									股东名称
								</td>
								<td align="center" width="15%">
									证件种类
								</td>
								<td align="center" width="15%">
									证件号码
								</td>
								<td align="center" width="15%">
									经济性质
								</td>
								<td align="center" width="15%">
									投资比例
								</td>
								<td align="center">
									国籍（注册地址）
								</td>
							</tr>
							<logic:iterate id="dataid" indexId="ind" name="WB395A000000Form"
								property="zyGdList">
								<tr height="25px" style="height: 15px">
									<td>
										<bean:write property="gdmc" name="dataid" />


									</td>
									<td>
										<bean:write property="zjzl" name="dataid" />
									</td>
									<td>
										<bean:write property="zjhm" name="dataid" />

									</td>
									<td>
										<bean:write property="djzclxdm" name="dataid" />


									</td>
									<td align="right">
										<bean:write property="tzbl" name="dataid" />


									</td>
									<td>
										<bean:write property="gj" name="dataid" />


									</td>
								</tr>
							</logic:iterate>
						</table>
					</td>
				</tr>
				<tr height="25px">
					<td align="left" colspan="4">
						对外投资（前5位）
						<logic:equal value="1" property="vo.sfdwtz"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfdwtz"
							name="WB395A000000Form">否</logic:equal>
					</td>
				</tr>
				<tr height="25px">
					<td colspan="4">
						<table width="100%" style="border-collapse: collapse"
							align="center" cellpadding="1" cellspacing="1" border="1"
							frame="void" bordercolor="#000000">
							<tr height="25px">
								<td align="center" width="25%">
									被投资者名称
								</td>
								<td align="center" width="15%">
									纳税人识别号
								</td>
								<td align="center" width="15%">
									经济性质
								</td>
								<td align="center" width="15%">
									投资比例
								</td>
								<td align="center" width="15%">
									投资金额
								</td>
								<td align="center">
									注册地址
								</td>
							</tr>
							<logic:iterate id="dataid" indexId="ind" name="WB395A000000Form"
								property="dwTzList">
								<tr height="25px" style="height: 15px">
									<td>
										<bean:write property="btzzmc" name="dataid" />
									</td>
									<td>
										<bean:write property="nsrsbh" name="dataid" />
									</td>
									<td>
										<bean:write property="djzclxdm2" name="dataid" />
									</td>
									<td align="right">
										<bean:write name="dataid" property="tzbl" />
									</td>
									<td align="right">
										<bean:write name="dataid" property="tzje" />
										(万元)
									</td>
									<td>
										<bean:write property="gj2" name="dataid" />
									</td>
								</tr>
							</logic:iterate>
						</table>
					</td>
				</tr>
				<tr height="25px">
					<td colspan="4" align="center">
						是否发生以下需要填报附表的项目
					</td>
				</tr>
				<tr height="25px">

					<td>
						是否关联企业
					</td>
					<td>

						<logic:equal value="1" property="vo.sfglqy"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfglqy"
							name="WB395A000000Form">否</logic:equal>
					</td>

					<td>
						是否存在关联交易
					</td>
					<td>
						<logic:equal value="1" property="vo.sfgljy"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfgljy"
							name="WB395A000000Form">否</logic:equal>


					</td>
				</tr>
				<tr height="25px">
					<td>
						是否受控外国企业
					</td>
					<td>

						<logic:equal value="1" property="vo.sfskwg"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfskwg"
							name="WB395A000000Form">否</logic:equal>
					</td>

					<td>
						是否存在对外支付款项情况
					</td>
					<td>
						<logic:equal value="1" property="vo.sfdwzf"
							name="WB395A000000Form">是</logic:equal>
						<logic:equal value="2" property="vo.sfdwzf"
							name="WB395A000000Form">否</logic:equal>
					</td>
				</tr>
			</table>
		</div>
		<html:hidden property="errorMessage" styleId="errorMessage" />
		<html:hidden property="sucessMsg" styleId="sucessMsg" />
		<html:hidden property="handleDesc" styleId="handleDesc" />
		<html:hidden property="handleCode" styleId="handleCode" />
		<html:hidden property="vo.pzxh" styleId="vo.pzxh"></html:hidden>
		<html:hidden property="vo.swglm" styleId="vo.swglm"></html:hidden>
		<html:hidden property="vo.str_jkqx" styleId="vo.str_jkqx"></html:hidden>
		<html:hidden property="vo.str_sfssqqsrq" styleId="vo.str_sfssqqsrq"></html:hidden>
		<html:hidden property="vo.str_sfssqzzrq" styleId="vo.str_sfssqzzrq"></html:hidden>
		<html:hidden property="vo.gdzczjff" styleId="vo.gdzczjff"></html:hidden>
		<html:hidden property="vo.chcbjjff" styleId="vo.chcbjjff"></html:hidden>
		<input type="hidden" id="divHtml" name="divHtml">
		<input type="hidden" id="bbZt" name="bbzt"
			value="<%=request.getParameter("bbZt")%>">
	</html:form>
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A000000Print.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
