var jsonContent;

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
	buildData();
}

function buildData() {
	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;

	var bizData = jsonContent.BIZDATA;
	for (var i = 0; i < bizData.length; i++) {
		rowInfo = bizData[i];
		$ES('zzje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzje)), 2);
		$ES('ssje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ssje)), 2);
		$ES('nstzje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.nstzje)), 2);
	}
	a105090js();

	for (var i = 0; i < $ES("sbmxxh").length; i++) {
		$$('td.zzje')[i].innerHTML = $ES('zzje')[i].value;
		$$('td.ssje')[i].innerHTML = $ES('ssje')[i].value;
		$$('td.nstzje')[i].innerHTML = $ES('nstzje')[i].value;
	}
	$$('td.zzjehj')[0].innerHTML = $ES('zzjehj')[0].value;
	$$('td.ssjehj')[0].innerHTML = $ES('ssjehj')[0].value;
	$$('td.nstzjehj')[0].innerHTML = $ES('nstzjehj')[0].value;
}
function a105090js() {
	$("zzjehj").value = caltbNumloop(parseFloat(emptyToZ($("qdzzjehj").value))
					+ parseFloat(emptyToZ($("zxzzjehj").value)), 2);
	$("ssjehj").value = caltbNumloop(parseFloat(emptyToZ($("qdssjehj").value))
					+ parseFloat(emptyToZ($("zxssjehj").value)), 2);
	$("nstzjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("qdnstzjehj").value))
					+ parseFloat(emptyToZ($("zxnstzjehj").value)), 2);
}
function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A105090Form').target = "_blank";
	$('WB395A105090Form').submit();
}