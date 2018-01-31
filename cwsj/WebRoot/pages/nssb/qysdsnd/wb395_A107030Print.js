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
											printPdf()
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

function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A107030Form').target = "_blank"
	$('WB395A107030Form').submit();
}

function initPage() {
	// 用于下面计算判断清空所有0.0的INPUT
	var inputArr = $$('input');
	for (var i = 0; i < inputArr.length; i++) {
		if (inputArr[i].type == "text" && inputArr[i].value == "0.0") {
			inputArr[i].value = "";
		}
	}
}
