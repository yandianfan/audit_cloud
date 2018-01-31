var a;
var d;
var e;
var rulesID;

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						text : "提交",
						iconCls : "submit",
						id : "submitBtn",
						handler : function() {
							showSubmitDialog();
						},
						scope : this
					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395ckhAction.do?handleCode=printPage&pzXh="
									+ $F('pzXh') + "&SBMX_XH=" + $F('sbmxxh'));
						},
						scope : this
					}, '-', {
						text : "关闭",
						iconCls : "close",
						handler : function() {
							window.close();
						},
						scope : this
					}]
		});
		initPage();
	} catch (e) {

	}
});

function initPage() {
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	readText(true);
	setzcfzbclass();
	setlrbclass();
	setxjllbclass();

	d = new caltb('zqgssyzcfzb', true);
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	rulesID = new Array();

	rulesID[0] = "zcqmye27 = zcqmye2 + zcqmye4 + zcqmye6 + zcqmye7 + zcqmye8 + zcqmye9 + zcqmye10 + zcqmye11 + zcqmye12 + zcqmye13 + zcqmye14 + zcqmye15 + zcqmye16 + zcqmye17 + zcqmye18 + zcqmye19 + zcqmye20"
	rulesID[1] = "zcncye27 = zcncye2 + zcncye4 + zcncye6 + zcncye7 + zcncye8 + zcncye9 + zcncye10 + zcncye11 + zcncye12 + zcncye13 + zcncye14 + zcncye15 + zcncye16 + zcncye17 + zcncye18 + zcncye19 + zcncye20"
	rulesID[2] = "fzqmye18 = fzqmye2 + fzqmye4 + fzqmye5 + fzqmye6 + fzqmye7 + fzqmye8 + fzqmye9 + fzqmye10 + fzqmye11 + fzqmye12 + fzqmye13 + fzqmye14 + fzqmye15 + fzqmye16 + fzqmye17"
	rulesID[3] = "fzqmye26 = fzqmye20 + fzqmye21 - fzqmye22 + fzqmye23 + fzqmye24 + fzqmye25"
	rulesID[4] = "fzqmye27 = fzqmye18 + fzqmye26"
	rulesID[5] = "fzncye18 = fzncye2 + fzncye4 + fzncye5 + fzncye6 + fzncye7 + fzncye8 + fzncye9 + fzncye10 + fzncye11 + fzncye12 + fzncye13 + fzncye14 + fzncye15 + fzncye16 + fzncye17"
	rulesID[6] = "fzncye26 = fzncye20 + fzncye21 - fzncye22 + fzncye23 + fzncye24 + fzncye25"
	rulesID[7] = "fzncye27 = fzncye18 + fzncye26"

	d.setRulesID(rulesID);
	initCalTable(d, true);
	runRulesForID(d);

	a = new caltb('zqgssylrb', true);
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "lrbqje1 = lrbqje2 + lrbqje4 + lrbqje5 + lrbqje6 + lrbqje7 + lrbqje9 + lrbqje10 + lrbqje11"
	rulesID[1] = "lrbqje12 = lrbqje13 + lrbqje14 + lrbqje15 + lrbqje16"
	rulesID[2] = "lrbqje17 = lrbqje1 - lrbqje12"
	rulesID[3] = "lrbqje20 = lrbqje17 + lrbqje18 - lrbqje19"
	rulesID[4] = "lrbqje22 = lrbqje20 - lrbqje21"
	rulesID[5] = "lrsqje1 = lrsqje2 + lrsqje4 + lrsqje5 + lrsqje6 + lrsqje7 + lrsqje9 + lrsqje10 + lrsqje11"
	rulesID[6] = "lrsqje12 = lrsqje13 + lrsqje14 + lrsqje15 + lrsqje16"
	rulesID[7] = "lrsqje17 = lrsqje1 - lrsqje12"
	rulesID[8] = "lrsqje20 = lrsqje17 + lrsqje18 - lrsqje19"
	rulesID[9] = "lrsqje22 = lrsqje20 - lrsqje21"
	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	e = new caltb('zqgssyxjllb');
	rulesID = new Array();
	e.type = "1";
	e.negative = true;
	e.pageTipsFlag = "1";
	rulesID[0] = "xjbqje7 = xjbqje2 + xjbqje3 + xjbqje4 + xjbqje5 + xjbqje6"
	rulesID[1] = "xjbqje12 = xjbqje8 + xjbqje9 + xjbqje10 + xjbqje11"
	rulesID[2] = "xjbqje13 = xjbqje7 - xjbqje12"
	rulesID[3] = "xjbqje18 = xjbqje15 + xjbqje16 + xjbqje17"
	rulesID[4] = "xjbqje22 = xjbqje19 + xjbqje20 + xjbqje21"
	rulesID[5] = "xjbqje23 = xjbqje18 - xjbqje22"
	rulesID[6] = "xjbqje28 = xjbqje25 + xjbqje26 + xjbqje27"
	rulesID[7] = "xjbqje32 = xjbqje29 + xjbqje30 + xjbqje31"
	rulesID[8] = "xjbqje33 = xjbqje28 - xjbqje32"
	rulesID[9] = "xjbqje35 = xjbqje13 + xjbqje23 + xjbqje33 + xjbqje34"
	rulesID[10] = "xjbqje37 = xjbqje35 + xjbqje36"
	rulesID[11] = "xjsqje7 = xjsqje2 + xjsqje3 + xjsqje4 + xjsqje5 + xjsqje6"
	rulesID[12] = "xjsqje12 = xjsqje8 + xjsqje9 + xjsqje10 + xjsqje11"
	rulesID[13] = "xjsqje13 = xjsqje7 - xjsqje12"
	rulesID[14] = "xjsqje18 = xjsqje15 + xjsqje16 + xjsqje17"
	rulesID[15] = "xjsqje22 = xjsqje19 + xjsqje20 + xjsqje21"
	rulesID[16] = "xjsqje23 = xjsqje18 - xjsqje22"
	rulesID[17] = "xjsqje28 = xjsqje25 + xjsqje26 + xjsqje27"
	rulesID[18] = "xjsqje32 = xjsqje29 + xjsqje30 + xjsqje31"
	rulesID[19] = "xjsqje33 = xjsqje28 - xjsqje32"
	rulesID[20] = "xjsqje35 = xjsqje13 + xjsqje23 + xjsqje33 + xjsqje34"
	rulesID[21] = "xjsqje37 = xjsqje35 + xjsqje36"
	e.setRulesID(rulesID);
	initCalTable(e, true);
	runRulesForID(e);

}

function setzcfzbclass() {
	document.getElementById("zcqmye1").readOnly = "true";
	document.getElementById("zcncye1").readOnly = "true";
	document.getElementById("zcqmye27").readOnly = "true";
	document.getElementById("zcncye27").readOnly = "true";

	document.getElementById("zcqmye21").readOnly = "true";
	document.getElementById("zcqmye21").className = "read";
	document.getElementById("zcncye21").readOnly = "true";
	document.getElementById("zcncye21").className = "read";
	document.getElementById("zcqmye22").readOnly = "true";
	document.getElementById("zcqmye22").className = "read";
	document.getElementById("zcncye22").readOnly = "true";
	document.getElementById("zcncye22").className = "read";
	document.getElementById("zcqmye23").readOnly = "true";
	document.getElementById("zcqmye23").className = "read";
	document.getElementById("zcncye23").readOnly = "true";
	document.getElementById("zcncye23").className = "read";
	document.getElementById("zcqmye24").readOnly = "true";
	document.getElementById("zcqmye24").className = "read";
	document.getElementById("zcncye24").readOnly = "true";
	document.getElementById("zcncye24").className = "read";
	document.getElementById("zcqmye25").readOnly = "true";
	document.getElementById("zcqmye25").className = "read";
	document.getElementById("zcncye25").readOnly = "true";
	document.getElementById("zcncye25").className = "read";
	document.getElementById("zcqmye26").readOnly = "true";
	document.getElementById("zcqmye26").className = "read";
	document.getElementById("zcncye26").readOnly = "true";
	document.getElementById("zcncye26").className = "read";

	document.getElementById("fzqmye1").readOnly = "true";
	document.getElementById("fzncye1").readOnly = "true";
	document.getElementById("fzqmye19").readOnly = "true";
	document.getElementById("fzncye19").readOnly = "true";
	document.getElementById("fzqmye18").readOnly = "true";
	document.getElementById("fzqmye26").readOnly = "true";
	document.getElementById("fzqmye27").readOnly = "true";
	document.getElementById("fzncye18").readOnly = "true";
	document.getElementById("fzncye26").readOnly = "true";
	document.getElementById("fzncye27").readOnly = "true";

	document.getElementById("zcqmye1").className = "read";
	document.getElementById("zcncye1").className = "read";
	document.getElementById("zcqmye27").className = "read";
	document.getElementById("zcncye27").className = "read";

	document.getElementById("fzqmye1").className = "read";
	document.getElementById("fzncye1").className = "read";
	document.getElementById("fzqmye19").className = "read";
	document.getElementById("fzncye19").className = "read";
	document.getElementById("fzqmye18").className = "read";
	document.getElementById("fzqmye26").className = "read";
	document.getElementById("fzqmye27").className = "read";
	document.getElementById("fzncye18").className = "read";
	document.getElementById("fzncye26").className = "read";
	document.getElementById("fzncye27").className = "read";
}

function setlrbclass() {
	document.getElementById("lrbqje1").readOnly = "true";
	document.getElementById("lrbqje12").readOnly = "true";
	document.getElementById("lrbqje17").readOnly = "true";
	document.getElementById("lrbqje20").readOnly = "true";
	document.getElementById("lrbqje22").readOnly = "true";
	document.getElementById("lrsqje1").readOnly = "true";
	document.getElementById("lrsqje12").readOnly = "true";
	document.getElementById("lrsqje17").readOnly = "true";
	document.getElementById("lrsqje20").readOnly = "true";
	document.getElementById("lrsqje22").readOnly = "true";
	document.getElementById("lrbqje1").className = "read";
	document.getElementById("lrbqje12").className = "read";
	document.getElementById("lrbqje17").className = "read";
	document.getElementById("lrbqje20").className = "read";
	document.getElementById("lrbqje22").className = "read";
	document.getElementById("lrsqje1").className = "read";
	document.getElementById("lrsqje12").className = "read";
	document.getElementById("lrsqje17").className = "read";
	document.getElementById("lrsqje20").className = "read";
	document.getElementById("lrsqje22").className = "read";
}

function setxjllbclass() {
	document.getElementById("xjbqje1").readOnly = "true";
	document.getElementById("xjbqje14").readOnly = "true";
	document.getElementById("xjbqje24").readOnly = "true";
	document.getElementById("xjbqje7").readOnly = "true";
	document.getElementById("xjbqje12").readOnly = "true";
	document.getElementById("xjbqje13").readOnly = "true";
	document.getElementById("xjbqje18").readOnly = "true";
	document.getElementById("xjbqje22").readOnly = "true";
	document.getElementById("xjbqje23").readOnly = "true";
	document.getElementById("xjbqje28").readOnly = "true";
	document.getElementById("xjbqje32").readOnly = "true";
	document.getElementById("xjbqje33").readOnly = "true";
	document.getElementById("xjbqje35").readOnly = "true";
	document.getElementById("xjbqje37").readOnly = "true";

	document.getElementById("xjsqje1").readOnly = "true";
	document.getElementById("xjsqje14").readOnly = "true";
	document.getElementById("xjsqje24").readOnly = "true";
	document.getElementById("xjsqje7").readOnly = "true";
	document.getElementById("xjsqje12").readOnly = "true";
	document.getElementById("xjsqje13").readOnly = "true";
	document.getElementById("xjsqje18").readOnly = "true";
	document.getElementById("xjsqje22").readOnly = "true";
	document.getElementById("xjsqje23").readOnly = "true";
	document.getElementById("xjsqje28").readOnly = "true";
	document.getElementById("xjsqje32").readOnly = "true";
	document.getElementById("xjsqje33").readOnly = "true";
	document.getElementById("xjsqje35").readOnly = "true";
	document.getElementById("xjsqje37").readOnly = "true";

	document.getElementById("xjbqje1").className = "read";
	document.getElementById("xjbqje14").className = "read";
	document.getElementById("xjbqje24").className = "read";
	document.getElementById("xjbqje7").className = "read";
	document.getElementById("xjbqje12").className = "read";
	document.getElementById("xjbqje13").className = "read";
	document.getElementById("xjbqje18").className = "read";
	document.getElementById("xjbqje22").className = "read";
	document.getElementById("xjbqje23").className = "read";
	document.getElementById("xjbqje28").className = "read";
	document.getElementById("xjbqje32").className = "read";
	document.getElementById("xjbqje33").className = "read";
	document.getElementById("xjbqje35").className = "read";
	document.getElementById("xjbqje37").className = "read";

	document.getElementById("xjsqje1").className = "read";
	document.getElementById("xjsqje14").className = "read";
	document.getElementById("xjsqje24").className = "read";
	document.getElementById("xjsqje7").className = "read";
	document.getElementById("xjsqje12").className = "read";
	document.getElementById("xjsqje13").className = "read";
	document.getElementById("xjsqje18").className = "read";
	document.getElementById("xjsqje22").className = "read";
	document.getElementById("xjsqje23").className = "read";
	document.getElementById("xjsqje28").className = "read";
	document.getElementById("xjsqje32").className = "read";
	document.getElementById("xjsqje33").className = "read";
	document.getElementById("xjsqje35").className = "read";
	document.getElementById("xjsqje37").className = "read";
}

function showSubmitDialog() {
	$('#errorMessage').val("");
	$('#sucessMsg').val("");
	if (!bascicCheck()) {
		return;
	}
	if (!submitCheck()) {
		return;
	}
	var tsxx = "";

	if (parseFloat(emptyToZ($F("zcqmye20"))) < 0) {
		tsxx += "【资产负债表-其他资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcncye20"))) < 0) {
		tsxx += "【资产负债表-其他资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye17"))) < 0) {
		tsxx += "【资产负债表-其他负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye17"))) < 0) {
		tsxx += "【资产负债表-其他负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye21"))) < 0) {
		tsxx += "【资产负债表-资本公积】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye21"))) < 0) {
		tsxx += "【资产负债表-资本公积】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye22"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye22"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-年初余额小于0<br/>";
	}

//	if (parseFloat(emptyToZ($("zcqmye27").value)) <= 0
//			&& $("xbhFlag").value == "0") {
//		tsxx += "【资产负债表】资产总计-期末余额小于等于0<br/>";
//	}
//	if (parseFloat(emptyToZ($("zcncye27").value)) <= 0
//			&& $("xbhFlag").value == "0") {
//		tsxx += "【资产负债表】资产总计-年初余额小于等于0<br/>";
//	}

	if (parseFloat(emptyToZ($F("lrbqje2"))) < 0) {
		tsxx += "【利润表-手续费及佣金净收入】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje2"))) < 0) {
		tsxx += "【利润表-手续费及佣金净收入】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje4"))) < 0) {
		tsxx += "【利润表-减：证券承销业务净收入】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje4"))) < 0) {
		tsxx += "【利润表-减：证券承销业务净收入】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje5"))) < 0) {
		tsxx += "【利润表-减：受托客户资产管理业务净收入】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje5"))) < 0) {
		tsxx += "【利润表-减：受托客户资产管理业务净收入】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje6"))) < 0) {
		tsxx += "【利润表-减：利息净收入】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje6"))) < 0) {
		tsxx += "【利润表-减：利息净收入】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje15"))) < 0) {
		tsxx += "【利润表-资产减值损失】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje15"))) < 0) {
		tsxx += "【利润表-资产减值损失】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje21"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje21"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje3"))) > parseFloat(emptyToZ($F("lrbqje2")))) {
		tsxx += "【利润表-代理买卖证券业务净收入】-本期金额大于手续费及佣金净收入-本期金额<br/>";
	}

	if (parseFloat(emptyToZ($("lrsqje3"))) > parseFloat(emptyToZ($("lrsqje2")))) {
		tsxx += "【利润表-代理买卖证券业务净收入】-上期金额大于手续费及佣金净收入-上期金额<br/>";
	}

	if (parseFloat(emptyToZ($("lrbqje8"))) > parseFloat(emptyToZ($("lrbqje7")))) {
		tsxx += "【利润表-对联营企业和合营企业的投资收益】-本期金额大于投资收益（损失以-号填列）-本期金额<br/>";
	}

	if (parseFloat(emptyToZ($("lrsqje8"))) > parseFloat(emptyToZ($("lrsqje7")))) {
		tsxx += "【利润表-对联营企业和合营企业的投资收益】-上期金额大于投资收益（损失以-号填列）-上期金额<br/>";
	}

//	if ($('nsrztDm').value == 25) {
//		var flag = "false"
//		for (var i = 0; i < $ES('lrxmdm').length; i++) {
//			if (parseFloat(emptyToZ($ES('lrbqje')[i].value)) != 0
//					|| parseFloat(emptyToZ($ES('lrsqje')[i].value)) != 0) {
//				flag = "true"
//				break;
//			}
//		}
//		if (flag == "false") {
//			tsxx += "【利润表】数据项全部为零<br/>";
//		}
//	}

	var titleMsg = "";

	if (tsxx == "") {
		tsxx = "是否确认提交申报数据?"
		titleMsg = "确认提示框";
	} else {
		tsxx = "<div style='overflow-y: scroll;height:240;color:blue'>" + tsxx
				+ "</div>";
		titleMsg = '<font color="red"><b>以下为提醒类信息,请核实无误后提交!</b></font>';
	}

	Ext.MessageBox.show({
				msg : tsxx,
				title : titleMsg,
				buttons : Ext.MessageBox.OKCANCEL,
				fn : function(button) {
					if (button == "ok") {
						$("#handleCode").val("saveData");
						waitDialog();
//						new Ajax.Request('/WB395ckhAction.do', {
//									method : 'post',
//									parameters : $('WB395ckhForm').serialize(),
//									onComplete : function(originalRequest) {
//										Ext.MessageBox.hide();
//										ajaxUpdate(
//												originalRequest.responseText,
//												"ajaxform");
//										runMsg("1", true, null,
//												'WB395IndexForm');
//									},
//									onException : function() {
//										Ext.MessageBox.hide();
//										iconDialog('系统异常', 'ERROR', function() {
//													readTextIne();
//												});
//									}
//								});
						
						$.ajax({
							url : "/WB395ckhAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395ckhForm').serialize(),
							type : 'post',
							error : function(XMLHttpRequest, textStatus, errorThrown) {
								alert('系统异常' + textStatus);
							},
							success : function(responseText, textStatus, XMLHttpRequest) {
								ajaxUpdate(responseText, "ajaxform");
								runMsg("1", true, null,'WB395IndexForm');
							}
						});
						
					}

				}

			});
}

function bascicCheck() {
	var flag = "false"
	var zcqmye = $ES('zcqmye');
	var zcqmyelist = $A(zcqmye);
	zcqmyelist.each(function(node) {
				if (!trim(node.value).empty()) {
					flag = "true";
					return;
				}
			});
	if (flag == "false") {
		iconDialog('请填写资产期末余额!', 'WARNING');
		return false;
	}
	return true;
}

function submitCheck() {
	if ("" == $F('swglm')) {
		iconDialog('请填写【资产负债表】税务管理码! ', 'WARNING');
		return false;
	}
	if ("" == $F('bzdw')) {
		iconDialog('请填写【资产负债表】编制单位! ', 'WARNING');
		return false;
	}
	if ("" == $F('ssq')) {
		iconDialog('请选择【资产负债表】所属期! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqmye2"))) < parseFloat(emptyToZ($F("zcqmye3")))) {
		iconDialog('【资产负债表】客户资金存款不能大于货币资金! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcncye2"))) < parseFloat(emptyToZ($F("zcncye3")))) {
		iconDialog('【资产负债表】客户资金存款不能大于货币资金! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqmye4"))) < parseFloat(emptyToZ($F("zcqmye5")))) {
		iconDialog('【资产负债表】客户备付金不能大于结算备付金! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcncye4"))) < parseFloat(emptyToZ($F("zcncye5")))) {
		iconDialog('【资产负债表】客户备付金不能大于结算备付金! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqmye17"))) < parseFloat(emptyToZ($F("zcqmye18")))) {
		iconDialog('【资产负债表】交易席位费不能大于无形资产! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcncye17"))) < parseFloat(emptyToZ($F("zcncye18")))) {
		iconDialog('【资产负债表】交易席位费不能大于无形资产! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("fzqmye2"))) < parseFloat(emptyToZ($F("fzqmye3")))) {
		iconDialog('【资产负债表】质押借款不能大于短期借款! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("fzncye2"))) < parseFloat(emptyToZ($F("fzncye3")))) {
		iconDialog('【资产负债表】质押借款不能大于短期借款! ', 'WARNING');
		return false;
	}

	if (parseFloat(emptyToZ($F("zcqmye27"))) != parseFloat(emptyToZ($F("fzqmye27")))) {
		iconDialog('【资产负债表】资产合计不等于负债及所有者权益总计,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcncye27"))) != parseFloat(emptyToZ($F("fzncye27")))) {
		iconDialog('【资产负债表】资产合计不等于负债及所有者权益总计,请核实!', 'WARNING');
		return false;
	}

	// if (parseFloat(emptyToZ($("lrbqje2").value)) <
	// parseFloat(emptyToZ($("lrbqje3").value))) {
	// iconDialog('【利润表】代理买卖证券业务净收入不能大于手续费及佣金净收入! ', 'WARNING');
	// return false;
	// }
	// if (parseFloat(emptyToZ($("lrsqje2").value)) <
	// parseFloat(emptyToZ($("lrsqje3").value))) {
	// iconDialog('【利润表】代理买卖证券业务净收入不能大于手续费及佣金净收入! ', 'WARNING');
	// return false;
	// }
	return true;
}