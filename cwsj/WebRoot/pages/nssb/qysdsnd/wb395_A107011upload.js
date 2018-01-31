var arrayObj = new Array();
Ext.BLANK_IMAGE_URL = './public/images/s.gif';
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
	if (!trim($F('sucessMsg')).empty()) {
		iconDialog($F('sucessMsg'), 'INFO', function() {
					try {
						window.opener.initA107011FormData();
					} catch (e) {
					}
					try {
						window.opener.opener.reMainPage();
					} catch (e) {
					}
				});
	} else if (!$F('errorMessage').empty()) {
		iconDialog($F('errorMessage'), 'ERROR');
	} else if (!$F('proMessage').empty()) {
		$("proMessageDiv").innerHTML = toProMesHTML();
		proMessageWin = new Ext.Window({
					width : 550,
					height : 520,
					title : '信息提示',
					closeAction : 'hide',
					closable : false,
					modal : true,
					layout : "fit",
					items : new Ext.Panel({
								contentEl : 'proMessageDiv'
							}),
					buttons : [{
								text : '确定',
								scope : this,
								handler : function() {
									proMessageWin.hide();
								}
							}]
				});
		proMessageWin.show();
	}
}

function uploadfilename() {
	var str = $('file').value;
	var s = str.split('\\');
	return s[s.length - 1];
}

function upload() {
	var file = $("file").value;
	if (file.empty()) {
		iconDialog('请选择上传文件!', 'WARNING');
		return;
	}
	if (file.empty()) {
		if (!pathCheckXls(file)) {
			iconDialog('上传路径错误!', 'WARNING');
			return false;
		}
	}
	confirmDialog("是否确认上传申报数据?", function(button) {
				if (button == "yes") {
					waitDialog();
					$('sucessMsg').value = "";
					$('errorMessage').value = "";
					$("filename").value = uploadfilename();
					$("handleCode").value = "upLoadExcel";
					WB395A107011Form.action = '/WB395A107011Action.do';
					WB395A107011Form.target = '_self';
					WB395A107011Form.submit();
				}
			});

}
