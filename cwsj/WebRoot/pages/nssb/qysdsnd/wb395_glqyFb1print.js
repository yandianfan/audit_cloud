Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
					renderTo : "toolbar",
					items : ['-', '->', {
								text : "打印预览",
								iconCls : "preview",
								handler : function() {
									$('toolbar').hide();
									doprint('2', null, 0, '90%')
									$('toolbar').show();
								},
								scope : this
							}, '-', {
								text : "打印",
								iconCls : "print",
								handler : function() {
									$('toolbar').hide();
									doprint('1', null, 0, '90%')
									$('toolbar').show();
								},
								scope : this
							}, '-', {
								text : "导出PDF",
								iconCls : "pdf",
								handler : function() {
									$('divHtml').value = $('mainDiv').innerHTML;
									$('handleCode').value = 'printPdf';
									$('WB395GlqyForm').target = "_blank";
									$('WB395GlqyForm').submit();
								},
								scope : this
							}, '-', {
								text : "关闭",
								iconCls : "close",
								handler : function() {
								//	WebBrowser.ExecWB(45, 1);
										window.close();
								},
								scope : this
							}]
				});
	} catch (e) {

	}
});