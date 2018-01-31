Ext.onReady(function() {
			try {
				var tb = new Ext.Toolbar({
							renderTo : "toolbar",
							items : ['-', '->', {
										id : "reBtn",
										text : "刷新",
										iconCls : "refresh",
										handler : function() {
											rePage();
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

function rePage() {
	$("#handleCode").val("initForm");
	document.getElementById('WB395cwbbForm').submit();
}

function initPage() {
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	setRowClass('queryKsbTb');
}

function showResMes(originalRequest) {
	Ext.MessageBox.hide();
	ajaxUpdate(originalRequest.responseText, "ajaxform");
	if (trim($F('errorMessage')).empty()) {
		iconDialog('操作成功!', 'INFO');
	} else {
		iconDialog($F('errorMessage'), 'ERROR');
	}
}

function goDeal(url, pzxh) {
	waitDialog();
	window.location.href = url + "?pzXh=" + pzxh;
}