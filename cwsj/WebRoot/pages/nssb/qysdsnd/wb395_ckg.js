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
							$("#handleCode").val("printPage") ;
							openMaxWindow("/WB395ckgAction.do?handleCode=printPage&pzXh="
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

	d = new caltb('bxgssyzcfzb', true);
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "zcqmye33 = zcqmye2 + zcqmye3 + zcqmye4 + zcqmye5 + zcqmye6 + zcqmye7 + zcqmye8 + zcqmye9 + zcqmye10 + zcqmye11 + zcqmye12 + zcqmye13 + zcqmye14 + zcqmye15 + zcqmye16 + zcqmye17 + zcqmye18 + zcqmye19 + zcqmye20 + zcqmye21 + zcqmye22 + zcqmye23 + zcqmye24 + zcqmye25 + zcqmye26 + zcqmye27 + zcqmye28 + zcqmye29 + zcqmye30 + zcqmye31 + zcqmye32"
	rulesID[1] = "zcncye33 = zcncye2 + zcncye3 + zcncye4 + zcncye5 + zcncye6 + zcncye7 + zcncye8 + zcncye9 + zcncye10 + zcncye11 + zcncye12 + zcncye13 + zcncye14 + zcncye15 + zcncye16 + zcncye17 + zcncye18 + zcncye19 + zcncye20 + zcncye21 + zcncye22 + zcncye23 + zcncye24 + zcncye25 + zcncye26 + zcncye27 + zcncye28 + zcncye29 + zcncye30 + zcncye31 + zcncye32"
	rulesID[2] = "fzqmye24 = fzqmye2 + fzqmye3 + fzqmye4 + fzqmye5 + fzqmye6 + fzqmye7 + fzqmye8 + fzqmye9 + fzqmye10 + fzqmye11 + fzqmye12 + fzqmye13 + fzqmye14 + fzqmye15 + fzqmye16 + fzqmye17 + fzqmye18 + fzqmye19 + fzqmye20 + fzqmye21 + fzqmye22 + fzqmye23"
	rulesID[3] = "fzqmye32 = fzqmye26 + fzqmye27 - fzqmye28 + fzqmye29 + fzqmye30 + fzqmye31"
	rulesID[4] = "fzqmye33 = fzqmye24 + fzqmye32"
	rulesID[5] = "fzncye24 = fzncye2 + fzncye3 + fzncye4 + fzncye5 + fzncye6 + fzncye7 + fzncye8 + fzncye9 + fzncye10 + fzncye11 + fzncye12 + fzncye13 + fzncye14 + fzncye15 + fzncye16 + fzncye17 + fzncye18 + fzncye19 + fzncye20 + fzncye21 + fzncye22 + fzncye23"
	rulesID[6] = "fzncye32 = fzncye26 + fzncye27 - fzncye28 + fzncye29 + fzncye30 + fzncye31"
	rulesID[7] = "fzncye33 = fzncye24 + fzncye32"
	d.setRulesID(rulesID);
	initCalTable(d, true);
	runRulesForID(d);

	a = new caltb('bxgssylrb', true);
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";

	rulesID = new Array();
	rulesID[0] = "lrbqje2 = lrbqje3 - lrbqje5 - lrbqje6"
	rulesID[1] = "lrbqje1 = lrbqje2 + lrbqje7 + lrbqje9 + lrbqje10 + lrbqje11"
	rulesID[2] = "lrbqje12 = lrbqje13 + lrbqje14 - lrbqje15 + lrbqje16 - lrbqje17 + lrbqje18 + lrbqje19 + lrbqje20 + lrbqje21 + lrbqje22 - lrbqje23 + lrbqje24 + lrbqje25"
	rulesID[3] = "lrbqje26 = lrbqje1 - lrbqje12"
	rulesID[4] = "lrbqje29 = lrbqje26 + lrbqje27 - lrbqje28"
	rulesID[5] = "lrbqje31 = lrbqje29 - lrbqje30"
	rulesID[6] = "lrsqje2 = lrsqje3 - lrsqje5 - lrsqje6"
	rulesID[7] = "lrsqje1 = lrsqje2 + lrsqje7 + lrsqje9 + lrsqje10 + lrsqje11"
	rulesID[8] = "lrsqje12 = lrsqje13 + lrsqje14 - lrsqje15 + lrsqje16 - lrsqje17 + lrsqje18 + lrsqje19 + lrsqje20 + lrsqje21 + lrsqje22 - lrsqje23 + lrsqje24 + lrsqje25"
	rulesID[9] = "lrsqje26 = lrsqje1 - lrsqje12"
	rulesID[10] = "lrsqje29 = lrsqje26 + lrsqje27 - lrsqje28"
	rulesID[11] = "lrsqje31 = lrsqje29 - lrsqje30"
	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	e = new caltb('bxgssyxjllb');
	e.type = "1";
	e.negative = true;
	e.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "xjbqje6 = xjbqje2 + xjbqje3 + xjbqje4 + xjbqje5"
	rulesID[1] = "xjbqje13 = xjbqje7 + xjbqje8 + xjbqje9 + xjbqje10 + xjbqje11 + xjbqje12"
	rulesID[2] = "xjbqje14 = xjbqje6 - xjbqje13"
	rulesID[3] = "xjbqje19 = xjbqje16 + xjbqje17 + xjbqje18"
	rulesID[4] = "xjbqje24 = xjbqje20 + xjbqje21 + xjbqje22 + xjbqje23"
	rulesID[5] = "xjbqje25 = xjbqje19 - xjbqje24"
	rulesID[6] = "xjbqje30 = xjbqje27 + xjbqje28 + xjbqje29"
	rulesID[7] = "xjbqje34 = xjbqje31 + xjbqje32 + xjbqje33"
	rulesID[8] = "xjbqje35 = xjbqje30 - xjbqje34"
	rulesID[9] = "xjbqje37 = xjbqje14 + xjbqje25 + xjbqje35 + xjbqje36"
	rulesID[10] = "xjbqje39 = xjbqje37 + xjbqje38"
	rulesID[11] = "xjsqje6 = xjsqje2 + xjsqje3 + xjsqje4 + xjsqje5"
	rulesID[12] = "xjsqje13 = xjsqje7 + xjsqje8 + xjsqje9 + xjsqje10 + xjsqje11 + xjsqje12"
	rulesID[13] = "xjsqje14 = xjsqje6 - xjsqje13"
	rulesID[14] = "xjsqje19 = xjsqje16 + xjsqje17 + xjsqje18"
	rulesID[15] = "xjsqje24 = xjsqje20 + xjsqje21 + xjsqje22 + xjsqje23"
	rulesID[16] = "xjsqje25 = xjsqje19 - xjsqje24"
	rulesID[17] = "xjsqje30 = xjsqje27 + xjsqje28 + xjsqje29"
	rulesID[18] = "xjsqje34 = xjsqje31 + xjsqje32 + xjsqje33"
	rulesID[19] = "xjsqje35 = xjsqje30 - xjsqje34"
	rulesID[20] = "xjsqje37 = xjsqje14 + xjsqje25 + xjsqje35 + xjsqje36"
	rulesID[21] = "xjsqje39 = xjsqje37 + xjsqje38"
	e.setRulesID(rulesID);
	initCalTable(e, true);
	runRulesForID(e);
}

function setzcfzbclass() {
	document.getElementById("zcqmye1").readOnly = "true";
	document.getElementById("zcqmye1").className = "read";
	document.getElementById("zcncye1").readOnly = "true";
	document.getElementById("zcncye1").className = "read";
	document.getElementById("zcqmye27").readOnly = "true";
	document.getElementById("zcqmye27").className = "read";
	document.getElementById("zcncye27").readOnly = "true";
	document.getElementById("zcncye27").className = "read";
	document.getElementById("zcqmye28").readOnly = "true";
	document.getElementById("zcqmye28").className = "read";
	document.getElementById("zcncye28").readOnly = "true";
	document.getElementById("zcncye28").className = "read";
	document.getElementById("zcqmye29").readOnly = "true";
	document.getElementById("zcqmye29").className = "read";
	document.getElementById("zcncye29").readOnly = "true";
	document.getElementById("zcncye29").className = "read";
	document.getElementById("zcqmye30").readOnly = "true";
	document.getElementById("zcqmye30").className = "read";
	document.getElementById("zcncye30").readOnly = "true";
	document.getElementById("zcncye30").className = "read";
	document.getElementById("zcqmye31").readOnly = "true";
	document.getElementById("zcqmye31").className = "read";
	document.getElementById("zcncye31").readOnly = "true";
	document.getElementById("zcncye31").className = "read";
	document.getElementById("zcqmye32").readOnly = "true";
	document.getElementById("zcqmye32").className = "read";
	document.getElementById("zcncye32").readOnly = "true";
	document.getElementById("zcncye32").className = "read";
	document.getElementById("zcqmye33").readOnly = "true";
	document.getElementById("zcncye33").readOnly = "true";
	document.getElementById("fzqmye1").readOnly = "true";
	document.getElementById("fzncye1").readOnly = "true";
	document.getElementById("fzqmye25").readOnly = "true";
	document.getElementById("fzncye25").readOnly = "true";
	document.getElementById("fzqmye24").readOnly = "true";
	document.getElementById("fzqmye32").readOnly = "true";
	document.getElementById("fzqmye33").readOnly = "true";
	document.getElementById("fzncye24").readOnly = "true";
	document.getElementById("fzncye32").readOnly = "true";
	document.getElementById("fzncye33").readOnly = "true";
	document.getElementById("zcqmye33").className = "read";
	document.getElementById("zcncye33").className = "read";
	document.getElementById("fzqmye1").className = "read";
	document.getElementById("fzncye1").className = "read";
	document.getElementById("fzqmye25").className = "read";
	document.getElementById("fzncye25").className = "read";
	document.getElementById("fzqmye24").className = "read";
	document.getElementById("fzqmye32").className = "read";
	document.getElementById("fzqmye33").className = "read";
	document.getElementById("fzncye24").className = "read";
	document.getElementById("fzncye32").className = "read";
	document.getElementById("fzncye33").className = "read";
}

function setlrbclass() {
	document.getElementById("lrbqje1").readOnly = "true";
	document.getElementById("lrbqje2").readOnly = "true";
	document.getElementById("lrbqje12").readOnly = "true";
	document.getElementById("lrbqje26").readOnly = "true";
	document.getElementById("lrbqje29").readOnly = "true";
	document.getElementById("lrbqje31").readOnly = "true";
	document.getElementById("lrsqje1").readOnly = "true";
	document.getElementById("lrsqje2").readOnly = "true";
	document.getElementById("lrsqje12").readOnly = "true";
	document.getElementById("lrsqje26").readOnly = "true";
	document.getElementById("lrsqje29").readOnly = "true";
	document.getElementById("lrsqje31").readOnly = "true";
	document.getElementById("lrbqje1").className = "read";
	document.getElementById("lrbqje2").className = "read";
	document.getElementById("lrbqje12").className = "read";
	document.getElementById("lrbqje26").className = "read";
	document.getElementById("lrbqje29").className = "read";
	document.getElementById("lrbqje31").className = "read";
	document.getElementById("lrsqje1").className = "read";
	document.getElementById("lrsqje2").className = "read";
	document.getElementById("lrsqje12").className = "read";
	document.getElementById("lrsqje26").className = "read";
	document.getElementById("lrsqje29").className = "read";
	document.getElementById("lrsqje31").className = "read";
}

function setxjllbclass() {
	document.getElementById("xjbqje1").readOnly = "true";
	document.getElementById("xjbqje15").readOnly = "true";
	document.getElementById("xjbqje26").readOnly = "true";
	document.getElementById("xjbqje6").readOnly = "true";
	document.getElementById("xjbqje13").readOnly = "true";
	document.getElementById("xjbqje14").readOnly = "true";
	document.getElementById("xjbqje19").readOnly = "true";
	document.getElementById("xjbqje24").readOnly = "true";
	document.getElementById("xjbqje25").readOnly = "true";
	document.getElementById("xjbqje30").readOnly = "true";
	document.getElementById("xjbqje34").readOnly = "true";
	document.getElementById("xjbqje35").readOnly = "true";
	document.getElementById("xjbqje37").readOnly = "true";
	document.getElementById("xjbqje39").readOnly = "true";

	document.getElementById("xjsqje1").readOnly = "true";
	document.getElementById("xjsqje15").readOnly = "true";
	document.getElementById("xjsqje26").readOnly = "true";
	document.getElementById("xjsqje6").readOnly = "true";
	document.getElementById("xjsqje13").readOnly = "true";
	document.getElementById("xjsqje14").readOnly = "true";
	document.getElementById("xjsqje19").readOnly = "true";
	document.getElementById("xjsqje24").readOnly = "true";
	document.getElementById("xjsqje25").readOnly = "true";
	document.getElementById("xjsqje30").readOnly = "true";
	document.getElementById("xjsqje34").readOnly = "true";
	document.getElementById("xjsqje35").readOnly = "true";
	document.getElementById("xjsqje37").readOnly = "true";
	document.getElementById("xjsqje39").readOnly = "true";

	document.getElementById("xjbqje1").className = "read";
	document.getElementById("xjbqje15").className = "read";
	document.getElementById("xjbqje26").className = "read";
	document.getElementById("xjbqje6").className = "read";
	document.getElementById("xjbqje13").className = "read";
	document.getElementById("xjbqje14").className = "read";
	document.getElementById("xjbqje19").className = "read";
	document.getElementById("xjbqje24").className = "read";
	document.getElementById("xjbqje25").className = "read";
	document.getElementById("xjbqje30").className = "read";
	document.getElementById("xjbqje34").className = "read";
	document.getElementById("xjbqje35").className = "read";
	document.getElementById("xjbqje37").className = "read";
	document.getElementById("xjbqje39").className = "read";

	document.getElementById("xjsqje1").className = "read";
	document.getElementById("xjsqje15").className = "read";
	document.getElementById("xjsqje26").className = "read";
	document.getElementById("xjsqje6").className = "read";
	document.getElementById("xjsqje13").className = "read";
	document.getElementById("xjsqje14").className = "read";
	document.getElementById("xjsqje19").className = "read";
	document.getElementById("xjsqje24").className = "read";
	document.getElementById("xjsqje25").className = "read";
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
	// if (parseFloat(emptyToZ($("zcqmye33").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产合计】-期末余额小于等于0<br/>";
	// }
	// if (parseFloat(emptyToZ($("zcncye33").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产合计】-年初余额小于等于0<br/>";
	// }

	if (parseFloat(emptyToZ($F("zcqmye26"))) < 0) {
		tsxx += "【资产负债表-其他资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcncye26"))) < 0) {
		tsxx += "【资产负债表-其他资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye10"))) < 0) {
		tsxx += "【资产负债表-应付职工薪酬】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye10"))) < 0) {
		tsxx += "【资产负债表-应付职工薪酬】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye11"))) < 0) {
		tsxx += "【资产负债表-应交税费】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye11"))) < 0) {
		tsxx += "【资产负债表-应交税费】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye27"))) < 0) {
		tsxx += "【资产负债表-资本公积】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye27"))) < 0) {
		tsxx += "【资产负债表-资本公积】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye23"))) < 0) {
		tsxx += "【资产负债表-其他负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye23"))) < 0) {
		tsxx += "【资产负债表-其他负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye28"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye28"))) < 0) {
		tsxx += "【资产负债表-减：库存股】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqmye31"))) < 0) {
		tsxx += "【资产负债表-未分配利润】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzncye31"))) < 0) {
		tsxx += "【资产负债表-未分配利润】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje2"))) < 0) {
		tsxx += "【利润表-已赚保费】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje2"))) < 0) {
		tsxx += "【利润表-已赚保费】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje25"))) < 0) {
		tsxx += "【利润表-资产减值损失】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje25"))) < 0) {
		tsxx += "【利润表-资产减值损失】-上期金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("lrbqje30"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-本期金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("lrsqje30"))) < 0) {
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
//						new Ajax.Request('/WB395ckgAction.do', {
//									method : 'post',
//									parameters : $('WB395ckgForm').serialize(),
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
							url : "/WB395ckgAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395ckgForm').serialize(),
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
	if ((parseFloat(emptyToZ($F("zcqmye18"))) > 0 || parseFloat(emptyToZ($F("zcqmye19"))) > 0)
			&& parseFloat(emptyToZ($("lrbqje7"))) <= 0) {
		iconDialog('【利润表】资产负债表中有持有至到期投资或长期股权投资应有投资收益! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqmye4"))) > 0
			&& parseFloat(emptyToZ($F("lrbqje9"))) <= 0) {
		iconDialog('【利润表】资产负债表中有交易性金融资产应有公允价值变动收益! ', 'WARNING');
		return false;
	}
	return true;
}