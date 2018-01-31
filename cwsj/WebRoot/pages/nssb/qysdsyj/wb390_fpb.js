var isSave = false;
Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow('/nssb/wb390/wb390_fpb_TbSm.html');
						},
						scope : this
					}, {
						text : "下一张",
						iconCls : "add",
						id : "addBtn",
						handler : function() {
							if (isSave) {
								goNextpage();
							} else {
								confirmDialog("系统将自动暂存本次申报数据，是否确认打开下一张申报?",
										function(button) {
											if (button == "yes") {
												submitData(button);
											}
										});
							}

						},
						scope : this
					}, '-', {
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
							$("handleCode").value = "printPage";
							openMaxWindow("/WB390fpbAction.do?sessionId="+$F("sessionId")+"&handleCode=printPage&pzxh="
									+ $F('pzxh') + "&sbmxxh=" + $F('sbmxxh'));
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
	rulesY = new Array();
	rulesY[0] = "srzehjje = srzeje";
	rulesY[1] = "gzzehjje = gzzeje";
	rulesY[2] = "zczehjje = zczeje";
	rulesY[3] = "fpblzh = fpbl";
	rulesY[4] = "fpsehjje = fpseje";
	calObj = new caltb('shzfpTable');
	calObj.setRulesY(rulesY);
	// calObj.negative = true;
	jsonContent = null;
	if (!$F('bizData').empty()) {
		jsonContent = eval("(" + $F('bizData') + ")");
	}
	if ($F('handleCode') == "MODIFY") {
		bizData = jsonContent.BIZDATA;
		var fzjg = new Array();
		var zjg;
		var j = 0;
		for (var i = 0; i < bizData.length; i++) {
			if (bizData[i].jglx == "1") {
				zjg = bizData[i];
			} else {
				fzjg[j++] = bizData[i];
			}
		}

		if (null != zjg) {
			document.getElementById('znsrsbm').value = zjg.nsrsbm;
			document.getElementById('znsrmc').value = zjg.nsrmc;
			document.getElementById('zjglx').value = zjg.jglx;
			document.getElementById('zjgftsdse_je').value = zjg.zjgftsdseje;
			document.getElementById('zjgynsdse_je').value = zjg.zjgynsdseje;
			document.getElementById('zjgczjzfbsdse_je').value = zjg.zjgczjzfbsdseje;
			document.getElementById('fzjgftsdseje').value = zjg.fzjgftsdseje;
			document.getElementById('sbmxxh').value = zjg.sbmxxh;
		}
		// 当是分支机构时
		for (var i = 0; i < fzjg.length; i++) {
			$ES('nsrsbm')[i].value = fzjg[i].nsrsbm;
			$ES('nsrmc')[i].value = fzjg[i].nsrmc;
			$ES('jglx')[i].value = fzjg[i].jglx;
			$ES('gzzeje')[i].value = fzjg[i].gzzeje;
			$ES('srzeje')[i].value = fzjg[i].srzeje;
			$ES('zczeje')[i].value = fzjg[i].zczeje;
			$ES('fpbl')[i].value = fzjg[i].fpbl;
			$ES('fpseje')[i].value = fzjg[i].fpseje;
		}
	}
	if ($F('zspmdm') == "0141") {
		if ($F('gs') == '0') {
			$ES('nsrmc')[0].readOnly = "true";
			$ES('nsrmc')[0].className = "read";
			$ES('nsrsbm')[0].readOnly = "true";
			$ES('nsrsbm')[0].className = "read";
		}
	} else if ($F('zspmdm') == "0143") {
		document.getElementById('znsrsbm').readOnly = "true";
		document.getElementById('znsrsbm').className = "read";
		document.getElementById('znsrmc').readOnly = "true";
		document.getElementById('znsrmc').className = "read";
	}
	runRulesForName(calObj);
	initCalTable(calObj);
	readText();
}
function submitData(button) {
	if (!bascicCheck()) {
		return;
	}
	document.getElementById('bizData').value = "";
	document.getElementById('errorMessage').value = "";
	document.getElementById('sucessMsg').value = "";
	document.getElementById("handleDesc").value = "";
	document.getElementById("handleCode").value = "saveData";
	waitDialog();
	/*new Ajax.Request('/WB390fpbAction.do', {
				method : 'post',
				parameters : $('WB390fpbForm').serialize(),
				onComplete : function(originalRequest) {
					Ext.MessageBox.hide();
					ajaxUpdate(originalRequest.responseText, "update");
					runMsg("0", false, null, 'WB390fbListForm');
					if (!$F('errorMessage').empty()) {
						return;
					}
					isSave = true;
					if (button == "yes") {
						eval("goNextpage()");
					}
				},
				onException : function() {
					Ext.MessageBox.hide();
					iconDialog('系统异常', 'ERROR');
				}
			});*/
	$.ajax({
		url : '/WB390fpbAction.do?handleCode=saveData&sessionId='+$F('sessionId'),
		async : true,
		dataType : "html",
		data : $('#WB390fpbForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			Ext.MessageBox.hide();
			iconDialog('系统异常', 'ERROR');
		},
		success :  function(responseText, textStatus, XMLHttpRequest) {
			Ext.MessageBox.hide();
			ajaxUpdate(responseText, "update");
			runMsg("0", false, null, 'WB390fbListForm');
			if (!$F('errorMessage').empty()) {
				return;
			}
			isSave = true;
			if (button == "yes") {
				eval("goNextpage()");
			}
		}
	});

}
function goNextpage() {
	window.location.href = "/WB390fpbAction.do?handleCode=initForm&sessionId="+$F("sessionId")+"&fbpzzldm=30054&pzzldm=42016&pzxh="
			+ $F("pzxh")
			+ "&ssqs="
			+ $F("ssqs")
			+ "&ssqz="
			+ $F("ssqz")
			+ "&nsrsbm="
			+ $F("znsrsbm")
			+ "&ynsdse="
			+ $F("zjgynsdse_je")
			+ "&ftsdse="
			+ $F("zjgftsdse_je")
			+ "&czjzfbsdse="
			+ $F("zjgczjzfbsdse_je")
			+ "&fzjgftsdse="
			+ $F("fzjgftsdseje")
			+ "&nsrmc=" + $F("znsrmc") + "&sbcs=2";
}

function bascicCheck() {
	var reg = /^[0-9a-z]+$/i;
	var temp = false;
	if ("" == trim($F('znsrmc'))) {
		iconDialog('【总机构名称】不能为空', 'WARNING');
		return false;
	}
	if ("" != $F('znsrsbm')) {
		if (!reg.test($F('znsrsbm'))) {
			iconDialog('请正确填写【总机构纳税人识别号】', 'WARNING');
			document.getElementById('znsrsbm').value = "";
			return false;
		}
	} else {
		iconDialog('【总机构纳税人识别号】不能为空', 'WARNING');
		return false;
	}
	if ("" == trim($F("zjgynsdse_je"))) {
		iconDialog('【应纳所得税额】不能为空', 'WARNING');
		return false;
	}
	if ("" == trim($F("zjgftsdse_je"))) {
		iconDialog('【总机构分摊所得税额】不能为空', 'WARNING');
		return false;
	}
	if ($F('zjgftsdse_je') != $F('zjgczjzfbsdse_je')) {
		iconDialog('【总机构分摊所得税额】应等于【总机构财政集中分配所得税额】', 'WARNING');
		return false;
	}
	if ("" == trim($F("fzjgftsdseje"))) {
		iconDialog('【分支机构分摊所得税额】不能为空', 'WARNING');
		return false;
	}
	for (var i = 0; i < $ES('nsrsbm').length; i++) {
		var nsrsbm = $ES('nsrsbm')[i].value;
		var nsrmc = $ES('nsrmc')[i].value;
		var srzeje = $ES('srzeje')[i].value;
		var gzzeje = $ES('gzzeje')[i].value;
		var zczeje = $ES('zczeje')[i].value;
		var fpbl = $ES('fpbl')[i].value;
		var fpseje = $ES('fpseje')[i].value;
		if ("" != nsrsbm && "" != trim(nsrmc) && "" != trim(srzeje)
				&& "" != trim(gzzeje) && "" != trim(zczeje) && "" != trim(fpbl)
				&& "" != trim(fpseje)) {
			temp = true;
			var minBl = accSub(fpbl, '0.0001') * emptyToZ($F('fzjgftsdseje'));
			var MaxBl = accAdd(fpbl, '0.0001') * emptyToZ($F('fzjgftsdseje'));
			if (caltbNumloop(parseFloat(emptyToZ(fpseje)) - 1, 2) > -1) {
				if (fpseje < minBl || fpseje > MaxBl) {
					iconDialog(
							'第'
									+ (i + 1)
									+ '行【分支机构分摊所得税额】*（分配比例-0.0001）<【分配所得税额】<【分支机构分摊所得税额】*（分配比例+0.0001）',
							'WARNING');
					return false;
				}
			}
			// else {
			// if (fpseje < MaxBl || fpseje > minBl) {
			// iconDialog(
			// '第'
			// + (i + 1)
			// +
			// '行【分支机构分摊所得税额（50%）】*（分配比例-0.0001）<【分配所得税额】<【分支机构分摊所得税额（50%）】*（分配比例+0.0001）',
			// 'WARNING');
			// return false;
			// }
			// }
			if (!reg.test(nsrsbm)) {
				iconDialog('请正确填写【分支机构纳税人识别号】', 'WARNING');
				$ES('nsrsbm')[i].value = "";
				return false;
			}
		}
	}

	if ($F('fpblzh') > 1) {
		iconDialog('【分支机构-分配比例合计】不能大于1', 'WARNING');
		return false;
	}

	if ("0143" != $F('zspmdm')) {
		if (temp == false) {
			iconDialog('请至少填写一行完整分支机构数据', 'WARNING');
			return false;
		}
	}
	return true;
}

function accAdd(arg1, arg2) {
	var r1, r2, m;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	return (arg1 * m + arg2 * m) / m;
}

function accSub(arg1, arg2) {
	var r1, r2, m, n;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	// 动态控制精度长度
	n = (r1 >= r2) ? r1 : r2;
	return ((arg1 * m - arg2 * m) / m).toFixed(n);
}