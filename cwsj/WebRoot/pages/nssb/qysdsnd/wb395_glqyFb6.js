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
									openMaxWindow("/WB395glqyFb6Action.do?pzXh="
											+ $F("pzxh")
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
	if (!beforeInitPage()) {
		return;
	}
	readText();
	if (!$F('fb6vo').empty()) {
		var jsonContent = eval("(" + $F('fb6vo') + ")");
		var bizData = jsonContent.fb6vo;
		var rowInfo;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			for (var j = 0; j < $ES('xh').length; j++) {
				if ($ES('xh')[j].value == rowInfo.xh) {
					$ES('srzjyje')[j].value = rowInfo.srzjyje;
					$ES('jwsrgljyje')[j].value = rowInfo.jwsrgljyje;
					$ES('jwsrfgljyje')[j].value = rowInfo.jwsrfgljyje;
					$ES('jnsrgljyje')[j].value = rowInfo.jnsrgljyje;
					$ES('jnsrfgljyje')[j].value = rowInfo.jnsrfgljyje;
					$ES('crzjyje')[j].value = rowInfo.srzjyje;
					$ES('jwcrgljyje')[j].value = rowInfo.jwcrgljyje;
					$ES('jwcrfgljyje')[j].value = rowInfo.jwcrfgljyje;
					$ES('jncrgljyje')[j].value = rowInfo.jncrgljyje;
					$ES('jncrfgljyje')[j].value = rowInfo.jncrfgljyje;
					break;
				}
			}
		}
		runRulesForName(calObjfb6);
	}
}

var rulsefb6 = new Array();
rulsefb6[0] = "srzjyje = jwsrgljyje + jwsrfgljyje + jnsrgljyje + jnsrfgljyje";// 1=2+3+4+5
rulsefb6[1] = "crzjyje = jwcrgljyje + jwcrfgljyje + jncrgljyje + jncrfgljyje";// 6=7+8+9+10
var rulseYfb6 = new Array();
rulseYfb6[0] = "b6syqhj1 = srzjyje1 + srzjyje2 + srzjyje3 + srzjyje4 + srzjyje5 + srzjyje6";//
rulseYfb6[1] = "b6syqhj2 = jwsrgljyje1 + jwsrgljyje2 + jwsrgljyje3 + jwsrgljyje4 + jwsrgljyje5 + jwsrgljyje6";//
rulseYfb6[2] = "b6syqhj3 = jwsrfgljyje1 + jwsrfgljyje2 + jwsrfgljyje3 + jwsrfgljyje4 + jwsrfgljyje5 + jwsrfgljyje6";//
rulseYfb6[3] = "b6syqhj4 = jnsrgljyje1 + jnsrgljyje2 + jnsrgljyje3 + jnsrgljyje4 + jnsrgljyje5 + jnsrgljyje6";//
rulseYfb6[4] = "b6syqhj5 = jnsrfgljyje1 + jnsrfgljyje2 + jnsrfgljyje3 + jnsrfgljyje4 + jnsrfgljyje5 + jnsrfgljyje6";//
rulseYfb6[5] = "b6syqhj6 = crzjyje1 + crzjyje2 + crzjyje3 + crzjyje4 + crzjyje5 + crzjyje6";//
rulseYfb6[6] = "b6syqhj7 = jwcrgljyje1 + jwcrgljyje2 + jwcrgljyje3 + jwcrgljyje4 + jwcrgljyje5 + jwcrgljyje6";//
rulseYfb6[7] = "b6syqhj8 = jwcrfgljyje1 + jwcrfgljyje2 + jwcrfgljyje3 + jwcrfgljyje4 + jwcrfgljyje5 + jwcrfgljyje6";//
rulseYfb6[8] = "b6syqhj9 = jncrgljyje1 + jncrgljyje2 + jncrgljyje3 + jncrgljyje4 + jncrgljyje5 + jncrgljyje6";//
rulseYfb6[9] = "b6syqhj10 = jncrfgljyje1 + jncrfgljyje2 + jncrfgljyje3 + jncrfgljyje4 + jncrfgljyje5 + jncrfgljyje6";//

rulseYfb6[10] = "b6syhjje1 = srzjyje7 + srzjyje8 + srzjyje9 + srzjyje10 + srzjyje11 + srzjyje12";//
rulseYfb6[11] = "b6syhjje2 = jwsrgljyje7 + jwsrgljyje8 + jwsrgljyje9 + jwsrgljyje10 + jwsrgljyje11 + jwsrgljyje12";//
rulseYfb6[12] = "b6syhjje3 = jwsrfgljyje7 + jwsrfgljyje8 + jwsrfgljyje9 + jwsrfgljyje10 + jwsrfgljyje11 + jwsrfgljyje12";//
rulseYfb6[13] = "b6syhjje4 = jnsrgljyje7 + jnsrgljyje8 + jnsrgljyje9 + jnsrgljyje10 + jnsrgljyje11 + jnsrgljyje12";//
rulseYfb6[14] = "b6syhjje5 = jnsrfgljyje7 + jnsrfgljyje8 + jnsrfgljyje9 + jnsrfgljyje10 + jnsrfgljyje11 + jnsrfgljyje12";//
rulseYfb6[15] = "b6syhjje6 = crzjyje7 + crzjyje8 + crzjyje9 + crzjyje10 + crzjyje11 + crzjyje12";//
rulseYfb6[16] = "b6syhjje7 = jwcrgljyje7 + jwcrgljyje8 + jwcrgljyje9 + jwcrgljyje10 + jwcrgljyje11 + jwcrgljyje12";//
rulseYfb6[17] = "b6syhjje8 = jwcrfgljyje7 + jwcrfgljyje8 + jwcrfgljyje9 + jwcrfgljyje10 + jwcrfgljyje11 + jwcrfgljyje12";//
rulseYfb6[18] = "b6syhjje9 = jncrgljyje7 + jncrgljyje8 + jncrgljyje9 + jncrgljyje10 + jncrgljyje11 + jncrgljyje12";//
rulseYfb6[19] = "b6syhjje10 = jncrfgljyje7 + jncrfgljyje8 + jncrfgljyje9 + jncrfgljyje10 + jncrfgljyje11 + jncrfgljyje12";//

rulseYfb6[20] = "b6zhjje1 = b6syqhj1 + b6syhjje1";//
rulseYfb6[21] = "b6zhjje2 = b6syqhj2 + b6syhjje2";//
rulseYfb6[22] = "b6zhjje3 = b6syqhj3 + b6syhjje3"; //
rulseYfb6[23] = "b6zhjje4 = b6syqhj4 + b6syhjje4"; //
rulseYfb6[24] = "b6zhjje5 = b6syqhj5 + b6syhjje5";//
rulseYfb6[25] = "b6zhjje6 = b6syqhj6 + b6syhjje6";//
rulseYfb6[26] = "b6zhjje7 = b6syqhj7 + b6syhjje7"; //
rulseYfb6[27] = "b6zhjje8 = b6syqhj8 + b6syhjje8"; //
rulseYfb6[28] = "b6zhjje9 = b6syqhj9 + b6syhjje9"; //
rulseYfb6[29] = "b6zhjje10 = b6syqhj10 + b6syhjje10"; //

var calObjfb6 = new caltb('t6');
calObjfb6.setRulesY(rulseYfb6);
calObjfb6.setRules(rulsefb6);
// calObjfb6.customrulesEnd = function() {
// // ．受让无形资产第1列=表5无形资产表总计第1列；
// parent.fb2.$('fb27vo.clspgr11jyzje').value = $('b6zhjje1').value;
// parent.fb2.$('fb27vo.clspgr14jwgljyje').value = $('b6zhjje2').value;
// parent.fb2.$('fb27vo.clspgr17jngljyje').value = $('b6zhjje4').value;
// // 出让无形资产第1列=表5无形资产表总计第6列；
// parent.fb2.$('fb28vo.clspgr11jyzje').value = $('b6zhjje6').value;
// parent.fb2.$('fb28vo.clspgr14jwgljyje').value = $('b6zhjje7').value;
// parent.fb2.$('fb28vo.clspgr17jngljyje').value = $('b6zhjje9').value;
// parent.fb2.runRulesForName(parent.fb2.calObjfb2);
// }
initCalTable(calObjfb6);

function save() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("固定资产表（表六）暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb6Action.do', {
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
		url : "/WB395glqyFb6Action.do",
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