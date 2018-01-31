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
	setCzbzTable();
}

function setCzbzTable() {
	if (!$F('bizData').empty()) {
		czbz = eval("(" + $F('bizData') + ")").czbzList;
		czbzfb = eval("(" + $F('bizData') + ")").czbzfbList;
	}

	if (czbz != null) {
		for (var i = 0; i < czbz.length; i++) {
			rowInfo = czbz[i];
			for (var j = 0; j < $ES('mxxh').length; j++) {
				if ($ES('mxxh')[j].value == rowInfo.mxxh) {
					if (parseFloat(emptyToZ(rowInfo.bnje)) != 0) {
						$$("td.bnsr")[i].innerHTML = rowInfo.bnje;
					}
					if (parseFloat(emptyToZ($ES('mxxh')[j].value)) > 14
							&& parseFloat(emptyToZ($ES('mxxh')[j].value)) < 41) {
						if (parseFloat(emptyToZ(rowInfo.snje)) != 0) {
							$$("td.snsr")[i].innerHTML = rowInfo.snje;
						}
					}
					break;
				}
			}
		}
	}

	if (czbzfb != null) {
		for (var i = 0; i < czbzfb.length; i++) {
			rowInfo = czbzfb[i];
			for (var j = 0; j < $ES('xmxh').length; j++) {
				if ($ES('xmxh')[j].value == rowInfo.mxxh) {
					$$("td.xmmc")[i].innerHTML = rowInfo.nr + "项目";
					break;
				}
			}
		}
	}
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
	$('WB395ckjForm').target = "_blank";
	$('WB395ckjForm').submit();
}