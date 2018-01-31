var calObj;
var bqje;
var ljje;
var xm;

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb390/wb390_jmsds_TbSm.html");
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
							openMaxWindow("/WB390jmsdsAction.do?handleCode=printPage&pzxh="
									+ $F("vo.pzxh"));
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
	$("vo.qt2").disabled = "disabled";
	if ("0143" != $F('zspmdm')) {
		document.getElementById('vo.bqmzzzje').readOnly = true;
		document.getElementById('vo.bqmzzzje').className = "fsrx";
		document.getElementById('vo.ljmzzzje').readOnly = true;
		document.getElementById('vo.ljmzzzje').className = "fsrx";
		document.getElementById('vo.bqglqyje').readOnly = true;
		document.getElementById('vo.bqglqyje').className = "fsrx";
		document.getElementById('vo.ljglqyje').readOnly = true;
		document.getElementById('vo.ljglqyje').className = "fsrx";
	}
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	// calObj.negative = true;
	initCalTable(calObj);
	runRulesForName(calObj);
	readText();
}

function tempSave() {
	if (!bascicCheck()) {
		return;
	}
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("暂存");
	$("#handleCode").val("saveData");
	waitDialog();
//	new Ajax.Request('/WB390jmsdsAction.do', {
//				method : 'post',
//				parameters : $('WB390jmsdsForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					runMsg("0", false, null, 'WB390fbListForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	
	$.ajax({
		url : "/WB390jmsdsAction.do",
		async : true,
		dataType : "html",
		data : $('#WB390jmsdsForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdateMoreTag(responseText, "update");
			runMsg("0", false, null, 'WB390fbListForm');
		}
	});
}

function submitData() {
	tempSave();
}

function bascicCheck() {
	bqje = parseFloat(emptyToZ($F('vo.bqqt1je')));
	ljje = parseFloat(emptyToZ($F('vo.ljqt1je')));
	xm = document.getElementById('vo.qt1').value;
	if (caltbNumloop(bqje + ljje, 2) != 0 && xm == "") {
		iconDialog('请选择行次29的项目！', 'ERROR');
		return false;
	}

	bqje = parseFloat(emptyToZ($F('vo.bqqt2je')));
	ljje = parseFloat(emptyToZ($F('vo.ljqt2je')));
	xm = document.getElementById('vo.qt2').value;
	if (caltbNumloop(bqje + ljje, 2) != 0 && xm == "") {
		iconDialog('请选择行次30的项目！', 'ERROR');
		return false;
	}

	if ($F('vo.qt1') != "" && $F('vo.qt2') != "") {
		if ($F('vo.qt1') == $F('vo.qt2')) {
			iconDialog('行次29、行次30不能选择同一个项目！', 'ERROR');
			return false;
		}
	}
	// 2015.11.1起不适用
	// 行次3不等于0，行次2应该等于行次3
	// if (caltbNumloop(parseFloat(emptyToZ($('vo.bqxxwje').value)), 2) != 0
	// && caltbNumloop(parseFloat(emptyToZ($('vo.bqxxwje').value))
	// - parseFloat(emptyToZ($('vo.bqxwje').value))) != 0) {
	// iconDialog('行次3本期金额应该等于行次2本期金额', 'ERROR');
	// return false;
	// }
	// if (caltbNumloop(parseFloat(emptyToZ($('vo.ljxxwje').value)), 2) != 0
	// && caltbNumloop(parseFloat(emptyToZ($('vo.ljxxwje').value))
	// - parseFloat(emptyToZ($('vo.ljxwje').value))) != 0) {
	// iconDialog('行次3累计金额应该等于行次2累计金额', 'ERROR');
	// return false;
	// }
	return true;
}