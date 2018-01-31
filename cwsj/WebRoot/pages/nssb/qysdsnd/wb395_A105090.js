var jsonContent;
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
							openMaxWindow("/nssb/wb395/wb395_A105090_TbSm.html");
						},
						scope : this
					}, '-', {
						id : "dqsjBtn",
						text : "自动计算",
						iconCls : "magnify",
						handler : function() {
							readDate();
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
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395A105090Action.do?handleCode=printPage&pzXh="
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
	calObj.type = "2";
	calObj.setRulesID(ymkj_getRulesX("tab1"));
	calObj.customrulesEnd = function() {
		a105090js();
	}
	initCalTable(calObj);
	runRulesForID(calObj);

	buildData();
	a105090js();
}

function buildData() {
	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;

		var bizData = jsonContent.BIZDATA;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			$ES('zzje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.zzje)), 2);
			$ES('ssje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.ssje)), 2);
			$ES('nstzje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.nstzje)), 2);
		}
		a105090js();
}

function a105090js() {
	document.getElementById("zzjehj").value = caltbNumloop(parseFloat(emptyToZ($F("qdzzjehj")))
					+ parseFloat(emptyToZ($F("zxzzjehj"))), 2);
	document.getElementById("ssjehj").value = caltbNumloop(parseFloat(emptyToZ($F("qdssjehj")))
					+ parseFloat(emptyToZ($F("zxssjehj"))), 2);
	document.getElementById("nstzjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("qdnstzjehj")))
					+ parseFloat(emptyToZ($F("zxnstzjehj"))), 2);
}
function tempSave(button) {
	$("#handleDesc").val("资产损失税前扣除及纳税调整明细表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105090Action.do', {
//				method : 'post',
//				parameters : $('WB395A105090Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", null, null, "WB395IndexForm");
//					buildData();
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105090Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105090Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			runMsg("0", null, null, "WB395IndexForm");
			buildData();
		}
	});
	
}
function readDate(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("自动计算");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB395A105090Action.do', {
//				method : 'post',
//				parameters : $('WB395A105090Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runRulesForID(calObj);
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105090Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105090Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			runRulesForID(calObj);
			runMsg("0", false, null, 'WB395IndexForm');
		}
	});
	
}
