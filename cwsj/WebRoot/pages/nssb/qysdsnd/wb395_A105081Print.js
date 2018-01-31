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
	buildData();
}
function buildData() {
	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;
	var bizData = jsonContent.BIZDATA;
	var j = 0;
	for (var i = 0; i < bizData.length; i++) {
		rowInfo = bizData[i];

		if (parseInt(rowInfo.sbmxxh) > 14) {
			j = 2;
		} else {
			j = 1;
		}
		$ES('hyzl')[0].value = rowInfo.hyzldm;
		$ES('zyhybj')[0].value = rowInfo.zyhybj;
		$ES('fwjzyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.fwjzyzje)), 2);
		$ES('fwjzsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.fwjzsszjje)), 2);
		$ES('scsbyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scsbyzje)), 2);
		$ES('scsbsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scsbsszjje)), 2);
		$ES('scgjyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scgjyzje)), 2);
		$ES('scgjsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scgjsszjje)), 2);
		$ES('ysgjyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ysgjyzje)), 2);
		$ES('ysgjsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ysgjsszjje)), 2);
		$ES('dzsbyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.dzsbyzje)), 2);
		$ES('dzsbsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.dzsbsszjje)), 2);
		$ES('qtyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.qtyzje)), 2);
		$ES('qtsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.qtsszjje)), 2);
		$ES('hjyzje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjyzje)), 2);
		$ES('hjkjzjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjkjzjje)), 2);
		$ES('hjzczjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjzczjje)), 2);
		$ES('hjsszjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjsszjje)), 2);
		$ES('hjnsjsje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjnsjsje)), 2);
		$ES('hjjszjyhtjje')[parseInt(rowInfo.sbmxxh) - j].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjjszjyhtjje)), 2);
	}
	for (var i = 0; i < $ES("fwjzyzje").length; i++) {
		$$('td.hyzl')[0].innerHTML = $ES('hyzl')[0].value;
		$$('td.zyhybj')[0].innerHTML = $ES('zyhybj')[0].value;
		$$('td.fwjzyzje')[i].innerHTML = $ES('fwjzyzje')[i].value;
		$$('td.fwjzsszjje')[i].innerHTML = $ES('fwjzsszjje')[i].value;
		$$('td.scsbyzje')[i].innerHTML = $ES('scsbyzje')[i].value;
		$$('td.scsbsszjje')[i].innerHTML = $ES('scsbsszjje')[i].value;
		$$('td.scgjyzje')[i].innerHTML = $ES('scgjyzje')[i].value;
		$$('td.scgjsszjje')[i].innerHTML = $ES('scgjsszjje')[i].value;
		$$('td.ysgjyzje')[i].innerHTML = $ES('ysgjyzje')[i].value;
		$$('td.ysgjsszjje')[i].innerHTML = $ES('ysgjsszjje')[i].value;
		$$('td.dzsbyzje')[i].innerHTML = $ES('dzsbyzje')[i].value;
		$$('td.dzsbsszjje')[i].innerHTML = $ES('dzsbsszjje')[i].value;
		$$('td.qtyzje')[i].innerHTML = $ES('qtyzje')[i].value;
		$$('td.qtsszjje')[i].innerHTML = $ES('qtsszjje')[i].value;
		$$('td.hjyzje')[i].innerHTML = $ES('hjyzje')[i].value;
		$$('td.hjkjzjje')[i].innerHTML = $ES('hjkjzjje')[i].value;
		$$('td.hjzczjje')[i].innerHTML = $ES('hjzczjje')[i].value;
		$$('td.hjsszjje')[i].innerHTML = $ES('hjsszjje')[i].value;
		$$('td.hjnsjsje')[i].innerHTML = $ES('hjnsjsje')[i].value;
		$$('td.hjjszjyhtjje')[i].innerHTML = $ES('hjjszjyhtjje')[i].value;

		if ($ES('sbmxxh')[i].value == '4' || $ES('sbmxxh')[i].value == '5'
				|| $ES('sbmxxh')[i].value == '6'
				|| $ES('sbmxxh')[i].value == '7'
				|| $ES('sbmxxh')[i].value == '8'
				|| $ES('sbmxxh')[i].value == '9'
				|| $ES('sbmxxh')[i].value == '10'
				|| $ES('sbmxxh')[i].value == '11'
				|| $ES('sbmxxh')[i].value == '12'
				|| $ES('sbmxxh')[i].value == '13'
				|| $ES('sbmxxh')[i].value == '21'
				|| $ES('sbmxxh')[i].value == '22'
				|| $ES('sbmxxh')[i].value == '23'
				|| $ES('sbmxxh')[i].value == '24'
				|| $ES('sbmxxh')[i].value == '25'
				|| $ES('sbmxxh')[i].value == '26') {
			$$('td.fwjzyzje')[i].innerHTML = "*";
			$$('td.fwjzsszjje')[i].innerHTML = "*";
		}

		if ($ES('sbmxxh')[i].value == '21' || $ES('sbmxxh')[i].value == '22'
				|| $ES('sbmxxh')[i].value == '23') {
			$$('td.fwjzyzje')[i].innerHTML = "*";
			$$('td.fwjzsszjje')[i].innerHTML = "*";
			$$('td.scsbyzje')[i].innerHTML = "*";
			$$('td.scsbsszjje')[i].innerHTML = "*";
			$$('td.scgjyzje')[i].innerHTML = "*";
			$$('td.scgjsszjje')[i].innerHTML = "*";
			$$('td.ysgjyzje')[i].innerHTML = "*";
			$$('td.ysgjsszjje')[i].innerHTML = "*";
			$$('td.dzsbyzje')[i].innerHTML = "*";
			$$('td.dzsbsszjje')[i].innerHTML = "*";
		}
		if ($ES('sbmxxh')[i].value == '24' || $ES('sbmxxh')[i].value == '25'
				|| $ES('sbmxxh')[i].value == '26') {
			$$('td.ysgjyzje')[i].innerHTML = "*";
			$$('td.ysgjsszjje')[i].innerHTML = "*";
		}

		if ($ES('sbmxxh')[i].value == '2' || $ES('sbmxxh')[i].value == '5'
				|| $ES('sbmxxh')[i].value == '9'
				|| $ES('sbmxxh')[i].value == '12'
				|| $ES('sbmxxh')[i].value == '16'
				|| $ES('sbmxxh')[i].value == '19'
				|| $ES('sbmxxh')[i].value == '22'
				|| $ES('sbmxxh')[i].value == '25') {
			$$('td.hjkjzjje')[i].innerHTML = "*";
			$$('td.hjnsjsje')[i].innerHTML = "*";
		}

		if ($ES('sbmxxh')[i].value == '3' || $ES('sbmxxh')[i].value == '6'
				|| $ES('sbmxxh')[i].value == '10'
				|| $ES('sbmxxh')[i].value == '13'
				|| $ES('sbmxxh')[i].value == '17'
				|| $ES('sbmxxh')[i].value == '20'
				|| $ES('sbmxxh')[i].value == '23'
				|| $ES('sbmxxh')[i].value == '26') {
			$$('td.hjzczjje')[i].innerHTML = "*";
			$$('td.hjjszjyhtjje')[i].innerHTML = "*";
		}

	}

}
function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A105081Form').target = "_blank";
	$('WB395A105081Form').submit();
}