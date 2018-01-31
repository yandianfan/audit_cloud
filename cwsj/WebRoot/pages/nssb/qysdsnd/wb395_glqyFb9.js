Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
					renderTo : "toolbar",
					items : ['-', '->', {
								id : "tempBtn",
								text : "暂存",
								iconCls : "save",
								handler : function() {
									save();
								},
								scope : this
							}, '-', {
								id : "printBtn",
								text : "打印",
								iconCls : "print",
								handler : function() {
									openMaxWindow("/WB395glqyFb9Action.do?pzXh="
											+ $F("fb9vo.pzxh")
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
	readText();
	var rulsefb9 = new Array();
	rulsefb9[0] = "b9hjje1 = fb9vo.xjwzfkxje1 + fb9vo.xjwzfkxje2 + fb9vo.xjwzfkxje3 + fb9vo.xjwzfkxje4 + fb9vo.xjwzfkxje7 + fb9vo.xjwzfkxje8 + fb9vo.xjwzfkxje9 + fb9vo.xjwzfkxje10 + fb9vo.xjwzfkxje11 + fb9vo.xjwzfkxje12 + fb9vo.xjwzfkxje13 + fb9vo.xjwzfkxje14 + fb9vo.xjwzfkxje15 + fb9vo.xjwzfkxje16 + fb9vo.xjwzfkxje17 + fb9vo.xjwzfkxje18 + fb9vo.xjwzfkxje19 + fb9vo.xjwzfkxje21";// 6=5/1
	rulsefb9[1] = "b9hjje2 = fb9vo.xjwglqyzfkxje1 + fb9vo.xjwglqyzfkxje2 + fb9vo.xjwglqyzfkxje3 + fb9vo.xjwglqyzfkxje4 + fb9vo.xjwglqyzfkxje7 + fb9vo.xjwglqyzfkxje8 + fb9vo.xjwglqyzfkxje9 + fb9vo.xjwglqyzfkxje10 + fb9vo.xjwglqyzfkxje11 + fb9vo.xjwglqyzfkxje12 + fb9vo.xjwglqyzfkxje13 + fb9vo.xjwglqyzfkxje14 + fb9vo.xjwglqyzfkxje15 + fb9vo.xjwglqyzfkxje16 + fb9vo.xjwglqyzfkxje17 + fb9vo.xjwglqyzfkxje18 + fb9vo.xjwglqyzfkxje19 + fb9vo.xjwglqyzfkxje21";// 6=5/1
	rulsefb9[2] = "b9hjje3 = fb9vo.ykjqysdsje1 + fb9vo.ykjqysdsje2 + fb9vo.ykjqysdsje3 + fb9vo.ykjqysdsje4 + fb9vo.ykjqysdsje7 + fb9vo.ykjqysdsje8 + fb9vo.ykjqysdsje9 + fb9vo.ykjqysdsje10 + fb9vo.ykjqysdsje11 + fb9vo.ykjqysdsje12 + fb9vo.ykjqysdsje13 + fb9vo.ykjqysdsje14 + fb9vo.ykjqysdsje15 + fb9vo.ykjqysdsje16 + fb9vo.ykjqysdsje17 + fb9vo.ykjqysdsje18 + fb9vo.ykjqysdsje19 + fb9vo.ykjqysdsje21";// 2=3+4
	// rulsefb9[3] = "b9hjje4 = fb9vo.xsyhbj1 + fb9vo.xsyhbj2 + fb9vo.xsyhbj3 +
	// fb9vo.xsyhbj4 + fb9vo.xsyhbj5 + fb9vo.xsyhbj6 + fb9vo.xsyhbj7 +
	// fb9vo.xsyhbj8
	// + fb9vo.xsyhbj9 + fb9vo.xsyhbj10 + fb9vo.xsyhbj11 + fb9vo.xsyhbj12 +
	// fb9vo.xsyhbj13 + fb9vo.xsyhbj14 + fb9vo.xsyhbj15 + fb9vo.xsyhbj16 +
	// fb9vo.xsyhbj17 + fb9vo.xsyhbj18 + fb9vo.xsyhbj19 + fb9vo.xsyhbj20 +
	// fb9vo.xsyhbj21";//9=7-8

	var calObjfb9 = new caltb('t9');
	calObjfb9.setRules(rulsefb9);
	initCalTable(calObjfb9);
	runRulesForName(calObjfb9);
}

function save() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("对外支付款项情况表（表九）暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb9Action.do', {
//				method : 'post',
//				parameters : $('WB395GlqyForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "update");
//				   runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
//	
	$.ajax({
		url : "/WB395glqyFb9Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395GlqyForm').serialize(),
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