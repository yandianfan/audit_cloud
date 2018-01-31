var czbk;
var czbkfb;
var rowInfo;

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
							openMaxWindow("/WB395ckiAction.do?handleCode=printPage&pzXh="
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
	setCzbkTable();
	readText(true);
	setzcfzbclass();
	setsrzcbclass();
	// setjfzcbclass();
	// if ($("ssq").value.substr(5, 2) == "12") {
	// document.all("zctitleqc").innerHTML = "上年累计数";
	// document.all("zctitleqm").innerHTML = "本年累计数";
	// document.all("fztitleqc").innerHTML = "上年累计数";
	// document.all("fztitleqm").innerHTML = "本年累计数";
	// }
}

function setCzbkTable() {
	if (!$F('bizData').empty()) {
		czbk = eval("(" + $F('bizData') + ")").czbkList;
		czbkfb = eval("(" + $F('bizData') + ")").czbkfbList;
	}

	if (czbk != null) {
		for (var i = 0; i < czbk.length; i++) {
			rowInfo = czbk[i];
			for (var j = 0; j < $ES('mxxh').length; j++) {
				if ($ES('mxxh')[j].value == rowInfo.mxxh) {
					if (parseFloat(emptyToZ(rowInfo.ncjz)) != 0) {
						$ES('ncjz')[j].value = rowInfo.ncjz;
					}
					if (parseFloat(emptyToZ(rowInfo.ncjy)) != 0) {
						$ES('ncjy')[j].value = rowInfo.ncjy;
					}
					if (parseFloat(emptyToZ(rowInfo.tzjy)) != 0) {
						$ES('tzjy')[j].value = rowInfo.tzjy;
					}
					if (parseFloat(emptyToZ(rowInfo.gjsj)) != 0) {
						$ES('gjsj')[j].value = rowInfo.gjsj;
					}
					if (parseFloat(emptyToZ(rowInfo.dwjz)) != 0) {
						$ES('dwjz')[j].value = rowInfo.dwjz;
					}
					if (parseFloat(emptyToZ(rowInfo.dwjy)) != 0) {
						$ES('dwjy')[j].value = rowInfo.dwjy;
					}
					if (parseFloat(emptyToZ(rowInfo.czbk)) != 0) {
						$ES('czbk')[j].value = rowInfo.czbk;
					}
					if (parseFloat(emptyToZ(rowInfo.czzc)) != 0) {
						$ES('czzc')[j].value = rowInfo.czzc;
					}
					if (parseFloat(emptyToZ(rowInfo.nmjz)) != 0) {
						$ES('nmjz')[j].value = rowInfo.nmjz;
					}
					if (parseFloat(emptyToZ(rowInfo.nmjy)) != 0) {
						$ES('nmjy')[j].value = rowInfo.nmjy;
					}
					break;
				}
			}
		}
	}

	if (czbkfb != null) {
		for (var i = 0; i < czbkfb.length; i++) {
			rowInfo = czbkfb[i];
			for (var j = 0; j < $ES('xmxh').length; j++) {
				if ($ES('xmxh')[j].value == rowInfo.mxxh) {
					$ES('xmmc')[j].value = rowInfo.nr;
					break;
				}
			}
		}
	}
}

// 设置表1表格属性
function setzcfzbclass() {
	document.getElementById("zcqcs1").readOnly = "true";
	document.getElementById("zcqcs1").className = "read";
	document.getElementById("zcqcs9").readOnly = "true";
	document.getElementById("zcqcs9").className = "read";
	document.getElementById("zcqcs10").readOnly = "true";
	document.getElementById("zcqcs10").className = "read";
	document.getElementById("zcqcs14").readOnly = "true";
	document.getElementById("zcqcs14").className = "read";
	document.getElementById("zcqcs19").readOnly = "true";
	document.getElementById("zcqcs19").className = "read";
	document.getElementById("zcqcs24").readOnly = "true";
	document.getElementById("zcqcs24").className = "read";
	document.getElementById("zcqms1").readOnly = "true";
	document.getElementById("zcqms1").className = "read";
	document.getElementById("zcqms9").readOnly = "true";
	document.getElementById("zcqms9").className = "read";
	document.getElementById("zcqms10").readOnly = "true";
	document.getElementById("zcqms10").className = "read";
	document.getElementById("zcqms14").readOnly = "true";
	document.getElementById("zcqms14").className = "read";
	document.getElementById("zcqms19").readOnly = "true";
	document.getElementById("zcqms19").className = "read";
	document.getElementById("zcqms24").readOnly = "true";
	document.getElementById("zcqms24").className = "read";
	document.getElementById("fzqcs1").readOnly = "true";
	document.getElementById("fzqcs1").className = "read";
	document.getElementById("fzqcs9").readOnly = "true";
	document.getElementById("fzqcs9").className = "read";
	document.getElementById("fzqcs10").readOnly = "true";
	document.getElementById("fzqcs10").className = "read";
	document.getElementById("fzqcs13").readOnly = "true";
	document.getElementById("fzqcs13").className = "read";
	document.getElementById("fzqcs14").readOnly = "true";
	document.getElementById("fzqcs14").className = "read";
	document.getElementById("fzqcs15").readOnly = "true";
	document.getElementById("fzqcs15").className = "read";
	document.getElementById("fzqcs16").readOnly = "true";
	document.getElementById("fzqcs16").className = "read";
	document.getElementById("fzqcs23").readOnly = "true";
	document.getElementById("fzqcs23").className = "read";
	document.getElementById("fzqcs24").readOnly = "true";
	document.getElementById("fzqcs24").className = "read";
	document.getElementById("fzqms1").readOnly = "true";
	document.getElementById("fzqms1").className = "read";
	document.getElementById("fzqms9").readOnly = "true";
	document.getElementById("fzqms9").className = "read";
	document.getElementById("fzqms10").readOnly = "true";
	document.getElementById("fzqms10").className = "read";
	document.getElementById("fzqms13").readOnly = "true";
	document.getElementById("fzqms13").className = "read";
	document.getElementById("fzqms14").readOnly = "true";
	document.getElementById("fzqms14").className = "read";
	document.getElementById("fzqms15").readOnly = "true";
	document.getElementById("fzqms15").className = "read";
	document.getElementById("fzqms16").readOnly = "true";
	document.getElementById("fzqms16").className = "read";
	document.getElementById("fzqms23").readOnly = "true";
	document.getElementById("fzqms23").className = "read";
	document.getElementById("fzqms24").readOnly = "true";
	document.getElementById("fzqms24").className = "read";

}
// 设置表2表格属性
function setsrzcbclass() {
	document.getElementById("srbys1").readOnly = "true";
	document.getElementById("srbys1").className = "read";
	document.getElementById("srbys2").readOnly = "true";
	document.getElementById("srbys2").className = "read";
	document.getElementById("srbys6").readOnly = "true";
	document.getElementById("srbys6").className = "read";
	document.getElementById("srbys9").readOnly = "true";
	document.getElementById("srbys9").className = "read";
	document.getElementById("srbys10").readOnly = "true";
	document.getElementById("srbys10").className = "read";
	document.getElementById("srbys13").readOnly = "true";
	document.getElementById("srbys13").className = "read";
	document.getElementById("srbys16").readOnly = "true";
	document.getElementById("srbys16").className = "read";
	document.getElementById("srbys17").readOnly = "true";
	document.getElementById("srbys17").className = "read";
	document.getElementById("srbys20").readOnly = "true";
	document.getElementById("srbys20").className = "read";
	document.getElementById("srbys23").readOnly = "true";
	document.getElementById("srbys23").className = "read";
	document.getElementById("srbys24").readOnly = "true";
	document.getElementById("srbys24").className = "read";
	document.getElementById("srbys25").readOnly = "true";
	document.getElementById("srbys25").className = "read";
	document.getElementById("srbys26").readOnly = "true";
	document.getElementById("srbys26").className = "read";
	document.getElementById("srbys27").readOnly = "true";
	document.getElementById("srbys27").className = "read";

	document.getElementById("srljs1").readOnly = "true";
	document.getElementById("srljs1").className = "read";
	document.getElementById("srljs2").readOnly = "true";
	document.getElementById("srljs2").className = "read";
	document.getElementById("srljs6").readOnly = "true";
	document.getElementById("srljs6").className = "read";
	document.getElementById("srljs9").readOnly = "true";
	document.getElementById("srljs9").className = "read";
	document.getElementById("srljs10").readOnly = "true";
	document.getElementById("srljs10").className = "read";
	document.getElementById("srljs13").readOnly = "true";
	document.getElementById("srljs13").className = "read";
	document.getElementById("srljs16").readOnly = "true";
	document.getElementById("srljs16").className = "read";
	document.getElementById("srljs17").readOnly = "true";
	document.getElementById("srljs17").className = "read";
	document.getElementById("srljs20").readOnly = "true";
	document.getElementById("srljs20").className = "read";
	document.getElementById("srljs23").readOnly = "true";
	document.getElementById("srljs23").className = "read";
	document.getElementById("srljs24").readOnly = "true";
	document.getElementById("srljs24").className = "read";
	document.getElementById("srljs25").readOnly = "true";
	document.getElementById("srljs25").className = "read";
	document.getElementById("srljs26").readOnly = "true";
	document.getElementById("srljs26").className = "read";
	document.getElementById("srljs27").readOnly = "true";
	document.getElementById("srljs27").className = "read";
}
// 设置表3表格属性
function setjfzcbclass() {
	document.getElementById("hjby11").readOnly = "true";
	document.getElementById("hjby11").className = "read";
}
/**
 * 公式计算
 */
d = new caltb('qyzdzcfzb');
d.type = "1";
d.negative = true;
d.pageTipsFlag = "1";
var rulesID = new Array();
// 资产
// 9=2+...+8
rulesID[0] = "zcqcs9 = zcqcs2 + zcqcs3 + zcqcs4 + zcqcs5 + zcqcs6 + zcqcs7 + zcqcs8";
rulesID[1] = "zcqms9 = zcqms2 + zcqms3 + zcqms4 + zcqms5 + zcqms6 + zcqms7 + zcqms8";
// 10=11-12
rulesID[2] = "zcqcs10 = zcqcs11 - zcqcs12";
rulesID[3] = "zcqms10 = zcqms11 - zcqms12";
// 14 = 15-16
rulesID[4] = "zcqcs14 = zcqcs15 - zcqcs16";
rulesID[5] = "zcqms14 = zcqms15 - zcqms16";
// 19 = 20 - 21
rulesID[6] = "zcqcs19 = zcqcs20 - zcqcs21";
rulesID[7] = "zcqms19 = zcqms20 - zcqms21";
// 24 = 9+10+13+14+17+18+19+22+23
rulesID[8] = "zcqcs24 = zcqcs9 + zcqcs10 + zcqcs13 + zcqcs14 + zcqcs17 + zcqcs18 + zcqcs19 + zcqcs22 + zcqcs23";
rulesID[9] = "zcqms24 = zcqms9 + zcqms10 + zcqms13 + zcqms14 + zcqms17 + zcqms18 + zcqms19 + zcqms22 + zcqms23";

// 负债
// 9=2+...+8
rulesID[10] = "fzqcs9 = fzqcs2 + fzqcs3 + fzqcs4 + fzqcs5 + fzqcs6 + fzqcs7 + fzqcs8";
rulesID[11] = "fzqms9 = fzqms2 + fzqms3 + fzqms4 + fzqms5 + fzqms6 + fzqms7 + fzqms8";
// 13=9+11+12
rulesID[12] = "fzqcs13 = fzqcs9 + fzqcs11 + fzqcs12";
rulesID[13] = "fzqms13 = fzqms9 + fzqms11 + fzqms12";
// 23=17+18+19+21+22
rulesID[14] = "fzqcs23 = fzqcs17 + fzqcs18 + fzqcs19 + fzqcs21 + fzqcs22";
rulesID[15] = "fzqms23 = fzqms17 + fzqms18 + fzqms19 + fzqms21 + fzqms22";
// 24=13+23
rulesID[16] = "fzqcs24 = fzqcs13 + fzqcs23";
rulesID[17] = "fzqms24 = fzqms13 + fzqms23";
d.setRulesID(rulesID);
initCalTable(d, true);
runRulesForID(d);

// 收入支出算法
a = new caltb('syzdsrzcb');
a.type = "1";
a.negative = true;
a.pageTipsFlag = "1";
var rulesID = new Array();
// 2 = 3+4
rulesID[0] = "srbys2 = srbys3 + srbys4";
rulesID[1] = "srljs2 = srljs3 + srljs4";
// 1=2+5
rulesID[2] = "srbys1 = srbys2 + srbys5";
rulesID[3] = "srljs1 = srljs2 + srljs5";
// 6=7+8
rulesID[4] = "srbys6 = srbys7 + srbys8";
rulesID[5] = "srljs6 = srljs7 + srljs8";
// 10=11+12
rulesID[6] = "srbys10 = srbys11 + srbys12";
rulesID[7] = "srljs10 = srljs11 + srljs12";
// 13=14+15
rulesID[8] = "srbys13 = srbys14 + srbys15";
rulesID[9] = "srljs13 = srljs14 + srljs15";
// 9 = 10+13
rulesID[10] = "srbys9 = srbys10 + srbys13";
rulesID[11] = "srljs9 = srljs10 + srljs13";
// 17=18+19
rulesID[12] = "srbys17 = srbys18 + srbys19";
rulesID[13] = "srljs17 = srljs18 + srljs19";
// 20=21+22
rulesID[14] = "srbys20 = srbys21 + srbys22";
rulesID[15] = "srljs20 = srljs21 + srljs22";
// 16=17+20
rulesID[16] = "srbys16 = srbys17 + srbys20";
rulesID[17] = "srljs16 = srljs17 + srljs20";
// 24=10-17
rulesID[18] = "srbys24 = srbys10 - srbys17";
rulesID[19] = "srljs24 = srljs10 - srljs17";
// 25=13-20
rulesID[20] = "srbys25 = srbys13 - srbys20";
rulesID[21] = "srljs25 = srljs13 - srljs20";
// 23=24+25
rulesID[22] = "srbys23 = srbys24 + srbys25";
rulesID[23] = "srljs23 = srljs24 + srljs25";
// 27=28+29
rulesID[24] = "srbys27 = srbys28 + srbys29";
rulesID[25] = "srljs27 = srljs28 + srljs29";
// 26=27+30
rulesID[26] = "srbys26 = srbys27 + srbys30";
rulesID[27] = "srljs26 = srljs27 + srljs30";
a.setRulesID(rulesID);
initCalTable(a, true);
runRulesForID(a);

// 财政拨款
c = new caltb('czbksrb');
c.type = "1";
c.negative = true;
c.pageTipsFlag = "1";
var rulesID = new Array();
// rulesID[0] = "hjby11 = hjby13 + hjby14";
c.setRulesID(rulesID);
initCalTable(c, true);
runRulesForID(c);

/**
 * 确认提交
 */
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
//			new Ajax.Request('/WB395ckiAction.do', {
//						method : 'post',
//						parameters : $('WB395ckiForm').serialize(),
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
				url : "/WB395ckiAction.do",
				async : true,
				dataType : "html",
				data : $('#WB395ckiForm').serialize(),
				type : 'post',
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert('系统异常' + textStatus);
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					ajaxUpdate(responseText, "ajaxform");
					runMsg("1", true, null, 'WB395IndexForm');
				}
			});
			
		}

	});
}

/**
 * 基本校验
 */
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
	if (parseFloat(emptyToZ($F("fzqcs19"))) < parseFloat(emptyToZ($F("fzqcs20")))) {
		iconDialog('【资产负债表】“其他资金结转结余”应大于等于“项目结转”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("fzqms19"))) < parseFloat(emptyToZ($F("fzqms20")))) {
		iconDialog('【资产负债表】“其他资金结转结余”应大于等于“项目结转”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqcs24"))) != parseFloat(emptyToZ($F("fzqcs24")))) {
		iconDialog('【资产负债表】“资产总计”不等于“负债和净资产总计”,请核实! ', 'WARNING');
		return false;
	}
	if (parseFloat(emptyToZ($F("zcqms24"))) != parseFloat(emptyToZ($F("fzqms24")))) {
		iconDialog('【资产负债表】“资产总计”不等于“负债和净资产总计”,请核实! ', 'WARNING');
		return false;
	}
	return true;
}
