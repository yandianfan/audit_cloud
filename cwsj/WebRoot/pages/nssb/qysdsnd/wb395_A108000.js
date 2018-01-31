Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A108000_TbSm.html");
						},
						scope : this
					}, '-', {
						id : "dqsjBtn",
						text : "自动计算",
						iconCls : "magnify",
						handler : function() {
							if ($F('isempty') == "1") {
								readData();
							} else {
								alert("请先点击上传上传EXCEL文件");
							}
						},
						scope : this
					}, {
						id : "downLoadBtn",
						iconCls : "xls",
						text : "下载EXCEL模板",
						handler : function() {
							downLoadMbWj("QYSDS_A108000.xls");
						},
						scope : this
					}, '-', {
						id : "UploadBtn",
						iconCls : "xls",
						text : "上传EXCEL文件",
						handler : function() {
							openCenterWindow(
									encodeURI(encodeURI("/WB395A108000Action.do?handleCode=toUpLoad&pzXh="
											+ $F('pzXh'))), '600', '800', "no");
							// window.location.href =
							// "/WB395A107011Action.do?handleCode=toUpLoad&pzXh="+
							// $F('pzXh');
						},
						scope : this
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A108000Action.do?handleCode=printData&pzXh="
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
}

function goPage(pagenum) {
	$('#curPage').val(pagenum);
	$("#errorMessage").val("");
	$("#handleDesc").val("分页查询");
	$("#handleCode").val("queryData");
	loadDialog();
//	new Ajax.Request('/WB395A108000Action.do', {
//				method : 'post',
//				parameters : $('WB395A108000Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, 'tab1');
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
		url : "/WB395A108000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A108000Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "tab1");
			if (!trim($F('errorMessage')).empty()) {
				iconDialog($F('errorMessage'), 'ERROR');
			}
		}
	});

}

function initA108000FormData() {
	$('#sucessMsg').val("");
	$("#errorMessage").val("");
	$("#handleCode").val("queryData");
	WB395A108000Form.submit();
}

function readData() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$('#proMessage').val("");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB395A108000Action.do', {
//				method : 'post',
//				parameters : $('WB395A108000Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "tab1");
//					runMsg("0", null, null, "WB395IndexForm");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
//	
	$.ajax({
		url : "/WB395A108000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A108000Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "tab1");
			runMsg("0", null, null, "WB395IndexForm");
		}
	});
}
