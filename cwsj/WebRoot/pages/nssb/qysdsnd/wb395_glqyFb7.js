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
									openMaxWindow("/WB395glqyFb7Action.do?pzXh="
											+ $F("pzxh")
											+ "&handleCode=printData&xh="
											+ $F("sbmxxh"));
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
			if (trim($ES('fb7vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb7vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb7vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb7vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb72vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb72vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb72vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb72vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb73vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb73vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb73vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb73vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb74vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb74vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb74vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb74vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb75vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb75vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb75vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb75vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb78vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb78vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb78vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb78vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb79vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb79vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb79vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb79vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('fb710vo.glfmc')[0].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('fb710vo.glfmc')[0].value = trim(autosel[j].content
						.split("||")[0]);
				$ES('fb710vo.gjdqdm')[0].value = trim(autosel[j].content
						.split("||")[1]);
				$ES("fb710vo.gjdqdm")[0].realvalue = trim(autosel[j].content
						.split("||")[1]);
			}
		}

	}
	if (!isReadPage()) {
		setSel("fb7vo.glfmc", jsonContent.autoSel);
		setSel("fb72vo.glfmc", jsonContent.autoSel);
		setSel("fb73vo.glfmc", jsonContent.autoSel);
		setSel("fb74vo.glfmc", jsonContent.autoSel);
		setSel("fb75vo.glfmc", jsonContent.autoSel);
		setSel("fb78vo.glfmc", jsonContent.autoSel);
		setSel("fb79vo.glfmc", jsonContent.autoSel);
		setSel("fb710vo.glfmc", jsonContent.autoSel);
	}
	testCodeToName();
}

function blurAfterCall(autocompleteValue, autocompleteContent, textObj) {
	var selectMc = autocompleteContent.split("||")[0];
	var selectGj = autocompleteContent.split("||")[1];
	if ("fb7vo.glfmc" == textObj.name) {
		$ES("fb7vo.glfmc")[0].value = selectMc;
		$ES("fb7vo.gjdqdm")[0].value = selectGj;
		$ES("fb7vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb72vo.glfmc" == textObj.name) {
		$ES("fb72vo.glfmc")[0].value = selectMc;
		$ES("fb72vo.gjdqdm")[0].value = selectGj;
		$ES("fb72vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb73vo.glfmc" == textObj.name) {
		$ES("fb73vo.glfmc")[0].value = selectMc;
		$ES("fb73vo.gjdqdm")[0].value = selectGj;
		$ES("fb73vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb74vo.glfmc" == textObj.name) {
		$ES("fb74vo.glfmc")[0].value = selectMc;
		$ES("fb74vo.gjdqdm")[0].value = selectGj;
		$ES("fb74vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb75vo.glfmc" == textObj.name) {
		$ES("fb75vo.glfmc")[0].value = selectMc;
		$ES("fb75vo.gjdqdm")[0].value = selectGj;
		$ES("fb75vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb78vo.glfmc" == textObj.name) {
		$ES("fb78vo.glfmc")[0].value = selectMc;
		$ES("fb78vo.gjdqdm")[0].value = selectGj;
		$ES("fb78vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb79vo.glfmc" == textObj.name) {
		$ES("fb79vo.glfmc")[0].value = selectMc;
		$ES("fb79vo.gjdqdm")[0].value = selectGj;
		$ES("fb79vo.gjdqdm")[0].realvalue = selectGj;
	} else if ("fb710vo.glfmc" == textObj.name) {
		$ES("fb710vo.glfmc")[0].value = selectMc;
		$ES("fb710vo.gjdqdm")[0].value = selectGj;
		$ES("fb710vo.gjdqdm")[0].realvalue = selectGj;
	}

	testCodeToName();
}

function clearRow(textObj) {
	if ("fb7vo.glfmc" == textObj.name) {
		$ES("fb7vo.glfmc")[0].value = "";
		$ES("fb7vo.gjdqdm")[0].value = "";
		$ES("fb7vo.gjdqdm")[0].realvalue = "";
	} else if ("fb72vo.glfmc" == textObj.name) {
		$ES("fb72vo.glfmc")[0].value = "";
		$ES("fb72vo.gjdqdm")[0].value = "";
		$ES("fb72vo.gjdqdm")[0].realvalue = "";
	} else if ("fb73vo.glfmc" == textObj.name) {
		$ES("fb73vo.glfmc")[0].value = "";
		$ES("fb73vo.gjdqdm")[0].value = "";
		$ES("fb73vo.gjdqdm")[0].realvalue = "";
	} else if ("fb74vo.glfmc" == textObj.name) {
		$ES("fb74vo.glfmc")[0].value = "";
		$ES("fb74vo.gjdqdm")[0].value = "";
		$ES("fb74vo.gjdqdm")[0].realvalue = "";
	} else if ("fb75vo.glfmc" == textObj.name) {
		$ES("fb75vo.glfmc")[0].value = "";
		$ES("fb75vo.gjdqdm")[0].value = "";
		$ES("fb75vo.gjdqdm")[0].realvalue = "";
	} else if ("fb78vo.glfmc" == textObj.name) {
		$ES("fb78vo.glfmc")[0].value = "";
		$ES("fb78vo.gjdqdm")[0].value = "";
		$ES("fb78vo.gjdqdm")[0].realvalue = "";
	} else if ("fb79vo.glfmc" == textObj.name) {
		$ES("fb79vo.glfmc")[0].value = "";
		$ES("fb79vo.gjdqdm")[0].value = "";
		$ES("fb79vo.gjdqdm")[0].realvalue = "";
	} else if ("fb710vo.glfmc" == textObj.name) {
		$ES("fb710vo.glfmc")[0].value = "";
		$ES("fb710vo.gjdqdm")[0].value = "";
		$ES("fb710vo.gjdqdm")[0].realvalue = "";
	}
	testCodeToName();
}

function testCodeToName() {
	var namesAy = "fb7vo.gjdqdm,fb72vo.gjdqdm,fb73vo.gjdqdm,fb74vo.gjdqdm,fb75vo.gjdqdm,fb76vo.gjdqdm,fb77vo.gjdqdm,fb78vo.gjdqdm,fb79vo.gjdqdm,fb710vo.gjdqdm,fb7vo.bzdm,fb72vo.bzdm,fb73vo.bzdm,fb74vo.bzdm,fb75vo.bzdm,fb76vo.bzdm,fb77vo.bzdm,fb78vo.bzdm,fb79vo.bzdm,fb710vo.bzdm";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

var rulsefb7 = new Array();
rulsefb7
		.push("b7syqhj3 = fb7vo.rzrrje + fb72vo.rzrrje + fb73vo.rzrrje + fb74vo.rzrrje + fb75vo.rzrrje + fb76vo.rzrrje");
rulsefb7
		.push("b7syqhj4 = fb7vo.rzrcje + fb72vo.rzrcje + fb73vo.rzrcje + fb74vo.rzrcje + fb75vo.rzrcje + fb77vo.rzrcje");
rulsefb7
		.push("b7syqhj7 = fb7vo.yjlxzcje + fb72vo.yjlxzcje + fb73vo.yjlxzcje + fb74vo.yjlxzcje + fb75vo.yjlxzcje + fb76vo.yjlxzcje");
rulsefb7
		.push("b7syqhj8 = fb7vo.yjlxsrje + fb72vo.yjlxsrje + fb73vo.yjlxsrje + fb74vo.yjlxsrje + fb75vo.yjlxsrje + fb77vo.yjlxsrje");
rulsefb7
		.push("b7syqhj10 = fb7vo.dbfje + fb72vo.dbfje + fb73vo.dbfje + fb74vo.dbfje + fb75vo.dbfje + fb76vo.dbfje + fb77vo.dbfje");

rulsefb7
		.push("b7syhjje3 = fb78vo.rzrrje + fb79vo.rzrrje + fb710vo.rzrrje + fb711vo.rzrrje");
rulsefb7
		.push("b7syhjje4 = fb78vo.rzrcje + fb79vo.rzrcje + fb710vo.rzrcje + fb712vo.rzrcje");
rulsefb7
		.push("b7syhjje7 = fb78vo.yjlxzcje + fb79vo.yjlxzcje + fb710vo.yjlxzcje + fb711vo.yjlxzcje");
rulsefb7
		.push("b7syhjje8 = fb78vo.yjlxsrje + fb79vo.yjlxsrje + fb710vo.yjlxsrje + fb712vo.yjlxsrje");
rulsefb7
		.push("b7syhjje10 = fb78vo.dbfje + fb79vo.dbfje + fb710vo.dbfje + fb711vo.dbfje + fb712vo.dbfje");

rulsefb7.push("b7zhjje3 = b7syqhj3 + b7syhjje3");
rulsefb7.push("b7zhjje4 = b7syqhj4 + b7syhjje4");
rulsefb7.push("b7zhjje7 = b7syqhj7 + b7syhjje7");
rulsefb7.push("b7zhjje8 = b7syqhj8 + b7syhjje8");
rulsefb7.push("b7zhjje10 = b7syqhj10 + b7syhjje10");
rulsefb7.push("setRead");
var calObjfb7 = new caltb('t7');
calObjfb7.setRules(rulsefb7);
runRulesForName(calObjfb7);
// calObjfb7.customrulesEnd = function() {
// // ．融资应计利息收入第4列=表7融通资金表合计1第8列；
// parent.fb2.$('fb29vo.clspgr14jwgljyje').value = $('b7syqhj8').value;
// parent.fb2.$('fb29vo.clspgr17jngljyje').value = $('b7syhjje8').value;
// // 融资应计利息支出第4列=表7融通资金表合计1第7列；
// parent.fb2.$('fb210vo.clspgr14jwgljyje').value = $('b7syqhj7').value;
// parent.fb2.$('fb210vo.clspgr17jngljyje').value = $('b7syhjje7').value;
// parent.fb2.runRulesForName(parent.fb2.calObjfb2);
// }
initCalTable(calObjfb7);

function save() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("融通资金表（表七）暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb7Action.do', {
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
		url : "/WB395glqyFb7Action.do",
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

function setRead() {
	if (parseFloat($F("fb7vo.rzrrje")) > 0) {
		document.getElementById("fb7vo.rzrcje").readOnly = "true";
		document.getElementById("fb7vo.rzrcje").className = "read";
		document.getElementById("fb7vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb7vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb7vo.rzrcje").readOnly = "";
		document.getElementById("fb7vo.rzrcje").className = "";
		document.getElementById("fb7vo.yjlxsrje").readOnly = "";
		document.getElementById("fb7vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb72vo.rzrrje")) > 0) {
		document.getElementById("fb72vo.rzrcje").readOnly = "true";
		document.getElementById("fb72vo.rzrcje").className = "read";
		document.getElementById("fb72vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb72vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb72vo.rzrcje").readOnly = "";
		document.getElementById("fb72vo.rzrcje").className = "";
		document.getElementById("fb72vo.yjlxsrje").readOnly = "";
		document.getElementById("fb72vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb73vo.rzrrje")) > 0) {
		document.getElementById("fb73vo.rzrcje").readOnly = "true";
		document.getElementById("fb73vo.rzrcje").className = "read";
		document.getElementById("fb73vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb73vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb73vo.rzrcje").readOnly = "";
		document.getElementById("fb73vo.rzrcje").className = "";
		document.getElementById("fb73vo.yjlxsrje").readOnly = "";
		document.getElementById("fb73vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb74vo.rzrrje")) > 0) {
		document.getElementById("fb74vo.rzrcje").readOnly = "true";
		document.getElementById("fb74vo.rzrcje").className = "read";
		document.getElementById("fb74vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb74vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb74vo.rzrcje").readOnly = "";
		document.getElementById("fb74vo.rzrcje").className = "";
		document.getElementById("fb74vo.yjlxsrje").readOnly = "";
		document.getElementById("fb74vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb75vo.rzrrje")) > 0) {
		document.getElementById("fb75vo.rzrcje").readOnly = "true";
		document.getElementById("fb75vo.rzrcje").className = "read";
		document.getElementById("fb75vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb75vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb75vo.rzrcje").readOnly = "";
		document.getElementById("fb75vo.rzrcje").className = "";
		document.getElementById("fb75vo.yjlxsrje").readOnly = "";
		document.getElementById("fb75vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb7vo.rzrcje")) > 0) {
		document.getElementById("fb7vo.rzrrje").readOnly = "true";
		document.getElementById("fb7vo.rzrrje").className = "read";
		document.getElementById("fb7vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb7vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb7vo.rzrrje").readOnly = "";
		document.getElementById("fb7vo.rzrrje").className = "";
		document.getElementById("fb7vo.yjlxzcje").readOnly = "";
		document.getElementById("fb7vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb72vo.rzrcje")) > 0) {
		document.getElementById("fb72vo.rzrrje").readOnly = "true";
		document.getElementById("fb72vo.rzrrje").className = "read";
		document.getElementById("fb72vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb72vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb72vo.rzrrje").readOnly = "";
		document.getElementById("fb72vo.rzrrje").className = "";
		document.getElementById("fb72vo.yjlxzcje").readOnly = "";
		document.getElementById("fb72vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb73vo.rzrcje")) > 0) {
		document.getElementById("fb73vo.rzrrje").readOnly = "true";
		document.getElementById("fb73vo.rzrrje").className = "read";
		document.getElementById("fb73vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb73vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb73vo.rzrrje").readOnly = "";
		document.getElementById("fb73vo.rzrrje").className = "";
		document.getElementById("fb73vo.yjlxzcje").readOnly = "";
		document.getElementById("fb73vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb74vo.rzrcje")) > 0) {
		document.getElementById("fb74vo.rzrrje").readOnly = "true";
		document.getElementById("fb74vo.rzrrje").className = "read";
		document.getElementById("fb74vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb74vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb74vo.rzrrje").readOnly = "";
		document.getElementById("fb74vo.rzrrje").className = "";
		document.getElementById("fb74vo.yjlxzcje").readOnly = "";
		document.getElementById("fb74vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb75vo.rzrcje")) > 0) {
		document.getElementById("fb75vo.rzrrje").readOnly = "true";
		document.getElementById("fb75vo.rzrrje").className = "read";
		document.getElementById("fb75vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb75vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb75vo.rzrrje").readOnly = "";
		document.getElementById("fb75vo.rzrrje").className = "";
		document.getElementById("fb75vo.yjlxzcje").readOnly = "";
		document.getElementById("fb75vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb78vo.rzrrje")) > 0) {
		document.getElementById("fb78vo.rzrcje").readOnly = "true";
		document.getElementById("fb78vo.rzrcje").className = "read";
		document.getElementById("fb78vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb78vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb78vo.rzrcje").readOnly = "";
		document.getElementById("fb78vo.rzrcje").className = "";
		document.getElementById("fb78vo.yjlxsrje").readOnly = "";
		document.getElementById("fb78vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb79vo.rzrrje")) > 0) {
		document.getElementById("fb79vo.rzrcje").readOnly = "true";
		document.getElementById("fb79vo.rzrcje").className = "read";
		document.getElementById("fb79vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb79vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb79vo.rzrcje").readOnly = "";
		document.getElementById("fb79vo.rzrcje").className = "";
		document.getElementById("fb79vo.yjlxsrje").readOnly = "";
		document.getElementById("fb79vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb710vo.rzrrje")) > 0) {
		document.getElementById("fb710vo.rzrcje").readOnly = "true";
		document.getElementById("fb710vo.rzrcje").className = "read";
		document.getElementById("fb710vo.yjlxsrje").readOnly = "true";
		document.getElementById("fb710vo.yjlxsrje").className = "read";
	} else {
		document.getElementById("fb710vo.rzrcje").readOnly = "";
		document.getElementById("fb710vo.rzrcje").className = "";
		document.getElementById("fb710vo.yjlxsrje").readOnly = "";
		document.getElementById("fb710vo.yjlxsrje").className = "";
	}
	if (parseFloat($F("fb78vo.rzrcje")) > 0) {
		document.getElementById("fb78vo.rzrrje").readOnly = "true";
		document.getElementById("fb78vo.rzrrje").className = "read";
		document.getElementById("fb78vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb78vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb78vo.rzrrje").readOnly = "";
		document.getElementById("fb78vo.rzrrje").className = "";
		document.getElementById("fb78vo.yjlxzcje").readOnly = "";
		document.getElementById("fb78vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb79vo.rzrcje")) > 0) {
		document.getElementById("fb79vo.rzrrje").readOnly = "true";
		document.getElementById("fb79vo.rzrrje").className = "read";
		document.getElementById("fb79vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb79vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb79vo.rzrrje").readOnly = "";
		document.getElementById("fb79vo.rzrrje").className = "";
		document.getElementById("fb79vo.yjlxzcje").readOnly = "";
		document.getElementById("fb79vo.yjlxzcje").className = "";
	}
	if (parseFloat($F("fb710vo.rzrcje")) > 0) {
		document.getElementById("fb710vo.rzrrje").readOnly = "true";
		document.getElementById("fb710vo.rzrrje").className = "read";
		document.getElementById("fb710vo.yjlxzcje").readOnly = "true";
		document.getElementById("fb710vo.yjlxzcje").className = "read";
	} else {
		document.getElementById("fb710vo.rzrrje").readOnly = "";
		document.getElementById("fb710vo.rzrrje").className = "";
		document.getElementById("fb710vo.yjlxzcje").readOnly = "";
		document.getElementById("fb710vo.yjlxzcje").className = "";
	}
}