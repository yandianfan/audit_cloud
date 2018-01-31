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
		//		initPage();

			} catch (e) {

			}
		});

function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A104000Form').target = "_blank"
	$('WB395A104000Form').submit();
}

function initPage() {
	var table = document.getElementById("tab1");
	var td = table.getElementsByTagName("td");
	var len = td.length;
	for(i=0;i<len;i++){
	  if(td[i].innerText == '0.00' || td[i].innerText == '0.0'){
	 	td[i].innerText = "";
	  }
	}
}
