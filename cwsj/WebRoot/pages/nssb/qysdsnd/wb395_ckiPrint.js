var czbk;
var czbkfb;
var rowInfo;

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
		czbk = eval("(" + $F('bizData') + ")").czbkList;
		czbkfb = eval("(" + $F('bizData') + ")").czbkfbList;
	}

	if (czbk != null) {
		for (var i = 0; i < czbk.length; i++) {
			rowInfo = czbk[i];
			for (var j = 0; j < $ES('mxxh').length; j++) {
				if ($ES('mxxh')[j].value == rowInfo.mxxh) {
					if (parseFloat(emptyToZ(rowInfo.ncjz)) != 0) {
						$$("td.ncjz")[i].innerHTML = rowInfo.ncjz;
					}
					if (parseFloat(emptyToZ(rowInfo.ncjy)) != 0) {
						$$("td.ncjy")[i].innerHTML = rowInfo.ncjy;
					}
					if (parseFloat(emptyToZ(rowInfo.tzjy)) != 0) {
						$$("td.tzjy")[i].innerHTML = rowInfo.tzjy;
					}
					if (parseFloat(emptyToZ(rowInfo.gjsj)) != 0) {
						$$("td.gjsj")[i].innerHTML = rowInfo.gjsj;
					}
					if (parseFloat(emptyToZ(rowInfo.dwjz)) != 0) {
						$$("td.dwjz")[i].innerHTML = rowInfo.dwjz;
					}
					if (parseFloat(emptyToZ(rowInfo.dwjy)) != 0) {
						$$("td.dwjy")[i].innerHTML = rowInfo.dwjy;
					}
					if (parseFloat(emptyToZ(rowInfo.czbk)) != 0) {
						$$("td.czbk")[i].innerHTML = rowInfo.czbk;
					}
					if (parseFloat(emptyToZ(rowInfo.czzc)) != 0) {
						$$("td.czzc")[i].innerHTML = rowInfo.czzc;
					}
					if (parseFloat(emptyToZ(rowInfo.nmjz)) != 0) {
						$$("td.nmjz")[i].innerHTML = rowInfo.nmjz;
					}
					if (parseFloat(emptyToZ(rowInfo.nmjy)) != 0) {
						$$("td.nmjy")[i].innerHTML = rowInfo.nmjy;
					}
					break;
				}
			}
		}
	}

	if (czbkfb != null) {
		for (var i = 0; i < czbkfb.length; i++) {
			rowInfo = czbkfb[i];
			for (var j = 0; j < $ES('xmxh').length; j++) {
				if ($ES('xmxh')[j].value == rowInfo.mxxh) {
					if (rowInfo.nr != "") {
						$$("td.xmmc")[i].innerHTML = rowInfo.nr + "项目";
					} else {
						$$("td.xmmc")[i].innerHTML = rowInfo.nr + "　";
					}
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
	$('WB395ckiForm').target = "_blank";
	$('WB395ckiForm').submit();
}