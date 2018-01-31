var calObj;

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A105091_TbSm.html");
						},
						scope : this
					}, '-', {
						id : "downLoadBtn",
						iconCls : "xls",
						text : "下载EXCEL模板",
						handler : function() {
							downLoadMbWj("QYSDS_A105091.xls");
						},
						scope : this
					}, '-', {
						id : "UploadBtn",
						iconCls : "xls",
						text : "上传EXCEL文件",
						handler : function() {
							openCenterWindow(
									encodeURI(encodeURI("/WB395A105091Action.do?handleCode=toUpLoad&pzXh="
											+ $F('pzXh'))), '600', '800', "no");
						},
						scope : this
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A105091Action.do?handleCode=printData&pzXh="
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
	if ($F('bbzt') == '' || $F('bbzt') == '0') {
		alert("存在专项申报资产损失事项的，请按规定至主管税务机关进行专项申报。");
	}
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	readText();
	calObj = new caltb('tab1');
	calObj.setRulesY(ymkj_getRulesY("tab1"));
	initCalTable(calObj);
	runRulesForName(calObj);
}

function a105091js() {

}

function a105091hjjs() {

}

function goPage(pagenum) {
	$('#curPage').valu(pagenum);
	$("#errorMessage").val("");
	$("#handleDesc").val("分页查询");
	$("#handleCode").val("queryData");
	loadDialog();
//	new Ajax.Request('/WB395A105091Action.do', {
//				method : 'post',
//				parameters : $('WB395A105091Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, 'updata');
//					if (!trim($F('errorMessage')).empty()) {
//						iconDialog($F('errorMessage'), 'ERROR');
//					}
//					runRulesForName(calObj);
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105091Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105091Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			if (!trim($F('errorMessage')).empty()) {
				iconDialog($F('errorMessage'), 'ERROR');
			}
			runRulesForName(calObj);
		}
	});
	

}

function initA105091FormData() {
	$('#sucessMsg').val("");
	$("#errorMessage").val("");
	$("#handleCode").val("queryData");
	WB395A105091Form.submit();
}
