Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
					renderTo : "toolbar",
					items : ['-', '->', {
								id : "tempBtn",
								text : "暂存",
								iconCls : "save",
								handler : function() {
									save();
								},
								scope : this
							}, '-', {
								id : "printBtn",
								text : "打印",
								iconCls : "print",
								handler : function() {
									openMaxWindow("/WB395glqyFb3Action.do?pzXh="
											+ $F("fb3vo.pzxh")
											+ "&handleCode=printData");
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
	if (!beforeInitPage()) {
		return;
	}
	readText();
	clsDynamicSelect$init('selectXml');
	var jsonContent = eval("(" + $F("autoSel") + ")");
	var autosel = jsonContent.autoSel;
	if (autosel != null) {
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb3vo.xsjwglfmc1')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb3vo.xsjwglfmc1')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb3vo.xsjwglfgjdq1')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb3vo.xsjwglfgjdq1")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb3vo.xsjwglfmc2')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb3vo.xsjwglfmc2')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb3vo.xsjwglfgjdq2')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb3vo.xsjwglfgjdq2")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb3vo.xsjwglfmc3')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb3vo.xsjwglfmc3')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb3vo.xsjwglfgjdq3')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb3vo.xsjwglfgjdq3")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}

		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb3vo.cgjwglfmc1')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb3vo.cgjwglfmc1')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb3vo.cgjwglfgjdq1')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb3vo.cgjwglfgjdq1")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb3vo.cgjwglfmc2')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb3vo.cgjwglfmc2')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb3vo.cgjwglfgjdq2')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb3vo.cgjwglfgjdq2")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb3vo.cgjwglfmc3')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb3vo.cgjwglfmc3')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb3vo.cgjwglfgjdq3')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb3vo.cgjwglfgjdq3")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
	}
	if (!isReadPage()) {
		setSel("fb3vo.xsjwglfmc1", jsonContent.autoSel);
		setSel("fb3vo.xsjwglfmc2", jsonContent.autoSel);
		setSel("fb3vo.xsjwglfmc3", jsonContent.autoSel);
		setSel("fb3vo.cgjwglfmc1", jsonContent.autoSel);
		setSel("fb3vo.cgjwglfmc2", jsonContent.autoSel);
		setSel("fb3vo.cgjwglfmc3", jsonContent.autoSel);
	}
	testCodeToName();
}

function blurAfterCall(autocompleteValue, autocompleteContent, textObj) {
	var selectMc = autocompleteContent.split("||")[0];
	var selectGj = autocompleteContent.split("||")[1];
	if ("fb3vo.xsjwglfmc1" == textObj.name) {
		$ES("fb3vo.xsjwglfmc1")[0].value = selectMc;
		$ES("fb3vo.xsjwglfgjdq1")[0].value = selectGj;
		$ES("fb3vo.xsjwglfgjdq1")[0].realvalue = selectGj;
	} else if ("fb3vo.xsjwglfmc2" == textObj.name) {
		$ES("fb3vo.xsjwglfmc2")[0].value = selectMc;
		$ES("fb3vo.xsjwglfgjdq2")[0].value = selectGj;
		$ES("fb3vo.xsjwglfgjdq2")[0].realvalue = selectGj;
	} else if ("fb3vo.xsjwglfmc3" == textObj.name) {
		$ES("fb3vo.xsjwglfmc3")[0].value = selectMc;
		$ES("fb3vo.xsjwglfgjdq3")[0].value = selectGj;
		$ES("fb3vo.xsjwglfgjdq3")[0].realvalue = selectGj;
	} else if ("fb3vo.cgjwglfmc1" == textObj.name) {
		$ES("fb3vo.cgjwglfmc1")[0].value = selectMc;
		$ES("fb3vo.cgjwglfgjdq1")[0].value = selectGj;
		$ES("fb3vo.cgjwglfgjdq1")[0].realvalue = selectGj;
	} else if ("fb3vo.cgjwglfmc2" == textObj.name) {
		$ES("fb3vo.cgjwglfmc2")[0].value = selectMc;
		$ES("fb3vo.cgjwglfgjdq2")[0].value = selectGj;
		$ES("fb3vo.cgjwglfgjdq2")[0].realvalue = selectGj;
	} else if ("fb3vo.cgjwglfmc3" == textObj.name) {
		$ES("fb3vo.cgjwglfmc3")[0].value = selectMc;
		$ES("fb3vo.cgjwglfgjdq3")[0].value = selectGj;
		$ES("fb3vo.cgjwglfgjdq3")[0].realvalue = selectGj;
	}
	testCodeToName();
}

function clearRow(textObj) {
	if ("fb3vo.xsjwglfmc1" == textObj.name) {
		$ES("fb3vo.xsjwglfmc1")[0].value = "";
		$ES("fb3vo.xsjwglfgjdq1")[0].value = "";
		$ES("fb3vo.xsjwglfgjdq1")[0].realvalue = "";
	} else if ("fb3vo.xsjwglfmc2" == textObj.name) {
		$ES("fb3vo.xsjwglfmc2")[0].value = "";
		$ES("fb3vo.xsjwglfgjdq2")[0].value = "";
		$ES("fb3vo.xsjwglfgjdq2")[0].realvalue = "";
	} else if ("fb3vo.xsjwglfmc3" == textObj.name) {
		$ES("fb3vo.xsjwglfmc3")[0].value = "";
		$ES("fb3vo.xsjwglfgjdq3")[0].value = "";
		$ES("fb3vo.xsjwglfgjdq3")[0].realvalue = "";
	} else if ("fb3vo.cgjwglfmc1" == textObj.name) {
		$ES("fb3vo.cgjwglfmc1")[0].value = "";
		$ES("fb3vo.cgjwglfgjdq1")[0].value = "";
		$ES("fb3vo.cgjwglfgjdq1")[0].realvalue = "";
	} else if ("fb3vo.cgjwglfmc2" == textObj.name) {
		$ES("fb3vo.cgjwglfmc2")[0].value = "";
		$ES("fb3vo.cgjwglfgjdq2")[0].value = "";
		$ES("fb3vo.cgjwglfgjdq2")[0].realvalue = "";
	} else if ("fb3vo.cgjwglfmc3" == textObj.name) {
		$ES("fb3vo.cgjwglfmc3")[0].value = "";
		$ES("fb3vo.cgjwglfgjdq3")[0].value = "";
		$ES("fb3vo.cgjwglfgjdq3")[0].realvalue = "";
	}
	testCodeToName();
}

function testCodeToName() {
	var namesAy = "fb3vo.xsjwglfgjdq1,fb3vo.xsjwglfgjdq2,fb3vo.xsjwglfgjdq3,fb3vo.xsjwfglfgjdq1,fb3vo.xsjwfglfgjdq2,fb3vo.xsjwfglfgjdq3,fb3vo.cgjwglfgjdq1,fb3vo.cgjwglfgjdq2,fb3vo.cgjwglfgjdq3,fb3vo.cgjwfglfgjdq1,fb3vo.cgjwfglfgjdq2,fb3vo.cgjwfglfgjdq3";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

var rulsefb3 = new Array();
rulsefb3[0] = "fb3vo.jkgrje = fb3vo.fgljkje + fb3vo.gljkje";// 2=3+4
rulsefb3[1] = "fb3vo.gngrje = fb3vo.fglgrje + fb3vo.glgrje"; // 5=6+7
rulsefb3[2] = "fb3vo.grztje = fb3vo.jkgrje + fb3vo.gngrje";// 1=2+5
rulsefb3[3] = "fb3vo.jkxsje = fb3vo.fglckje + fb3vo.glckje";// 9=10+11
rulsefb3[4] = "fb3vo.gnxsje = fb3vo.fglxsje + fb3vo.glxsje"; // 12=13+14
rulsefb3[5] = "fb3vo.xszeje = fb3vo.jkxsje + fb3vo.gnxsje";// 8=9+12

var calObjfb3 = new caltb('t3');
calObjfb3.setRules(rulsefb3);
initCalTable(calObjfb3);

function save() {
	if ($F("fb3vo.xsjwglfdjff1") == "6"
		&& $F("fb3vo.xsjwglfbz1") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb3vo.xsjwglfdjff2") == "6"
		&& $F("fb3vo.xsjwglfbz2") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb3vo.xsjwglfdjff3") == "6"
		&& $F("fb3vo.xsjwglfbz3") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb3vo.cgjwglfdjff1") == "6"
		&& $F("fb3vo.cgjwglfbz1") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb3vo.cgjwglfdjff2") == "6"
		&& $F("fb3vo.cgjwglfbz2") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb3vo.cgjwglfdjff3") == "6"
		&& $F("fb3vo.cgjwglfbz33") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
}
if ($F("fb3vo.xsjwglfmc1") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkxsje")) * 0.1
						- parseFloat($F("fb3vo.xsjwglfjyje1")), 2) > 0.5) {
	iconDialog(
			'占出口销售总额10%以上的境外销售对象及其交易：交易金额”应大于或等于“一、总购销：销售总额——出口销售（第9项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.xsjwglfmc2") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkxsje")) * 0.1
						- parseFloat($F("fb3vo.xsjwglfjyje2")), 2) > 0.5) {
	iconDialog(
			'占出口销售总额10%以上的境外销售对象及其交易：交易金额”应大于或等于“一、总购销：销售总额——出口销售（第9项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.xsjwglfmc3") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkxsje")) * 0.1
						- parseFloat($F("fb3vo.xsjwglfjyje3")), 2) > 0.5) {
	iconDialog(
			'占出口销售总额10%以上的境外销售对象及其交易：交易金额”应大于或等于“一、总购销：销售总额——出口销售（第9项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.xsjwfglfmc1") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkxsje")) * 0.1
						- parseFloat($F("fb3vo.xsjwfglfjyje1")), 2) > 0.5) {
	iconDialog(
			'占出口销售总额10%以上的境外销售对象及其交易：交易金额”应大于或等于“一、总购销：销售总额——出口销售（第9项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.xsjwfglfmc2") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkxsje")) * 0.1
						- parseFloat($F("fb3vo.xsjwfglfjyje2")), 2) > 0.5) {
	iconDialog(
			'占出口销售总额10%以上的境外销售对象及其交易：交易金额”应大于或等于“一、总购销：销售总额——出口销售（第9项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.xsjwfglfmc3") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkxsje")) * 0.1
						- parseFloat($F("fb3vo.xsjwfglfjyje3")), 2) > 0.5) {
	iconDialog(
			'占出口销售总额10%以上的境外销售对象及其交易：交易金额”应大于或等于“一、总购销：销售总额——出口销售（第9项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.cgjwglfmc1") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkgrje")) * 0.1
						- parseFloat($F("fb3vo.cgjwglfjyje1")), 2) > 0.5) {
	iconDialog(
			'占进口采购总额10%以上的境外采购对象及其交易：交易金额”应大于或等于“一、总购销：购入总额——进口购入（第2项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.cgjwglfmc2") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkgrje")) * 0.1
						- parseFloat($F("fb3vo.cgjwglfjyje2")), 2) > 0.5) {
	iconDialog(
			'占进口采购总额10%以上的境外采购对象及其交易：交易金额”应大于或等于“一、总购销：购入总额——进口购入（第2项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.cgjwglfmc3") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkgrje")) * 0.1
						- parseFloat($F("fb3vo.cgjwglfjyje3")), 2) > 0.5) {
	iconDialog(
			'占进口采购总额10%以上的境外采购对象及其交易：交易金额”应大于或等于“一、总购销：购入总额——进口购入（第2项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.cgjwfglfmc1") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkgrje")) * 0.1
						- parseFloat($F("fb3vo.cgjwfglfjyje1")), 2) > 0.5) {
	iconDialog(
			'占进口采购总额10%以上的境外采购对象及其交易：交易金额”应大于或等于“一、总购销：购入总额——进口购入（第2项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.cgjwfglfmc2") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkgrje")) * 0.1
						- parseFloat($F("fb3vo.cgjwfglfjyje2")), 2) > 0.5) {
	iconDialog(
			'占进口采购总额10%以上的境外采购对象及其交易：交易金额”应大于或等于“一、总购销：购入总额——进口购入（第2项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb3vo.cgjwfglfmc3") != ""
		&& caltbNumloop(parseFloat($F("fb3vo.jkgrje")) * 0.1
						- parseFloat($F("fb3vo.cgjwfglfjyje3")), 2) > 0.5) {
	iconDialog(
			'占进口采购总额10%以上的境外采购对象及其交易：交易金额”应大于或等于“一、总购销：购入总额——进口购入（第2项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
}
if (parseFloat(emptyToZ($F("fb3vo.jkxsje"))) != caltbNumloop(
		(parseFloat(emptyToZ($F("fb3vo.lljgglje")))
				+ parseFloat(emptyToZ($F("fb3vo.lljgfglje")))
				+ parseFloat(emptyToZ($F("fb3vo.qtmyglje"))) + parseFloat(emptyToZ($F("fb3vo.qtmyfglje")))),
		2)) {
	iconDialog(
			'总购销：销售总额——出口销售（第9项）”值应等于“按出口贸易方式分类的出口销售收入”来料加工关联金额、非关联金额，其他贸易方式关联金额，非关联金额值之和!',
			'WARNING');
		return false;
	}
	$('#sucessMsg').val("");
	$('#errorMessage').val("")
	$("#handleDesc").val("购销表（表三）暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb3Action.do', {
//				method : 'post',
//				parameters : $('WB395GlqyForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "update");
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395glqyFb3Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395GlqyForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0", false, null, 'WB395IndexForm');
		}
	});
	
}
