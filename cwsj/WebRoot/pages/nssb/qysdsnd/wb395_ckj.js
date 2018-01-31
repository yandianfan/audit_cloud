var czbz;
var czbzfb;
var rowInfo;

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
							openMaxWindow("/WB395ckjAction.do?handleCode=printPage&pzXh="
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
	setCzbzTable();
	readText(true);
	setzcfzbclass();
	setsrzcbclass();
	// setjfzcbclass();
	// if ($("ssq").value.substr(5, 2) == "12") {
	// document.all("zctitleqc").innerHTML = "上年累计数";
	// document.all("zctitleqm").innerHTML = "本年累计数";
	// document.all("fztitleqc").innerHTML = "上年累计数";
	// document.all("fztitleqm").innerHTML = "本年累计数";
	// }
}

function setCzbzTable() {
	if (!$F('bizData').empty()) {
		czbz = eval("(" + $F('bizData') + ")").czbzList;
		czbzfb = eval("(" + $F('bizData') + ")").czbzfbList;
	}

	if (czbz != null) {
		for (var i = 0; i < czbz.length; i++) {
			rowInfo = czbz[i];
			for (var j = 0; j < $ES('mxxh').length; j++) {
				if ($ES('mxxh')[j].value == rowInfo.mxxh) {
					if (parseFloat(emptyToZ(rowInfo.bnje)) != 0) {
						$ES('bnsr')[j].value = rowInfo.bnje;
					}
					if (parseFloat(emptyToZ(rowInfo.snje)) != 0) {
						$ES('snsr')[j].value = rowInfo.snje;
					}
					break;
				}
			}
		}
	}

	if (czbzfb != null) {
		for (var i = 0; i < czbzfb.length; i++) {
			rowInfo = czbzfb[i];
			for (var j = 0; j < $ES('xmxh').length; j++) {
				if ($ES('xmxh')[j].value == rowInfo.mxxh) {
					$ES('xmmc')[j].value = rowInfo.nr;
					break;
				}
			}
		}
	}
}

// 设置表1表格属性
function setzcfzbclass() {
	// 资产
	document.getElementById("zcqcs1").readOnly = "true";
	document.getElementById("zcqcs1").className = "read";
	document.getElementById("zcqms1").readOnly = "true";
	document.getElementById("zcqms1").className = "read";

	document.getElementById("zcqcs11").readOnly = "true";
	document.getElementById("zcqcs11").className = "read";
	document.getElementById("zcqms11").readOnly = "true";
	document.getElementById("zcqms11").className = "read";

	document.getElementById("zcqcs12").readOnly = "true";
	document.getElementById("zcqcs12").className = "read";
	document.getElementById("zcqms12").readOnly = "true";
	document.getElementById("zcqms12").className = "read";

	document.getElementById("zcqcs14").readOnly = "true";
	document.getElementById("zcqcs14").className = "read";
	document.getElementById("zcqms14").readOnly = "true";
	document.getElementById("zcqms14").className = "read";

	document.getElementById("zcqcs18").readOnly = "true";
	document.getElementById("zcqcs18").className = "read";
	document.getElementById("zcqms18").readOnly = "true";
	document.getElementById("zcqms18").className = "read";

	document.getElementById("zcqcs22").readOnly = "true";
	document.getElementById("zcqcs22").className = "read";
	document.getElementById("zcqms22").readOnly = "true";
	document.getElementById("zcqms22").className = "read";

	document.getElementById("zcqcs23").readOnly = "true";
	document.getElementById("zcqcs23").className = "read";
	document.getElementById("zcqms23").readOnly = "true";
	document.getElementById("zcqms23").className = "read";

	document.getElementById("zcqcs24").readOnly = "true";
	document.getElementById("zcqcs24").className = "read";
	document.getElementById("zcqms24").readOnly = "true";
	document.getElementById("zcqms24").className = "read";

	document.getElementById("zcqcs25").readOnly = "true";
	document.getElementById("zcqcs25").className = "read";
	document.getElementById("zcqms25").readOnly = "true";
	document.getElementById("zcqms25").className = "read";

	document.getElementById("zcqcs26").readOnly = "true";
	document.getElementById("zcqcs26").className = "read";
	document.getElementById("zcqms26").readOnly = "true";
	document.getElementById("zcqms26").className = "read";

	document.getElementById("zcqcs27").readOnly = "true";
	document.getElementById("zcqcs27").className = "read";
	document.getElementById("zcqms27").readOnly = "true";
	document.getElementById("zcqms27").className = "read";

	document.getElementById("zcqcs28").readOnly = "true";
	document.getElementById("zcqcs28").className = "read";
	document.getElementById("zcqms28").readOnly = "true";
	document.getElementById("zcqms28").className = "read";

	document.getElementById("zcqcs29").readOnly = "true";
	document.getElementById("zcqcs29").className = "read";
	document.getElementById("zcqms29").readOnly = "true";
	document.getElementById("zcqms29").className = "read";

	// 负债
	document.getElementById("fzqcs1").readOnly = "true";
	document.getElementById("fzqcs1").className = "read";
	document.getElementById("fzqms1").readOnly = "true";
	document.getElementById("fzqms1").className = "read";

	document.getElementById("fzqcs12").readOnly = "true";
	document.getElementById("fzqcs12").className = "read";
	document.getElementById("fzqms12").readOnly = "true";
	document.getElementById("fzqms12").className = "read";

	document.getElementById("fzqcs13").readOnly = "true";
	document.getElementById("fzqcs13").className = "read";
	document.getElementById("fzqms13").readOnly = "true";
	document.getElementById("fzqms13").className = "read";

	document.getElementById("fzqcs16").readOnly = "true";
	document.getElementById("fzqcs16").className = "read";
	document.getElementById("fzqms16").readOnly = "true";
	document.getElementById("fzqms16").className = "read";

	document.getElementById("fzqcs17").readOnly = "true";
	document.getElementById("fzqcs17").className = "read";
	document.getElementById("fzqms17").readOnly = "true";
	document.getElementById("fzqms17").className = "read";

	document.getElementById("fzqcs18").readOnly = "true";
	document.getElementById("fzqcs18").className = "read";
	document.getElementById("fzqms18").readOnly = "true";
	document.getElementById("fzqms18").className = "read";

	document.getElementById("fzqcs25").readOnly = "true";
	document.getElementById("fzqcs25").className = "read";
	document.getElementById("fzqms25").readOnly = "true";
	document.getElementById("fzqms25").className = "read";

	document.getElementById("fzqcs28").readOnly = "true";
	document.getElementById("fzqcs28").className = "read";
	document.getElementById("fzqms28").readOnly = "true";
	document.getElementById("fzqms28").className = "read";

	document.getElementById("fzqcs29").readOnly = "true";
	document.getElementById("fzqcs29").className = "read";
	document.getElementById("fzqms29").readOnly = "true";
	document.getElementById("fzqms29").className = "read";
}
// 设置表2表格属性
function setsrzcbclass() {
	document.getElementById("srbys1").readOnly = "true";
	document.getElementById("srbys1").className = "read";
	document.getElementById("srbys4").readOnly = "true";
	document.getElementById("srbys4").className = "read";
	document.getElementById("srbys5").readOnly = "true";
	document.getElementById("srbys5").className = "read";
	document.getElementById("srbys11").readOnly = "true";
	document.getElementById("srbys11").className = "read";
	document.getElementById("srbys16").readOnly = "true";
	document.getElementById("srbys16").className = "read";
	document.getElementById("srbys20").readOnly = "true";
	document.getElementById("srbys20").className = "read";
	document.getElementById("srbys22").readOnly = "true";
	document.getElementById("srbys22").className = "read";
	document.getElementById("srbys25").readOnly = "true";
	document.getElementById("srbys25").className = "read";

	document.getElementById("srljs1").readOnly = "true";
	document.getElementById("srljs1").className = "read";
	document.getElementById("srljs4").readOnly = "true";
	document.getElementById("srljs4").className = "read";
	document.getElementById("srljs5").readOnly = "true";
	document.getElementById("srljs5").className = "read";
	document.getElementById("srljs11").readOnly = "true";
	document.getElementById("srljs11").className = "read";
	document.getElementById("srljs16").readOnly = "true";
	document.getElementById("srljs16").className = "read";
	document.getElementById("srljs20").readOnly = "true";
	document.getElementById("srljs20").className = "read";
	document.getElementById("srljs22").readOnly = "true";
	document.getElementById("srljs22").className = "read";
	document.getElementById("srljs25").readOnly = "true";
	document.getElementById("srljs25").className = "read";

}
// 设置表3表格属性
function setjfzcbclass() {
	document.getElementById("").readOnly = "true";
	document.getElementById("").className = "read";
}
/**
 * 公式计算
 */
d = new caltb('qyzdzcfzb');
d.type = "1";
d.negative = true;
d.pageTipsFlag = "1";
var rulesID = new Array();
// 资产
// 11=2+....+10
rulesID[0] = "zcqcs11 = zcqcs2 + zcqcs3 + zcqcs4 + zcqcs5 + zcqcs6 + zcqcs7 + zcqcs8 + zcqcs9 + zcqcs10";
rulesID[1] = "zcqms11 = zcqms2 + zcqms3 + zcqms4 + zcqms5 + zcqms6 + zcqms7 + zcqms8 + zcqms9 + zcqms10";
// 14 = 15-16
rulesID[2] = "zcqcs14 = zcqcs15 - zcqcs16";
rulesID[3] = "zcqms14 = zcqms15 - zcqms16";
// 18=19-20
rulesID[4] = "zcqcs18 = zcqcs19 - zcqcs20";
rulesID[5] = "zcqms18 = zcqms19 - zcqms20";
// 22=13+14+17+18+21
rulesID[6] = "zcqcs22 = zcqcs13 + zcqcs14 + zcqcs17 + zcqcs18 + zcqcs21";
rulesID[7] = "zcqms22 = zcqms13 + zcqms14 + zcqms17 + zcqms18 + zcqms21";

// 29=11+22
rulesID[8] = "zcqcs29 = zcqcs11 + zcqcs22";
rulesID[9] = "zcqms29 = zcqms11 + zcqms22";

// 负债
// 12 = 2 + 11
rulesID[10] = "fzqcs12 = fzqcs2 + fzqcs3 + fzqcs4 + fzqcs5 + fzqcs6 + fzqcs7 + fzqcs8 + fzqcs9 + fzqcs10 + fzqcs11";
rulesID[11] = "fzqms12 = fzqms2 + fzqms3 + fzqms4 + fzqms5 + fzqms6 + fzqms7 + fzqms8 + fzqms9 + fzqms10 + fzqms11";
// 16 = 14 + 15
rulesID[12] = "fzqcs16 = fzqcs14 + fzqcs15";
rulesID[13] = "fzqms16 = fzqms14 + fzqms15";
// 17 = 12 + 16
rulesID[14] = "fzqcs17 = fzqcs12 + fzqcs16";
rulesID[15] = "fzqms17 = fzqms12 + fzqms16";
// 25 = 26 + 27
rulesID[16] = "fzqcs25 = fzqcs26 + fzqcs27";
rulesID[17] = "fzqms25 = fzqms26 + fzqms27";
// 28 = 19 +..+ 25
rulesID[18] = "fzqcs28 = fzqcs19 + fzqcs20 + fzqcs21 + fzqcs22 + fzqcs23 + fzqcs24 + fzqcs25";
rulesID[19] = "fzqms28 = fzqms19 + fzqms20 + fzqms21 + fzqms22 + fzqms23 + fzqms24 + fzqms25";
// 29 = 17 + 28;
rulesID[20] = "fzqcs29 = fzqcs17 + fzqcs28";
rulesID[21] = "fzqms29 = fzqms17 + fzqms28";
d.setRulesID(rulesID);
initCalTable(d, true);
runRulesForID(d);

// 收入支出算法
a = new caltb('syzdsrzcb');
a.type = "1";
a.negative = true;
a.pageTipsFlag = "1";
var rulesID = new Array();
// 1=2-3;
rulesID[0] = "srbys1 = srbys2 - srbys3";
rulesID[1] = "srljs1 = srljs2 - srljs3";
// 5=6+...+9;
rulesID[2] = "srbys5 = srbys6 + srbys7 + srbys8 + srbys9";
rulesID[3] = "srljs5 = srljs6 + srljs7 + srljs8 + srljs9";
// 11 = 12+...+15;
rulesID[4] = "srbys11 = srbys12 + srbys13 + srbys14 + srbys15";
rulesID[5] = "srljs11 = srljs12 + srljs13 + srljs14 + srljs15";
// 4=5-11;
rulesID[6] = "srbys4 = srbys5 - srbys11";
rulesID[7] = "srljs4 = srljs5 - srljs11";
// 16=17-18;
rulesID[8] = "srbys16 = srbys17 - srbys18";
rulesID[9] = "srljs16 = srljs17 - srljs18";
// getSr20();
rulesID[10] = "getSr20";
// 22 = 20-21;
rulesID[11] = "srbys22 = srbys20 - srbys21";
rulesID[12] = "srljs22 = srljs20 - srljs21";
// 25 = 22-23-24;
rulesID[13] = "srbys25 = srbys22 - srbys23 - srbys24";
rulesID[14] = "srljs25 = srljs22 - srljs23 - srljs24";
a.setRulesID(rulesID);
initCalTable(a, true);
runRulesForID(a);

// 经费算法
c = new caltb('czbzsrb');
c.type = "1";
c.negative = true;
c.pageTipsFlag = "1";
var rulesID = new Array();
// rulesID[0] = "hjby11 = hjby13 + hjby14";
c.setRulesID(rulesID);
initCalTable(c, true);
runRulesForID(c);

function getSr20() {
	// 本月
	var temp_by19 = parseFloat(emptyToZ($F('srbys19')));
	if (temp_by19 >= 0) {
		// 如19为正数，等于4+19
		document.getElementById('srbys20').value = parseFloat(emptyToZ($F('srbys4')))
				+ parseFloat(emptyToZ($F('srbys19')));
	} else {
		// 如19为负数，等于4
		document.getElementById('srbys20').value = parseFloat(emptyToZ($F('srbys4')));
	}

	// 累积
	var temp_lj19 = parseFloat(emptyToZ($F('srljs19')));
	if (temp_lj19 >= 0) {
		// 如19为正数，等于4+19
		document.getElementById('srljs20').value = parseFloat(emptyToZ($F('srljs4')))
				+ parseFloat(emptyToZ($F('srljs19')));
	} else {
		// 如19为负数，等于4
		document.getElementById('srbys20').value = parseFloat(emptyToZ($F('srljs4')));
	}
}

/**
 * 暂存
 */
function tempSave() {
	$('#errorMessage').val("");
	$('#sucessMsg').val("");
	if (!bascicCheck()) {
		return;
	}
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395ckjAction.do', {
//				method : 'post',
//				parameters : $('WB395ckjForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "ajaxform");
//					runMsg('0', true);
//					if (null != window.opener.wb032_WBcwbbListForm) {
//						window.opener.wb032_WBcwbbListForm.submit();
//					}
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR', function() {
//								readTextIne();
//							});
//				}
//			});
	
	$.ajax({
		url : "/WB395ckjAction.do",
		async : true,
		dataType : "html",
		data : $('#WB395ckjForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			iconDialog('系统异常', 'ERROR', function() {
				readTextIne();
			});
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "ajaxform");
			runMsg('0', true);
			if (null != window.opener.wb032_WBcwbbListForm) {
				window.opener.wb032_WBcwbbListForm.submit();
			}
		}
	});
	
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
	confirmDialog("是否确认提交申报数据?", function(button) {
		if (button == "yes") {
			$("#handleCode").val("saveData");
			waitDialog();
//			new Ajax.Request('/WB395ckjAction.do', {
//						method : 'post',
//						parameters : $('WB395ckjForm').serialize(),
//						onComplete : function(originalRequest) {
//							Ext.MessageBox.hide();
//							ajaxUpdate(originalRequest.responseText, "ajaxform");
//							runMsg("1", true, null, 'WB395IndexForm');
//						},
//						onException : function() {
//							Ext.MessageBox.hide();
//							iconDialog('系统异常', 'ERROR', function() {
//										readTextIne();
//									});
//						}
//					});
			
			$.ajax({
				url : "/WB395ckjAction.do",
				async : true,
				dataType : "html",
				data : $('#WB395ckjForm').serialize(),
				type : 'post',
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					iconDialog('系统异常', 'ERROR', function() {
						readTextIne();
					});
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					ajaxUpdate(responseText, "ajaxform");
					runMsg("1", true, null, 'WB395IndexForm');
				}
			});
			
		}

	});
}

/**
 * 基本校验
 */
function bascicCheck() {
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
	if (parseFloat(emptyToZ($F("zcqcs29"))) != parseFloat(emptyToZ($F("fzqcs29")))) {
		iconDialog('【资产负债表】“资产总计”不等于“负债和净资产总计”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqms29"))) != parseFloat(emptyToZ($F("fzqms29")))) {
		iconDialog('【资产负债表】“资产总计”不等于“负债和净资产总计”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("srbys9"))) < parseFloat(emptyToZ($F("srbys10")))) {
		iconDialog('【收入支出表】“其他收入”应大于等于“捐赠收入”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("srljs9"))) < parseFloat(emptyToZ($F("srljs10")))) {
		iconDialog('【收入支出表】“其他收入”应大于等于“捐赠收入”,请核实! ', 'WARNING');
		return false;
	}
	return true;
}
