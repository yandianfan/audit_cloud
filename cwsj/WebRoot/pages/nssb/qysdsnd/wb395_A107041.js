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
							openMaxWindow("/nssb/wb395/wb395_A107041_TbSm.html");
						},
						scope : this
					}/*
						 * , { id : "dqsjBtn", text : "自动计算", iconCls :
						 * "magnify", handler : function() { readData(); },
						 * scope : this }
						 */, '-', {
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
							openMaxWindow("/WB395A107041Action.do?pzXh="
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
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.negative = true
	initCalTable(calObj);
	runRulesForName(calObj);

	// 如果bbzt=1，即查看时候，radio表单不可修改
	if ($F("bbzt") == "1") {
		if ($F("vo.sffszdsg") == "1") {
			document.getElementById("sffszdsgyes").checked = "checked";
			document.getElementById("sffszdsgno").disabled = true;
		} else if ($F("vo.sffszdsg") == "2") {
			document.getElementById("sffszdsgno").checked = "checked";
			document.getElementById("sffszdsgyes").disabled = true;
		}
		if ($F("vo.sfyhjwfxw") == "1") {
			document.getElementById("sfwgxwyes").checked = "checked";
			document.getElementById("sfwgxwno").disabled = true;
		} else if ($F("vo.sfyhjwfxw") == "2") {
			document.getElementById("sfwgxwno").checked = "checked";
			document.getElementById("sfwgxwyes").disabled = true;
		}
		if ($F("vo.sffspsxw") == "1") {
			document.getElementById("sftpsyes").checked = "checked";
			document.getElementById("sftpsno").disabled = true;
		} else if ($F("vo.sffspsxw") == "2") {
			document.getElementById("sftpsno").checked = "checked";
			document.getElementById("sftpsyes").disabled = true;
		}

	} else {

		if ($F("vo.sffszdsg") == "1") {
			document.getElementById("sffszdsgyes").checked = "checked";
		} else if ($F("vo.sffszdsg") == "2") {
			document.getElementById("sffszdsgno").checked = "checked";
		}
		if ($F("vo.sfyhjwfxw") == "1") {
			document.getElementById("sfwgxwyes").checked = "checked";
		} else if ($F("vo.sfyhjwfxw") == "2") {
			document.getElementById("sfwgxwno").checked = "checked";
		}
		if ($F("vo.sffspsxw") == "1") {
			document.getElementById("sftpsyes").checked = "checked";
		} else if ($F("vo.sffspsxw") == "2") {
			document.getElementById("sftpsno").checked = "checked";
		}
	}

	codeToName();
	document.getElementById('vo.jnwbyffy').title = "按照委托外部研究开发费用发生额的80％计入研发费用总额。其中，企业在中国境内发生的研究开发费用总额占全部研究开发费用总额的比例不低于60%。";
	document.getElementById('vo.jwwbyffy').title = "按照委托外部研究开发费用发生额的80％计入研发费用总额。";
}

function codeToName() {
	var namesAy = "gxjsml,gxjsdl,gxjsxl";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

function tempSave() {

	if (document.getElementById("sffszdsgyes").checked == true) {
		document.getElementById("vo.sffszdsg").value = "1";
	} else if (document.getElementById("sffszdsgno").checked == true) {
		document.getElementById("vo.sffszdsg").value = "2";
	}
	if (document.getElementById("sfwgxwyes").checked == true) {
		document.getElementById("vo.sfyhjwfxw").value = "1";
	} else if (document.getElementById("sfwgxwno").checked == true) {
		document.getElementById("vo.sfyhjwfxw").value = "2";
	}
	if (document.getElementById("sftpsyes").checked == true) {
		document.getElementById("vo.sffspsxw").value = "1";
	} else if (document.getElementById("sftpsno").checked == true) {
		document.getElementById("vo.sffspsxw").value = "2";
	}

	$('#vo.cpfwmc').val($F('gxjsxl'));

	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A107041Action.do', {
//				method : 'post',
//				parameters : $('WB395A107041Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					initCalTable(calObj);
//					runRulesForName(calObj);
//					runMsg("0", null, null, "WB395IndexForm");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A107041Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107041Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			initCalTable(calObj);
			runRulesForName(calObj);
			runMsg("0", null, null, "WB395IndexForm");
		}
	});
	
}

function readData(button) {
	iconDialog('没有需要读取的数据！', 'MESSAGE');
}
// 提类型的校验可以提交，调用暂存方法
function submitData() {
	tempSave();
}