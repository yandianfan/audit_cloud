var calObj;
Ext.BLANK_IMAGE_URL = './public/images/s.gif';

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', '-', {
						id : "tbsm",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_glywwlqkbgmx1_TbSm.html");
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
						id : "printBtn",
						text : "打印",
						iconCls : "print",
						handler : function() {
							openMaxWindow("/WB395glywwlqkbgmx1Action.do?pzXh="
									+ $F("pzXh") +"&xh="+$F("xh") + "&handleCode=printData");
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
	calObj.setRules(ymkj_getRulesX("tab1"));
//	calObj.negative = true;
	calObj01 = new caltb("tab2");
	initCalTable(calObj);
	runRulesForName(calObj);
	initCalTable(calObj01);
	runRulesForName(calObj01);
}

function tempSave() {
	$('#sucessMsg').va("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glywwlqkbgmx1Action.do', {
//				method : 'post',
//				parameters : $('WB395glywwlqkbgmx1Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");	
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395glywwlqkbgmx1Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395glywwlqkbgmx1Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0", false, null, 'WB395IndexForm');
		}
	});
	
}


