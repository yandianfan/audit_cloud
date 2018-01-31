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
							openMaxWindow("/WB395ckeAction.do?handleCode=printPage&pzXh="
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

	d = new caltb('ybqysyzcfzb', true);
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	rulesID = new Array();

	rulesID[0] = "zcqmye13 = zcqmye2 + zcqmye3 + zcqmye4 + zcqmye5 + zcqmye6 + zcqmye7 + zcqmye8 + zcqmye9 + zcqmye10 + zcqmye11 + zcqmye12"
	rulesID[1] = "zcqmye32 = zcqmye15 + zcqmye16 + zcqmye17 + zcqmye18 + zcqmye19 + zcqmye20 + zcqmye21 + zcqmye22 + zcqmye23 + zcqmye24 + zcqmye25 + zcqmye26 + zcqmye27 + zcqmye28 + zcqmye29 + zcqmye30 + zcqmye31"
	rulesID[2] = "zcqmye33 = zcqmye13 + zcqmye32"
	rulesID[3] = "zcncye13 = zcncye2 + zcncye3 + zcncye4 + zcncye5 + zcncye6 + zcncye7 + zcncye8 + zcncye9 + zcncye10 + zcncye11 + zcncye12"
	rulesID[4] = "zcncye32 = zcncye15 + zcncye16 + zcncye17 + zcncye18 + zcncye19 + zcncye20 + zcncye21 + zcncye22 + zcncye23 + zcncye24 + zcncye25 + zcncye26 + zcncye27 + zcncye28 + zcncye29 + zcncye30 + zcncye31"
	rulesID[5] = "zcncye33 = zcncye13 + zcncye32"

	rulesID[6] = "fzqmye14 = fzqmye2 + fzqmye3 + fzqmye4 + fzqmye5 + fzqmye6 + fzqmye7 + fzqmye8 + fzqmye9 + fzqmye10 + fzqmye11 + fzqmye12 + fzqmye13"
	rulesID[7] = "fzqmye23 = fzqmye16 + fzqmye17 + fzqmye18 + fzqmye19 + fzqmye20 + fzqmye21 + fzqmye22"
	rulesID[8] = "fzqmye24 = fzqmye14 + fzqmye23"
	rulesID[9] = "fzqmye31 = fzqmye26 + fzqmye27 - fzqmye28 + fzqmye29 + fzqmye30"
	rulesID[10] = "fzncye14 = fzncye2 + fzncye3 + fzncye4 + fzncye5 + fzncye6 + fzncye7 + fzncye8 + fzncye9 + fzncye10 + fzncye11 + fzncye12 + fzncye13"
	rulesID[11] = "fzncye23 = fzncye16 + fzncye17 + fzncye18 + fzncye19 + fzncye20 + fzncye21 + fzncye22"
	rulesID[12] = "fzncye24 = fzncye14 + fzncye23"
	rulesID[13] = "fzncye31 = fzncye26 + fzncye27 - fzncye28 + fzncye29 + fzncye30"
	rulesID[14] = "fzncye33 = fzncye31 + fzncye24"
	rulesID[15] = "fzqmye33 = fzqmye31 + fzqmye24"

	d.setRulesID(rulesID);
	initCalTable(d, true);
	runRulesForID(d);

	a = new caltb('ybqysylrb', true);
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";
	rulesID = new Array();

	rulesID[0] = "lrbqje11 = lrbqje1 - lrbqje2 - lrbqje3 - lrbqje4 - lrbqje5 - lrbqje6 - lrbqje7 + lrbqje8 + lrbqje9"
	rulesID[1] = "lrbqje15 = lrbqje11 + lrbqje12 - lrbqje13"
	rulesID[2] = "lrbqje17 = lrbqje15 - lrbqje16"
	rulesID[3] = "lrsqje11 = lrsqje1 - lrsqje2 - lrsqje3 - lrsqje4 - lrsqje5 - lrsqje6 - lrsqje7 + lrsqje8 + lrsqje9"
	rulesID[4] = "lrsqje15 = lrsqje11 + lrsqje12 - lrsqje13"
	rulesID[5] = "lrsqje17 = lrsqje15 - lrsqje16"

	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	e = new caltb('ybqysyxjllb');
	e.type = "1";
	e.negative = true;
	e.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "xjbqje5 = xjbqje2 + xjbqje3 + xjbqje4"
	rulesID[1] = "xjbqje10 = xjbqje6 + xjbqje7 + xjbqje8 + xjbqje9"
	rulesID[2] = "xjbqje11 = xjbqje5 - xjbqje10"
	rulesID[3] = "xjbqje18 = xjbqje13 + xjbqje14 + xjbqje15 + xjbqje16 + xjbqje17"
	rulesID[4] = "xjbqje23 = xjbqje19 + xjbqje20 + xjbqje21 + xjbqje22"
	rulesID[5] = "xjbqje24 = xjbqje18 - xjbqje23"
	rulesID[6] = "xjbqje29 = xjbqje26 + xjbqje27 + xjbqje28"
	rulesID[7] = "xjbqje33 = xjbqje30 + xjbqje31 + xjbqje32"
	rulesID[8] = "xjbqje34 = xjbqje29 - xjbqje33"
	rulesID[9] = "xjbqje36 = xjbqje11 + xjbqje24 + xjbqje34 + xjbqje35"
	rulesID[10] = "xjbqje38 = xjbqje36 + xjbqje37"
	rulesID[11] = "xjsqje5 = xjsqje2 + xjsqje3 + xjsqje4"
	rulesID[12] = "xjsqje10 = xjsqje6 + xjsqje7 + xjsqje8 + xjsqje9"
	rulesID[13] = "xjsqje11 = xjsqje5 - xjsqje10"
	rulesID[14] = "xjsqje18 = xjsqje13 + xjsqje14 + xjsqje15 + xjsqje16 + xjsqje17"
	rulesID[15] = "xjsqje23 = xjsqje19 + xjsqje20 + xjsqje21 + xjsqje22"
	rulesID[16] = "xjsqje24 = xjsqje18 - xjsqje23"
	rulesID[17] = "xjsqje29 = xjsqje26 + xjsqje27 + xjsqje28"
	rulesID[18] = "xjsqje33 = xjsqje30 + xjsqje31 + xjsqje32"
	rulesID[19] = "xjsqje34 = xjsqje29 - xjsqje33"
	rulesID[20] = "xjsqje36 = xjsqje11 + xjsqje24 + xjsqje34 + xjsqje35"
	rulesID[21] = "xjsqje38 = xjsqje36 + xjsqje37"
	e.setRulesID(rulesID);
	initCalTable(e, true);
	runRulesForID(e);
}

function setzcfzbclass() {
	document.getElementById("zcqmye1").readOnly = "true";
	document.getElementById("zcqmye1").className = "read";
	document.getElementById("zcqmye13").readOnly = "true";
	document.getElementById("zcqmye13").className = "read";
	document.getElementById("zcqmye14").readOnly = "true";
	document.getElementById("zcqmye14").className = "read";
	document.getElementById("zcqmye32").readOnly = "true";
	document.getElementById("zcqmye32").className = "read";
	document.getElementById("zcqmye33").readOnly = "true";
	document.getElementById("zcqmye33").className = "read";

	document.getElementById("zcncye1").readOnly = "true";
	document.getElementById("zcncye1").className = "read";
	document.getElementById("zcncye13").readOnly = "true";
	document.getElementById("zcncye13").className = "read";
	document.getElementById("zcncye14").readOnly = "true";
	document.getElementById("zcncye14").className = "read";
	document.getElementById("zcncye32").readOnly = "true";
	document.getElementById("zcncye32").className = "read";
	document.getElementById("zcncye33").readOnly = "true";
	document.getElementById("zcncye33").className = "read";

	document.getElementById("fzqmye1").readOnly = "true";
	document.getElementById("fzqmye1").className = "read";
	document.getElementById("fzqmye14").readOnly = "true";
	document.getElementById("fzqmye14").className = "read";
	document.getElementById("fzqmye15").readOnly = "true";
	document.getElementById("fzqmye15").className = "read";
	document.getElementById("fzqmye23").readOnly = "true";
	document.getElementById("fzqmye23").className = "read";
	document.getElementById("fzqmye24").readOnly = "true";
	document.getElementById("fzqmye24").className = "read";
	document.getElementById("fzqmye25").readOnly = "true";
	document.getElementById("fzqmye25").className = "read";
	document.getElementById("fzqmye31").readOnly = "true";
	document.getElementById("fzqmye31").className = "read";
	document.getElementById("fzqmye32").readOnly = "true";
	document.getElementById("fzqmye32").className = "read";
	document.getElementById("fzqmye33").readOnly = "true";
	document.getElementById("fzqmye33").className = "read";

	document.getElementById("fzncye1").readOnly = "true";
	document.getElementById("fzncye1").className = "read";
	document.getElementById("fzncye14").readOnly = "true";
	document.getElementById("fzncye14").className = "read";
	document.getElementById("fzncye15").readOnly = "true";
	document.getElementById("fzncye15").className = "read";
	document.getElementById("fzncye23").readOnly = "true";
	document.getElementById("fzncye23").className = "read";
	document.getElementById("fzncye24").readOnly = "true";
	document.getElementById("fzncye24").className = "read";
	document.getElementById("fzncye25").readOnly = "true";
	document.getElementById("fzncye25").className = "read";
	document.getElementById("fzncye31").readOnly = "true";
	document.getElementById("fzncye31").className = "read";
	document.getElementById("fzncye32").readOnly = "true";
	document.getElementById("fzncye32").className = "read";
	document.getElementById("fzncye33").readOnly = "true";
	document.getElementById("fzncye33").className = "read";
}

function setlrbclass() {
	document.getElementById("lrbqje11").readOnly = "true";
	document.getElementById("lrbqje11").className = "read";
	document.getElementById("lrbqje15").readOnly = "true";
	document.getElementById("lrbqje15").className = "read";
	document.getElementById("lrbqje17").readOnly = "true";
	document.getElementById("lrbqje17").className = "read";
	document.getElementById("lrsqje11").readOnly = "true";
	document.getElementById("lrsqje11").className = "read";
	document.getElementById("lrsqje15").readOnly = "true";
	document.getElementById("lrsqje15").className = "read";
	document.getElementById("lrsqje17").readOnly = "true";
	document.getElementById("lrsqje17").className = "read";

}

function setxjllbclass() {

	document.getElementById("xjbqje1").readOnly = "true";
	document.getElementById("xjbqje5").readOnly = "true";
	document.getElementById("xjbqje10").readOnly = "true";
	document.getElementById("xjbqje11").readOnly = "true";
	document.getElementById("xjbqje12").readOnly = "true";
	document.getElementById("xjbqje18").readOnly = "true";
	document.getElementById("xjbqje23").readOnly = "true";
	document.getElementById("xjbqje24").readOnly = "true";
	document.getElementById("xjbqje25").readOnly = "true";
	document.getElementById("xjbqje29").readOnly = "true";
	document.getElementById("xjbqje33").readOnly = "true";
	document.getElementById("xjbqje34").readOnly = "true";
	document.getElementById("xjbqje36").readOnly = "true";
	document.getElementById("xjbqje38").readOnly = "true";

	document.getElementById("xjsqje1").readOnly = "true";
	document.getElementById("xjsqje5").readOnly = "true";
	document.getElementById("xjsqje10").readOnly = "true";
	document.getElementById("xjsqje11").readOnly = "true";
	document.getElementById("xjsqje12").readOnly = "true";
	document.getElementById("xjsqje18").readOnly = "true";
	document.getElementById("xjsqje23").readOnly = "true";
	document.getElementById("xjsqje24").readOnly = "true";
	document.getElementById("xjsqje25").readOnly = "true";
	document.getElementById("xjsqje29").readOnly = "true";
	document.getElementById("xjsqje33").readOnly = "true";
	document.getElementById("xjsqje34").readOnly = "true";
	document.getElementById("xjsqje36").readOnly = "true";
	document.getElementById("xjsqje38").readOnly = "true";

	document.getElementById("xjbqje1").className = "read";
	document.getElementById("xjbqje5").className = "read";
	document.getElementById("xjbqje10").className = "read";
	document.getElementById("xjbqje11").className = "read";
	document.getElementById("xjbqje12").className = "read";
	document.getElementById("xjbqje18").className = "read";
	document.getElementById("xjbqje23").className = "read";
	document.getElementById("xjbqje24").className = "read";
	document.getElementById("xjbqje25").className = "read";
	document.getElementById("xjbqje29").className = "read";
	document.getElementById("xjbqje33").className = "read";
	document.getElementById("xjbqje34").className = "read";
	document.getElementById("xjbqje36").className = "read";
	document.getElementById("xjbqje38").className = "read";

	document.getElementById("xjsqje1").className = "read";
	document.getElementById("xjsqje5").className = "read";
	document.getElementById("xjsqje10").className = "read";
	document.getElementById("xjsqje11").className = "read";
	document.getElementById("xjsqje12").className = "read";
	document.getElementById("xjsqje18").className = "read";
	document.getElementById("xjsqje23").className = "read";
	document.getElementById("xjsqje24").className = "read";
	document.getElementById("xjsqje25").className = "read";
	document.getElementById("xjsqje29").className = "read";
	document.getElementById("xjsqje33").className = "read";
	document.getElementById("xjsqje34").className = "read";
	document.getElementById("xjsqje36").className = "read";
	document.getElementById("xjsqje38").className = "read";
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

	if (parseFloat(emptyToZ($F("zcqmye12"))) < 0) {
		tsxx += "【资产负债表-其他流动资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcncye12"))) < 0) {
		tsxx += "【资产负债表-其他流动资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("zcqmye31"))) < 0) {
		tsxx += "【资产负债表-其他非流动资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcncye31"))) < 0) {
		tsxx += "【资产负债表-其他非流动资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye5"))) < 0) {
		tsxx += "【资产负债表-应付账款】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye5"))) < 0) {
		tsxx += "【资产负债表-应付账款】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye7"))) < 0) {
		tsxx += "【资产负债表-应付职工薪酬】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye7"))) < 0) {
		tsxx += "【资产负债表-应付职工薪酬】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye13"))) < 0) {
		tsxx += "【资产负债表-其他流动负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye13"))) < 0) {
		tsxx += "【资产负债表-其他流动负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye22"))) < 0) {
		tsxx += "【资产负债表-其他非流动负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye22"))) < 0) {
		tsxx += "【资产负债表-其他非流动负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye27"))) < 0) {
		tsxx += "【资产负债表-资本公积】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye27"))) < 0) {
		tsxx += "【资产负债表-资本公积】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye28"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-期末余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzncye28"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-年初余额小于0<br/>";
	}

	// if (parseFloat(emptyToZ($("zcqmye33").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产总计】-期末余额小于等于0<br/>";
	// }
	//
	// if (parseFloat(emptyToZ($("zcncye33").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产总计】-年初余额小于等于0<br/>";
	// }

	if (parseFloat(emptyToZ($F("lrbqje1"))) < 0) {
		tsxx += "【利润表-一、营业收入】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje1"))) < 0) {
		tsxx += "【利润表-一、营业收入】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje2"))) < 0) {
		tsxx += "【利润表-减：营业成本】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje2"))) < 0) {
		tsxx += "【利润表-减：营业成本】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje4"))) < 0) {
		tsxx += "【利润表-销售费用】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje4"))) < 0) {
		tsxx += "【利润表-销售费用】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje5"))) < 0) {
		tsxx += "【利润表-管理费用】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje5"))) < 0) {
		tsxx += "【利润表-管理费用】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje16"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje16"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-上期金额小于0<br/>";
	}

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
//						new Ajax.Request('/WB395ckeAction.do', {
//									method : 'post',
//									parameters : $('WB395ckeForm').serialize(),
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
							url : "/WB395ckeAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395ckeForm').serialize(),
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
	if (parseFloat(emptyToZ($F("zcqmye33"))) != parseFloat(emptyToZ($F("fzqmye33")))) {
		iconDialog('【资产负债表】资产合计不等于负债及所有者权益总计,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcncye33"))) != parseFloat(emptyToZ($F("fzncye33")))) {
		iconDialog('【资产负债表】资产合计不等于负债及所有者权益总计,请核实!', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("lrbqje13"))) < parseFloat(emptyToZ($F("lrbqje14")))) {
		iconDialog('【利润表】非流动资产处置损失不能大于营业外支出!', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("lrsqje13"))) < parseFloat(emptyToZ($F("lrsqje14")))) {
		iconDialog('【利润表】非流动资产处置损失不能大于营业外支出!', 'WARNING');
		return false;
	}
	return true;
}