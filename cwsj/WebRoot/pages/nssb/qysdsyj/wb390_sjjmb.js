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
							openMaxWindow("/nssb/wb390/wb390_sjjmb_TbSm.html");
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
							openMaxWindow("/WB390sjjmbAction.do?handleCode=printPage&pzxh="
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
	$("vo.qt4").disabled = "disabled";
	$("vo.qt5").disabled = "disabled";
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
//	new Ajax.Request('/WB390sjjmbAction.do', {
//				method : 'post',
//				parameters : $('WB390sjjmbForm').serialize(),
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
		url : "/WB390sjjmbAction.do",
		async : true,
		dataType : "html",
		data : $('#WB390sjjmbForm').serialize(),
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
		iconDialog('请选择行次9的项目！', 'ERROR');
		return false;
	}

	// bqje = parseFloat(emptyToZ($('vo.bqqt4je').value));
	// ljje = parseFloat(emptyToZ($('vo.ljqt4je').value));
	// xm = $('vo.qt4').value;
	// if (caltbNumloop(bqje + ljje, 2) != 0 && xm == "") {
	// iconDialog('请选择行次28的项目！', 'ERROR');
	// return false;
	// }
	//
	// bqje = parseFloat(emptyToZ($('vo.bqqt5je').value));
	// ljje = parseFloat(emptyToZ($('vo.ljqt5je').value));
	// xm = $('vo.qt5').value;
	// if (caltbNumloop(bqje + ljje, 2) != 0 && xm == "") {
	// iconDialog('请选择行次29的项目！', 'ERROR');
	// return false;
	// }

	bqje = parseFloat(emptyToZ($F('vo.bqqt1je')));
	ljje = parseFloat(emptyToZ($F('vo.ljqt1je')));
	xm = document.getElementById('vo.qt1').value;
	if (caltbNumloop(bqje + ljje, 2) != 0 && xm == "") {
		iconDialog('请选择行次9的项目！', 'ERROR');
		return false;
	}

	// if ($('vo.qt4').value != "" && $('vo.qt5').value != "") {
	// if ($('vo.qt4').value == $('vo.qt5').value) {
	// iconDialog('行次28、行次29不能选择同一个项目！', 'ERROR');
	// return false;
	// }
	// }
	return true;
}