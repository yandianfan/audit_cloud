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
									doprint('2', null, 0, '90%');
									$('toolbar').show();
								},
								scope : this
							}, '-', {
								text : "打印",
								id : "print",
								iconCls : "print",
								handler : function() {
									$('toolbar').hide();
									doprint('1', null, 0, '90%');
									$('toolbar').show();
								},
								scope : this
							}, '-', {
								text : "导出PDF",
								id : "pritBtn",
								iconCls : "pdf",
								handler : function() {
									$('divHtml').value = $('mainDiv').innerHTML;
									$("handleCode").value = "printPdf";
									$('WB390fpbForm').target = "_blank";
									$('WB390fpbForm').submit();
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
	var rulesY = new Array();
	rulesY[0] = "srzehjje = srzeje";
	rulesY[1] = "gzzehjje = gzzeje";
	rulesY[2] = "zczehjje = zczeje";
	rulesY[3] = "fpblzh = fpbl";
	rulesY[4] = "fpsehjje = fpseje";
	var calObj = new caltb('jsbg');
	calObj.setRulesY(rulesY);
	calObj.negative = true;
	initCalTable(calObj);
	runRulesForName(calObj);
	// 当是总机构时
	$$('td.znsrsbm')[0].innerHTML = $ES('znsrsbm')[0].value;
	$$('td.znsrmc')[0].innerHTML = "总机构名称：" + $ES('znsrmc')[0].value;
	$$('td.zjgynsdse_je')[0].innerHTML = $ES('zjgynsdse_je')[0].value;
	$$('td.zjgftsdse_je')[0].innerHTML = $ES('zjgftsdse_je')[0].value;
	$$('td.zjgczjzfbsdse_je')[0].innerHTML = $ES('zjgczjzfbsdse_je')[0].value;
	// $$('td.zheji')[0].innerHTML = $ES('zheji')[0].value;
	$$('td.fzjgftsdseje')[0].innerHTML = $ES('fzjgftsdseje')[0].value;
	// 当是分支机构时
	var nsrsbm = $ES('nsrsbm');
	for (var i = 0; i < nsrsbm.length; i++) {
		$$('td.nsrsbm')[i].innerHTML = $ES('nsrsbm')[i].value;
		$$('td.nsrmc')[i].innerHTML = $ES('nsrmc')[i].value;
		$$('td.gzzeje')[i].innerHTML = $ES('gzzeje')[i].value;
		$$('td.srzeje')[i].innerHTML = $ES('srzeje')[i].value;
		$$('td.zczeje')[i].innerHTML = $ES('zczeje')[i].value;
		$$('td.fpbl')[i].innerHTML = $ES('fpbl')[i].value;
		$$('td.fpseje')[i].innerHTML = $ES('fpseje')[i].value;
		// $$('td.heji')[i].innerHTML = $ES('heji')[i].value;
	}
}