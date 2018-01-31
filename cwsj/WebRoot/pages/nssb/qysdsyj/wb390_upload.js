Ext.onReady(function() {
			try {
				var tb = new Ext.Toolbar({
							renderTo : "toolbar",
							items : ['-', '->', {
										text : "上传",
										iconCls : "up",
										id : "UploadBtn",
										handler : function() {
											upload();
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
	if (!trim($F('errorMessage')).empty()) {
		iconDialog($F('errorMessage'), 'ERROR', function() {
					$('errorMessage').value = "";
				});
	} else {
		if (!trim($F('sucessMsg')).empty()) {
			iconDialog($F('sucessMsg'), 'INFO', function() {
						$('sucessMsg').value = "";
						try {
							window.opener.WB390fbListForm.submit()
						} catch (e) {
						}
					});
		}
	}
	readText();
}
function upload() {
	if ($F('file').empty()) {
		iconDialog('请选择上传文件!', 'WARNING');
		return;
	}
	if (!pathCheckXls($F('file'))) {
		iconDialog('上传文件类型不正确!', 'WARNING');
		return;
	}
	$('handleCode').value = "upload";
	$('sucessMsg').value = "";
	$('errorMessage').value = "";
	confirmDialog("是否确认上传申报数据?", function(button) {
				if (button == "yes") {
					waitDialog();
					WB390upLoadForm.target = '_self';
					WB390upLoadForm.submit();
				}
			});
}
