var jsonContent;
var calObj;
var nsyyArr = new Array();

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
	a105080js();
	$$('td.zzzzjejehj')[0].innerHTML = $ES('zzzzjejehj')[0].value;
	$$('td.zzbnzjtxjehj')[0].innerHTML = $ES('zzbnzjtxjehj')[0].value;
	$$('td.zzljzjtxjehj')[0].innerHTML = $ES('zzljzjtxjehj')[0].value;
	$$('td.sszcjsjcjehj')[0].innerHTML = $ES('sszcjsjcjehj')[0].value;
	$$('td.ssassbnzjtxjehj')[0].innerHTML = $ES('ssassbnzjtxjehj')[0].value;
	$$('td.ssbnjszjjehj')[0].innerHTML = $ES('ssbnjszjjehj')[0].value;
	$$('td.ssxzzczjjehj')[0].innerHTML = $ES('ssxzzczjjehj')[0].value;
	$$('td.ssljzjtxjehj')[0].innerHTML = $ES('ssljzjtxjehj')[0].value;
	$$('td.nsjehj')[0].innerHTML = $ES('nsjehj')[0].value;
}

function a105080js() {
	$("zzzzjejehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzczzzzjejehj").value))
					+ parseFloat(emptyToZ($("swzczzzzjejehj").value))
					+ parseFloat(emptyToZ($("wxzczzzzjejehj").value))
					+ parseFloat(emptyToZ($("dtfyzzzzjejehj").value))
					+ parseFloat(emptyToZ($("kttzzzzzjeje").value))
					+ parseFloat(emptyToZ($("kftzzzzzjeje").value)), 2);
	$("zzbnzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzczzbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("swzczzbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("wxzczzbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("dtfyzzbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("kttzzzbnzjtxje").value))
					+ parseFloat(emptyToZ($("kftzzzbnzjtxje").value)), 2);
	$("zzljzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzczzljzjtxjehj").value))
					+ parseFloat(emptyToZ($("swzczzljzjtxjehj").value))
					+ parseFloat(emptyToZ($("wxzczzljzjtxjehj").value))
					+ parseFloat(emptyToZ($("dtfyzzljzjtxjehj").value))
					+ parseFloat(emptyToZ($("kttzzzljzjtxje").value))
					+ parseFloat(emptyToZ($("kftzzzljzjtxje").value)), 2);
	$("sszcjsjcjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzcsszcjsjcjehj").value))
					+ parseFloat(emptyToZ($("swzcsszcjsjcjehj").value))
					+ parseFloat(emptyToZ($("wxzcsszcjsjcjehj").value))
					+ parseFloat(emptyToZ($("dtfysszcjsjcjehj").value))
					+ parseFloat(emptyToZ($("kttzsszcjsjcje").value))
					+ parseFloat(emptyToZ($("kftzsszcjsjcje").value)), 2);
	$("ssassbnzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzcssassbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("swzcssassbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("wxzcssassbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("dtfyssassbnzjtxjehj").value))
					+ parseFloat(emptyToZ($("kttzssassbnzjtxje").value))
					+ parseFloat(emptyToZ($("kftzssassbnzjtxje").value)), 2);
	$("ssbnjszjjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzcssbnjszjjehj").value))
					+ parseFloat(emptyToZ($("swzcssbnjszjjehj").value)), 2);
	$("ssxzzczjjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzcssxzzczjjehj").value)), 2);
	$("ssljzjtxjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzcssljzjtxjehj").value))
					+ parseFloat(emptyToZ($("swzcssljzjtxjehj").value))
					+ parseFloat(emptyToZ($("wxzcssljzjtxjehj").value))
					+ parseFloat(emptyToZ($("dtfyssljzjtxjehj").value))
					+ parseFloat(emptyToZ($("kttzssljzjtxje").value))
					+ parseFloat(emptyToZ($("kftzssljzjtxje").value)), 2);
	$("nsjehj").value = caltbNumloop(
			parseFloat(emptyToZ($("gdzcnsjehj").value))
					+ parseFloat(emptyToZ($("swzcnsjehj").value))
					+ parseFloat(emptyToZ($("wxzcnsjehj").value))
					+ parseFloat(emptyToZ($("dtfynsjehj").value))
					+ parseFloat(emptyToZ($("kttznsje").value))
					+ parseFloat(emptyToZ($("kftznsje").value)), 2);

}
function buildData() {
	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;
	var bizData = jsonContent.BIZDATA;
	for (var i = 0; i < bizData.length; i++) {
		rowInfo = bizData[i];
		$ES('zzzzjeje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzzzjeje)), 2);
		$ES('zzbnzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzbnzjtxje)), 2);
		$ES('zzljzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.zzljzjtxje)), 2);
		$ES('sszcjsjcje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.sszcjsjcje)), 2);
		$ES('ssassbnzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ssassbnzjtxje)), 2);
		if (parseInt(rowInfo.sbmxxh) <= $ES('ssbnjszjje').length) {
			$ES('ssbnjszjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.ssbnjszjje)), 2);
		}
		if (parseInt(rowInfo.sbmxxh) <= $ES('ssxzzczjje').length) {
			$ES('ssxzzczjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
					parseFloat(emptyToZ(rowInfo.ssxzzczjje)), 2);
		}
		$ES('ssljzjtxje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ssljzjtxje)), 2);
		$ES('nsje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.nsje)), 2);
		$ES('nsyy')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.nsyy;
	}
	for (var n = 0; n < $ES('nsyy').length; n++) {
		nsyyArr = $ES('nsyy')[n].value.split('$');
		var nsyymc = '';
		for (var j = 0; j < nsyyArr.length; j++) {
			if (nsyyArr[j] == 'A') {
				nsyymc += '折旧年限';
			}
			if (nsyyArr[j] == 'B') {
				nsyymc += '折旧方法';
			}
			if (nsyyArr[j] == 'C') {
				nsyymc += '计提原值';
			}
			if (j + 1 < nsyyArr.length) {
				nsyymc += '<br/>';
			}
		}
		$ES('nsyy')[n].value = nsyymc;
	}
	for (var i = 0; i < $ES("sbmxxh").length; i++) {
		$$('td.zzzzjeje')[i].innerHTML = $ES('zzzzjeje')[i].value;
		$$('td.zzbnzjtxje')[i].innerHTML = $ES('zzbnzjtxje')[i].value;
		$$('td.zzljzjtxje')[i].innerHTML = $ES('zzljzjtxje')[i].value;
		$$('td.sszcjsjcje')[i].innerHTML = $ES('sszcjsjcje')[i].value;
		$$('td.ssassbnzjtxje')[i].innerHTML = $ES('ssassbnzjtxje')[i].value;
		if (i + 1 <= $ES('ssbnjszjje').length) {
			$$('td.ssbnjszjje')[i].innerHTML = $ES('ssbnjszjje')[i].value;
		}
		if (i + 1 <= $ES('ssxzzczjje').length) {
			$$('td.ssxzzczjje')[i].innerHTML = $ES('ssxzzczjje')[i].value;
		}
		$$('td.ssljzjtxje')[i].innerHTML = $ES('ssljzjtxje')[i].value;
		$$('td.nsje')[i].innerHTML = $ES('nsje')[i].value;
		$$('td.nsyy')[i].innerHTML = $ES('nsyy')[i].value;
	}


}
function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A105080Form').target = "_blank";
	$('WB395A105080Form').submit();
}