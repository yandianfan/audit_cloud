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
	var rulsefb8 = new Array();
	var calObjfb8 = new caltb('fb8');
	calObjfb8.setRules(rulsefb8);
	initCalTable(calObjfb8);
	runRulesForName(calObjfb8);
}