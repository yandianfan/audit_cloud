var jsonContent;
var calObj;
var nsyyArr = new Array();

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A105080_TbSm.html");
						},
						scope : this
					}, '-', {
						id : "dqsjBtn",
						text : "自动计算",
						iconCls : "magnify",
						handler : function() {
							readData();
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
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395A105080Action.do?handleCode=printPage&pzXh="
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
		a105080js();
	}
	initCalTable(calObj);
	runRulesForID(calObj);
	buildData();
	a105080js();
}

function a105080js() {
	document.getElementById("zzzzjejehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzczzzzjejehj")))
					+ parseFloat(emptyToZ($F("swzczzzzjejehj")))
					+ parseFloat(emptyToZ($F("wxzczzzzjejehj")))
					+ parseFloat(emptyToZ($F("dtfyzzzzjejehj")))
					+ parseFloat(emptyToZ($F("kttzzzzzjeje")))
					+ parseFloat(emptyToZ($F("kftzzzzzjeje"))), 2);
	document.getElementById("zzbnzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzczzbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("swzczzbnzjtxjehj"))
					+ parseFloat(emptyToZ($F("wxzczzbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("dtfyzzbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("kttzzzbnzjtxje")))
					+ parseFloat(emptyToZ($F("kftzzzbnzjtxje"))), 2);
	document.getElementById("zzljzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzczzljzjtxjehj")))
					+ parseFloat(emptyToZ($F("swzczzljzjtxjehj")))
					+ parseFloat(emptyToZ($F("wxzczzljzjtxjehj")))
					+ parseFloat(emptyToZ($F("dtfyzzljzjtxjehj")))
					+ parseFloat(emptyToZ($F("kttzzzljzjtxje")))
					+ parseFloat(emptyToZ($F("kftzzzljzjtxje"))), 2);
	document.getElementById("sszcjsjcjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzcsszcjsjcjehj")))
					+ parseFloat(emptyToZ($F("swzcsszcjsjcjehj")))
					+ parseFloat(emptyToZ($F("wxzcsszcjsjcjehj")))
					+ parseFloat(emptyToZ($F("dtfysszcjsjcjehj")))
					+ parseFloat(emptyToZ($F("kttzsszcjsjcje")))
					+ parseFloat(emptyToZ($F("kftzsszcjsjcje"))), 2);
	document.getElementById("ssassbnzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzcssassbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("swzcssassbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("wxzcssassbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("dtfyssassbnzjtxjehj")))
					+ parseFloat(emptyToZ($F("kttzssassbnzjtxje")))
					+ parseFloat(emptyToZ($F("kftzssassbnzjtxje"))), 2);
	document.getElementById("ssbnjszjjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzcssbnjszjjehj")))
					+ parseFloat(emptyToZ($F("swzcssbnjszjjehj"))), 2);
	document.getElementById("ssxzzczjjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzcssxzzczjjehj"))), 2);
	document.getElementById("ssljzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzcssljzjtxjehj")))
					+ parseFloat(emptyToZ($F("swzcssljzjtxjehj")))
					+ parseFloat(emptyToZ($F("wxzcssljzjtxjehj")))
					+ parseFloat(emptyToZ($F("dtfyssljzjtxjehj")))
					+ parseFloat(emptyToZ($F("kttzssljzjtxje")))
					+ parseFloat(emptyToZ($F("kftzssljzjtxje"))), 2);
	document.getElementById("nsjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gdzcnsjehj").value))
					+ parseFloat(emptyToZ($F("swzcnsjehj")))
					+ parseFloat(emptyToZ($F("wxzcnsjehj")))
					+ parseFloat(emptyToZ($F("dtfynsjehj")))
					+ parseFloat(emptyToZ($F("kttznsje")))
					+ parseFloat(emptyToZ($F("kftznsje"))), 2);

}

//function nstzjejs() {
//	for (var i = 1; i < $ES('ssbnjszjje').length - 1; i++) {
//		if (parseFloat(emptyToZ($ES('ssbnjszjje')[i].value)) != 0
//				&& $ES('ssbnjszjje')[i].value != "null") {
//			$ES('nsje')[i].value = caltbNumloop(
//					parseFloat(emptyToZ($ES('zzbnzjtxje')[i].value))
//							- parseFloat(emptyToZ($ES('ssbnjszjje')[i].value)),
//					2);
//		} else {
//			$ES('nsje')[i].value = caltbNumloop(
//					parseFloat(emptyToZ($ES('zzbnzjtxje')[i].value))
//							- parseFloat(emptyToZ($ES('ssassbnzjtxje')[i].value)),
//					2);
//		}
//	}
//}

function tempSave(button) {
	if (!bascicCheck()) {
		return;
	}
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("资产折旧、摊销情况及纳税调整明细表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105080Action.do', {
//				method : 'post',
//				parameters : $('WB395A105080Form').serialize(),
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
		url : "/WB395A105080Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105080Form').serialize(),
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

function bascicCheck() {
	var tempje = 0;
	var tempinfo = "";
	for (var i = 0; i < $ES('zzzzjeje').length; i++) {
		temp = parseFloat(emptyToZ($ES('nsje')[i].value));
		if (temp != 0 && $ES('nsyy')[i].value == ""&&$ES('nsyy')[i].id=="") {
			tempinfo += (i + 1) + ",";

		}
	}
	if (tempinfo != "") {
		iconDialog('第' + tempinfo.substr(0, tempinfo.lastIndexOf(',')) + '行没有选择第10列的“调整原因”,请根据实际情况选择对应的“调整原因”。', 'WARNING');
		return false;
	}
	return true;
}

function readData(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("自动计算");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB395A105080Action.do', {
//				method : 'post',
//				parameters : $('WB395A105080Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105080Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105080Form').serialize(),
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
function oncheckdata(Obj) {
	Obj.parentElement.parentElement.lastChild.lastChild.previousSibling.value = '';
	for (var i = 0; i < Obj.parentElement.children.length - 1; i++) {
		if (Obj.parentElement.children[i].checked == true) {
			if (Obj.parentElement.children[3].value != ''
					&& Obj.parentElement.children[3].value != null) {
				Obj.parentElement.children[3].value += '$';
			}
			Obj.parentElement.children[3].value += Obj.parentElement.children[i].value;
		}
	}
}

function buildData() {
	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;
	var bizData = jsonContent.BIZDATA;
	for (var i = 0; i < bizData.length; i++) {
		rowInfo = bizData[i];
		$ES('zzzzjeje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzzzjeje)), 2);
		$ES('zzbnzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzbnzjtxje)), 2);
		$ES('zzljzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzljzjtxje)), 2);
		$ES('sszcjsjcje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.sszcjsjcje)), 2);
		$ES('ssassbnzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ssassbnzjtxje)), 2);
		if (parseInt(rowInfo.sbmxxh) <= $ES('ssbnjszjje').length) {
			$ES('ssbnjszjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.ssbnjszjje)), 2);
		}
		if (parseInt(rowInfo.sbmxxh) <= $ES('ssxzzczjje').length) {
			$ES('ssxzzczjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.ssxzzczjje)), 2);
		}
		$ES('ssljzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ssljzjtxje)), 2);
		$ES('nsje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.nsje)), 2);
		$ES('nsyy')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.nsyy;
	}
	for (var n = 0; n < $ES('nsyy').length; n++) {
		nsyyArr = $ES('nsyy')[n].value.split('$');
		for (var j = 0; j < nsyyArr.length; j++) {
			for (var i = 0; i < $ES('nsyy')[n].parentElement.children.length
					- 1; i++) {
				if (nsyyArr[j] == $ES('nsyy')[n].parentElement.children[i].value) {
					$ES('nsyy')[n].parentElement.children[i].checked = true;
				}
			}
		}
	}
}

function submitData() {
	tempSave();
}
