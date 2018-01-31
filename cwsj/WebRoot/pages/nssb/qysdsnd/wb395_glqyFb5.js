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
									openMaxWindow("/WB395glqyFb5Action.do?pzXh="
											+ $F("pzxh") + "&handleCode=printData");
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
	if (!beforeInitPage()) {
		return;
	}
	readText();
	if ($F("handleCode") == "queryData") {
		runRulesForName(calObjfb5);
	}
}

var rulsefb5 = new Array();
rulsefb5[0] = "fb5vo.srzjyje = fb5vo.jwsrgljyje + fb5vo.jwsrfgljyje + fb5vo.jnsrgljyje + fb5vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[1] = "fb5vo.crzjyje = fb5vo.jwcrgljyje + fb5vo.jwcrfgljyje + fb5vo.jncrgljyje + fb5vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[2] = "fb52vo.srzjyje = fb52vo.jwsrgljyje + fb52vo.jwsrfgljyje + fb52vo.jnsrgljyje + fb52vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[3] = "fb52vo.crzjyje = fb52vo.jwcrgljyje + fb52vo.jwcrfgljyje + fb52vo.jncrgljyje + fb52vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[4] = "fb53vo.srzjyje = fb53vo.jwsrgljyje + fb53vo.jwsrfgljyje + fb53vo.jnsrgljyje + fb53vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[5] = "fb53vo.crzjyje = fb53vo.jwcrgljyje + fb53vo.jwcrfgljyje + fb53vo.jncrgljyje + fb53vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[6] = "fb54vo.srzjyje = fb54vo.jwsrgljyje + fb54vo.jwsrfgljyje + fb54vo.jnsrgljyje + fb54vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[7] = "fb54vo.crzjyje = fb54vo.jwcrgljyje + fb54vo.jwcrfgljyje + fb54vo.jncrgljyje + fb54vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[8] = "fb55vo.srzjyje = fb55vo.jwsrgljyje + fb55vo.jwsrfgljyje + fb55vo.jnsrgljyje + fb55vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[9] = "fb55vo.crzjyje = fb55vo.jwcrgljyje + fb55vo.jwcrfgljyje + fb55vo.jncrgljyje + fb55vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[10] = "fb56vo.srzjyje = fb56vo.jwsrgljyje + fb56vo.jwsrfgljyje + fb56vo.jnsrgljyje + fb56vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[11] = "fb56vo.crzjyje = fb56vo.jwcrgljyje + fb56vo.jwcrfgljyje + fb56vo.jncrgljyje + fb56vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[12] = "fb57vo.srzjyje = fb57vo.jwsrgljyje + fb57vo.jwsrfgljyje + fb57vo.jnsrgljyje + fb57vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[13] = "fb57vo.crzjyje = fb57vo.jwcrgljyje + fb57vo.jwcrfgljyje + fb57vo.jncrgljyje + fb57vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[14] = "fb58vo.srzjyje = fb58vo.jwsrgljyje + fb58vo.jwsrfgljyje + fb58vo.jnsrgljyje + fb58vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[15] = "fb58vo.crzjyje = fb58vo.jwcrgljyje + fb58vo.jwcrfgljyje + fb58vo.jncrgljyje + fb58vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[16] = "fb59vo.srzjyje = fb59vo.jwsrgljyje + fb59vo.jwsrfgljyje + fb59vo.jnsrgljyje + fb59vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[17] = "fb59vo.crzjyje = fb59vo.jwcrgljyje + fb59vo.jwcrfgljyje + fb59vo.jncrgljyje + fb59vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[18] = "fb510vo.srzjyje = fb510vo.jwsrgljyje + fb510vo.jwsrfgljyje + fb510vo.jnsrgljyje + fb510vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[19] = "fb510vo.crzjyje = fb510vo.jwcrgljyje + fb510vo.jwcrfgljyje + fb510vo.jncrgljyje + fb510vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[20] = "fb511vo.srzjyje = fb511vo.jwsrgljyje + fb511vo.jwsrfgljyje + fb511vo.jnsrgljyje + fb511vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[21] = "fb511vo.crzjyje = fb511vo.jwcrgljyje + fb511vo.jwcrfgljyje + fb511vo.jncrgljyje + fb511vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[22] = "fb512vo.srzjyje = fb512vo.jwsrgljyje + fb512vo.jwsrfgljyje + fb512vo.jnsrgljyje + fb512vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[23] = "fb512vo.crzjyje = fb512vo.jwcrgljyje + fb512vo.jwcrfgljyje + fb512vo.jncrgljyje + fb512vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[24] = "fb513vo.srzjyje = fb513vo.jwsrgljyje + fb513vo.jwsrfgljyje + fb513vo.jnsrgljyje + fb513vo.jnsrfgljyje";// 1=2+3+4+5
rulsefb5[25] = "fb513vo.crzjyje = fb513vo.jwcrgljyje + fb513vo.jwcrfgljyje + fb513vo.jncrgljyje + fb513vo.jncrfgljyje";// 6=7+8+9+10

rulsefb5[26] = "syqhj1 = fb5vo.srzjyje + fb52vo.srzjyje + fb53vo.srzjyje + fb54vo.srzjyje + fb55vo.srzjyje + fb56vo.srzjyje + fb57vo.srzjyje"; // 使用权合计
rulsefb5[27] = "syqhj2 = fb5vo.jwsrgljyje + fb52vo.jwsrgljyje + fb53vo.jwsrgljyje + fb54vo.jwsrgljyje + fb55vo.jwsrgljyje + fb56vo.jwsrgljyje + fb57vo.jwsrgljyje"; // 使用权合计
rulsefb5[28] = "syqhj3 = fb5vo.jwsrfgljyje + fb52vo.jwsrfgljyje + fb53vo.jwsrfgljyje + fb54vo.jwsrfgljyje + fb55vo.jwsrfgljyje + fb56vo.jwsrfgljyje + fb57vo.jwsrfgljyje"; // 使用权合计
rulsefb5[29] = "syqhj4 = fb5vo.jnsrgljyje + fb52vo.jnsrgljyje + fb53vo.jnsrgljyje + fb54vo.jnsrgljyje + fb55vo.jnsrgljyje + fb56vo.jnsrgljyje + fb57vo.jnsrgljyje"; // 使用权合计
rulsefb5[30] = "syqhj5 = fb5vo.jnsrfgljyje + fb52vo.jnsrfgljyje + fb53vo.jnsrfgljyje + fb54vo.jnsrfgljyje + fb55vo.jnsrfgljyje + fb56vo.jnsrfgljyje + fb57vo.jnsrfgljyje"; // 使用权合计
rulsefb5[31] = "syqhj6 = fb5vo.crzjyje + fb52vo.crzjyje + fb53vo.crzjyje + fb54vo.crzjyje + fb55vo.crzjyje + fb56vo.crzjyje + fb57vo.crzjyje"; // 使用权合计
rulsefb5[32] = "syqhj7 = fb5vo.jwcrgljyje + fb52vo.jwcrgljyje + fb53vo.jwcrgljyje + fb54vo.jwcrgljyje + fb55vo.jwcrgljyje + fb56vo.jwcrgljyje + fb57vo.jwcrgljyje"; // 使用权合计
rulsefb5[33] = "syqhj8 = fb5vo.jwcrfgljyje + fb52vo.jwcrfgljyje + fb53vo.jwcrfgljyje + fb54vo.jwcrfgljyje + fb55vo.jwcrfgljyje + fb56vo.jwcrfgljyje + fb57vo.jwcrfgljyje"; // 使用权合计
rulsefb5[34] = "syqhj9 = fb5vo.jncrgljyje + fb52vo.jncrgljyje + fb53vo.jncrgljyje + fb54vo.jncrgljyje + fb55vo.jncrgljyje + fb56vo.jncrgljyje + fb57vo.jncrgljyje"; // 使用权合计
rulsefb5[35] = "syqhj10 = fb5vo.jncrfgljyje + fb52vo.jncrfgljyje + fb53vo.jncrfgljyje + fb54vo.jncrfgljyje + fb55vo.jncrfgljyje + fb56vo.jncrfgljyje + fb57vo.jncrfgljyje"; // 使用权合计

rulsefb5[36] = "syhjje1 = fb58vo.srzjyje + fb59vo.srzjyje + fb510vo.srzjyje + fb511vo.srzjyje + fb512vo.srzjyje + fb513vo.srzjyje"; // 所有权合计
rulsefb5[37] = "syhjje2 = fb58vo.jwsrgljyje + fb59vo.jwsrgljyje + fb510vo.jwsrgljyje + fb511vo.jwsrgljyje + fb512vo.jwsrgljyje + fb513vo.jwsrgljyje"; // 所有权合计
rulsefb5[38] = "syhjje3 = fb58vo.jwsrfgljyje + fb59vo.jwsrfgljyje + fb510vo.jwsrfgljyje + fb511vo.jwsrfgljyje + fb512vo.jwsrfgljyje + fb513vo.jwsrfgljyje"; // 所有权合计
rulsefb5[39] = "syhjje4 = fb58vo.jnsrgljyje + fb59vo.jnsrgljyje + fb510vo.jnsrgljyje + fb511vo.jnsrgljyje + fb512vo.jnsrgljyje + fb513vo.jnsrgljyje"; // 所有权合计
rulsefb5[40] = "syhjje5 = fb58vo.jnsrfgljyje + fb59vo.jnsrfgljyje + fb510vo.jnsrfgljyje + fb511vo.jnsrfgljyje + fb512vo.jnsrfgljyje + fb513vo.jnsrfgljyje"; // 所有权合计
rulsefb5[41] = "syhjje6 = fb58vo.crzjyje + fb59vo.crzjyje + fb510vo.crzjyje + fb511vo.crzjyje + fb512vo.crzjyje + fb513vo.crzjyje"; // 所有权合计
rulsefb5[42] = "syhjje7 = fb58vo.jwcrgljyje + fb59vo.jwcrgljyje + fb510vo.jwcrgljyje + fb511vo.jwcrgljyje + fb512vo.jwcrgljyje + fb513vo.jwcrgljyje"; // 所有权合计
rulsefb5[43] = "syhjje8 = fb58vo.jwcrfgljyje + fb59vo.jwcrfgljyje + fb510vo.jwcrfgljyje + fb511vo.jwcrfgljyje + fb512vo.jwcrfgljyje + fb513vo.jwcrfgljyje"; // 所有权合计
rulsefb5[44] = "syhjje9 = fb58vo.jncrgljyje + fb59vo.jncrgljyje + fb510vo.jncrgljyje + fb511vo.jncrgljyje + fb512vo.jncrgljyje + fb513vo.jncrgljyje"; // 所有权合计
rulsefb5[45] = "syhjje10 = fb58vo.jncrfgljyje + fb59vo.jncrfgljyje + fb510vo.jncrfgljyje + fb511vo.jncrfgljyje + fb512vo.jncrfgljyje + fb513vo.jncrfgljyje"; // 所有权合计
var rulseYfb5 = new Array();
rulseYfb5[0] = "zhjje1 = syqhj1 + syhjje1"; // 总合计
rulseYfb5[1] = "zhjje2 = syqhj2 + syhjje2"; // 总合计
rulseYfb5[2] = "zhjje3 = syqhj3 + syhjje3"; // 总合计
rulseYfb5[3] = "zhjje4 = syqhj4 + syhjje4"; // 总合计
rulseYfb5[4] = "zhjje5 = syqhj5 + syhjje5"; // 总合计
rulseYfb5[5] = "zhjje6 = syqhj6 + syhjje6"; // 总合计
rulseYfb5[6] = "zhjje7 = syqhj7 + syhjje7"; // 总合计
rulseYfb5[7] = "zhjje8 = syqhj8 + syhjje8"; // 总合计
rulseYfb5[8] = "zhjje9 = syqhj9 + syhjje9"; // 总合计
rulseYfb5[9] = "zhjje10 = syqhj10 + syhjje10"; // 总合计
var calObjfb5 = new caltb('t5');
calObjfb5.setRules(rulsefb5);
calObjfb5.setRulesY(rulseYfb5);
initCalTable(calObjfb5);

function save() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("无形资产表（表五）暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb5Action.do', {
//				method : 'post',
//				parameters : $('WB395GlqyForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "update");
//					runMsg("0", false, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395glqyFb5Action.do",
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
