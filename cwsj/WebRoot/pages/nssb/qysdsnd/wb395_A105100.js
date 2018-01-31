Ext.BLANK_IMAGE_URL = './public/images/s.gif';
var calObj
Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A105100_TbSm.html");
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
							openMaxWindow("/WB395A105100Action.do?handleCode=printPage&pzXh="
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
	calObj.negative = true;
	initCalTable(calObj);
	readText();
}

function readDate() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").va("readDate");
	waitDialog();
//	new Ajax.Request('/WB395A105100Action.do', {
//				method : 'post',
//				parameters : $('WB395A105100Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "sjdq");
//					if (!trim($F('sucessMsg')).empty()) {
//						iconDialog($F('sucessMsg'), 'INFO', function() {
//									initCalTable(calObj);
//									runRulesForName(calObj);
//								});
//					} else if (!$F('errorMessage').empty()) {
//						iconDialog($F('errorMessage'), 'ERROR');
//					}
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105100Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105100Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "sjdq");
			if (!trim($F('sucessMsg')).empty()) {
				iconDialog($F('sucessMsg'), 'INFO', function() {
							initCalTable(calObj);
							runRulesForName(calObj);
						});
			} else if (!$F('errorMessage').empty()) {
				iconDialog($F('errorMessage'), 'ERROR');
			}
		}
	});
	
}

function tempSave(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	$("#proMessage").val("");
	waitDialog();
//	new Ajax.Request('/WB395A105100Action.do', {
//				method : 'post',
//				parameters : $('WB395A105100Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					runMsg("0", null, null, "WB395IndexForm");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105100Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105100Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0", null, null, "WB395IndexForm");
		}
	});
	
}

function submitData() {
	tempSave();
}
