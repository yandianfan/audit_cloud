var calObj;

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A106000_TbSm.html");
						},
						scope : this
					}, {
						id : "tempBtn",
						text : "暂存",
						iconCls : "save",
						handler : function() {
							tempSave();
						},
						scope : this
					}, '-', {
						text : "查看信息",
						iconCls : "fb",
						handler : function() {
							openMsgWindow();
						},
						scope : this
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395A106000Action.do?handleCode=printData&pzXh="
									+ $F("pzXh"));
						},
						scope : this
					}, "-", {
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
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.setRulesY(ymkj_getRulesY("tab1"));
	calObj.negative = true;
	initCalTable(calObj);
	//runRulesForName(calObj);
	readText();
}

function calCol4() {
	var tmp_col2 = 0;
	var tmp_col4 = 0;
	var tmp_col3 = 0;
	// 若第2列>=0,本栏=第3列数据(亏损以负数表示），当第2列小于0时金额等于第2+3列。"
	for (var i = 1; i < 7; i++) {
		tmp_col2 = parseFloat(emptyToZ(document.getElementById("vo" + i + ".nstzhsdje").value));
		tmp_col3 = parseFloat(emptyToZ(document.getElementById("vo" + i + ".hbflzrksje").value));
		if (tmp_col2 - 1 >= -1) {
			tmp_col4 = caltbNumloop(tmp_col3, 2);
		} else {
			tmp_col4 = caltbNumloop(tmp_col2 + tmp_col3, 2);
		}
		document.getElementById("vo" + i + ".dnknbksje").value = tmp_col4;
	}
}

function calCol11() {
	for (var i = 2; i < 7; i++) {
		// 同一行次第4列为负数时，＝第4列该行的绝对值-第9列该行-第10列该行，否则填“0”
		if (parseFloat(emptyToZ(document.getElementById("vo" + i + ".dnknbksje").value)) < 0) {
			document.getElementById("vo" + i + ".jzyhndnbksje").value = caltbNumloop(
					parseFloat(Math.abs(document.getElementById("vo" + i + ".dnknbksje").value))
							- parseFloat(emptyToZ($F("vo" + i + ".yqndksnbhjje")))
							- parseFloat(emptyToZ($F("vo" + i + ".sjnbyqndksje"))),
					2);
		} else {
			document.getElementById("vo" + i + ".jzyhndnbksje").value = 0;
		}
	}
}

function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("企业所得税弥补亏损明细表");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A106000Action.do', {
//				method : 'post',
//				parameters : $('WB395A106000Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					initCalTable(calObj);
//					runRulesForName(calObj);
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A106000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A106000Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			initCalTable(calObj);
			runRulesForName(calObj);
			runMsg("0", false, null, 'WB395IndexForm');
		}
	});
	
}

function submitData() {
	tempSave();
}