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
							openMaxWindow("/nssb/wb395/wb395_A107010_TbSm.html");
						},
						scope : this
					}, {
						id : "dqsjBtn",
						text : "自动计算",
						iconCls : "magnify",
						handler : function() {
							readData();
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
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A107010Action.do?handleCode=printData&pzXh="
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
	calObj.negative = false;
	initCalTable(calObj);
	readText();
}

function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("免税、减计收入及加计扣除优惠明细表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A107010Action.do', {
//				method : 'post',
//				parameters : $('WB395A107010Form').serialize(),
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
		url : "/WB395A107010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107010Form').serialize(),
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

function readData(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("读取数据");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB395A107010Action.do', {
//				method : 'post',
//				parameters : $('WB395A107010Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					if ("" != $('sucessMsg')) {
//						initCalTable(calObj);
//						runRulesForName(calObj);
//					}
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
//	
	$.ajax({
		url : "/WB395A107010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107010Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			if ("" != $F('sucessMsg')) {
				initCalTable(calObj);
				runRulesForName(calObj);
			}
			runMsg("0", false, null, 'WB395IndexForm');
		}
	});
	
}

function submitData() {
	tempSave();
}

function openFB(fbdm) {
	goUrl($F('vo.pzxh'), fbdm);
}