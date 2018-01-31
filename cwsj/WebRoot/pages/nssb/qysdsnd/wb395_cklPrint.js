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
											doprint('2', null, 0, '80%');
											$('toolbar').show();
										},
										scope : this
									}, '-', {
										text : "打印",
										id : "print",
										iconCls : "print",
										handler : function() {
											$('toolbar').hide();
											doprint('1', null, 0, '80%');
											$('toolbar').show();
										},
										scope : this
									}, '-', {
										text : "导出PDF",
										id : "pritBtn",
										iconCls : "pdf",
										handler : function() {
											printPdf();
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
//	if ($("ssq").value.substr(5, 2) == "12") {
//		000document.all("lrtitlebyje").innerHTML = "上年金额";
//		document.all("xjtitlebyje").innerHTML = "上年金额";
//	}
}

function printPdf() {
	var tabnum = $$("div.tab-page");

	for (var i = 0; i < tabnum.length; i++) {
		if (tabnum[i].style.display == "block") {
			$('divHtml').value = $('div' + i).innerHTML;
			$('tabid').value = i;
			break;
		}
	}
	if (tabnum.length == 0) {
		for (var i = 1; i < 7; i++) {
			if ($("tabPage" + i).style.display == "block"
					|| $("tabPage" + i).style.display == "") {
				$('divHtml').value = $('div' + (i - 1)).innerHTML;
				$('tabid').value = i - 1;
				break;
			}
		}
	}
	$('handleCode').value = 'printPDF';
	$('WB395cklForm').target = "_blank";
	$('WB395cklForm').submit();
}