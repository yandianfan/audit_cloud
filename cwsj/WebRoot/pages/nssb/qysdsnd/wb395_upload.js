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
	if (!trim($F('errorMessage')).empty()) {
		iconDialog($F('errorMessage'), 'ERROR');
	}
	if (!trim($F('sucessMsg')).empty()) {
		iconDialog($F('sucessMsg'), 'INFO', function() {
					runMsg("0", null, null, "WB395IndexForm");
				});
	}
}

/**
 * 基本校验
 */
function bascicCheck() {
	if ($F('pzXh').empty()) {
		iconDialog('请先上传!', 'WARNING');
		return false;
	}
	return true;
}

function upload() {
	if (isuploadValidate()) {
		$('errorMessage').value = "";
		$('sucessMsg').value = "";
		$('handleCode').value = "upXml";
		$("filename").value = uploadfilename();
		WB395IndexForm.action = '/WB395IndexAction.do';
		WB395IndexForm.target = '_self';
		WB395IndexForm.submit();
	}
}

function isuploadValidate() {
	var a = $("file").value;
	if (pathCheck(a)) {
		return true;
	} else {
		iconDialog('上传路径错误!', 'WARNING');
		return false;
	}
}

function uploadfilename() {
	var str = $('file').value;
	var s = str.split('\\');
	return s[s.length - 1];
}