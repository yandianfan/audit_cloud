var calObj;

Ext.BLANK_IMAGE_URL = './public/images/s.gif';

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', '-', {
						text : "填表说明",
						iconCls : "fb",
						id : "tbsmBtn",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A101010_TbSm.html");
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
							openMsgWindow();
						},
						scope : this
					}, '-', {
						id : "printBtn",
						text : "打印",
						iconCls : "print",
						handler : function() {
							openMaxWindow("/WB395A101010Action.do?pzXh="
									+ $F("a101010vo.pzxh")
									+ "&handleCode=printData");
						},
						scope : this
					}, '-', {
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
	calObj = new caltb("tab1");
	calObj.negative = true;
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.setRulesY(ymkj_getRulesY("tab1"));
	initCalTable(calObj);
	runRulesForName(calObj);

	if ($F('kjzd') == 'CKL') {
		document.getElementById('a101010vo.hzsy').readOnly = false;
		document.getElementById('a101010vo.hzsy').className = 'srx';
		document.getElementById('a101010vo.hzsy').tabIndex = -1;

	} else {
		document.getElementById('a101010vo.hzsy').readOnly = true;
		document.getElementById('a101010vo.hzsy').className = 'fsrx';
	}
}

function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A101010Action.do', {
//				method : 'post',
//				parameters : $('WB395A101010Form').serialize(),
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
		url : "/WB395A101010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A101010Form').serialize(),
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