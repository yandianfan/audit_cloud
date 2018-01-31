var jsonContent;
var calObj;
var calObj2;

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A105070_TbSm.html");
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

					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A105070_2Action.do?handleCode=printData&pzXh="
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
	// calObj.setRules(ymkj_getRulesX("tab1"));
	initCalTable(calObj);
	runRulesForName(calObj);
}

function A105070_js() {
	document.getElementById("gynstzjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gyzzjehj")))
					- parseFloat(emptyToZ($F("gyssjehj"))), 2);
	document.getElementById("nstzjehj").value = caltbNumloop(
			parseFloat(emptyToZ($F("gynstzjehj")))
					+ parseFloat(emptyToZ($F("fgyzzjehj"))), 2);
}

function tempSave(button) {
	$("#handleDesc").val("捐赠支出纳税调整明细表暂存");
	$("#handleCode").val("tempSave");
	$("#sucessMsg").val("");
	$("#errorMessage").val("");
	$("#proMessage").val("");
	waitDialog();
//	new Ajax.Request('/WB395A105070_2Action.do', {
//				method : 'post',
//				parameters : $('WB395A105070_2Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", null, null, "WB395IndexForm");
//					initCalTable(calObj);
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105070_2Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105070_2Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			runMsg("0", null, null, "WB395IndexForm");
			initCalTable(calObj);
		}
	});
	
}
