var d;
var a;
var c;
var e;
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
					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395ckaAction.do?handleCode=printPage&pzXh="
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
	setzcfzbclass();
	setlrbclass();
	setxjllbclass();

	/**
	 * 公式计算
	 */
	d = new caltb('qyzdzcfzb', true);
	d.type = "1";
	d.negative = true;
	d.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "zcqcs15 = zcqcs2 + zcqcs3 + zcqcs4 + zcqcs5 + zcqcs6 + zcqcs7 + zcqcs8 + zcqcs9 + zcqcs10 + zcqcs11 + zcqcs12 + zcqcs13 + zcqcs14";
	rulesID[1] = "zcqcs19 = zcqcs17 + zcqcs18";
	rulesID[2] = "zcqcs23 = zcqcs21 - zcqcs22";
	rulesID[3] = "zcqcs25 = zcqcs23 - zcqcs24";
	rulesID[4] = "zcqcs29 = zcqcs25 + zcqcs26 + zcqcs27 + zcqcs28";
	rulesID[5] = "zcqcs34 = zcqcs31 + zcqcs32 + zcqcs33";
	rulesID[6] = "zcqcs38 = zcqcs15 + zcqcs19 + zcqcs29 + zcqcs34 + zcqcs37";
	rulesID[7] = "zcqms15 = zcqms2 + zcqms3 + zcqms4 + zcqms5 + zcqms6 + zcqms7 + zcqms8 + zcqms9 + zcqms10 + zcqms11 + zcqms12 + zcqms13 + zcqms14";
	rulesID[8] = "zcqms19 = zcqms17 + zcqms18";
	rulesID[9] = "zcqms23 = zcqms21 - zcqms22";
	rulesID[10] = "zcqms25 = zcqms23 - zcqms24";
	rulesID[11] = "zcqms29 = zcqms25 + zcqms26 + zcqms27 + zcqms28";
	rulesID[12] = "zcqms34 = zcqms31 + zcqms32 + zcqms33";
	rulesID[13] = "zcqms38 = zcqms15 + zcqms19 + zcqms29 + zcqms34 + zcqms37";

	rulesID[14] = "fzqcs17 = fzqcs2 + fzqcs3 + fzqcs4 + fzqcs5 + fzqcs6 + fzqcs7 + fzqcs8 + fzqcs9 + fzqcs10 + fzqcs11 + fzqcs12 + fzqcs13 + fzqcs14 + fzqcs15";
	rulesID[15] = "fzqcs24 = fzqcs19 + fzqcs20 + fzqcs21 + fzqcs22 + fzqcs23";
	rulesID[16] = "fzqcs27 = fzqcs17 + fzqcs24 + fzqcs26";// 15--17
	rulesID[17] = "fzqcs32 = fzqcs30 - fzqcs31";
	rulesID[18] = "fzqcs37 = fzqcs32 + fzqcs33 + fzqcs34 + fzqcs36";
	rulesID[19] = "fzqcs38 = fzqcs27 + fzqcs37";
	rulesID[20] = "fzqms17 = fzqms2 + fzqms3 + fzqms4 + fzqms5 + fzqms6 + fzqms7 + fzqms8 + fzqms9 + fzqms10 + fzqms11 + fzqms12 + fzqms13 + fzqms14 + fzqms15";
	rulesID[21] = "fzqms24 = fzqms19 + fzqms20 + fzqms21 + fzqms22 + fzqms23";
	rulesID[22] = "fzqms27 = fzqms17 + fzqms24 + fzqms26";
	rulesID[23] = "fzqms32 = fzqms30 - fzqms31";
	rulesID[24] = "fzqms37 = fzqms32 + fzqms33 + fzqms34 + fzqms36";
	rulesID[25] = "fzqms38 = fzqms27 + fzqms37";

	d.setRulesID(rulesID);
	initCalTable(d, true);
	runRulesForID(d);

	a = new caltb('qyzdlrb', true);
	a.type = "1";
	a.negative = true;
	a.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "bqs4 = bqs1 - bqs2 - bqs3";
	rulesID[1] = "bqs9 = bqs4 + bqs5 - bqs6 - bqs7 - bqs8";
	rulesID[2] = "bqs14 = bqs9 + bqs10 + bqs11 + bqs12 - bqs13";
	rulesID[3] = "bqs16 = bqs14 - bqs15";
	rulesID[4] = "bnljs4 = bnljs1 - bnljs2 - bnljs3";
	rulesID[5] = "bnljs9 = bnljs4 + bnljs5 - bnljs6 - bnljs7 - bnljs8";
	rulesID[6] = "bnljs14 = bnljs9 + bnljs10 + bnljs11 + bnljs12 - bnljs13";
	rulesID[7] = "bnljs16 = bnljs14 - bnljs15";

	a.setRulesID(rulesID);
	initCalTable(a, true);
	runRulesForID(a);

	a.customrules = function() {
		idname = window.event.srcElement.id;
		if (window.event.srcElement.name == "bqs") {
			newidname = idname.replace("bqs", "bnljs");
			calcidname = idname.replace("bqs", "calcbnljs");
			document.getElementById(newidname).value = caltbNumloop(
					parseFloat(emptyToZ($F(idname)))
							+ parseFloat(emptyToZ($F(calcidname))), 2);
			if (document.getElementById(newidname).getAttribute("negative") == "false"
					&& parseFloat(emptyToZ($F(newidname))) < 0) {
				document.getElementById(newidname).value = "0.00";
			}
		}
	}

	e = new caltb('bczl', true);
	e.type = "1";
	e.negative = true;
	e.pageTipsFlag = "1";
	rulesID = new Array();
	e.setRulesID(rulesID);
	initCalTable(e, true);
	runRulesForID(e);
	e.customrules = function() {
		idname = window.event.srcElement.id;
		if (window.event.srcElement.name == "bcbqs") {
			newidname = idname.replace("bcbqs", "bcbnljs");
			calcidname = idname.replace("bcbqs", "calcbcbnljs");
			document.getElementById(newidname).value = caltbNumloop(
					parseFloat(emptyToZ($F(idname)))
							+ parseFloat(emptyToZ($F(calcidname))), 2);
		}
	}
	c = new caltb('qyzdxjllb');
	c.type = "1";
	c.negative = true;
	c.pageTipsFlag = "1";
	rulesID = new Array();
	rulesID[0] = "je5 = je2 + je3 + je4"
	rulesID[1] = "je10 = je6 + je7 + je8 + je9"
	rulesID[2] = "je11 = je5 - je10"
	rulesID[3] = "je17 = je13 + je14 + je15 + je16"
	rulesID[4] = "je21 = je18 + je19 + je20"
	rulesID[5] = "je22 = je17 - je21"
	rulesID[6] = "je27 = je24 + je25 + je26"
	rulesID[7] = "je31 = je28 + je29 + je30"
	rulesID[8] = "je32 = je27 - je31"
	rulesID[9] = "je34 = je11 + je22 + je32 + je33"
	rulesID[10] = "je53 = je37 + je38 + je39 + je40 + je41 + je42 + je43 + je44 + je45 + je46 + je47 + je48 + je49 + je50 + je51 + je52"
	rulesID[11] = "je63 = je59 - je60 + je61 - je62"
	c.setRulesID(rulesID);
	initCalTable(c, true);
	runRulesForID(c);
}

function setzcfzbclass() {
	document.getElementById("zcqcs1").readOnly = "true";
	document.getElementById("zcqcs1").className = "read";
	document.getElementById("zcqcs15").readOnly = "true";
	document.getElementById("zcqcs15").className = "read";
	document.getElementById("zcqcs16").readOnly = "true";
	document.getElementById("zcqcs16").className = "read";
	document.getElementById("zcqcs19").readOnly = "true";
	document.getElementById("zcqcs19").className = "read";
	document.getElementById("zcqcs20").readOnly = "true";
	document.getElementById("zcqcs20").className = "read";
	document.getElementById("zcqcs23").readOnly = "true";
	document.getElementById("zcqcs23").className = "read";
	document.getElementById("zcqcs25").readOnly = "true";
	document.getElementById("zcqcs25").className = "read";
	document.getElementById("zcqcs29").readOnly = "true";
	document.getElementById("zcqcs29").className = "read";
	document.getElementById("zcqcs30").readOnly = "true";
	document.getElementById("zcqcs30").className = "read";
	document.getElementById("zcqcs34").readOnly = "true";
	document.getElementById("zcqcs34").className = "read";
	document.getElementById("zcqcs35").readOnly = "true";
	document.getElementById("zcqcs35").className = "read";
	document.getElementById("zcqcs36").readOnly = "true";
	document.getElementById("zcqcs36").className = "read";
	document.getElementById("zcqcs38").readOnly = "true";
	document.getElementById("zcqcs38").className = "read";

	document.getElementById("zcqms1").readOnly = "true";
	document.getElementById("zcqms1").className = "read";
	document.getElementById("zcqms15").readOnly = "true";
	document.getElementById("zcqms15").className = "read";
	document.getElementById("zcqms16").readOnly = "true";
	document.getElementById("zcqms16").className = "read";
	document.getElementById("zcqms19").readOnly = "true";
	document.getElementById("zcqms19").className = "read";
	document.getElementById("zcqms20").readOnly = "true";
	document.getElementById("zcqms20").className = "read";
	document.getElementById("zcqms23").readOnly = "true";
	document.getElementById("zcqms23").className = "read";
	document.getElementById("zcqms25").readOnly = "true";
	document.getElementById("zcqms25").className = "read";
	document.getElementById("zcqms29").readOnly = "true";
	document.getElementById("zcqms29").className = "read";
	document.getElementById("zcqms30").readOnly = "true";
	document.getElementById("zcqms30").className = "read";
	document.getElementById("zcqms34").readOnly = "true";
	document.getElementById("zcqms34").className = "read";
	document.getElementById("zcqms35").readOnly = "true";
	document.getElementById("zcqms35").className = "read";
	document.getElementById("zcqms36").readOnly = "true";
	document.getElementById("zcqms36").className = "read";
	document.getElementById("zcqms38").readOnly = "true";
	document.getElementById("zcqms38").className = "read";

	document.getElementById("fzqcs1").readOnly = "true";
	document.getElementById("fzqcs1").className = "read";
	document.getElementById("fzqcs16").readOnly = "true";
	document.getElementById("fzqcs16").className = "read";
	document.getElementById("fzqcs17").readOnly = "true";
	document.getElementById("fzqcs17").className = "read";
	document.getElementById("fzqcs18").readOnly = "true";
	document.getElementById("fzqcs18").className = "read";
	document.getElementById("fzqcs24").readOnly = "true";
	document.getElementById("fzqcs24").className = "read";
	document.getElementById("fzqcs25").readOnly = "true";
	document.getElementById("fzqcs25").className = "read";
	document.getElementById("fzqcs27").readOnly = "true";
	document.getElementById("fzqcs27").className = "read";
	document.getElementById("fzqcs28").readOnly = "true";
	document.getElementById("fzqcs28").className = "read";
	document.getElementById("fzqcs29").readOnly = "true";
	document.getElementById("fzqcs29").className = "read";
	document.getElementById("fzqcs32").readOnly = "true";
	document.getElementById("fzqcs32").className = "read";
	document.getElementById("fzqcs37").readOnly = "true";
	document.getElementById("fzqcs37").className = "read";
	document.getElementById("fzqcs38").readOnly = "true";
	document.getElementById("fzqcs38").className = "read";

	document.getElementById("fzqms1").readOnly = "true";
	document.getElementById("fzqms1").className = "read";
	document.getElementById("fzqms16").readOnly = "true";
	document.getElementById("fzqms16").className = "read";
	document.getElementById("fzqms17").readOnly = "true";
	document.getElementById("fzqms17").className = "read";
	document.getElementById("fzqms18").readOnly = "true";
	document.getElementById("fzqms18").className = "read";
	document.getElementById("fzqms24").readOnly = "true";
	document.getElementById("fzqms24").className = "read";
	document.getElementById("fzqms25").readOnly = "true";
	document.getElementById("fzqms25").className = "read";
	document.getElementById("fzqms27").readOnly = "true";
	document.getElementById("fzqms27").className = "read";
	document.getElementById("fzqms28").readOnly = "true";
	document.getElementById("fzqms28").className = "read";
	document.getElementById("fzqms29").readOnly = "true";
	document.getElementById("fzqms29").className = "read";
	document.getElementById("fzqms32").readOnly = "true";
	document.getElementById("fzqms32").className = "read";
	document.getElementById("fzqms37").readOnly = "true";
	document.getElementById("fzqms37").className = "read";
	document.getElementById("fzqms38").readOnly = "true";
	document.getElementById("fzqms38").className = "read";

	document.getElementById("zcqcs2").setAttribute("negative", "false");
	document.getElementById("zcqcs3").setAttribute("negative", "false");
	document.getElementById("zcqcs4").setAttribute("negative", "false");
	document.getElementById("zcqcs5").setAttribute("negative", "false");
	document.getElementById("zcqcs6").setAttribute("negative", "false");
	document.getElementById("zcqcs10").setAttribute("negative", "false");
	document.getElementById("zcqcs11").setAttribute("negative", "false");

}

function setlrbclass() {
	document.getElementById("bqs4").readOnly = "true";
	document.getElementById("bqs4").className = "read";
	document.getElementById("bqs9").readOnly = "true";
	document.getElementById("bqs9").className = "read";
	document.getElementById("bqs14").readOnly = "true";
	document.getElementById("bqs14").className = "read";
	document.getElementById("bnljs4").readOnly = "true";
	document.getElementById("bnljs4").className = "read";
	document.getElementById("bnljs9").readOnly = "true";
	document.getElementById("bnljs9").className = "read";
	document.getElementById("bnljs14").readOnly = "true";
	document.getElementById("bnljs14").className = "read";
	document.getElementById("bqs16").readOnly = "true";
	document.getElementById("bqs16").className = "read";
	document.getElementById("bnljs16").readOnly = "true";
	document.getElementById("bnljs16").className = "read";
}

function setxjllbclass() {
	document.getElementById("je1").readOnly = "true";
	document.getElementById("je1").className = "read";
	document.getElementById("je5").readOnly = "true";
	document.getElementById("je5").className = "read";
	document.getElementById("je10").readOnly = "true";
	document.getElementById("je10").className = "read";
	document.getElementById("je11").readOnly = "true";
	document.getElementById("je11").className = "read";
	document.getElementById("je12").readOnly = "true";
	document.getElementById("je12").className = "read";
	document.getElementById("je17").readOnly = "true";
	document.getElementById("je17").className = "read";
	document.getElementById("je21").readOnly = "true";
	document.getElementById("je21").className = "read";
	document.getElementById("je22").readOnly = "true";
	document.getElementById("je22").className = "read";
	document.getElementById("je23").readOnly = "true";
	document.getElementById("je23").className = "read";
	document.getElementById("je27").readOnly = "true";
	document.getElementById("je27").className = "read";
	document.getElementById("je31").readOnly = "true";
	document.getElementById("je31").className = "read";
	document.getElementById("je32").readOnly = "true";
	document.getElementById("je32").className = "read";
	document.getElementById("je34").readOnly = "true";
	document.getElementById("je34").className = "read";
	document.getElementById("je35").readOnly = "true";
	document.getElementById("je35").className = "read";
	document.getElementById("je36").readOnly = "true";
	document.getElementById("je36").className = "read";
	document.getElementById("je53").readOnly = "true";
	document.getElementById("je53").className = "read";
	document.getElementById("je54").readOnly = "true";
	document.getElementById("je54").className = "read";
	document.getElementById("je58").readOnly = "true";
	document.getElementById("je58").className = "read";
	document.getElementById("je63").readOnly = "true";
	document.getElementById("je63").className = "read";
}

/**
 * 确认提交
 */
function showSubmitDialog() {
	document.getElementById('errorMessage').value = "";
	document.getElementById('sucessMsg').value = "";
	if (!bascicCheck()) {
		return;
	}
	if (!submitCheck()) {
		return;
	}
	var tsxx = "";

	// if (parseFloat(emptyToZ($("zcqcs38").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产合计】" + $("zctitleqc").innerHTML + "小于等于0<br/>";
	// }
	// if (parseFloat(emptyToZ($("zcqms38").value)) <= 0
	// && $("xbhFlag").value == "0") {
	// tsxx += "【资产负债表-资产合计】" + $("zctitleqm").innerHTML + "小于等于0<br/>";
	// }

	if (parseFloat(emptyToZ($F("zcqcs14"))) < 0) {
		tsxx += "【资产负债表-其他流动资产】-" + document.getElementById("zctitleqc").innerHTML + "小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcqms14"))) < 0) {
		tsxx += "【资产负债表-其他流动资产】-" + document.getElementById("zctitleqm").innerHTML + "小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("zcqcs33"))) < 0) {
		tsxx += "【资产负债表-其他长期资产】-" + document.getElementById("zctitleqc").innerHTML + "小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("zcqms33"))) < 0) {
		tsxx += "【资产负债表-其他长期资产】-" + document.getElementById("zctitleqm").innerHTML + "小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqcs15"))) < 0) {
		tsxx += "【资产负债表-其他流动负债】-" + document.getElementById("fztitleqc").innerHTML + "小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzqms15"))) < 0) {
		tsxx += "【资产负债表-其他流动负债】-" + document.getElementById("fztitleqm").innerHTML + "小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("fzqcs33"))) < 0) {
		tsxx += "【资产负债表-资本公积】-" + document.getElementById("fztitleqc").innerHTML + "小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("fzqms33"))) < 0) {
		tsxx += "【资产负债表-资本公积】-" + document.getElementById("fztitleqm").innerHTML + "小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("bqs3"))) < 0) {
		tsxx += "【利润表-主营业务税金及附加】-本月数小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljs3"))) < 0) {
		tsxx += "【利润表-主营业务税金及附加】-本年累计数小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("bqs11"))) < 0) {
		tsxx += "【利润表-补贴收入】-本月数小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljs11"))) < 0) {
		tsxx += "【利润表-补贴收入】-本年累计数小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("bqs12"))) < 0) {
		tsxx += "【利润表-营业外收入】-本月数小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljs12"))) < 0) {
		tsxx += "【利润表-营业外收入】-本年累计数小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("bqs13"))) < 0) {
		tsxx += "【利润表-减：营业外支出】-本月数小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljs13"))) < 0) {
		tsxx += "【利润表-减：营业外支出】-本年累计数小于0<br/>";
	}

	if (parseFloat(emptyToZ($F("bqs15"))) < 0) {
		tsxx += "【利润表-减：所得税】-本月数小于0<br/>";
	}
	if (parseFloat(emptyToZ($F("bnljs15"))) < 0) {
		tsxx += "【利润表-减：所得税】-本年累计数小于0<br/>";
	}

	// if ($('nsrztDm').value == 25) {
	// var flag = "false"
	// for (var i = 0; i < $ES('lrxmdm').length; i++) {
	// if (parseFloat(emptyToZ($ES('bqs')[i].value)) != 0
	// || parseFloat(emptyToZ($ES('bnljs')[i].value)) != 0) {
	// flag = "true"
	// break;
	// }
	// }
	// if (flag == "false") {
	// tsxx += "【利润表】数据项全部为零<br/>";
	// }
	// }

	if ((parseFloat(emptyToZ($F("bnljs1"))) == 0 && parseFloat(emptyToZ($F("bnljs2"))) != 0)
			&& (parseFloat(emptyToZ($F("bnljs1"))) == 0 && parseFloat(emptyToZ($F("bnljs2"))) != 0)) {
		tsxx += "【利润表】主营业务成本不为零时,主营业务收入为零<br/>";
	}

	if (parseFloat(emptyToZ($F("bqs6"))) < 0) {
		tsxx += "【利润表-减：营业费用】-本月数小于0<br/>"
	}
	if (parseFloat(emptyToZ($F("bnljs6"))) < 0) {
		tsxx += "【利润表-减：营业费用】-本年累计数小于0<br/>"
	}
	if (parseFloat(emptyToZ($F("bqs7"))) < 0) {
		tsxx += "【利润表-管理费用】-本月数小于0<br/>"
	}
	if (parseFloat(emptyToZ($F("bnljs7"))) < 0) {
		tsxx += "【利润表-管理费用】-本年累计数小于0<br/>"
	}

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
//						new Ajax.Request('/WB395ckaAction.do', {
//									method : 'post',
//									parameters : $('WB395ckaForm').serialize(),
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
							url : "/WB395ckaAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395ckaForm').serialize(),
							type : 'post',
							error : function(XMLHttpRequest, textStatus, errorThrown) {
								alert('系统异常' + textStatus);
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

/**
 * 基本校验
 */
function bascicCheck() {
	var flag = true;
	for(var i=0;i<$ES("zcqcs").length;i++){
		if($ES("zcqcs")[i].value==""){
			flag = false;
			return;
		}
	}
	if (flag == false) {
	iconDialog('请填写资产期初数!', 'WARNING');
	return false;
}
	return flag;
}

function getCaData() {
	var data = "";
	for (var i = 0; i < $ES('zcxmdm').length; i++) {
		if ($ES('zcqcs')[i].value.empty() && $ES('zcqms')[i].value.empty()
				&& $ES('fzqcs')[i].value.empty()
				&& $ES('fzqms')[i].value.empty()) {
			continue;
		}

		data = data + $ES('fzqms')[i].value + "=";
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
	if (parseFloat(emptyToZ($F("zcqcs22"))) > caltbNumloop(
			parseFloat(emptyToZ($F("zcqcs21")))
					- parseFloat(emptyToZ($F("zcqcs24"))), 2)) {
		iconDialog('【资产负债表】累计折旧不能大于固定资产原价减去固定资产减值准备! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqms22"))) > caltbNumloop(
			parseFloat(emptyToZ($F("zcqms21")))
					- parseFloat(emptyToZ($F("zcqms24"))), 2)) {
		iconDialog('【资产负债表】累计折旧不能大于固定资产原价减去固定资产减值准备! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqcs21"))) < parseFloat(emptyToZ($F("zcqcs24")))) {
		iconDialog('【资产负债表】固定资产减值准备不能大于固定资产原价! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqms21"))) < parseFloat(emptyToZ($F("zcqms24")))) {
		iconDialog('【资产负债表】固定资产减值准备不能大于固定资产原价! ', 'WARNING');
		return false;
	}

	if (parseFloat(emptyToZ($F("fzqcs35"))) > parseFloat(emptyToZ($F("fzqcs34")))) {
		iconDialog('【资产负债表】法定公益金不能大于盈余公积! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("fzqms35"))) > parseFloat(emptyToZ($F("fzqms34")))) {
		iconDialog('【资产负债表】法定公益金不能大于盈余公积!', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqcs38"))) != parseFloat(emptyToZ($F("fzqcs38")))) {
		iconDialog('【资产负债表】资产合计不等于负债和所有者权益（或股东权益）总计,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqms38"))) != parseFloat(emptyToZ($F("fzqms38")))) {
		iconDialog('【资产负债表】资产合计不等于负债和所有者权益（或股东权益）总计,请核实!', 'WARNING');
		return false;
	}
	// if (parseFloat(emptyToZ($("bqs1").value)) != 0
	// && (parseFloat(emptyToZ($("bqs2").value)) == 0 &&
	// parseFloat(emptyToZ($("bqs7").value)) == 0)
	// && $F('bsqxdm') != "Y") {
	// iconDialog('【利润表】主营业务收入不为零,主营业务成本和管理费用不能全部为零!', 'WARNING');
	// return false;
	// }
	if (parseFloat(emptyToZ($F("bnljs1"))) != 0
			&& parseFloat(emptyToZ($F("bnljs2"))) == 0
			&& parseFloat(emptyToZ($F("bnljs7"))) == 0) {
		iconDialog('【利润表】主营业务收入不为零,主营业务成本和管理费用不能全部为零!', 'WARNING');
		return false;
	}

	return true;
}
