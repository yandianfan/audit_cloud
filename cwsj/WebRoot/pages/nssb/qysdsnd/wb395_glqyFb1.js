var curScRow;
var edittable;

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
					renderTo : "toolbar",
					items : ['-', '->', {
								id : "addBtn",
								text : "增加",
								iconCls : "add",
								handler : function() {
									addr();

								},
								scope : this
							}, '-', {
								id : "delBtn",
								text : "删除",
								iconCls : "delete",
								handler : function() {
									delRow('t1', 1);
								},
								scope : this
							}, '-', {
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
									openMaxWindow("/WB395glqyFb1Action.do?pzXh="
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

function addr() {
	addRow('t1', $(t1).rows.length - 1, $(t1).rows.length - 1);
}

function testCodeToName() {
	var namesAy = "gjdqdm";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}
function initPage() {
	readText();
	clsDynamicSelect$init('selectXml');
	testCodeToName();

	edittable = new edittable("t1", "edittable");
}

function save() {
	var chkRow = false;
	var glfmcs = $ES("glfmc")

	for (var i = 0; i < glfmcs.length; i++) {
		if ($ES("glfmc")[i].value.empty() || $ES("nsrsbm")[i].value.empty()
				|| $ES("gjdqdm")[i].value.empty() || $ES("dz")[i].value.empty()
				|| $ES("frdbr")[i].value.empty()
				|| $ES("glgxlx")[i].value.empty()) {
			chkRow = true;
			if (chkRow) {
				$ES("glfmc")[i].value = "";
			}
		} else {
			chkRow = false;
			break;
		}
	}
	if (chkRow) {
		iconDialog('请至少填写一行完整数据！', 'WARNING');
		return;
	}

	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("关联关系表(表一)暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395glqyFb1Action.do', {
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
		url : "/WB395glqyFb1Action.do",
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