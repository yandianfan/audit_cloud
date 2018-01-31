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
							openMaxWindow("/nssb/wb395/wb395_A105060_TbSm.html");
						},
						scope : this
					}, '-', {
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
							openMsgWindow();// 公用方法
						},
						scope : this

					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("handleCode").value = "printPage";
							openMaxWindow("/WB395A105060Action.do?handleCode=printPage&pzXh="
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
	if (parseFloat(emptyToZ($F("kcl"))) == parseFloat(emptyToZ('0.15'))) {
		document.getElementById("wb395a105060vo.kcl").value = '0.15';
	}
	if (parseFloat(emptyToZ($F("kcl"))) == parseFloat(emptyToZ('0.30'))) {
		document.getElementById("wb395a105060vo.kcl").value = '0.30';
	}
	readText();
	calObj = new caltb('tab1');
	calObj.negative = true;
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.customrulesEnd = function() {
		a105060js();
	}
	initCalTable(calObj);
	runRulesForName(calObj);

}

function a105060js() {

	if (parseFloat(emptyToZ($F("wb395a105060vo.bnfhzcje"))) > parseFloat(emptyToZ($F("wb395a105060vo.kcxeje")))) {
		document.getElementById("wb395a105060vo.bnkceje").value = caltbNumloop(
				parseFloat(emptyToZ($F("wb395a105060vo.bnfhzcje")))
						- parseFloat(emptyToZ($F("wb395a105060vo.kcxeje"))), 2);
		document.getElementById("wb395a105060vo.yqndjzeje").value = "0.00";
		document.getElementById("wb395a105060vo.bnzctzje").value = caltbNumloop(
				parseFloat(emptyToZ($F("wb395a105060vo.byxzcje")))
						+ parseFloat(emptyToZ($F("wb395a105060vo.bnfhzcje")))
						- parseFloat(emptyToZ($F("wb395a105060vo.kcxeje")))
						+ parseFloat(emptyToZ($F("wb395a105060vo.ftgjzqtfyje")))
						- parseFloat(emptyToZ($F("wb395a105060vo.qtgjzbqyfyje"))),
				2);

	} else {
		document.getElementById("wb395a105060vo.bnkceje").value = "0.00";
		if ((parseFloat(emptyToZ($F("wb395a105060vo.kcxeje"))) - parseFloat(emptyToZ($F("wb395a105060vo.bnfhzcje")))) < parseFloat(emptyToZ($F("wb395a105060vo.ndljkceje")))) {
			$("wb395a105060vo.yqndjzeje").value = caltbNumloop(
					(parseFloat(emptyToZ($F("wb395a105060vo.kcxeje"))) - parseFloat(emptyToZ($F("wb395a105060vo.bnfhzcje")))),
					2);
		} else {
			document.getElementById("wb395a105060vo.yqndjzeje").value = caltbNumloop(
					parseFloat(emptyToZ($F("wb395a105060vo.ndljkceje"))), 2);
		}

		document.getElementById("wb395a105060vo.bnzctzje").value = caltbNumloop(
				parseFloat(emptyToZ($F("wb395a105060vo.byxzcje")))
						+ parseFloat(emptyToZ($F("wb395a105060vo.ftgjzqtfyje")))
						- parseFloat(emptyToZ($F("wb395a105060vo.qtgjzbqyfyje")))
						- parseFloat(emptyToZ($F("wb395a105060vo.yqndjzeje"))),
				2);

	}

	document.getElementById("wb395a105060vo.ljkceje").value = caltbNumloop(
			parseFloat(emptyToZ($F("wb395a105060vo.bnkceje")))
					+ parseFloat(emptyToZ($F("wb395a105060vo.ndljkceje")))
					- parseFloat(emptyToZ($F("wb395a105060vo.yqndjzeje"))), 2);

}

function onChangekcl() {
	runRulesForName(calObj);
}

function tempSave(button) {
	$("#handleDesc").val("广告费和业务宣传费跨年度纳税调整明细表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105060Action.do', {
//				method : 'post',
//				parameters : $('WB395A105060Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", null, null, "WB395IndexForm");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105060Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105060Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			runMsg("0", null, null, "WB395IndexForm");
		}
	});
	
}
