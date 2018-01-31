Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A108020_TbSm.html");
						},
						scope : this
					}, {
						id : "downLoadBtn",
						iconCls : "xls",
						text : "下载EXCEL模板",
						handler : function() {
							downLoadMbWj("QYSDS_A108020.xls");
						},
						scope : this
					}, '-', {
						id : "UploadBtn",
						iconCls : "xls",
						text : "上传EXCEL文件",
						handler : function() {
							openCenterWindow(
									encodeURI(encodeURI("/WB395A108020Action.do?handleCode=toUpLoad&pzXh="
											+ $F('pzXh'))), '600', '800', "no");
						},
						scope : this
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A108020Action.do?handleCode=printData&pzXh="
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
//	new Ajax.Request('/WB395A108020Action.do', {
//				method : 'post',
//				parameters : $('WB395A108020Form').serialize(),
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
		url : "/WB395A108020Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A108020Form').serialize(),
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

function initA108020FormData() {
	$('#sucessMsg').val("");
	$("#errorMessage").val("");
	$("#handleCode").val("queryData");
	WB395A108020Form.submit();
}
