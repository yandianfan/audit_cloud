var rules;
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
									openMaxWindow("/nssb/wb395/wb395_A107013_TbSm.html");
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
								id : "printBtn",
								text : "打印",
								iconCls : "print",
								handler : function() {
									openMaxWindow("/WB395A107013Action.do?pzXh="
											+ $F("vo.pzxh")
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
//	 rules = new Array();
//	 rules[0] = "vo.jrjgjjsrje = vo.jrjglxsrje * 0.1";
//	 rules[1] = "vo.bxgsbfsrje = vo.bxgsybfsrje + vo.bxgsfbfsrje - vo.bxgsfcbfsrje";
//	 rules[2] = "vo.bxgsjjsrje = vo.bxgsbfsrje * 0.1";
//	 rules[3] = "vo.qtlxjjsrje = vo.qtlxsrzje * 0.1";
//	 rules[4] = "vo.hjje = vo.jrjgjjsrje + vo.bxgsjjsrje + vo.qtlxjjsrje";
	calObj = new caltb("tab1");
	//calObj.setRules(rules);
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.negative = true
	initCalTable(calObj);
	runRulesForName(calObj);
}

function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A107013Action.do', {
//				method : 'post',
//				parameters : $('WB395A107013Form').serialize(),
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
		url : "/WB395A107013Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107013Form').serialize(),
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


// 提类型的校验可以提交，调用暂存方法
function submitData() {
	tempSave();
}