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
							openMaxWindow("/WB395ckfAction.do?handleCode=printPage&pzXh="
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

	d = new caltb('syyhsyzcfzb', true);
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "zcqmye25 = zcqmye2 + zcqmye3 + zcqmye4 + zcqmye5 + zcqmye6 + zcqmye7 + zcqmye8 + zcqmye9 + zcqmye10 + zcqmye11 + zcqmye12 + zcqmye13 + zcqmye14 + zcqmye15 + zcqmye16 + zcqmye17 + zcqmye18"
	rulesID[1] = "zcncye25 = zcncye2 + zcncye3 + zcncye4 + zcncye5 + zcncye6 + zcncye7 + zcncye8 + zcncye9 + zcncye10 + zcncye11 + zcncye12 + zcncye13 + zcncye14 + zcncye15 + zcncye16 + zcncye17 + zcncye18"
	rulesID[2] = "fzqmye16 = fzqmye2 + fzqmye3 + fzqmye4 + fzqmye5 + fzqmye6 + fzqmye7 + fzqmye8 + fzqmye9 + fzqmye10 + fzqmye11 + fzqmye12 + fzqmye13 + fzqmye14 + fzqmye15"
	rulesID[3] = "fzqmye24 = fzqmye18 + fzqmye19 - fzqmye20 + fzqmye21 + fzqmye22 + fzqmye23"
	rulesID[4] = "fzqmye25 = fzqmye16 + fzqmye24"
	rulesID[5] = "fzncye16 = fzncye2 + fzncye3 + fzncye4 + fzncye5 + fzncye6 + fzncye7 + fzncye8 + fzncye9 + fzncye10 + fzncye11 + fzncye12 + fzncye13 + fzncye14 + fzncye15"
	rulesID[6] = "fzncye24 = fzncye18 + fzncye19 - fzncye20 + fzncye21 + fzncye22 + fzncye23"
	rulesID[7] = "fzncye25 = fzncye16 + fzncye24"
	d.setRulesID(rulesID);
	initCalTable(d, true);
	runRulesForID(d);

	a = new caltb('syyhsylrb', true);
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "lrbqje2 = lrbqje3 - lrbqje4"
	rulesID[1] = "lrbqje5 = lrbqje6 - lrbqje7"
	rulesID[2] = "lrbqje1 = lrbqje2 + lrbqje5 + lrbqje8 + lrbqje10 + lrbqje11 + lrbqje12"
	rulesID[3] = "lrbqje13 = lrbqje14 + lrbqje15 + lrbqje16 + lrbqje17"
	rulesID[4] = "lrbqje18 = lrbqje1 - lrbqje13"
	rulesID[5] = "lrbqje21 = lrbqje18 + lrbqje19 - lrbqje20"
	rulesID[6] = "lrbqje23 = lrbqje21 - lrbqje22"
	rulesID[7] = "lrsqje2 = lrsqje3 - lrsqje4"
	rulesID[8] = "lrsqje5 = lrsqje6 - lrsqje7"
	rulesID[9] = "lrsqje1 = lrsqje2 + lrsqje5 + lrsqje8 + lrsqje10 + lrsqje11 + lrsqje12"
	rulesID[10] = "lrsqje13 = lrsqje14 + lrsqje15 + lrsqje16 + lrsqje17"
	rulesID[11] = "lrsqje18 = lrsqje1 - lrsqje13"
	rulesID[12] = "lrsqje21 = lrsqje18 + lrsqje19 - lrsqje20"
	rulesID[13] = "lrsqje23 = lrsqje21 - lrsqje22"

	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	e = new caltb('syyhsyxjllb');
	e.type = "1";
	e.negative = true;
	e.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "xjbqje7 = xjbqje2 + xjbqje3 + xjbqje4 + xjbqje5 + xjbqje6"
	rulesID[1] = "xjbqje14 = xjbqje8 + xjbqje9 + xjbqje10 + xjbqje11 + xjbqje12 + xjbqje13"
	rulesID[2] = "xjbqje15 = xjbqje7 - xjbqje14"
	rulesID[3] = "xjbqje20 = xjbqje17 + xjbqje18 + xjbqje19"
	rulesID[4] = "xjbqje24 = xjbqje21 + xjbqje22 + xjbqje23"
	rulesID[5] = "xjbqje25 = xjbqje20 - xjbqje24"
	rulesID[6] = "xjbqje30 = xjbqje27 + xjbqje28 + xjbqje29"
	rulesID[7] = "xjbqje34 = xjbqje31 + xjbqje32 + xjbqje33"
	rulesID[8] = "xjbqje35 = xjbqje30 - xjbqje34"
	rulesID[9] = "xjbqje37 = xjbqje15 + xjbqje25 + xjbqje35 + xjbqje36"
	rulesID[10] = "xjbqje39 = xjbqje37 + xjbqje38"
	rulesID[11] = "xjsqje7 = xjsqje2 + xjsqje3 + xjsqje4 + xjsqje5 + xjsqje6"
	rulesID[12] = "xjsqje14 = xjsqje8 + xjsqje9 + xjsqje10 + xjsqje11 + xjsqje12 + xjsqje13"
	rulesID[13] = "xjsqje15 = xjsqje7 - xjsqje14"
	rulesID[14] = "xjsqje20 = xjsqje17 + xjsqje18 + xjsqje19"
	rulesID[15] = "xjsqje24 = xjsqje21 + xjsqje22 + xjsqje23"
	rulesID[16] = "xjsqje25 = xjsqje20 - xjsqje24"
	rulesID[17] = "xjsqje30 = xjsqje27 + xjsqje28 + xjsqje29"
	rulesID[18] = "xjsqje34 = xjsqje31 + xjsqje32 + xjsqje33"
	rulesID[19] = "xjsqje35 = xjsqje30 - xjsqje34"
	rulesID[20] = "xjsqje37 = xjsqje15 + xjsqje25 + xjsqje35 + xjsqje36"
	rulesID[21] = "xjsqje39 = xjsqje37 + xjsqje38"

	e.setRulesID(rulesID);
	initCalTable(e, true);
	runRulesForID(e);
}

function setzcfzbclass() {
	document.getElementById("zcqmye1").readOnly = "true";
	document.getElementById("zcqmye1").className = "read";
	document.getElementById("zcncye1").className = "read";
	document.getElementById("zcqmye1").readOnly = "true";
	document.getElementById("zcncye1").className = "read";
	document.getElementById("zcqmye19").readOnly = "true";
	document.getElementById("zcncye19").readOnly = "true";
	document.getElementById("zcqmye19").className = "read";
	document.getElementById("zcncye19").className = "read";
	document.getElementById("zcqmye20").readOnly = "true";
	document.getElementById("zcncye20").readOnly = "true";
	document.getElementById("zcqmye20").className = "read";
	document.getElementById("zcncye20").className = "read";
	document.getElementById("zcqmye21").readOnly = "true";
	document.getElementById("zcncye21").readOnly = "true";
	document.getElementById("zcqmye21").className = "read";
	document.getElementById("zcncye21").className = "read";
	document.getElementById("zcqmye22").readOnly = "true";
	document.getElementById("zcncye22").readOnly = "true";
	document.getElementById("zcqmye22").className = "read";
	document.getElementById("zcncye22").className = "read";
	document.getElementById("zcqmye23").readOnly = "true";
	document.getElementById("zcncye23").readOnly = "true";
	document.getElementById("zcqmye23").className = "read";
	document.getElementById("zcncye23").className = "read";
	document.getElementById("zcqmye24").readOnly = "true";
	document.getElementById("zcncye24").readOnly = "true";
	document.getElementById("zcqmye24").className = "read";
	document.getElementById("zcncye24").className = "read";
	document.getElementById("zcqmye25").readOnly = "true";
	document.getElementById("zcncye25").readOnly = "true";
	document.getElementById("zcqmye25").className = "read";
	document.getElementById("zcncye25").className = "read";

	document.getElementById("fzqmye1").readOnly = "true";
	document.getElementById("fzqmye1").className = "read";
	document.getElementById("fzncye1").readOnly = "true";
	document.getElementById("fzncye1").className = "read";
	document.getElementById("fzqmye16").readOnly = "true";
	document.getElementById("fzqmye16").className = "read";
	document.getElementById("fzncye16").readOnly = "true";
	document.getElementById("fzncye16").className = "read";
	document.getElementById("fzqmye24").readOnly = "true";
	document.getElementById("fzqmye24").className = "read";
	document.getElementById("fzncye24").readOnly = "true";
	document.getElementById("fzncye24").className = "read";
	document.getElementById("fzqmye25").readOnly = "true";
	document.getElementById("fzqmye25").className = "read";
	document.getElementById("fzncye25").readOnly = "true";
	document.getElementById("fzncye25").className = "read";
}

function setlrbclass() {
	document.getElementById("lrbqje1").readOnly = "true";
	document.getElementById("lrbqje2").readOnly = "true";
	document.getElementById("lrbqje5").readOnly = "true";
	document.getElementById("lrbqje13").readOnly = "true";
	document.getElementById("lrbqje18").readOnly = "true";
	document.getElementById("lrbqje21").readOnly = "true";
	document.getElementById("lrbqje23").readOnly = "true";
	document.getElementById("lrsqje1").readOnly = "true";
	document.getElementById("lrsqje2").readOnly = "true";
	document.getElementById("lrsqje5").readOnly = "true";
	document.getElementById("lrsqje13").readOnly = "true";
	document.getElementById("lrsqje18").readOnly = "true";
	document.getElementById("lrsqje21").readOnly = "true";
	document.getElementById("lrsqje23").readOnly = "true";
	document.getElementById("lrbqje1").className = "read";
	document.getElementById("lrbqje2").className = "read";
	document.getElementById("lrbqje5").className = "read";
	document.getElementById("lrbqje13").className = "read";
	document.getElementById("lrbqje18").className = "read";
	document.getElementById("lrbqje21").className = "read";
	document.getElementById("lrbqje23").className = "read";
	document.getElementById("lrsqje1").className = "read";
	document.getElementById("lrsqje2").className = "read";
	document.getElementById("lrsqje5").className = "read";
	document.getElementById("lrsqje13").className = "read";
	document.getElementById("lrsqje18").className = "read";
	document.getElementById("lrsqje21").className = "read";
	document.getElementById("lrsqje23").className = "read";
}

function setxjllbclass() {
	document.getElementById("xjbqje1").readOnly = "true";
	document.getElementById("xjbqje7").readOnly = "true";
	document.getElementById("xjbqje14").readOnly = "true";
	document.getElementById("xjbqje15").readOnly = "true";
	document.getElementById("xjbqje16").readOnly = "true";
	document.getElementById("xjbqje20").readOnly = "true";
	document.getElementById("xjbqje24").readOnly = "true";
	document.getElementById("xjbqje25").readOnly = "true";
	document.getElementById("xjbqje26").readOnly = "true";
	document.getElementById("xjbqje30").readOnly = "true";
	document.getElementById("xjbqje34").readOnly = "true";
	document.getElementById("xjbqje35").readOnly = "true";
	document.getElementById("xjbqje37").readOnly = "true";
	document.getElementById("xjbqje39").readOnly = "true";

	document.getElementById("xjsqje1").readOnly = "true";
	document.getElementById("xjsqje7").readOnly = "true";
	document.getElementById("xjsqje14").readOnly = "true";
	document.getElementById("xjsqje15").readOnly = "true";
	document.getElementById("xjsqje16").readOnly = "true";
	document.getElementById("xjsqje20").readOnly = "true";
	document.getElementById("xjsqje24").readOnly = "true";
	document.getElementById("xjsqje25").readOnly = "true";
	document.getElementById("xjsqje26").readOnly = "true";
	document.getElementById("xjsqje30").readOnly = "true";
	document.getElementById("xjsqje34").readOnly = "true";
	document.getElementById("xjsqje35").readOnly = "true";
	document.getElementById("xjsqje37").readOnly = "true";
	document.getElementById("xjsqje39").readOnly = "true";

	document.getElementById("xjbqje1").className = "read";
	document.getElementById("xjbqje7").className = "read";
	document.getElementById("xjbqje14").className = "read";
	document.getElementById("xjbqje15").className = "read";
	document.getElementById("xjbqje16").className = "read";
	document.getElementById("xjbqje20").className = "read";
	document.getElementById("xjbqje24").className = "read";
	document.getElementById("xjbqje25").className = "read";
	document.getElementById("xjbqje26").className = "read";
	document.getElementById("xjbqje30").className = "read";
	document.getElementById("xjbqje34").className = "read";
	document.getElementById("xjbqje35").className = "read";
	document.getElementById("xjbqje37").className = "read";
	document.getElementById("xjbqje39").className = "read";

	document.getElementById("xjsqje1").className = "read";
	document.getElementById("xjsqje7").className = "read";
	document.getElementById("xjsqje14").className = "read";
	document.getElementById("xjsqje15").className = "read";
	document.getElementById("xjsqje16").className = "read";
	document.getElementById("xjsqje20").className = "read";
	document.getElementById("xjsqje24").className = "read";
	document.getElementById("xjsqje25").className = "read";
	document.getElementById("xjsqje26").className = "read";
	document.getElementById("xjsqje30").className = "read";
	document.getElementById("xjsqje34").className = "read";
	document.getElementById("xjsqje35").className = "read";
	document.getElementById("xjsqje37").className = "read";
	document.getElementById("xjsqje39").className = "read";
}

/**
 * 确认提交
 */
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

	if (parseFloat(emptyToZ($F("zcqmye18"))) < 0) {
		tsxx += "【资产负债表-其他资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcncye18"))) < 0) {
		tsxx += "【资产负债表-其他资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye9"))) < 0) {
		tsxx += "【资产负债表-应付职工薪酬】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye9"))) < 0) {
		tsxx += "【资产负债表-应付职工薪酬】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye10"))) < 0) {
		tsxx += "【资产负债表-应交税费】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye10"))) < 0) {
		tsxx += "【资产负债表-应交税费】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye15"))) < 0) {
		tsxx += "【资产负债表-其他负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye15"))) < 0) {
		tsxx += "【资产负债表-其他负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye15"))) < 0) {
		tsxx += "【资产负债表-其他负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye15"))) < 0) {
		tsxx += "【资产负债表-其他负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye19"))) < 0) {
		tsxx += "【资产负债表-资本公积】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye19"))) < 0) {
		tsxx += "【资产负债表-资本公积】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye20"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye20"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye23"))) < 0) {
		tsxx += "【资产负债表-未分配利润】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye23"))) < 0) {
		tsxx += "【资产负债表-未分配利润】-年初余额小于0<br/>";
	}

	// if (parseFloat(emptyToZ($("zcqmye25").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产合计】-期末余额小于等于0<br/>";
	// }
	//
	// if (parseFloat(emptyToZ($("zcncye25").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产合计】-年初余额小于等于0<br/>";
	// }
	if ((parseFloat(emptyToZ($F("zcqmye2"))) > 0
			|| parseFloat(emptyToZ($F("zcqmye10"))) > 0
			|| parseFloat(emptyToZ($F("fzqmye8"))) > 0
			|| parseFloat(emptyToZ($F("fzqmye2"))) > 0
			|| parseFloat(emptyToZ($F("fzqmye3"))) > 0 || parseFloat(emptyToZ($F("fzqmye4"))) > 0)
			&& parseFloat(emptyToZ($F("zcqmye9"))) <= 0
			&& parseFloat(emptyToZ($F("lrbqje3"))) <= 0) {
		tsxx += "【资产负债表】有存放同业款项或拆出资金或发放贷款和垫款或吸收存款或拆入资金或同业及其他金融机构存放款项或向中央银行借款应有应收利息或利息收入（利润表）!<br/>";
	}
	if ((parseFloat(emptyToZ($F("zcncye2"))) > 0
			|| parseFloat(emptyToZ($F("zcncye10"))) > 0
			|| parseFloat(emptyToZ($F("zcncye8"))) > 0
			|| parseFloat(emptyToZ($F("zcncye2"))) > 0
			|| parseFloat(emptyToZ($F("zcncye3"))) > 0 || parseFloat(emptyToZ($F("zcncye4"))) > 0)
			&& parseFloat(emptyToZ($F("zcncye9"))) <= 0) {
		tsxx += "【资产负债表】有存放同业款项或拆出资金或发放贷款和垫款或吸收存款或拆入资金或同业及其他金融机构存放款项或向中央银行借款应有应收利息!<br/>";
	}
	if ((parseFloat(emptyToZ($F("zcqmye2"))) <= 0
			&& parseFloat(emptyToZ($F("zcqmye10"))) <= 0
			&& parseFloat(emptyToZ($F("fzqmye8"))) <= 0
			&& parseFloat(emptyToZ($F("fzqmye2"))) <= 0
			&& parseFloat(emptyToZ($F("fzqmye3"))) <= 0 && parseFloat(emptyToZ($F("fzqmye4"))) <= 0)
			&& (parseFloat(emptyToZ($F("zcqmye9"))) > 0 || parseFloat(emptyToZ($F("lrbqje3"))) > 0)) {
		tsxx += "【资产负债表】有应收利息或利息收入（利润表）应有存放同业款项或拆出资金或发放贷款和垫款或吸收存款或拆入资金或同业及其他金融机构存放款项或向中央银行借款!<br/>";
	}
	if ((parseFloat(emptyToZ($F("zcncye2"))) <= 0
			&& parseFloat(emptyToZ($F("zcncye10"))) <= 0
			&& parseFloat(emptyToZ($F("zcncye8"))) <= 0
			&& parseFloat(emptyToZ($F("zcncye2"))) <= 0
			&& parseFloat(emptyToZ($F("zcncye3"))) <= 0 && parseFloat(emptyToZ($F("zcncye4"))) <= 0)
			&& parseFloat(emptyToZ($F("zcncye9"))) > 0) {
		tsxx += "【资产负债表】有应收利息应有存放同业款项或拆出资金或发放贷款和垫款或吸收存款或拆入资金或同业及其他金融机构存放款项或向中央银行借款!<br/>";
	}
	if (parseFloat(emptyToZ($F("lrbqje16"))) < 0) {
		tsxx += "【利润表-资产减值损失】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje16"))) < 0) {
		tsxx += "【利润表-资产减值损失】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje22"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje22"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-上期金额小于0<br/>";
	}
	// if ($('nsrztDm').value == 25) {
	// var flag = "false"
	// for (var i = 0; i < $ES('lrxmdm').length; i++) {
	// if (parseFloat(emptyToZ($ES('lrbqje')[i].value)) != 0
	// || parseFloat(emptyToZ($ES('lrsqje')[i].value)) != 0) {
	// flag = "true"
	// break;
	// }
	// }
	// if (flag == "false") {
	// tsxx += "【利润表】数据项全部为零<br/>";
	// }
	// }

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
//						new Ajax.Request('/WB395ckfAction.do', {
//									method : 'post',
//									parameters : $('WB395ckfForm').serialize(),
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
							url : "/WB395ckfAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395ckfForm').serialize(),
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

/**
 * 基本校验
 */
function bascicCheck() {
	var flag = true;
	for(var i=0;i<$ES("zcqmye").length;i++){
		if($ES("zcqmye")[i].value==""){
			flag = false;
			return flag;
		}
	}
	return flag;
}

function getCaData() {
	var data = "";
	for (var i = 0; i < $ES('zcxmdm').length; i++) {
		if ($ES('zcqmye')[i].value.empty() && $ES('zcncye')[i].value.empty()
				&& $ES('fzqmye')[i].value.empty()
				&& $ES('fzncye')[i].value.empty()) {
			continue;
		}
		// 资产项目代码
		data = data + $ES('zcxmdm')[i].value + "=";
		// 资产行次
		data = data + $ES('zchc')[i].value + "=";
		// 资产期末余额
		data = data + $ES('zcqmye')[i].value + "=";
		// 资产年初余额
		data = data + $ES('zcncye')[i].value + "=";
		// 负债项目代码
		data = data + $ES('fzxmdm')[i].value + "=";
		// 负债航次
		data = data + $ES('fzhc')[i].value + "=";
		// 负债期末余额
		data = data + $ES('fzqmye')[i].value + "=";
		// 负债年初余额
		data = data + $ES('fzncye')[i].value + "=";
	}

	for (var i = 0; i < $ES('lrxmdm').length; i++) {
		if ($ES('lrbqje')[i].value.empty() && $ES('lrsqje')[i].value.empty()) {
			continue;
		}
		// 利润项目代码
		data = data + $ES('lrxmdm')[i].value + "=";
		// 利润行次
		data = data + $ES('lrhc')[i].value + "=";
		// 利润本期金额
		data = data + $ES('lrbqje')[i].value + "=";
		// 利润上期金额
		data = data + $ES('lrsqje')[i].value + "=";
	}

	for (var i = 0; i < $ES('xjxmdm').length; i++) {
		if ($ES('xjbqje')[i].value.empty() && $ES('xjsqje')[i].value.empty()) {
			continue;
		}
		// 现金项目代码
		data = data + $ES('xjxmdm')[i].value + "=";
		// 现金行次
		data = data + $ES('xjhc')[i].value + "=";
		// 本期金额
		data = data + $ES('xjbqje')[i].value + "=";
		// 上期金额
		data = data + $ES('xjsqje')[i].value + "=";
	}
	return data;
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
	if (parseFloat(emptyToZ($F("zcqmye25"))) != parseFloat(emptyToZ($F("fzqmye25")))) {
		iconDialog('【资产负债表】资产合计不等于负债及所有者权益总计,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcncye25"))) != parseFloat(emptyToZ($F("fzncye25")))) {
		iconDialog('【资产负债表】资产合计不等于负债及所有者权益总计,请核实!', 'WARNING');
		return false;
	}
	return true;
}