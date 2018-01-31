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
									openMaxWindow("/WB395glqyFb4Action.do?pzXh="
											+ $F("fb4vo.pzxh")
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
			if (trim($ES('fb4vo.srjwglfmc1')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.srjwglfmc1')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.srjwglfgjdq1')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.srjwglfgjdq1")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.srjwglfmc2')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.srjwglfmc2')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.srjwglfgjdq2')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.srjwglfgjdq2")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.srjwglfmc3')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.srjwglfmc3')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.srjwglfgjdq3')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.srjwglfgjdq3")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.srjwglfmc4')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.srjwglfmc4')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.srjwglfgjdq4')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.srjwglfgjdq4")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.zcjwglfmc1')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.zcjwglfmc1')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.zcjwglfgjdq1')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.zcjwglfgjdq1")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.zcjwglfmc2')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.zcjwglfmc2')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.zcjwglfgjdq2')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.zcjwglfgjdq2")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.zcjwglfmc3')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.zcjwglfmc3')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.zcjwglfgjdq3')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.zcjwglfgjdq3")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb4vo.zcjwglfmc4')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb4vo.zcjwglfmc4')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb4vo.zcjwglfgjdq4')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb4vo.zcjwglfgjdq4")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
	}
	if (!isReadPage()) {
		setSel("fb4vo.srjwglfmc1", jsonContent.autoSel);
		setSel("fb4vo.srjwglfmc2", jsonContent.autoSel);
		setSel("fb4vo.srjwglfmc3", jsonContent.autoSel);
		setSel("fb4vo.srjwglfmc4", jsonContent.autoSel);
		setSel("fb4vo.zcjwglfmc1", jsonContent.autoSel);
		setSel("fb4vo.zcjwglfmc2", jsonContent.autoSel);
		setSel("fb4vo.zcjwglfmc3", jsonContent.autoSel);
		setSel("fb4vo.zcjwglfmc4", jsonContent.autoSel);
	}
	testCodeToName();
}

function blurAfterCall(autocompleteValue, autocompleteContent, textObj) {
	var selectMc = autocompleteContent.split("||")[0];
	var selectGj = autocompleteContent.split("||")[1];
	if ("fb4vo.srjwglfmc1" == textObj.name) {
		$ES("fb4vo.srjwglfmc1")[0].value = selectMc;
		$ES("fb4vo.srjwglfgjdq1")[0].value = selectGj;
		$ES("fb4vo.srjwglfgjdq1")[0].realvalue = selectGj;
	} else if ("fb4vo.srjwglfmc2" == textObj.name) {
		$ES("fb4vo.srjwglfmc2")[0].value = selectMc;
		$ES("fb4vo.srjwglfgjdq2")[0].value = selectGj;
		$ES("fb4vo.srjwglfgjdq2")[0].realvalue = selectGj;
	} else if ("fb4vo.srjwglfmc3" == textObj.name) {
		$ES("fb4vo.srjwglfmc3")[0].value = selectMc;
		$ES("fb4vo.srjwglfgjdq3")[0].value = selectGj;
		$ES("fb4vo.srjwglfgjdq3")[0].realvalue = selectGj;
	} else if ("fb4vo.srjwglfmc4" == textObj.name) {
		$ES("fb4vo.srjwglfmc4")[0].value = selectMc;
		$ES("fb4vo.srjwglfgjdq4")[0].value = selectGj;
		$ES("fb4vo.srjwglfgjdq4")[0].realvalue = selectGj;
	} else if ("fb4vo.zcjwglfmc1" == textObj.name) {
		$ES("fb4vo.zcjwglfmc1")[0].value = selectMc;
		$ES("fb4vo.zcjwglfgjdq1")[0].value = selectGj;
		$ES("fb4vo.zcjwglfgjdq1")[0].realvalue = selectGj;
	} else if ("fb4vo.zcjwglfmc2" == textObj.name) {
		$ES("fb4vo.zcjwglfmc2")[0].value = selectMc;
		$ES("fb4vo.zcjwglfgjdq2")[0].value = selectGj;
		$ES("fb4vo.zcjwglfgjdq2")[0].realvalue = selectGj;
	} else if ("fb4vo.zcjwglfmc3" == textObj.name) {
		$ES("fb4vo.zcjwglfmc3")[0].value = selectMc;
		$ES("fb4vo.zcjwglfgjdq3")[0].value = selectGj;
		$ES("fb4vo.zcjwglfgjdq3")[0].realvalue = selectGj;
	} else if ("fb4vo.zcjwglfmc4" == textObj.name) {
		$ES("fb4vo.zcjwglfmc4")[0].value = selectMc;
		$ES("fb4vo.zcjwglfgjdq4")[0].value = selectGj;
		$ES("fb4vo.zcjwglfgjdq4")[0].realvalue = selectGj;
	}
	testCodeToName();
}

function clearRow(textObj) {
	if ("fb4vo.srjwglfmc1" == textObj.name) {
		$ES("fb4vo.srjwglfmc1")[0].value = "";
		$ES("fb4vo.srjwglfgjdq1")[0].value = "";
		$ES("fb4vo.srjwglfgjdq1")[0].realvalue = "";
	} else if ("fb4vo.srjwglfmc2" == textObj.name) {
		$ES("fb4vo.srjwglfmc2")[0].value = "";
		$ES("fb4vo.srjwglfgjdq2")[0].value = "";
		$ES("fb4vo.srjwglfgjdq2")[0].realvalue = "";
	} else if ("fb4vo.srjwglfmc3" == textObj.name) {
		$ES("fb4vo.srjwglfmc3")[0].value = "";
		$ES("fb4vo.srjwglfgjdq3")[0].value = "";
		$ES("fb4vo.srjwglfgjdq3")[0].realvalue = "";
	} else if ("fb4vo.srjwglfmc4" == textObj.name) {
		$ES("fb4vo.srjwglfmc4")[0].value = "";
		$ES("fb4vo.srjwglfgjdq4")[0].value = "";
		$ES("fb4vo.srjwglfgjdq4")[0].realvalue = "";
	} else if ("fb4vo.zcjwglfmc1" == textObj.name) {
		$ES("fb4vo.zcjwglfmc1")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq1")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq1")[0].realvalue = "";
	} else if ("fb4vo.zcjwglfmc2" == textObj.name) {
		$ES("fb4vo.zcjwglfmc2")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq2")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq2")[0].realvalue = "";
	} else if ("fb4vo.zcjwglfmc3" == textObj.name) {
		$ES("fb4vo.zcjwglfmc3")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq3")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq3")[0].realvalue = "";
	} else if ("fb4vo.zcjwglfmc4" == textObj.name) {
		$ES("fb4vo.zcjwglfmc4")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq4")[0].value = "";
		$ES("fb4vo.zcjwglfgjdq4")[0].realvalue = "";
	}
	testCodeToName();
}

function testCodeToName() {
	var namesAy = "fb4vo.srjwglfgjdq1,fb4vo.srjwglfgjdq2,fb4vo.srjwglfgjdq3,fb4vo.srjwglfgjdq4,fb4vo.srjwfglfgjdq1,fb4vo.srjwfglfgjdq2,fb4vo.srjwfglfgjdq3,fb4vo.srjwfglfgjdq4,fb4vo.zcjwglfgjdq1,fb4vo.zcjwglfgjdq2,fb4vo.zcjwglfgjdq3,fb4vo.zcjwglfgjdq4,fb4vo.zcjwfglfgjdq1,fb4vo.zcjwfglfgjdq2,fb4vo.zcjwfglfgjdq3";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

var rulsefb4 = new Array();
rulsefb4[0] = "fb4vo.jwlwsrje = fb4vo.jwfgllwsrje + fb4vo.jwgllwsrje";// 2=3+4
rulsefb4[1] = "fb4vo.jnlwsrje = fb4vo.jnfgllwsrje + fb4vo.jngllwsrje"; // 5=6+7
rulsefb4[2] = "fb4vo.lwsrje = fb4vo.jwlwsrje + fb4vo.jnlwsrje";// 1=2+5
rulsefb4[3] = "fb4vo.jwlwzcje = fb4vo.jwfgllwzcje + fb4vo.jwgllwzcje";// 9=10+11
rulsefb4[4] = "fb4vo.jnlwzcje = fb4vo.jnfgllwzcje + fb4vo.jngllwzcje"; // 12=13+14
rulsefb4[5] = "fb4vo.lwzcje = fb4vo.jwlwzcje + fb4vo.jnlwzcje";// 8=9+12

var calObjfb4 = new caltb('t4');
calObjfb4.setRules(rulsefb4);
initCalTable(calObjfb4);

function save() {
	if ($F("fb4vo.srjwglfdjff1") == "6"
		&& $F("fb4vo.srjwglfbz1") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.srjwglfdjff2") == "6"
		&& $F("fb4vo.srjwglfbz2") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.srjwglfdjff3") == "6"
		&& $F("fb4vo.srjwglfbz3") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.srjwglfdjff4") == "6"
		&& $F("fb4vo.srjwglfbz4") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfdjff1") == "6"
		&& $F("fb4vo.zcjwglfbz1") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfdjff2") == "6"
		&& $F("fb4vo.zcjwglfbz2") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfdjff3") == "6"
		&& $F("fb4vo.zcjwglfbz33") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfdjff4") == "6"
		&& $F("fb4vo.zcjwglfbz34") == "") {
	iconDialog('“定价方法”如填报“6．其他方法”，必须在“备注栏”中说明所使用的具体方法（不能为空）!', 'WARNING');
	return false;
}

if ($F("fb4vo.srjwglfmc1") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwglfjyje1")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwglfmc2") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwglfjyje2")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwglfmc3") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwglfjyje3")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwglfmc4") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwglfjyje4")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwfglfmc1") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwfglfjyje1")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwfglfmc2") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwfglfjyje2")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwfglfmc3") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwfglfjyje3")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.srjwfglfmc4") != ""
		&& parseFloat($F("fb4vo.lwsrje")) * 0.1
				- parseFloat($F("fb4vo.srjwfglfjyje4")) > 0.5) {
	iconDialog(
			'占境外劳务收入额占劳务收入总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务收入（第1项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfmc1") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwglfjyje1")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfmc2") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwglfjyje2")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfmc3") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwglfjyje3")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwglfmc4") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwglfjyje4")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwfglfmc1") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwfglfjyje1")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwfglfmc2") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwfglfjyje2")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
	return false;
} else if ($F("fb4vo.zcjwfglfmc3") != ""
		&& parseFloat($F("fb4vo.lwzcje")) * 0.1
				- parseFloat($F("fb4vo.zcjwfglfjyje3")) > 0.5) {
	iconDialog(
			'占境外劳务支出额占劳务支出总额10%以上的境外交易对象及其交易：交易金额”应大于或等于“总劳务交易：劳务支出（第8项）”*10%（允许0.50元误差）!',
			'WARNING');
		return false;
	}
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("劳务表（表四)暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb4Action.do', {
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
		url : "/WB395glqyFb4Action.do",
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