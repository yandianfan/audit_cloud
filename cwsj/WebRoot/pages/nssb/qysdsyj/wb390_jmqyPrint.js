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
											WebBrowser.ExecWB(45, 1);
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
	if (!beforeInitPage()) {
		return;
	}
}

function printPdf() {
    document.all("divHtml").value=document.all("mainDiv").innerHTML;
	document.all("handleCode").value="printPdf";
	document.all("WB390jmqyForm").target="_blank";	
	document.forms[0].action=document.forms[0].action+"?sessionId="+$F("sessionId");
	document.all("WB390jmqyForm").submit();	
}

function initPage() {

}
