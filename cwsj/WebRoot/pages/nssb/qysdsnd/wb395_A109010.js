var calObj;
Ext.BLANK_IMAGE_URL = './public/images/s.gif';
Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A109010_TbSm.html");
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
					}, '-', {
						id : "downLoadBtn",
						iconCls : "xls",
						text : "下载EXCEL模板",
						handler : function() {
							downLoadMbWj("QYSDS_A109010.xls");
						},
						scope : this
					}, '-', {
						id : "UploadBtn",
						iconCls : "xls",
						text : "上传EXCEL文件",
						handler : function() {
						/*	var str_sfssqqsrq = $F('a109010avo.str_sfssqqsrq');
							var str_sfssqzzrq = $F('a109010avo.str_sfssqzzrq');
							var zjgynsdseje = $F('a109010avo.zjgynsdseje');
							var zjgftsdseje = $F('a109010avo.zjgftsdseje');
							var zjgczjzfbsdseje = $F('a109010avo.zjgczjzfbsdseje');
							var fzjgftsdseje = $F('a109010avo.fzjgftsdseje');
							openCenterWindow(
									encodeURI(encodeURI("/WB395A109010Action.do?handleCode=toUpLoad&pzXh="
											+ $F('pzXh')
											+ "&str_sfssqqsrq="
											+ str_sfssqqsrq
											+ "&str_sfssqzzrq="
											+ str_sfssqzzrq
											+ "&zjgynsdseje="
											+ zjgynsdseje
											+ "&zjgftsdseje="
											+ zjgftsdseje
											+ "&zjgczjzfbsdseje="
											+ zjgczjzfbsdseje
											+ "&fzjgftsdseje=" + fzjgftsdseje)),
									'600', '800', "no");*/
							openCenterWindow(
									encodeURI(encodeURI("/WB395A109010Action.do?handleCode=toUpLoad&pzXh="
											+ $F('pzXh'))),'600', '800', "no");

						},
						scope : this
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A109010Action.do?handleCode=printData&pzXh="
									+ $F("pzXh") + "&curPage=" + $F('curPage'));
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
	readText();
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.negative = true;
	initCalTable(calObj);
}

function goPage(pagenum) {
	$('#curPage').val(pagenum);
	$("#errorMessage").val("");
	$("#handleDesc").val("分页查询");
	$("#handleCode").val("queryData");
	loadDialog();
//	new Ajax.Request('/WB395A109010Action.do', {
//				method : 'post',
//				parameters : $('WB395A109010Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, 'tab2');
//					if (!trim($F('errorMessage')).empty()) {
//						iconDialog($F('errorMessage'), 'ERROR');
//					}
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A109010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A109010Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "tab2");
			if (!trim($F('errorMessage')).empty()) {
				iconDialog($F('errorMessage'), 'ERROR');
			}
		}
	});

}

function initA109010FormData() {
	$('#sucessMsg').val("");
	$("#errorMessage").val("");
	$("#handleCode").val("queryData");
	WB395A109010Form.submit();
}

function readDate() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("readDate");
	waitDialog();
//	new Ajax.Request('/WB395A109010Action.do', {
//				method : 'post',
//				parameters : $('WB395A109010Form').serialize(),
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
//	
	$.ajax({
		url : "/WB395A109010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A109010Form').serialize(),
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

function tempSave(){
	$('#errorMessage').val("");
	$("#handleDesc").val("企业所得税汇总纳税分支机构所得税分配表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A109010Action.do', {
//				method : 'post',
//				parameters : $('WB395A109010Form').serialize(),
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
		url : "/WB395A109010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A109010Form').serialize(),
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
