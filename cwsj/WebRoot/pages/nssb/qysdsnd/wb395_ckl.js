var d;
var a;
var c;
var rulesID;

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
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395cklAction.do?handleCode=printPage&pzXh="
									+ $F('pzXh') + "&SBMX_XH=" + $F('sbmxxh'));
						},
						scope : this
					}, "-", {
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
	setzcfzbclass();
	setlrbclass();
	setxjbclass();

	d = new caltb("xqyzzzcfzb", true);
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	rulesID = new Array();

	rulesID[0] = "zcqms16 = zcqms2 + zcqms3 + zcqms4 + zcqms5 + zcqms6 + zcqms7 + zcqms8 + zcqms9 + zcqms10 + zcqms15";
	rulesID[1] = "zcqms22 = zcqms20 - zcqms21";
	// 行29=行16+17+20（固定资产账面价值）+21+22+23+24+25+26+27+28
	rulesID[2] = "zcqms31 = zcqms18 + zcqms19 + zcqms22 + zcqms23 + zcqms24 + zcqms25 + zcqms26 + zcqms27 + zcqms28 + zcqms29 + zcqms30";
	rulesID[3] = "zcqms32 = zcqms16 + zcqms31";
	rulesID[4] = "zcqcs16 = zcqcs2 + zcqcs3 + zcqcs4 + zcqcs5 + zcqcs6 + zcqcs7 + zcqcs8 + zcqcs9 + zcqcs10 + zcqcs15";
	rulesID[5] = "zcqcs22 = zcqcs20 - zcqcs21";
	rulesID[6] = "zcqcs31 = zcqcs18 + zcqcs19 + zcqcs22 + zcqcs23 + zcqcs24 + zcqcs25 + zcqcs26 + zcqcs27 + zcqcs28 + zcqcs29 + zcqcs30";
	rulesID[7] = "zcqcs32 = zcqcs16 + zcqcs31";
	rulesID[8] = "fzqms12 = fzqms2 + fzqms3 + fzqms4 + fzqms5 + fzqms6 + fzqms7 + fzqms8 + fzqms9 + fzqms10 + fzqms11";
	rulesID[9] = "fzqms18 = fzqms14 + fzqms15 + fzqms16 + fzqms17";
	rulesID[10] = "fzqms19 = fzqms12 + fzqms18";
	rulesID[11] = "fzqms31 = fzqms27 + fzqms28 + fzqms29 + fzqms30";
	rulesID[12] = "fzqms32 = fzqms19 + fzqms31";
	rulesID[13] = "fzqcs12 = fzqcs2 + fzqcs3 + fzqcs4 + fzqcs5 + fzqcs6 + fzqcs7 + fzqcs8 + fzqcs9 + fzqcs10 + fzqcs11";
	rulesID[14] = "fzqcs18 = fzqcs14 + fzqcs15 + fzqcs16 + fzqcs17";
	rulesID[15] = "fzqcs19 = fzqcs12 + fzqcs18";
	rulesID[16] = "fzqcs31 = fzqcs27 + fzqcs28 + fzqcs29 + fzqcs30";
	rulesID[17] = "fzqcs32 = fzqcs31 + fzqcs19";
	d.setRulesID(rulesID);
	initCalTable(d, true);
	runRulesForID(d);

	a = new caltb("xqyzzlrb", true);
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "bnljje21 = bnljje1 - bnljje2 - bnljje3 - bnljje11 - bnljje14 - bnljje18 + bnljje20";
	rulesID[1] = "bnljje30 = bnljje21 + bnljje22 - bnljje24";
	rulesID[2] = "bnljje32 = bnljje30 - bnljje31";
	rulesID[3] = "byje21 = byje1 - byje2 - byje3 - byje11 - byje14 - byje18 + byje20";
	rulesID[4] = "byje30 = byje21 + byje22 - byje24";
	rulesID[5] = "byje32 = byje30 - byje31";
	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	a.customrules = function() {
		idname = window.event.srcElement.id;
		if (window.event.srcElement.name == "byje") {
			newidname = idname.replace("byje", "bnljje");
			calcidname = idname.replace("byje", "calcbnljje");
			$(newidname).value = caltbNumloop(
					parseFloat(emptyToZ($(idname).value))
							+ parseFloat(emptyToZ($(calcidname).value)), 2);
			if ($(newidname).getAttribute("negative") == "false"
					&& $(newidname).value < 0) {
				$(newidname).value = "0.00";
			}
		}
	};

		c = new caltb("xqyzzxjllb", true);
		c.type = "1";
		c.negative = true;
		c.pageTipsFlag = "1";
		rulesID = new Array();
		rulesID[0] = "xjbnljje8 = xjbnljje2 + xjbnljje3 - xjbnljje4 - xjbnljje5 - xjbnljje6 - xjbnljje7";
		rulesID[1] = "xjbnljje15 = xjbnljje10 + xjbnljje11 + xjbnljje12 - xjbnljje13 - xjbnljje14";
		rulesID[2] = "xjbnljje22 = xjbnljje17 + xjbnljje18 - xjbnljje19 - xjbnljje20 - xjbnljje21";
		rulesID[3] = "xjbnljje23 = xjbnljje8 + xjbnljje15 + xjbnljje22";
		rulesID[4] = "xjbnljje25 = xjbnljje23 + xjbnljje24";
		rulesID[5] = "xjbyje8 = xjbyje2 + xjbyje3 - xjbyje4 - xjbyje5 - xjbyje6 - xjbyje7";
		rulesID[6] = "xjbyje15 = xjbyje10 + xjbyje11 + xjbyje12 - xjbyje13 - xjbyje14";
		rulesID[7] = "xjbyje22 = xjbyje17 + xjbyje18 - xjbyje19 - xjbyje20 - xjbyje21";
		rulesID[8] = "xjbyje23 = xjbyje8 + xjbyje15 + xjbyje22";
		rulesID[9] = "xjbyje25 = xjbyje23 + xjbyje24";
		c.setRulesID(rulesID);
		initCalTable(c, true);
		runRulesForID(c);
		if (document.getElementById("ssq").value.substr(5, 2) != "12") {
			c.customrules = function() {
				idname = window.event.srcElement.id;
				if (window.event.srcElement.name == "xjbyje") {
					newidname = idname.replace("xjbyje", "xjbnljje");
					calcidname = idname.replace("xjbyje", "calcxjbnljje");
					document.getElementById(newidname).value = caltbNumloop(
							parseFloat(emptyToZ($F(idname)))
									+ parseFloat(emptyToZ($F(calcidname))),
							2);
				}
			};
		}

}

function setzcfzbclass() {
	document.getElementById("zcqms1").readOnly = "true";
	document.getElementById("zcqms1").className = "read";
	document.getElementById("zcqms16").readOnly = "true";
	document.getElementById("zcqms16").className = "read";
	document.getElementById("zcqms17").readOnly = "true";
	document.getElementById("zcqms17").className = "read";
	document.getElementById("zcqms22").readOnly = "true";
	document.getElementById("zcqms22").className = "read";
	document.getElementById("zcqms31").readOnly = "true";
	document.getElementById("zcqms31").className = "read";
	document.getElementById("zcqms32").readOnly = "true";
	document.getElementById("zcqms32").className = "read";
	document.getElementById("zcqcs1").readOnly = "true";
	document.getElementById("zcqcs1").className = "read";
	document.getElementById("zcqcs16").readOnly = "true";
	document.getElementById("zcqcs16").className = "read";
	document.getElementById("zcqcs17").readOnly = "true";
	document.getElementById("zcqcs17").className = "read";
	document.getElementById("zcqcs22").readOnly = "true";
	document.getElementById("zcqcs22").className = "read";
	document.getElementById("zcqcs31").readOnly = "true";
	document.getElementById("zcqcs31").className = "read";
	document.getElementById("zcqcs32").readOnly = "true";
	document.getElementById("zcqcs32").className = "read";
	document.getElementById("fzqms1").readOnly = "true";
	document.getElementById("fzqms1").className = "read";
	document.getElementById("fzqms12").readOnly = "true";
	document.getElementById("fzqms12").className = "read";
	document.getElementById("fzqms13").readOnly = "true";
	document.getElementById("fzqms13").className = "read";
	document.getElementById("fzqms18").readOnly = "true";
	document.getElementById("fzqms18").className = "read";
	document.getElementById("fzqms19").readOnly = "true";
	document.getElementById("fzqms19").className = "read";
	document.getElementById("fzqms20").readOnly = "true";
	document.getElementById("fzqms20").className = "read";
	document.getElementById("fzqms21").readOnly = "true";
	document.getElementById("fzqms21").className = "read";
	document.getElementById("fzqms22").readOnly = "true";
	document.getElementById("fzqms22").className = "read";
	document.getElementById("fzqms23").readOnly = "true";
	document.getElementById("fzqms23").className = "read";
	document.getElementById("fzqms24").readOnly = "true";
	document.getElementById("fzqms24").className = "read";
	document.getElementById("fzqms25").readOnly = "true";
	document.getElementById("fzqms25").className = "read";
	document.getElementById("fzqms26").readOnly = "true";
	document.getElementById("fzqms26").className = "read";
	document.getElementById("fzqms31").readOnly = "true";
	document.getElementById("fzqms31").className = "read";
	document.getElementById("fzqms32").readOnly = "true";
	document.getElementById("fzqms32").className = "read";
	document.getElementById("fzqcs1").readOnly = "true";
	document.getElementById("fzqcs1").className = "read";
	document.getElementById("fzqcs12").readOnly = "true";
	document.getElementById("fzqcs12").className = "read";
	document.getElementById("fzqcs13").readOnly = "true";
	document.getElementById("fzqcs13").className = "read";
	document.getElementById("fzqcs18").readOnly = "true";
	document.getElementById("fzqcs18").className = "read";
	document.getElementById("fzqcs19").readOnly = "true";
	document.getElementById("fzqcs19").className = "read";
	document.getElementById("fzqcs20").readOnly = "true";
	document.getElementById("fzqcs20").className = "read";
	document.getElementById("fzqcs21").readOnly = "true";
	document.getElementById("fzqcs21").className = "read";
	document.getElementById("fzqcs22").readOnly = "true";
	document.getElementById("fzqcs22").className = "read";
	document.getElementById("fzqcs23").readOnly = "true";
	document.getElementById("fzqcs23").className = "read";
	document.getElementById("fzqcs24").readOnly = "true";
	document.getElementById("fzqcs24").className = "read";
	document.getElementById("fzqcs25").readOnly = "true";
	document.getElementById("fzqcs25").className = "read";
	document.getElementById("fzqcs26").readOnly = "true";
	document.getElementById("fzqcs26").className = "read";
	document.getElementById("fzqcs31").readOnly = "true";
	document.getElementById("fzqcs31").className = "read";
	document.getElementById("fzqcs32").readOnly = "true";
	document.getElementById("fzqcs32").className = "read";

	document.getElementById('zcqms16').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqcs16').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqms22').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqcs22').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqms12').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqcs12').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqms18').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqcs18').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqms19').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqcs19').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqms31').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqcs31').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqms31').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqcs31').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqms32').style.backgroundColor = '#87CEFA';
	document.getElementById('zcqcs32').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqms32').style.backgroundColor = '#87CEFA';
	document.getElementById('fzqcs32').style.backgroundColor = '#87CEFA';

}
function setlrbclass() {
	document.getElementById("bnljje21").readOnly = "true";
	document.getElementById("bnljje21").className = "read";
	document.getElementById("bnljje30").readOnly = "true";
	document.getElementById("bnljje30").className = "read";
	document.getElementById("bnljje32").readOnly = "true";
	document.getElementById("bnljje32").className = "read";
	document.getElementById("byje21").readOnly = "true";
	document.getElementById("byje21").className = "read";
	document.getElementById("byje30").readOnly = "true";
	document.getElementById("byje30").className = "read";
	document.getElementById("byje32").readOnly = "true";
	document.getElementById("byje32").className = "read";

	document.getElementById('bnljje21').style.backgroundColor = '#87CEFA';
	document.getElementById('byje21').style.backgroundColor = '#87CEFA';
	document.getElementById('bnljje30').style.backgroundColor = '#87CEFA';
	document.getElementById('byje30').style.backgroundColor = '#87CEFA';
	document.getElementById('bnljje32').style.backgroundColor = '#87CEFA';
	document.getElementById('byje32').style.backgroundColor = '#87CEFA';
}
function setxjbclass() {
	document.getElementById("xjbnljje1").readOnly = "true";
	document.getElementById("xjbnljje1").className = "read";
	document.getElementById("xjbnljje9").readOnly = "true";
	document.getElementById("xjbnljje9").className = "read";
	document.getElementById("xjbnljje16").readOnly = "true";
	document.getElementById("xjbnljje16").className = "read";
	document.getElementById("xjbnljje8").readOnly = "true";
	document.getElementById("xjbnljje8").className = "read";
	document.getElementById("xjbnljje15").readOnly = "true";
	document.getElementById("xjbnljje15").className = "read";
	document.getElementById("xjbnljje22").readOnly = "true";
	document.getElementById("xjbnljje22").className = "read";
	document.getElementById("xjbnljje23").readOnly = "true";
	document.getElementById("xjbnljje23").className = "read";
	document.getElementById("xjbnljje25").readOnly = "true";
	document.getElementById("xjbnljje25").className = "read";
	document.getElementById("xjbyje1").readOnly = "true";
	document.getElementById("xjbyje1").className = "read";
	document.getElementById("xjbyje9").readOnly = "true";
	document.getElementById("xjbyje9").className = "read";
	document.getElementById("xjbyje16").readOnly = "true";
	document.getElementById("xjbyje16").className = "read";
	document.getElementById("xjbyje8").readOnly = "true";
	document.getElementById("xjbyje8").className = "read";
	document.getElementById("xjbyje15").readOnly = "true";
	document.getElementById("xjbyje15").className = "read";
	document.getElementById("xjbyje22").readOnly = "true";
	document.getElementById("xjbyje22").className = "read";
	document.getElementById("xjbyje23").readOnly = "true";
	document.getElementById("xjbyje23").className = "read";
	document.getElementById("xjbyje25").readOnly = "true";
	document.getElementById("xjbyje25").className = "read";

	document.getElementById('xjbnljje8').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbyje8').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbnljje15').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbyje15').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbnljje22').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbyje22').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbnljje23').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbyje23').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbnljje25').style.backgroundColor = '#87CEFA';
	document.getElementById('xjbyje25').style.backgroundColor = '#87CEFA';
}

function bascicCheck() {
	var flag = "false";
	var zcqcs = $ES("zcqcs");
	var zcqcslist = $A(zcqcs);
	zcqcslist.each(function(node) {
				if (!trim(node.value).empty()) {
					flag = "true";
					return;
				}
			});
	if (flag == "false") {
		iconDialog("请填写资产年初余额!", "WARNING");
		return false;
	}
	return true;
}

function showSubmitDialog() {
	$("#errorMessage").val("");
	$("#sucessMsg").val("");
	if (!bascicCheck()) {
		return;
	}
	if (!submitCheck()) {
		return;
	}
	var tsxx = "";
//	if (parseFloat(emptyToZ($("zcqms32").value)) <= 0
//			&& $("xbhFlag").value == "0") {
//		tsxx += "【资产负债表-资产合计】-期末余额小于等于0<br/>";
//	}
//
//	if (parseFloat(emptyToZ($("zcqcs32").value)) <= 0
//			&& $("xbhFlag").value == "0") {
//		tsxx += "【资产负债表-资产合计】-年初余额小于等于0<br/>";
//	}

	if (parseFloat(emptyToZ($F("zcqms15"))) < 0) {
		tsxx += "【资产负债表-其他流动资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcqcs15"))) < 0) {
		tsxx += "【资产负债表-其他流动资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("zcqms30"))) < 0) {
		tsxx += "【资产负债表-其他非流动资产】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcqcs30"))) < 0) {
		tsxx += "【资产负债表-其他非流动资产】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqms17"))) < 0) {
		tsxx += "【资产负债表-其他非流动负债】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzqcs17"))) < 0) {
		tsxx += "【资产负债表-其他非流动负债】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqms28"))) < 0) {
		tsxx += "【资产负债表-资本公积】-期末余额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzqcs28"))) < 0) {
		tsxx += "【资产负债表-资本公积】-年初余额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje11"))) < 0) {
		tsxx += "【利润表-销售费用】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje11"))) < 0) {
		tsxx += "【利润表-销售费用】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje14"))) < 0) {
		tsxx += "【利润表-管理费用】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje14"))) < 0) {
		tsxx += "【利润表-管理费用】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje15"))) < 0) {
		tsxx += "【利润表-其中：开办费】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje15"))) < 0) {
		tsxx += "【利润表-其中：开办费】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje16"))) < 0) {
		tsxx += "【利润表-业务招待费】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje16"))) < 0) {
		tsxx += "【利润表-业务招待费】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje17"))) < 0) {
		tsxx += "【利润表-研究费用】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje17"))) < 0) {
		tsxx += "【利润表-研究费用】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje31"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje31"))) < 0) {
		tsxx += "【利润表-减：所得税费用】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje12"))) < 0) {
		tsxx += "【利润表-其中：商品维修费】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje12"))) < 0) {
		tsxx += "【利润表-其中：商品维修费】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje13"))) < 0) {
		tsxx += "【利润表-广告费和业务宣传费】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje13"))) < 0) {
		tsxx += "【利润表-广告费和业务宣传费】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje23"))) < 0) {
		tsxx += "【利润表-其中：政府补助】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje23"))) < 0) {
		tsxx += "【利润表-其中：政府补助】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje24"))) < 0) {
		tsxx += "【利润表-减：营业外支出】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje24"))) < 0) {
		tsxx += "【利润表-减：营业外支出】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje25"))) < 0) {
		tsxx += "【利润表-其中：坏账损失】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje25"))) < 0) {
		tsxx += "【利润表-其中：坏账损失】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje26"))) < 0) {
		tsxx += "【利润表-无法收回的长期债券投资损失】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje26"))) < 0) {
		tsxx += "【利润表-无法收回的长期债券投资损失】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje27"))) < 0) {
		tsxx += "【利润表-无法收回的长期股权投资损失】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje27"))) < 0) {
		tsxx += "【利润表-无法收回的长期股权投资损失】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje28"))) < 0) {
		tsxx += "【利润表-自然灾害等不可抗力因素造成的损失】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje28"))) < 0) {
		tsxx += "【利润表-自然灾害等不可抗力因素造成的损失】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje29"))) < 0) {
		tsxx += "【利润表-税收滞纳金】-本月金额小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljje29"))) < 0) {
		tsxx += "【利润表-税收滞纳金】-本年累计金额小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("byje19"))) > parseFloat(emptyToZ($F("byje18")))) {
		tsxx += "【利润表-其中：利息费用（收入以“—”号填列）】-本月金额大于财务费用-本月金额<br/>";
	}

	if (parseFloat(emptyToZ($F("bnljje19"))) > parseFloat(emptyToZ($F("bnljje18")))) {
		tsxx += "【利润表-其中：利息费用（收入以“—”号填列）】-本年累计金额大于财务费用-本年累计金额<br/>";
	}

//	if ($('nsrztDm').value == 25) {
//		var flag = "false"
//		for (var i = 0; i < $ES('lrxmdm').length; i++) {
//			if (parseFloat(emptyToZ($ES('byje')[i].value)) != 0
//					|| parseFloat(emptyToZ($ES('bnljje')[i].value)) != 0) {
//				flag = "true"
//				break;
//			}
//		}
//		if (flag == "false") {
//			tsxx += "【利润表】数据项全部为零<br/>";
//		}
//	}
	var titleMsg = "";

	if (tsxx == "") {
		tsxx = "是否确认提交申报数据?"
		titleMsg = "确认提示框";
	} else {
		tsxx = "<div style='overflow-y: scroll;height:240;color:blue'>" + tsxx
				+ "</div>";
		titleMsg = '<font color="red"><b>以下为提醒类信息,请核实无误后提交!</b></font>';
	}

	Ext.MessageBox.show({
				msg : tsxx,
				title : titleMsg,
				buttons : Ext.MessageBox.OKCANCEL,
				fn : function(button) {
					if (button == "ok") {
						$("#handleCode").val("saveData");
						waitDialog();
//						new Ajax.Request('/WB395cklAction.do', {
//									method : 'post',
//									parameters : $('WB395cklForm').serialize(),
//									onComplete : function(originalRequest) {
//										Ext.MessageBox.hide();
//										ajaxUpdate(
//												originalRequest.responseText,
//												"ajaxform");
//										runMsg("1", true, null,
//												'WB395IndexForm');
//									},
//									onException : function() {
//										Ext.MessageBox.hide();
//										iconDialog('系统异常', 'ERROR', function() {
//													readTextIne();
//												});
//									}
//								});
						
						$.ajax({
							url : "/WB395cklAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395cklForm').serialize(),
							type : 'post',
							error : function(XMLHttpRequest, textStatus, errorThrown) {
								iconDialog('系统异常', 'ERROR', function() {
									readTextIne();
								});
							},
							success : function(responseText, textStatus, XMLHttpRequest) {
								ajaxUpdate(responseText, "ajaxform");
								runMsg("1", true, null,'WB395IndexForm');
							}
						});
						
					}

				}

			});

}
function getCaData() {
	var data = "";
	for (var i = 0; i < $ES("zcxmdm").length; i++) {
		if ($ES("zcqcs")[i].value.empty() && $ES("zcqms")[i].value.empty()
				&& $ES("fzqcs")[i].value.empty()
				&& $ES("fzqms")[i].value.empty()) {
			continue;
		}
		data = data + $ES("fzqcs")[i].value + "=";
	}
	return data;
}
function submitCheck() {
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
	if (parseFloat(emptyToZ($F("zcqms10"))) < caltbNumloop(
			parseFloat(emptyToZ($F("zcqms11")))
					+ parseFloat(emptyToZ($F("zcqms12")))
					+ parseFloat(emptyToZ($F("zcqms13")))
					+ parseFloat(emptyToZ($F("zcqms14"))), 2)) {
		iconDialog("【资产负债表】存货小于原材料，在产品，库存商品和周转材料总计，请核实! ", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqcs10"))) < caltbNumloop(
			parseFloat(emptyToZ($F("zcqcs11")))
					+ parseFloat(emptyToZ($F("zcqcs12")))
					+ parseFloat(emptyToZ($F("zcqcs13")))
					+ parseFloat(emptyToZ($F("zcqcs14"))), 2)) {
		iconDialog("【资产负债表】存货小于原材料，在产品，库存商品和周转材料总计，请核实! ", "WARNING");
		return false;
	}

	if (parseFloat(emptyToZ($F("zcqms32"))) != parseFloat(emptyToZ($F("fzqms32")))) {
		iconDialog("【资产负债表】资产总计不等于负债和所有者权益（或股东权益合计）合计，请核实! ", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqcs32"))) != parseFloat(emptyToZ($F("fzqcs32")))) {
		iconDialog("【资产负债表】资产总计不等于负债和所有者权益（或股东权益合计）合计，请核实!", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("bnljje1"))) > 0
			&& parseFloat(emptyToZ($F("bnljje2"))) == 0
			&& parseFloat(emptyToZ($F("bnljje14"))) == 0) {
		iconDialog("【利润表】营业收入不为零，营业成本和管理费用不能全部为零! ", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("byje1"))) > 0
			&& parseFloat(emptyToZ($F("byje2"))) == 0
			&& parseFloat(emptyToZ($F("byje14"))) == 0
			&& $FF('bsqxdm') != "Y") {
		iconDialog("【利润表】营业收入不为零，营业成本和管理费用不能全部为零!", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("bnljje3"))) < caltbNumloop(
			parseFloat(emptyToZ($F("bnljje4")))
					+ parseFloat(emptyToZ($F("bnljje5")))
					+ parseFloat(emptyToZ($F("bnljje6")))
					+ parseFloat(emptyToZ($F("bnljje7")))
					+ parseFloat(emptyToZ($F("bnljje8")))
					+ parseFloat(emptyToZ($F("bnljje9")))
					+ parseFloat(emptyToZ($F("bnljje10"))), 2)) {
		iconDialog(
				"【利润表】营业税金及附加小于消费税，营业税，城市维护建设税，资源税，土地增值税，城镇土地使用税、房产税、车船税、印花税和教育附加、矿产资源补偿费、排污费总计，请核实!",
				"WARNING");
		return false;
	}
	if ((parseFloat(emptyToZ($F("byje3"))) < caltbNumloop(
			parseFloat(emptyToZ($F("byje4")))
					+ parseFloat(emptyToZ($F("byje5")))
					+ parseFloat(emptyToZ($F("byje6")))
					+ parseFloat(emptyToZ($F("byje7")))
					+ parseFloat(emptyToZ($F("byje8")))
					+ parseFloat(emptyToZ($F("byje9")))
					+ parseFloat(emptyToZ($F("byje10"))), 2))
			&& $FF('bsqxdm') != "Y") {
		iconDialog(
				"【利润表】营业税金及附加小于消费税，营业税，城市维护建设税，资源税，土地增值税，城镇土地使用税、房产税、车船税、印花税和教育附加、矿产资源补偿费、排污费总计，请核实!",
				"WARNING");
		return false;
	}

	if (parseFloat(emptyToZ($F("bnljje14"))) < caltbNumloop(
			parseFloat(emptyToZ($F("bnljje15")))
					+ parseFloat(emptyToZ($F("bnljje16")))
					+ parseFloat(emptyToZ($F("bnljje17"))), 2)) {
		iconDialog("【利润表】管理费用小于开办费，业务招待费和研究费用总计，请核实! ", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("byje14"))) < caltbNumloop(
			parseFloat(emptyToZ($F("byje15")))
					+ parseFloat(emptyToZ($F("byje16")))
					+ parseFloat(emptyToZ($F("byje17"))), 2)) {
		iconDialog("【利润表】管理费用小于开办费，业务招待费和研究费用总计，请核实! ", "WARNING");
		return false;
	}

	if (parseFloat(emptyToZ($F("bnljje22"))) < parseFloat(emptyToZ($F("bnljje23")))) {
		iconDialog("【利润表】营业外收入小于政府补助，请核实! ", "WARNING");
		return false;
	}
	if ((parseFloat(emptyToZ($F("byje22"))) < parseFloat(emptyToZ($F("byje23"))))
			&& $FF('bsqxdm') != "Y") {
		iconDialog("【利润表】营业外收入小于政府补助，请核实!", "WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("bnljje24"))) < caltbNumloop(
			parseFloat(emptyToZ($F("bnljje25")))
					+ parseFloat(emptyToZ($F("bnljje26")))
					+ parseFloat(emptyToZ($F("bnljje27")))
					+ parseFloat(emptyToZ($F("bnljje28")))
					+ parseFloat(emptyToZ($F("bnljje29"))), 2)) {
		iconDialog(
				"【利润表】营业外支出小于坏账损失，无法收回的长期债券投资损失，无法收回的长期股权投资损失，自然灾害等不可抗力因素造成的损失和税收滞纳金总计，请核实! ",
				"WARNING");
		return false;
	}
	if (parseFloat(emptyToZ($F("byje24"))) < caltbNumloop(
			parseFloat(emptyToZ($F("byje25")))
					+ parseFloat(emptyToZ($F("byje26")))
					+ parseFloat(emptyToZ($F("byje27")))
					+ parseFloat(emptyToZ($F("byje28")))
					+ parseFloat(emptyToZ($F("byje29"))), 2)) {
		iconDialog(
				"【利润表】营业外支出小于坏账损失，无法收回的长期债券投资损失，无法收回的长期股权投资损失，自然灾害等不可抗力因素造成的损失和税收滞纳金总计，请核实! ",
				"WARNING");
		return false;
	}
	return true;
}
