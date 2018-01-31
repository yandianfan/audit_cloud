var numflag;

var gdTable = new edittable('gdTable', 'gdTable');

var rzTable = new edittable('rzTable', 'rzTable');
var sgTable = new edittable('sgTable', 'sgTable');
var czTable = new edittable('czTable', 'czTable');

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						text : "暂存",
						iconCls : "save",
						id : "tempBtn",
						handler : function() {
							submitData();
						},
						scope : this
					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB390jmqyAction.do?handleCode=printPage&pzxh="
									+ $F('pzxh')
									+ "&sbmxxh="
									+ $F('zbvo.sbmxxh')+"&sessionId="
									+ $F("sessionId"));
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
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	// 禁用增加、删除行按钮
	if (document.getElementById('bbzt') != null) {
		if ($F('bbzt') != "0" && $F('bbzt') != "4" && $F('bbzt') != "null"
				&& $F('bbzt') != "") {
			var addbutton = $ES('add');
			var delbutton = $ES('del');
			for (var i = 0; i < addbutton.length; i++) {
				addbutton[i].disabled = "disabled";
				delbutton[i].disabled = "disabled";
			}
		}
	}
	var calT1 = new caltb('zbTable');
	initCalTable(calT1);

	var calT2 = new caltb('gdTable');
	initCalTable(calT2);

	gdTable.exeEnd = function() {
		runRulesForName(calT2);
		initCalTable(calT2);
	}

	var calT3 = new caltb('rzTable');
	initCalTable(calT3);

	var calT4 = new caltb('sgTable');
	initCalTable(calT4);

	sgTable.exeEnd = function() {
		runRulesForName(calT4);
		initCalTable(calT4);
	}

	var calT5 = new caltb('czTable');
	initCalTable(calT5);

	czTable.exeEnd = function() {
		runRulesForName(calT5);
		initCalTable(calT5);
	}
	codeToName();

	var temp_gdcglx = $ES('temp_gdcglx');
	for (var i = 1; i < temp_gdcglx.length; i++) {
		if (temp_gdcglx[i].value != null && temp_gdcglx[i].value != "") {
			$ES('gd_cglx')[i].value = temp_gdcglx[i].value;
		}
	}

	// var temp_rzzw = $ES('temp_rzzw');
	// for (var i = 1; i < temp_rzzw.length; i++) {
	// if (temp_rzzw[i].value != null && temp_rzzw[i].value != "") {
	// $ES('rz_zw')[i].value = temp_rzzw[i].value;
	// }
	// }

	var temp_sggflx = $ES('temp_sggflx');
	for (var i = 1; i < temp_sggflx.length; i++) {
		if (temp_sggflx[i].value != null && temp_sggflx[i].value != "") {
			$ES('sg_gflx')[i].value = temp_sggflx[i].value;
		}
	}

	// var temp_sgsgfs = $ES('temp_sgsgfs');
	// for (var i = 1; i < temp_sgsgfs.length; i++) {
	// if (temp_sgsgfs[i].value != null && temp_sgsgfs[i].value != "") {
	// $ES('sg_sgfs')[i].value = temp_sgsgfs[i].value;
	// }
	// }

	var temp_czgflx = $ES('temp_czgflx');
	for (var i = 1; i < temp_czgflx.length; i++) {
		if (temp_czgflx[i].value != null && temp_czgflx[i].value != "") {
			$ES('cz_gflx')[i].value = temp_czgflx[i].value;
		}
	}

	// var temp_czsgfs = $ES('temp_czsgfs');
	// for (var i = 1; i < temp_czsgfs.length; i++) {
	// if (temp_czsgfs[i].value != null && temp_czsgfs[i].value != "") {
	// $ES('cz_czfs')[i].value = temp_czsgfs[i].value;
	// }
	// }

	readText();
}

function codeToName() {
	var namesAy = "hyml,hydl,zbvo.btzgbhydm";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

function submitData(button) {
	if (!bascicCheck()) {
		return;
	}
	$('#errorMessage').val("");
	$('#sucessMsg').val('');
	$("#handleDesc").val("");
	$("#handleCode").val("saveData");
	waitDialog();
//	new Ajax.Request('/WB390jmqyAction.do', {
//				method : 'post',
//				parameters : $('WB390jmqyForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "update");
//					runMsg("0", false, null, 'WB390fbListForm');
//
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB390jmqyAction.do",
		async : true,
		dataType : "html",
		data : $('#WB390jmqyForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0", false, null, 'WB390fbListForm');
		}
	});
	
}

function bascicCheck() {
	// 主表检验
	if ($F('zbvo.btzqymc') == "") {
		iconDialog('【二、被投资外国企业信息-外国企业名称】不能为空，请核实！', 'WARNING');
		return false;
	}
	if ($F('zbvo.btznsrsbh') == "") {
		iconDialog('【二、被投资外国企业信息-所在国纳税识别号】不能为空，请核实！', 'WARNING');
		return false;
	}
	if ($F('zbvo.btzcld') == "") {
		iconDialog('【二、被投资外国企业信息-成立地】不能为空，请核实！', 'WARNING');
		return false;
	}
	if ($F('zbvo.btzgbhydm') == "") {
		iconDialog('【二、被投资外国企业信息-主营业务类型】不能为空，请核实！', 'WARNING');
		return false;
	}
	if ($F('zbvo.btzcgbl') == "") {
		iconDialog('【二、被投资外国企业信息-报告人持股比例】不能为空，请核实！', 'WARNING');
		return false;
	}
	// 股东信息校验
	var gdxx = $ES('gd_mc');
	for (var i = 1; i < gdxx.length; i++) {
		numflag = 0;
		if (gdxx[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('gd_cld')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('gd_cglx')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('gd_qsrq')[i].value != "") {
			numflag = numflag + 1;
		}
		if (numflag == 0 && parseFloat(emptyToZ($ES('gd_cgbl')[i].value)) != 0) {
			iconDialog('【股东信息】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
		if (numflag > 0 && numflag < 4) {
			iconDialog('【股东信息】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
	}
	// 中国居民任职情况
	var rzxx = $ES('rz_mc');
	for (var i = 1; i < rzxx.length; i++) {
		numflag = 0;
		if (rzxx[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('rz_czd')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('rz_sfsbh')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('rz_zw')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('rz_rzrq')[i].value != "") {
			numflag = numflag + 1;
		}
		if (numflag > 0 && numflag < 5) {
			iconDialog('【中国居民任职情况】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
	}
	// 收购情况
	var sgxx = $ES('sg_gflx');
	for (var i = 1; i < sgxx.length; i++) {
		numflag = 0;
		if (sgxx[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('sg_jyrq')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('sg_sgfs')[i].value != "") {
			numflag = numflag + 1;
		}
		if (numflag == 0
				&& (parseFloat(emptyToZ($ES('sg_qcgfe')[i].value)) != 0 || parseFloat(emptyToZ($ES('sg_hcgfe')[i].value)) != 0)) {
			iconDialog('【收购情况】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
		if (numflag > 0 && numflag < 3) {
			iconDialog('【收购情况】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
	}
	// 处置情况
	var czxx = $ES('cz_gflx');
	for (var i = 1; i < czxx.length; i++) {
		numflag = 0;
		if (czxx[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('cz_jyrq')[i].value != "") {
			numflag = numflag + 1;
		}
		if ($ES('cz_czfs')[i].value != "") {
			numflag = numflag + 1;
		}
		if (numflag == 0
				&& (parseFloat(emptyToZ($ES('cz_qcgfe')[i].value)) != 0 || parseFloat(emptyToZ($ES('cz_hcgfe')[i].value)) != 0)) {
			iconDialog('【收购情况】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
		if (numflag > 0 && numflag < 3) {
			iconDialog('【收购情况】第' + i + '行填写不完整，请核实！', 'WARNING');
			return false;
		}
	}
	return true;
}