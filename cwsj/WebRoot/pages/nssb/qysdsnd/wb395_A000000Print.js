var tab1CalObj;
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

	var tempArr = $F("vo.chcbjjff").split(",")
	for (var i = 0; i < tempArr.length; i++) {
		if ("'01'" == tempArr[i]) {
			$("chcbjjff_01").show();
			continue;
		}
		if ("'02'" == tempArr[i]) {
			$("chcbjjff_02").show();
			continue;
		}
		if ("'03'" == tempArr[i]) {
			$("chcbjjff_03").show();
			continue;
		}
		if ("'04'" == tempArr[i]) {
			$("chcbjjff_04").show();
			continue;
		}
		if ("'05'" == tempArr[i]) {
			$("chcbjjff_05").show();
			continue;
		}
		if ("'06'" == tempArr[i]) {
			$("chcbjjff_06").show();
			continue;
		}
		if ("'07'" == tempArr[i]) {
			$("chcbjjff_07").show();
			continue;
		}
		if ("'99'" == tempArr[i]) {
			$("chcbjjff_99").show();
			continue;
		}
	}

	tempArr = $F("vo.gdzczjff").split(",")
	for (var i = 0; i < tempArr.length; i++) {
		if ("'01'" == tempArr[i]) {
			$("gdzczjff_01").show();
			continue;
		}
		if ("'02'" == tempArr[i]) {
			$("gdzczjff_02").show();
			continue;
		}
		if ("'03'" == tempArr[i]) {
			$("gdzczjff_03").show();
			continue;
		}
		if ("'04'" == tempArr[i]) {
			$("gdzczjff_04").show();
			continue;
		}
		if ("'99'" == tempArr[i]) {
			$("gdzczjff_99").show();
			continue;
		}
	}

}

function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A000000Form').target = "_blank";
	$('WB395A000000Form').submit();
}
