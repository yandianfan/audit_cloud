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
	if (!$F('hdmxString').empty()) {
		var jsonContent = eval("(" + $F('hdmxString') + ")");
		var bizData = jsonContent.hdmxlist;
		var rowInfo;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			for (var j = 0; j < $ES('mxxh').length; j++) {
				if ($ES('mxxh')[j].value == rowInfo.mxxh) {
					$$("td.byfjdx")[i].innerHTML = rowInfo.byfjdx;
					$$("td.byjdx")[i].innerHTML = rowInfo.byjdx;
					$$("td.byhj")[i].innerHTML = rowInfo.byhj;
					$$("td.bnfjdx")[i].innerHTML = rowInfo.bnfjdx;
					$$("td.bnjdx")[i].innerHTML = rowInfo.bnjdx;
					$$("td.bnhj")[i].innerHTML = rowInfo.bnhj;
					break;
				}
			}
		}
	}
	if (!$F('hdmxFbString').empty()) {
		var jsonContent = eval("(" + $F('hdmxFbString') + ")");
		var bizData = jsonContent.hdmxfblist;
		var rowInfo;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			for (var j = 0; j < $ES('ywhdfbxh').length; j++) {
				if ($ES('ywhdfbxh')[j].value == rowInfo.mxxh) {
					$ES('ywhdnr')[j].value = rowInfo.nr;
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
	$('WB395ckkForm').target = "_blank";
	$('WB395ckkForm').submit();
}