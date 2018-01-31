Ext.onReady(function() {
			try {
				var tb = new Ext.Toolbar({
							renderTo : "toolbar",
							items : ['-', '->', {
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
}

function openSbb() {
	for (var i = 0; i < $ES('xz').length; i++) {
		if ($ES('xz')[i].checked == true) {
			window.dialogArguments.$('fb8vo.btzqymc').value = $ES('glfmc')[i].value;
			window.dialogArguments.$('fb8vo.btzqynsrsbm').value = $ES('nsrsbm')[i].value;
			window.dialogArguments.$('fb8vo.btzqyzcdz').value = $ES('dz')[i].value;
			window.dialogArguments.$('fb8vo.btzqyfrmc').value = $ES('frdbr')[i].value;
			window.close();
			return;

		}
	}
	iconDialog('请选择关联关系表(表一)列表数据后点击确定按钮！', "WARNING");

}