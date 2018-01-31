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
	var rulsefb2 = new Array();
	rulsefb2[0] = "b5hjje1 = fb21vo.clspgr11jyzje + fb22vo.clspgr11jyzje + fb23vo.clspgr11jyzje + fb24vo.clspgr11jyzje + fb25vo.clspgr11jyzje + fb26vo.clspgr11jyzje + fb27vo.clspgr11jyzje + fb28vo.clspgr11jyzje + fb211vo.clspgr11jyzje";// 2=4+7
	rulsefb2[1] = "b5hjje2 = fb21vo.clspgr12gljyje + fb22vo.clspgr12gljyje + fb23vo.clspgr12gljyje + fb24vo.clspgr12gljyje + fb25vo.clspgr12gljyje + fb26vo.clspgr12gljyje + fb27vo.clspgr12gljyje + fb28vo.clspgr12gljyje + fb29vo.clspgr12gljyje + fb210vo.clspgr12gljyje + fb211vo.clspgr12gljyje";// 3=2/1
	rulsefb2[2] = "b5hjje4 = fb21vo.clspgr14jwgljyje + fb22vo.clspgr14jwgljyje + fb23vo.clspgr14jwgljyje + fb24vo.clspgr14jwgljyje + fb25vo.clspgr14jwgljyje + fb26vo.clspgr14jwgljyje + fb27vo.clspgr14jwgljyje + fb28vo.clspgr14jwgljyje + fb29vo.clspgr14jwgljyje + fb210vo.clspgr14jwgljyje + fb211vo.clspgr14jwgljyje"; // 5=4/1
	rulsefb2[3] = "b5hjje6 = b5hjje4 / b5hjje2";// 6=4/2
	rulsefb2[4] = "b5hjje7 = fb21vo.clspgr17jngljyje + fb22vo.clspgr17jngljyje + fb23vo.clspgr17jngljyje + fb24vo.clspgr17jngljyje + fb25vo.clspgr17jngljyje + fb26vo.clspgr17jngljyje + fb27vo.clspgr17jngljyje + fb28vo.clspgr17jngljyje + fb29vo.clspgr17jngljyje + fb210vo.clspgr17jngljyje + fb211vo.clspgr17jngljyje"; // 8=7/1
	rulsefb2[5] = "b5hjje10 = b5hjje7 / b5hjje2"; // 9=7/2
	var calObjfb2 = new caltb('fb2');
	initCalTable(calObjfb2);
	calObjfb2.setRules(rulsefb2);
	runRulesForName(calObjfb2);
}