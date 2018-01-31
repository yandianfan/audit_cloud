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
							// readDateZb();
							openMaxWindow("/nssb/wb395/wb395_A107042_TbSm.html");
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
							openMaxWindow("/WB395A107042Action.do?pzXh="
									+ $F("vo.pzxh") + "&handleCode=printData");
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
	/*
	 * rules = new Array(); rules[0] = "vo.qdhtbl = vo.qdhtdxz / vo.qynypjrs";
	 * rules[1] = "vo.yfrybl = vo.yfrys / vo.qynypjrs"; rules[2] = "vo.jcdlbl =
	 * vo.jcdlsr / vo.qyzsre"; rules[3] = "vo.jcsjbl = vo.jcsjsr / vo.qyzsre";
	 * rules[4] = "vo.jczzbl = vo.jczzsr / vo.qyzsre"; rules[5] = "vo.rjqyxsbl =
	 * vo.rjcpsr / vo.qyzsre"; rules[6] = "vo.qrsrjxsbl = vo.qrcpsr /
	 * vo.qyzsre"; rules[7] = "vo.rjcpzzbl = vo.rjzzcpsr / vo.qyzsre"; rules[8] =
	 * "vo.qrsrjbl = vo.qrsjcsr / vo.qyzsre"; rules[9] = "vo.qyzgjnbl =
	 * vo.qydyfy / vo.qrsxsbl"; rules[10] = "vo.cscpkfbl = vo.cscpkfrs /
	 * vo.qyzgs"; rules[11] = "vo.rjxsbl = vo.qyrjsr / vo.qynsr"; rules[12] =
	 * "vo.zcxsbl = vo.zcrjsr / vo.qyrjsr"; rules[13] = "vo.qyjsbl = vo.qyjsfy /
	 * vo.qyrjsr";              
	 */
	calObj = new caltb("tab1");
	// calObj.setRules(rules);
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.negative = true
	initCalTable(calObj);
	runRulesForName(calObj);
}
function readData(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("读取数据");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB395A107042Action.do', {
//				method : 'post',
//				parameters : $('WB395A107042Form').serialize(),
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
	
	$.ajax({
		url : "/WB395A107042Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107042Form').serialize(),
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
function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A107042Action.do', {
//				method : 'post',
//				parameters : $('WB395A107042Form').serialize(),
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
		url : "/WB395A107042Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107042Form').serialize(),
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

function submitData() {
	tempSave();
}