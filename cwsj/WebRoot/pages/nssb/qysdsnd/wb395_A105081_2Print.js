var jsonContent;
var calObj;

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
	calObj = new caltb('tab1');
	calObj.negative = true;
	calObj.type = "1";
	calObj.setRulesID(ymkj_getRulesX('tab1'));
	initCalTable(calObj);
	buildData();
}
function buildData() {
	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;
	var bizData = jsonContent.BIZDATA;
	for (var i = 0; i < bizData.length; i++) {
		rowInfo = bizData[i];
		if (parseInt(rowInfo.sbmxxh) == 2) {
			$ES("hymc")[0].value = rowInfo.hymc;
			$ES("hybj")[0].value = rowInfo.hybj;
		}
		$ES('fwjzyz')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.fwjzyz)), 2);
		$ES('fwjzbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.fwjzbqzjje)), 2);
		$ES('fwjzljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.fwjzljzjje)), 2);
		$ES('scsbyz')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scsbyz)), 2);
		$ES('scsbbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scsbbqzjje)), 2);
		$ES('scsbljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scsbljzjje)), 2);
		$ES('scgjyz')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scgjyz)), 2);
		$ES('scgjbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scgjbqzjje)), 2);
		$ES('scgjljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.scgjljzjje)), 2);
		$ES('ysgjyz')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ysgjyz)), 2);
		$ES('ysgjbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ysgjbqzjje)), 2);
		$ES('ysgjljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.ysgjljzjje)), 2);
		$ES('dzsbyz')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.dzsbyz)), 2);
		$ES('dzsbbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.dzsbbqzjje)), 2);
		$ES('dzsbljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.dzsbljzjje)), 2);
		$ES('hjyz')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjyz)), 2);
		$ES('hjbqzjzczjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjbqzjzczjje)), 2);
		$ES('hjbqzjjszjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjbqzjjszjje)), 2);
		$ES('hjljzjzczjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjljzjzczjje)), 2);
		$ES('hjljzjjszjje')[parseInt(rowInfo.sbmxxh) - 1].value = caltbNumloop(
				parseFloat(emptyToZ(rowInfo.hjljzjjszjje)), 2);
		$ES('sytj')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.sytj;

	}
	runRulesForID(calObj);
	for (var i = 0; i < $ES("sbmxxh").length; i++) {
		if ($ES("sbmxxh")[i].value == "2") {
			$$('td.hymc')[0].innerHTML = $ES('hymc')[0].value;
			if ($ES('hybj')[0].value == "07") {
				$$('td.fwjzyz')[1].style.display = "none";
				$$('td.fwjzbqzjje')[1].style.display = "none";
				$$('td.fwjzljzjje')[1].style.display = "none";
			} else {
				$$('td.unableinput1')[0].style.display = "none";
				$$('td.unableinput2')[0].style.display = "none";
				$$('td.unableinput3')[0].style.display = "none";
			}
		} 
		if($ES("sbmxxh")[i].value == "4"||$ES("sbmxxh")[i].value == "5"||$ES("sbmxxh")[i].value == "6"){
		$$('td.fwjzyz')[i].innerHTML = "——";
		$$('td.fwjzbqzjje')[i].innerHTML = "——";
		$$('td.fwjzljzjje')[i].innerHTML = "——";
		}else{
		$$('td.fwjzyz')[i].innerHTML = $ES('fwjzyz')[i].value;
		$$('td.fwjzbqzjje')[i].innerHTML = $ES('fwjzbqzjje')[i].value;
		$$('td.fwjzljzjje')[i].innerHTML = $ES('fwjzljzjje')[i].value;
		}
		$$('td.scsbyz')[i].innerHTML = $ES('scsbyz')[i].value;
		$$('td.scsbbqzjje')[i].innerHTML = $ES('scsbbqzjje')[i].value;
		$$('td.scsbljzjje')[i].innerHTML = $ES('scsbljzjje')[i].value;
		$$('td.scgjyz')[i].innerHTML = $ES('scgjyz')[i].value;
		$$('td.scgjbqzjje')[i].innerHTML = $ES('scgjbqzjje')[i].value;
		$$('td.scgjljzjje')[i].innerHTML = $ES('scgjljzjje')[i].value;
		$$('td.ysgjyz')[i].innerHTML = $ES('ysgjyz')[i].value;
		$$('td.ysgjbqzjje')[i].innerHTML = $ES('ysgjbqzjje')[i].value;
		$$('td.ysgjljzjje')[i].innerHTML = $ES('ysgjljzjje')[i].value;
		$$('td.dzsbyz')[i].innerHTML = $ES('dzsbyz')[i].value;
		$$('td.dzsbbqzjje')[i].innerHTML = $ES('dzsbbqzjje')[i].value;
		$$('td.dzsbljzjje')[i].innerHTML = $ES('dzsbljzjje')[i].value;
		$$('td.hjyz')[i].innerHTML = $ES('hjyz')[i].value;
		$$('td.hjbqzjzczjje')[i].innerHTML = $ES('hjbqzjzczjje')[i].value;
		$$('td.hjbqzjjszjje')[i].innerHTML = $ES('hjbqzjjszjje')[i].value;
		$$('td.hjljzjzczjje')[i].innerHTML = $ES('hjljzjzczjje')[i].value;
		$$('td.hjljzjjszjje')[i].innerHTML = $ES('hjljzjjszjje')[i].value;

		$$('td.fwjzyzhj')[0].innerHTML = $ES('fwjzyzhj')[0].value;
		$$('td.fwjzbqzjjehj')[0].innerHTML = $ES('fwjzbqzjjehj')[0].value;
		$$('td.fwjzljzjjehj')[0].innerHTML = $ES('fwjzljzjjehj')[0].value;
		$$('td.scsbyzhj')[0].innerHTML = $ES('scsbyzhj')[0].value;
		$$('td.scsbbqzjjehj')[0].innerHTML = $ES('scsbbqzjjehj')[0].value;
		$$('td.scsbljzjjehj')[0].innerHTML = $ES('scsbljzjjehj')[0].value;
		$$('td.scgjyzhj')[0].innerHTML = $ES('scgjyzhj')[0].value;
		$$('td.scgjbqzjjehj')[0].innerHTML = $ES('scgjbqzjjehj')[0].value;
		$$('td.scgjljzjjehj')[0].innerHTML = $ES('scgjljzjjehj')[0].value;
		$$('td.ysgjyzhj')[0].innerHTML = $ES('ysgjyzhj')[0].value;
		$$('td.ysgjbqzjjehj')[0].innerHTML = $ES('ysgjbqzjjehj')[0].value;
		$$('td.ysgjljzjjehj')[0].innerHTML = $ES('ysgjljzjjehj')[0].value;
		$$('td.dzsbyzhj')[0].innerHTML = $ES('dzsbyzhj')[0].value;
		$$('td.dzsbbqzjjehj')[0].innerHTML = $ES('dzsbbqzjjehj')[0].value;
		$$('td.dzsbljzjjehj')[0].innerHTML = $ES('dzsbljzjjehj')[0].value;
		$$('td.hjyzhj')[0].innerHTML = $ES('hjyzhj')[0].value;
		$$('td.hjbqzjzczjjehj')[0].innerHTML = $ES('hjbqzjzczjjehj')[0].value;
		$$('td.hjbqzjjszjjehj')[0].innerHTML = $ES('hjbqzjjszjjehj')[0].value;
		$$('td.hjljzjzczjjehj')[0].innerHTML = $ES('hjljzjzczjjehj')[0].value;
		$$('td.hjljzjjszjjehj')[0].innerHTML = $ES('hjljzjjszjjehj')[0].value;

		if ($ES('sytj')[i].value == "01") {
			$$('td.sytj')[i].innerHTML = "是（符合条件并适用）";
		} else if ($ES('sytj')[i].value == "02") {
			$$('td.sytj')[i].innerHTML = "否（不符合条件）";
		} else if ($ES('sytj')[i].value == "03") {
			$$('td.sytj')[i].innerHTML = "否（符合条件，不选择适用）";
		}

	}

}

function A105081_2js() {
}

function printPdf() {
	$('divHtml').value = $('mainDiv').innerHTML;
	$('handleCode').value = 'printPdf';
	$('WB395A105081_2Form').target = "_blank";
	$('WB395A105081_2Form').submit();
}