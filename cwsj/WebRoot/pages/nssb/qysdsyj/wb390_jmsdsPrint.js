Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
					renderTo : "toolbar",
					items : ['-', '->', {
								text : "打印预览",
								iconCls : "preview",
								id : "preview",
								handler : function() {
									$('toolbar').hide();
									doprint('2', null, 0, '90%');
									$('toolbar').show();
								},
								scope : this
							}, '-', {
								text : "打印",
								id : "print",
								iconCls : "print",
								handler : function() {
									$('toolbar').hide();
									doprint('1', null, 0, '90%');
									$('toolbar').show();
								},
								scope : this
							}, '-', {
								text : "导出PDF",
								id : "pritBtn",
								iconCls : "pdf",
								handler : function() {
									$('divHtml').value = $('mainDiv').innerHTML;
									$("handleCode").value = "printPdf";
									$('WB390jmsdsForm').target = "_blank";
									$('WB390jmsdsForm').submit();
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
}