Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						text : "提交",
						iconCls : "submit",
						id : "submitBtn",
						handler : function() {
							showSubmitDialog();
						},
						scope : this
					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395ckkAction.do?handleCode=printPage&pzXh="
									+ $F('pzXh') + "&SBMX_XH=" + $F('sbmxxh'));
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
	readText(true);

	if (!$F('hdmxString').empty()) {
		var jsonContent = eval("(" + $F('hdmxString') + ")");
		var bizData = jsonContent.hdmxlist;
		var rowInfo;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			for (var j = 0; j < $ES('mxxh').length; j++) {
				if ($ES('mxxh')[j].value == rowInfo.mxxh) {
					$ES('byfjdx')[j].value = rowInfo.byfjdx;
					$ES('byjdx')[j].value = rowInfo.byjdx;
					$ES('byhj')[j].value = rowInfo.byhj;
					$ES('bnfjdx')[j].value = rowInfo.bnfjdx;
					$ES('bnjdx')[j].value = rowInfo.bnjdx;
					$ES('bnhj')[j].value = rowInfo.bnhj;
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
	setzcfzbclass();
	setxjllbclass();

	// 资产负债
	a = new caltb('xqyzdzcfzb');
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";
	var rulesID = new Array();
	// 资产
	// 10=2+...+9
	rulesID[0] = "zncs10 = zncs2 + zncs3 + zncs4 + zncs5 + zncs6 + zncs7 + zncs8 + zncs9";
	rulesID[1] = "zqms10 = zqms2 + zqms3 + zqms4 + zqms5 + zqms6 + zqms7 + zqms8 + zqms9";
	// 15=13+14
	rulesID[2] = "zncs15 = zncs13 + zncs14";
	rulesID[3] = "zqms15 = zqms13 + zqms14";
	// 20 = 18 - 19
	rulesID[4] = "zncs20 = zncs18 - zncs19";
	rulesID[5] = "zqms20 = zqms18 - zqms19";
	// 24 = 20+21+22+23
	rulesID[6] = "zncs24 = zncs20 + zncs21 + zncs22 + zncs23";
	rulesID[7] = "zqms24 = zqms20 + zqms21 + zqms22 + zqms23";
	// 32=10+15+24+27+30
	rulesID[8] = "zncs32 = zncs10 + zncs15 + zncs24 + zncs27 + zncs30";
	rulesID[9] = "zqms32 = zqms10 + zqms15 + zqms24 + zqms27 + zqms30";

	// 负债
	// 11=2+...+10
	rulesID[10] = "fzncs11 = fzncs2 + fzncs3 + fzncs4 + fzncs5 + fzncs6 + fzncs7 + fzncs8 + fzncs9 + fzncs10";
	rulesID[11] = "fzqms11 = fzqms2 + fzqms3 + fzqms4 + fzqms5 + fzqms6 + fzqms7 + fzqms8 + fzqms9 + fzqms10";
	// 17=14+15+16
	rulesID[12] = "fzncs17 = fzncs14 + fzncs15 + fzncs16";
	rulesID[13] = "fzqms17 = fzqms14 + fzqms15 + fzqms16";
	// 22=11+17+20
	rulesID[14] = "fzncs22 = fzncs11 + fzncs17 + fzncs20";
	rulesID[15] = "fzqms22 = fzqms11 + fzqms17 + fzqms20";
	// 30=28+29
	rulesID[16] = "fzncs30 = fzncs28 + fzncs29";
	rulesID[17] = "fzqms30 = fzqms28 + fzqms29";
	// 32=22+30
	rulesID[18] = "fzncs32 = fzncs22 + fzncs30";
	rulesID[19] = "fzqms32 = fzqms22 + fzqms30";

	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	// 活动表
	var d = new caltb('xqyzdlrb');
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	var rulesID1 = new Array();
	rulesID1[0] = "byfjdx9 = byfjdx2 + byfjdx3 + byfjdx4 + byfjdx5 + byfjdx6 + byfjdx7 + byfjdx8";
	rulesID1[1] = "byjdx9 = byjdx2 + byjdx3 + byjdx4 + byjdx5 + byjdx6 + byjdx7 + byjdx8";
	rulesID1[2] = "byhj9 = byhj2 + byhj3 + byhj4 + byhj5 + byhj6 + byhj7 + byhj8";
	rulesID1[3] = "bnfjdx9 = bnfjdx2 + bnfjdx3 + bnfjdx4 + bnfjdx5 + bnfjdx6 + bnfjdx7 + bnfjdx8";
	rulesID1[4] = "bnjdx9 = bnjdx2 + bnjdx3 + bnjdx4 + bnjdx5 + bnjdx6 + bnjdx7 + bnjdx8";
	rulesID1[5] = "bnhj9 = bnhj2 + bnhj3 + bnhj4 + bnhj5 + bnhj6 + bnhj7 + bnhj8";

	rulesID1[6] = "byfjdx19 = byfjdx11 + byfjdx12 + byfjdx13 + byfjdx14 + byfjdx15 + byfjdx16 + byfjdx17 + byfjdx18";
	rulesID1[7] = "byjdx19 = byjdx11 + byjdx12 + byjdx13 + byjdx14 + byjdx15 + byjdx16 + byjdx17 + byjdx18";
	rulesID1[8] = "byhj19 = byhj11 + byhj12 + byhj13 + byhj14 + byhj15 + byhj16 + byhj17 + byhj18";
	rulesID1[9] = "bnfjdx19 = bnfjdx11 + bnfjdx12 + bnfjdx13 + bnfjdx14 + bnfjdx15 + bnfjdx16 + bnfjdx17 + bnfjdx18";
	rulesID1[10] = "bnjdx19 = bnjdx11 + bnjdx12 + bnjdx13 + bnjdx14 + bnjdx15 + bnjdx16 + bnjdx17 + bnjdx18";
	rulesID1[11] = "bnhj19 = bnhj11 + bnhj12 + bnhj13 + bnhj14 + bnhj15 + bnhj16 + bnhj17 + bnhj18";

	rulesID1[12] = "byhj1 = byfjdx1 + byjdx1";
	rulesID1[13] = "byhj2 = byfjdx2 + byjdx2";
	rulesID1[14] = "byhj3 = byfjdx3 + byjdx3";
	rulesID1[15] = "byhj4 = byfjdx4 + byjdx4";
	rulesID1[16] = "byhj5 = byfjdx5 + byjdx5";
	rulesID1[17] = "byhj6 = byfjdx6 + byjdx6";
	rulesID1[18] = "byhj7 = byfjdx7 + byjdx7";
	rulesID1[19] = "byhj8 = byfjdx8 + byjdx8";
	rulesID1[20] = "byhj9 = byfjdx9 + byjdx9";
	rulesID1[21] = "byhj10 = byfjdx10 + byjdx10";
	rulesID1[22] = "byhj11 = byfjdx11 + byjdx11";
	rulesID1[23] = "byhj12 = byfjdx12 + byjdx12";
	rulesID1[24] = "byhj13 = byfjdx13 + byjdx13";
	rulesID1[25] = "byhj14 = byfjdx14 + byjdx14";
	rulesID1[26] = "byhj15 = byfjdx15 + byjdx15";
	rulesID1[27] = "byhj16 = byfjdx16 + byjdx16";
	rulesID1[28] = "byhj17 = byfjdx17 + byjdx17";
	rulesID1[29] = "byhj18 = byfjdx18 + byjdx18";
	rulesID1[30] = "byhj19 = byfjdx19 + byjdx19";
	rulesID1[31] = "byhj20 = byfjdx20 + byjdx20";
	rulesID1[32] = "byhj21 = byfjdx21 + byjdx21";

	rulesID1[33] = "bnhj1 = bnfjdx1 + bnjdx1";
	rulesID1[34] = "bnhj2 = bnfjdx2 + bnjdx2";
	rulesID1[35] = "bnhj3 = bnfjdx3 + bnjdx3";
	rulesID1[36] = "bnhj4 = bnfjdx4 + bnjdx4";
	rulesID1[37] = "bnhj5 = bnfjdx5 + bnjdx5";
	rulesID1[38] = "bnhj6 = bnfjdx6 + bnjdx6";
	rulesID1[39] = "bnhj7 = bnfjdx7 + bnjdx7";
	rulesID1[40] = "bnhj8 = bnfjdx8 + bnjdx8";
	rulesID1[41] = "bnhj9 = bnfjdx9 + bnjdx9";
	rulesID1[42] = "bnhj10 = bnfjdx10 + bnjdx10";
	rulesID1[43] = "bnhj11 = bnfjdx11 + bnjdx11";
	rulesID1[44] = "bnhj12 = bnfjdx12 + bnjdx12";
	rulesID1[45] = "bnhj13 = bnfjdx13 + bnjdx13";
	rulesID1[46] = "bnhj14 = bnfjdx14 + bnjdx14";
	rulesID1[47] = "bnhj15 = bnfjdx15 + bnjdx15";
	rulesID1[48] = "bnhj16 = bnfjdx16 + bnjdx16";
	rulesID1[49] = "bnhj17 = bnfjdx17 + bnjdx17";
	rulesID1[50] = "bnhj18 = bnfjdx18 + bnjdx18";
	rulesID1[51] = "bnhj19 = bnfjdx19 + bnjdx19";
	rulesID1[52] = "bnhj20 = bnfjdx20 + bnjdx20";
	rulesID1[53] = "bnhj21 = bnfjdx21 + bnjdx21";

	d.setRulesID(rulesID1);
	initCalTable(d, true);
	runRulesForID(d);

	c = new caltb('xjllb');
	c.type = "1";
	c.negative = true;
	c.pageTipsFlag = "1";
	rulesID = new Array();
	// 8=2+...+7;
	rulesID[0] = "je8 = je2 + je3 + je4 + je5 + je6 + je7";
	// 13=9+...+12;
	rulesID[1] = "je13 = je9 + je10 + je11 + je12";
	// 20=16+...+19;
	rulesID[2] = "je20 = je16 + je17 + je18 + je19";
	// 24=21+22+23;
	rulesID[3] = "je24 = je21 + je22 + je23";
	// 29=27+28;
	rulesID[4] = "je29 = je27 + je28";
	// 33=30+31+32;
	rulesID[5] = "je33 = je30 + je31 + je32";
	c.setRulesID(rulesID);
	initCalTable(c, true);
	runRulesForID(c);
}

function setxjllbclass() {
	document.getElementById("je1").readOnly = "true";
	document.getElementById("je1").className = "read";
	document.getElementById("je8").readOnly = "true";
	document.getElementById("je8").className = "read";
	document.getElementById("je13").readOnly = "true";
	document.getElementById("je13").className = "read";
	document.getElementById("je15").readOnly = "true";
	document.getElementById("je15").className = "read";
	document.getElementById("je20").readOnly = "true";
	document.getElementById("je20").className = "read";
	document.getElementById("je24").readOnly = "true";
	document.getElementById("je24").className = "read";
	document.getElementById("je26").readOnly = "true";
	document.getElementById("je26").className = "read";
	document.getElementById("je29").readOnly = "true";
	document.getElementById("je29").className = "read";
	document.getElementById("je33").readOnly = "true";
	document.getElementById("je33").className = "read";
}

function setzcfzbclass() {
	document.getElementById("zncs1").readOnly = "true";
	document.getElementById("zncs1").className = "read";
	document.getElementById("zncs10").readOnly = "true";
	document.getElementById("zncs10").className = "read";
	document.getElementById("zncs11").readOnly = "true";
	document.getElementById("zncs11").className = "read";
	document.getElementById("zncs12").readOnly = "true";
	document.getElementById("zncs12").className = "read";
	document.getElementById("zncs16").readOnly = "true";
	document.getElementById("zncs16").className = "read";
	document.getElementById("zncs17").readOnly = "true";
	document.getElementById("zncs17").className = "read";
	document.getElementById("zncs20").readOnly = "true";
	document.getElementById("zncs20").className = "read";
	document.getElementById("zncs24").readOnly = "true";
	document.getElementById("zncs24").className = "read";
	document.getElementById("zncs25").readOnly = "true";
	document.getElementById("zncs25").className = "read";
	document.getElementById("zncs26").readOnly = "true";
	document.getElementById("zncs26").className = "read";
	document.getElementById("zncs28").readOnly = "true";
	document.getElementById("zncs28").className = "read";
	document.getElementById("zncs29").readOnly = "true";
	document.getElementById("zncs29").className = "read";
	document.getElementById("zncs31").readOnly = "true";
	document.getElementById("zncs31").className = "read";
	document.getElementById("zncs32").readOnly = "true";
	document.getElementById("zncs32").className = "read";
	document.getElementById("zqms1").readOnly = "true";
	document.getElementById("zqms1").className = "read";
	document.getElementById("zqms10").readOnly = "true";
	document.getElementById("zqms10").className = "read";
	document.getElementById("zqms11").readOnly = "true";
	document.getElementById("zqms11").className = "read";
	document.getElementById("zqms12").readOnly = "true";
	document.getElementById("zqms12").className = "read";
	document.getElementById("zqms16").readOnly = "true";
	document.getElementById("zqms16").className = "read";
	document.getElementById("zqms17").readOnly = "true";
	document.getElementById("zqms17").className = "read";
	document.getElementById("zqms20").readOnly = "true";
	document.getElementById("zqms20").className = "read";
	document.getElementById("zqms24").readOnly = "true";
	document.getElementById("zqms24").className = "read";
	document.getElementById("zqms25").readOnly = "true";
	document.getElementById("zqms25").className = "read";
	document.getElementById("zqms26").readOnly = "true";
	document.getElementById("zqms26").className = "read";
	document.getElementById("zqms28").readOnly = "true";
	document.getElementById("zqms28").className = "read";
	document.getElementById("zqms29").readOnly = "true";
	document.getElementById("zqms29").className = "read";
	document.getElementById("zqms31").readOnly = "true";
	document.getElementById("zqms31").className = "read";
	document.getElementById("zqms32").readOnly = "true";
	document.getElementById("zqms32").className = "read";

	document.getElementById("fzncs1").readOnly = "true";
	document.getElementById("fzncs1").className = "read";
	document.getElementById("fzncs11").readOnly = "true";
	document.getElementById("fzncs11").className = "read";
	document.getElementById("fzncs12").readOnly = "true";
	document.getElementById("fzncs12").className = "read";
	document.getElementById("fzncs13").readOnly = "true";
	document.getElementById("fzncs13").className = "read";
	document.getElementById("fzncs17").readOnly = "true";
	document.getElementById("fzncs17").className = "read";
	document.getElementById("fzncs18").readOnly = "true";
	document.getElementById("fzncs18").className = "read";
	document.getElementById("fzncs19").readOnly = "true";
	document.getElementById("fzncs19").className = "read";
	document.getElementById("fzncs21").readOnly = "true";
	document.getElementById("fzncs21").className = "read";
	document.getElementById("fzncs23").readOnly = "true";
	document.getElementById("fzncs23").className = "read";
	document.getElementById("fzncs24").readOnly = "true";
	document.getElementById("fzncs24").className = "read";
	document.getElementById("fzncs25").readOnly = "true";
	document.getElementById("fzncs25").className = "read";
	document.getElementById("fzncs26").readOnly = "true";
	document.getElementById("fzncs26").className = "read";
	document.getElementById("fzncs27").readOnly = "true";
	document.getElementById("fzncs27").className = "read";
	document.getElementById("fzncs30").readOnly = "true";
	document.getElementById("fzncs30").className = "read";
	document.getElementById("fzncs31").readOnly = "true";
	document.getElementById("fzncs31").className = "read";
	document.getElementById("fzncs32").readOnly = "true";
	document.getElementById("fzncs32").className = "read";
	document.getElementById("fzqms1").readOnly = "true";
	document.getElementById("fzqms1").className = "read";
	document.getElementById("fzqms11").readOnly = "true";
	document.getElementById("fzqms11").className = "read";
	document.getElementById("fzqms12").readOnly = "true";
	document.getElementById("fzqms12").className = "read";
	document.getElementById("fzqms13").readOnly = "true";
	document.getElementById("fzqms13").className = "read";
	document.getElementById("fzqms17").readOnly = "true";
	document.getElementById("fzqms17").className = "read";
	document.getElementById("fzqms18").readOnly = "true";
	document.getElementById("fzqms18").className = "read";
	document.getElementById("fzqms19").readOnly = "true";
	document.getElementById("fzqms19").className = "read";
	document.getElementById("fzqms21").readOnly = "true";
	document.getElementById("fzqms21").className = "read";
	document.getElementById("fzqms23").readOnly = "true";
	document.getElementById("fzqms23").className = "read";
	document.getElementById("fzqms24").readOnly = "true";
	document.getElementById("fzqms24").className = "read";
	document.getElementById("fzqms25").readOnly = "true";
	document.getElementById("fzqms25").className = "read";
	document.getElementById("fzqms26").readOnly = "true";
	document.getElementById("fzqms26").className = "read";
	document.getElementById("fzqms27").readOnly = "true";
	document.getElementById("fzqms27").className = "read";
	document.getElementById("fzqms30").readOnly = "true";
	document.getElementById("fzqms30").className = "read";
	document.getElementById("fzqms31").readOnly = "true";
	document.getElementById("fzqms31").className = "read";
	document.getElementById("fzqms32").readOnly = "true";
	document.getElementById("fzqms32").className = "read";
}

function showSubmitDialog() {
	$('#errorMessage').val("");
	$('#sucessMsg').val("");
	if (!bascicCheck()) {
		return;
	}
	confirmDialog("是否确认提交申报数据?", function(button) {
		if (button == "yes") {
			$("#handleCode").val("saveData");
			waitDialog();
//			new Ajax.Request('/WB395ckkAction.do', {
//						method : 'post',
//						parameters : $('WB395ckkForm').serialize(),
//						onComplete : function(originalRequest) {
//							Ext.MessageBox.hide();
//							ajaxUpdate(originalRequest.responseText, "ajaxform");
//							runMsg("1", true, null, 'WB395IndexForm');
//						},
//						onException : function() {
//							Ext.MessageBox.hide();
//							iconDialog('系统异常', 'ERROR', function() {
//										readTextIne();
//									});
//						}
//					});
			
			$.ajax({
				url : "/WB395ckkAction.do",
				async : true,
				dataType : "html",
				data : $('#WB395ckkForm').serialize(),
				type : 'post',
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					iconDialog('系统异常', 'ERROR', function() {
						readTextIne();
					});
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					ajaxUpdate(responseText, "ajaxform");
					runMsg("1", true, null, 'WB395IndexForm');
				}
			});
			
		}

	});
}

function bascicCheck() {
	if ("" == $F('swglm')) {
		iconDialog('请填写【资产负债表】税务管理码! ', 'WARNING');
		return false;
	}
	if ("" == $F('bzdw')) {
		iconDialog('请填写【资产负债表】编制单位! ', 'WARNING');
		return false;
	}
	if ("" == $F('ssq')) {
		iconDialog('请选择【资产负债表】所属期! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zncs32"))) != parseFloat(emptyToZ($F("fzncs32")))) {
		iconDialog('【资产负债表】“资产总计”不等于“负债和净资产总计”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zqms32"))) != parseFloat(emptyToZ($F("fzqms32")))) {
		iconDialog('【资产负债表】“资产总计”不等于“负债和净资产总计”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("byfjdx11"))) < parseFloat(emptyToZ($F("byfjdx12")))
			+ parseFloat(emptyToZ($F("byfjdx13")))
			+ parseFloat(emptyToZ($F("byfjdx14")))
			+ parseFloat(emptyToZ($F("byfjdx15")))) {
		iconDialog('【业务活动表】本月非限定性“业务活动成本”应大于等于行次13、14、15、16之和,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("byjdx11"))) < parseFloat(emptyToZ($F("byjdx12")))
			+ parseFloat(emptyToZ($F("byjdx13")))
			+ parseFloat(emptyToZ($F("byjdx14")))
			+ parseFloat(emptyToZ($F("byjdx15")))) {
		iconDialog('【业务活动表】本月限定性“业务活动成本”应大于等于行次13、14、15、16之和,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("bnfjdx11"))) < parseFloat(emptyToZ($F("bnfjdx12")))
			+ parseFloat(emptyToZ($F("bnfjdx13")))
			+ parseFloat(emptyToZ($F("bnfjdx14")))
			+ parseFloat(emptyToZ($F("bnfjdx15")))) {
		iconDialog('【业务活动表】本年非限定性“业务活动成本”应大于等于行次13、14、15、16之和,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("bnjdx11"))) < parseFloat(emptyToZ($F("bnjdx12")))
			+ parseFloat(emptyToZ($F("bnjdx13")))
			+ parseFloat(emptyToZ($F("bnjdx14")))
			+ parseFloat(emptyToZ($F("bnjdx15")))) {
		iconDialog('【业务活动表】本年限定性“业务活动成本”应大于等于行次13、14、15、16之和,请核实! ', 'WARNING');
		return false;
	}
	return true;
}
