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
							openMaxWindow("/nssb/wb395/wb395_A105091_TbSm.html");
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
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A105091_2Action.do?handleCode=printData&pzXh="
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
	readText();
	calObj = new caltb('tab1');
	calObj.setRulesY(ymkj_getRulesY("tab1"));
//	calObj.setRules(ymkj_getRulesX("tab1"));
	initCalTable(calObj);
	runRulesForName(calObj);
	if($F('bbzt') ==''||$F('bbzt') =='0'){
	alert("存在专项申报资产损失事项的，请按规定至主管税务机关进行专项申报。");
	}
}

function a105091js() {
	for (var i = 0; i < $ES('hbssssje').length; i++) {
		if ($ES('hbssssje')[i].value != '') {
			$ES('hbssnstzje')[i].value = caltbNumloop(parseFloat($ES('hbsszzje')[i].value
					- $ES('hbssssje')[i].value),2);
		}
	}
	for (var i = 0; i < $ES('fhbssssje').length; i++) {
		if ($ES('fhbssssje')[i].value != '') {
			$ES('fhbssnstzje')[i].value = caltbNumloop(parseFloat($ES('fhbsszzje')[i].value
					- $ES('fhbssssje')[i].value),2);
		}
	}
	for (var i = 0; i < $ES('tzssssje').length; i++) {
		if ($ES('tzssssje')[i].value != '') {
			$ES('tzssnstzje')[i].value = caltbNumloop(parseFloat($ES('tzsszzje')[i].value
					- $ES('tzssssje')[i].value),2);
		}
	}
	for (var i = 0; i < $ES('qtssje').length; i++) {
		if ($ES('qtssje')[i].value != '') {
			$ES('qtnstzje')[i].value = caltbNumloop(parseFloat($ES('qtzzje')[i].value
					- $ES('qtssje')[i].value),2);
		}

	}

}

function a105091hjjs() {
	document.getElementById('zzjehj').value = caltbNumloop(
			parseFloat(emptyToZ($F('hbsszzjehj')))
					+ parseFloat(emptyToZ($F('fhbsszzjehj')))
					+ parseFloat(emptyToZ($F('tzsszzjehj')))
					+ parseFloat(emptyToZ($F('qtzzjehj'))), 2);
	document.getElementById('czsrjehj').value = caltbNumloop(
			parseFloat(emptyToZ($F('hbssczsrjehj')))
					+ parseFloat(emptyToZ($F('fhbssczsrjehj')))
					+ parseFloat(emptyToZ($F('tzssczsrjehj')))
					+ parseFloat(emptyToZ($F('qtczsrjehj'))), 2);
	document.getElementById('pcsrjehj').value = caltbNumloop(
			parseFloat(emptyToZ($F('hbsspcsrjehj')))
					+ parseFloat(emptyToZ($F('fhbsspcsrjehj')))
					+ parseFloat(emptyToZ($F('tzsspcsrjehj')))
					+ parseFloat(emptyToZ($F('qtpcsrjehj'))), 2);
	document.getElementById('jsjcjehj').value = caltbNumloop(
			parseFloat(emptyToZ($F('hbssjsjcjehj')))
					+ parseFloat(emptyToZ($F('fhbssjsjcjehj')))
					+ parseFloat(emptyToZ($F('tzssjsjcjehj')))
					+ parseFloat(emptyToZ($F('qtjsjcjehj'))), 2);
	document.getElementById('ssjehj').value = caltbNumloop(
			parseFloat(emptyToZ($F('hbssssjehj')))
					+ parseFloat(emptyToZ($F('fhbssssjehj')))
					+ parseFloat(emptyToZ($F('tzssssjehj')))
					+ parseFloat(emptyToZ($F('qtssjehj'))), 2);
	document.getElementById('nstzjehj').value = caltbNumloop(
			parseFloat(emptyToZ($F('hbssnstzjehj')))
					+ parseFloat(emptyToZ($F('fhbssnstzjehj')))
					+ parseFloat(emptyToZ($F('tzssnstzjehj')))
					+ parseFloat(emptyToZ($F('qtnstzjehj'))), 2);
}
function tempSave(button) {
	if (!bascicCheck()) {
		return;
	}
	$("#handleDesc").val("资产损失（专项申报）税前扣除及纳税调整明细表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105091_2Action.do', {
//				method : 'post',
//				parameters : $('WB395A105091_2Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", null, null, "WB395IndexForm");
//					initCalTable(calObj);
//					runRulesForName(calObj);
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105091_2Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105081WB395A105091_2Form_2Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			runMsg("0", null, null, "WB395IndexForm");
			initCalTable(calObj);
			runRulesForName(calObj);
		}
	});
	
}

function bascicCheck() {
	for (var i = 0; i < $ES('hbsszzje').length; i++) {
		if ($ES('hbsszzje')[i].value != '' && $ES('hbssssje')[i].value == '') {
			iconDialog('帐载金额不为零时，对应行第6列【税收金额】为必填项!', 'WARNING');
			return false;
		}
	}
	for (var i = 0; i < $ES('fhbsszzje').length; i++) {
		if ($ES('fhbsszzje')[i].value != '' && $ES('fhbssssje')[i].value == '') {
			iconDialog('帐载金额不为零时，对应行第6列【税收金额】为必填项!', 'WARNING');
			return false;
		}
	}
	for (var i = 0; i < $ES('tzsszzje').length; i++) {
		if ($ES('tzsszzje')[i].value != '' && $ES('tzssssje')[i].value == '') {
			iconDialog('帐载金额不为零时，对应行第6列【税收金额】为必填项!', 'WARNING');
			return false;
		}
	}
	for (var i = 0; i < $ES('qtzzje').length; i++) {
		if ($ES('qtzzje')[i].value != '' && $ES('qtssje')[i].value == '') {
			iconDialog('帐载金额不为零时，对应行第6列【税收金额】为必填项!', 'WARNING');
			return false;
		}
	}
	return true;
}
