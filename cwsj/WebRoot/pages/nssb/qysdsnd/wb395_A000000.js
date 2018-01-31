var qysdsNb_JbxxCalObj1;
var qysdsNb_JbxxCalObj2;
var A000000_GLQYDIV;

/**Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', '-', {
						text : "填表说明",
						iconCls : "fb",
						id : "tbsmBtn",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A000000_TbSm.html");

						},
						scope : this
					}, '-', {
						text : "暂存",
						iconCls : "save",
						id : "tempBtn",
						handler : function() {
							tempSave();
						},
						scope : this
					}, '-', {
						text : "查看信息",
						iconCls : "fb",
						handler : function() {
							openMsgWindow();// 公用方法
						},
						scope : this
					}, '-', {
						id : "printBtn",
						text : "打印",
						iconCls : "print",
						handler : function() {
							openMaxWindow("/WB395A000000Action.do?vo.pzxh="
									+ $F("vo.pzxh") + "&handleCode=printData");
						},
						scope : this
					}, '-', {
						text : "关闭",
						iconCls : "close",
						handler : function() {
							window.close();
						},
						scope : this
					}, '-']
		});
		initPage();
	} catch (e) {

	}
});
**/
function initPage() {
	maxPage();
	debugger
	if (!beforeInitPage()) {
		return;
	}
	for (var i = 0; i < document.getElementById("kjzd").options.length; i++) {
		if (document.getElementById("kjzd").options(i).value == document.getElementById("vo.kjzd").value) {
			document.getElementById("kjzd").options(i).selected = true;
		}
	}
	if ($F("vo.kjzd") == "CKZ") {
		document.getElementById("kjzdLabel").show();
		document.getElementById("vo.cwzdqt").show();
	}

	// 更正申报
	if ($ES("vo.sblx")[1].checked == true) {
		$ES("vo.sblx")[0].disabled = true;
	} else {
		// 正常申报
		$ES("vo.sblx")[1].disabled = true;
		$ES("vo.sblx")[0].checked = true;
	}

	qysdsNb_JbxxCalObj1 = new caltb("qysdsNb_JbxxTable1");
	initCalTable(qysdsNb_JbxxCalObj1);
	qysdsNb_JbxxCalObj2 = new caltb("qysdsNb_JbxxTable2");
	initCalTable(qysdsNb_JbxxCalObj2);
	setGDZCZJFF();
	setCHCBJJFF();
	readText();
	setDwtz();
	setHzqylx();
	setQygd();// 企业股东设置
	if ($F("vo.kjzd").empty()) {
		A000000_GLQYDIV = new Ext.Window({
					width : 690,
					height : 400,
					title : '',
					closable : false,
					modal : true,
					layout : "fit",
					items : new Ext.Panel({
								contentEl : 'A000000_GLQYDIV'
							})
				});
		A000000_GLQYDIV.show();
	}
}

function setKjzd() {
	document.getElementById("vo.kjzd").value = $F("kjzd");
	if ($F("kjzd") == "CKZ") {
		$("kjzdLabel").show();
		$("vo.cwzdqt").show();
	} else {
		$("kjzdLabel").hide();
		$("vo.cwzdqt").hide();
	}
}

function setHzqylx() {
	for (var i = 0; i < $ES("hznsqylx").length; i++) {
		if ($ES("hznsqylx")[i].value == $F("vo.hznsqylx")) {
			$ES("hznsqylx")[i].checked = true;
			break;
		}
	}
}

// 设置企业股东是否为必输项
function setQygd() {
	var isfr = document.getElementsByName("isfr")[0].value;
	if (isfr == "0") {
		for (var i = 0; i < document.getElementsByName("gdmc").length; i++) {
			$ES("gdmc")[i].className = "";
			$ES("zjzl")[i].className = "";
			$ES("zjhm")[i].className = "";
			$ES("djzclxdm")[i].className = "";
			$ES("tzbl")[i].className = "";
			$ES("gj")[i].className = "";
		}

	}
}
// 测试使用
// function setHzqylx2(obj) {
// $("vo.hznsqylx").value = obj.value;
// }

function setGlqy() {
	if ($ES("glflag")[1].checked == true) {
		$ES("zfflag")[0].disabled = true;
		$ES("zfflag")[1].disabled = true;
		$ES("zfflag")[0].checked = false;
		$ES("zfflag")[1].checked = false;
		$ES("skwgbj")[0].disabled = true;
		$ES("skwgbj")[1].disabled = true;
		$ES("skwgbj")[0].checked = false;
		$ES("skwgbj")[1].checked = false;

		$ES("sfgljy")[0].disabled = true;
		$ES("sfgljy")[1].disabled = true;
		$ES("sfgljy")[0].checked = false;
		$ES("sfgljy")[1].checked = false;

	} else {
		$ES("zfflag")[0].disabled = false;
		$ES("zfflag")[1].disabled = false;

		$ES("skwgbj")[0].disabled = false;
		$ES("skwgbj")[1].disabled = false;

		$ES("sfgljy")[0].disabled = false;
		$ES("sfgljy")[1].disabled = false;

	}
}

function setGlqy2() {
	if ($ES("vo.sfglqy")[1].checked == true) {
		$ES("vo.sfskwg")[0].disabled = true;
		$ES("vo.sfskwg")[1].disabled = true;
		$ES("vo.sfskwg")[0].checked = false;
		$ES("vo.sfskwg")[1].checked = false;

		$ES("vo.sfdwzf")[0].disabled = true;
		$ES("vo.sfdwzf")[1].disabled = true;
		$ES("vo.sfdwzf")[0].checked = false;
		$ES("vo.sfdwzf")[1].checked = false;

		$ES("vo.sfgljy")[0].disabled = true;
		$ES("vo.sfgljy")[1].disabled = true;
		$ES("vo.sfgljy")[0].checked = false;
		$ES("vo.sfgljy")[1].checked = false;

	} else {
		$ES("vo.sfskwg")[0].disabled = false;
		$ES("vo.sfskwg")[1].disabled = false;

		$ES("vo.sfdwzf")[0].disabled = false;
		$ES("vo.sfdwzf")[1].disabled = false;

		$ES("vo.sfgljy")[0].disabled = false;
		$ES("vo.sfgljy")[1].disabled = false;

	}
}

function saveGlgx() {
	if ($ES("glflag")[0].checked == true) {
		$ES("vo.sfglqy")[0].checked = true;
	} else {
		$ES("vo.sfglqy")[1].checked = true;
	}

	if ($ES("zfflag")[0].checked == true) {
		$ES("vo.sfdwzf")[0].checked = true;
	} else {
		$ES("vo.sfdwzf")[1].checked = true;
	}

	if ($ES("skwgbj")[0].checked == true) {
		$ES("vo.sfskwg")[0].checked = true;
	} else {
		$ES("vo.sfskwg")[1].checked = true;
	}

	if ($ES("sfgljy")[0].checked == true) {
		$ES("vo.sfgljy")[0].checked = true;
	} else {
		$ES("vo.sfgljy")[1].checked = true;
	}

	A000000_GLQYDIV.hide();
}

function setDwtz() {
	if ($ES("vo.sfdwtz")[0].checked == true) {
		setDwtzClass("srx");

	} else {
		setDwtzClass("fsrx");
	}
}

// 固定资产折旧方法（T_DM_GY_GDZCZJFF）
function setGDZCZJFF() {
	var strArr = document.getElementById("vo.gdzczjff").value.split(",");
	for (var i = 0; i < strArr.length; i++) {
		for (var j = 0; j < $ES("gdzczjff").length; j++) {
			if ($ES("gdzczjff")[j].value == strArr[i]) {
				$ES("gdzczjff")[j].checked = true;
				break;
			}
		}
	}

}

// 存货成本计价方法（T_DM_GY_CHCBJJFF）
function setCHCBJJFF() {
	var strArr = document.getElementById("vo.chcbjjff").value.split(",");
	for (var i = 0; i < strArr.length; i++) {
		for (var j = 0; j < $ES("chcbjjff").length; j++) {
			if ($ES("chcbjjff")[j].value == strArr[i]) {
				$ES("chcbjjff")[j].checked = true;
				break;
			}
		}
	}
}

function setDwtzClass(className) {
	for (var i = 0; i < $ES("btzzmc").length; i++) {
		$ES("btzzmc")[i].className = className;
		$ES("nsrsbh")[i].className = className;
		$ES("djzclxdm2")[i].className = className;
		$ES("tzbl2")[i].className = className;
		$ES("tzje")[i].className = className;
		$ES("gj2")[i].className = className;
		if (className == "fsrx") {
			$ES("btzzmc")[i].value = "";
			$ES("nsrsbh")[i].value = "";
			$ES("djzclxdm2")[i].value = "";
			$ES("tzbl2")[i].value = "";
			$ES("tzje")[i].value = "";
			$ES("gj2")[i].value = "";

			$ES("btzzmc")[i].disabled = true;
			$ES("nsrsbh")[i].disabled = true;
			$ES("djzclxdm2")[i].disabled = true;
			$ES("tzbl2")[i].disabled = true;
			$ES("tzje")[i].disabled = true;
			$ES("gj2")[i].disabled = true;
		} else {
			$ES("btzzmc")[i].disabled = false;
			$ES("nsrsbh")[i].disabled = false;
			$ES("djzclxdm2")[i].disabled = false;
			$ES("tzbl2")[i].disabled = false;
			$ES("tzje")[i].disabled = false;
			$ES("gj2")[i].disabled = false;
		}
	}
}

function baseCheck() {
	var isfr = document.getElementsByName("isfr")[0].value;
	var selected = false;
	for (var i = 0; i < $ES("vo.sfjwzzkk").length; i++) {
		if ($ES("vo.sfjwzzkk")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【106境外中资控股居民企业】类型！', 'WARNING', function() {
					$ES("vo.sfjwzzkk")[0].focus();
				});
		return false;
	}

	// selected = false;
	// for (var i = 0; i < $ES("vo.fxzhy").length; i++) {
	// if ($ES("vo.fxzhy")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【107从事国家非限制和禁止行业】类型！', 'WARNING', function() {
	// $ES("vo.fxzhy")[0].focus();
	// });
	// return false;
	// }

	if (parseFloat(emptyToZ($F("vo.cyrs"))) == 0) {
		iconDialog('请填写【104从业人数】！', 'WARNING', function() {
			document.getElementById('vo.cyrs').focus();
				});
		return false;

	}

	// 添加空校验+0提示校验
	if (trim($F("vo.zcze")) == "") {
		iconDialog('请填写【105资产总额（万元）】！', 'WARNING', function() {
			document.getElementById('vo.zcze').focus();
				});
		return false;
	}

	selected = false;
	for (var i = 0; i < $ES("vo.sfjwgljy").length; i++) {
		if ($ES("vo.sfjwgljy")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【108存在境外关联交易】类型！', 'WARNING', function() {
					$ES("vo.sfjwgljy")[0].focus();
				});
		return false;
	}

	selected = false;
	for (var i = 0; i < $ES("vo.sfssgs").length; i++) {
		if ($ES("vo.sfssgs")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【109上市公司】类型！', 'WARNING', function() {
					$ES("vo.sfssgs")[0].focus();
				});
		return false;
	}
	if ($F("vo.kjzd").empty() == true) {
		iconDialog('请选择【201适用的会计准则或会计制度】类型！', 'WARNING', function() {
					$ES("kjzd")[0].focus();
				});
		return false;
	}

	if ($F("kjzd") == "CKZ") {
		if ($F("vo.cwzdqt").empty()) {
			iconDialog('请填写适用的会计准则或会计制度！', 'WARNING', function() {
				document.getElementById("vo.cwzdqt").focus();
					});
			return false;
		}
	}

	selected = false;
	if (trim($F('vo.dacfd')).empty()) {
		iconDialog('请填写【202会计档案的存放地】！', 'WARNING', function() {
			document.getElementById('vo.dacfd').focus();
				});
		return false;
	}

	if (trim($F('vo.kjhsrj')).empty()) {
		iconDialog('请填写【203会计核算软件】！', 'WARNING', function() {
			document.getElementById('vo.kjhsrj').focus();
				});
		return false;
	}

	selected = false;
	for (var i = 0; i < $ES("vo.jzbwb").length; i++) {
		if ($ES("vo.jzbwb")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【204记账本位币】类型！', 'WARNING', function() {
					$ES("vo.jzbwb")[0].focus();
				});
		return false;
	}

	selected = false;
	for (var i = 0; i < $ES("vo.kjzcsfbh").length; i++) {
		if ($ES("vo.kjzcsfbh")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【205会计政策和估计是否发生变化】！', 'WARNING', function() {
					$ES("vo.kjzcsfbh")[0].focus();
				});
		return false;
	}

	selected = false;
	$("#vo.gdzczjff").val("");
	for (var i = 0; i < $ES("gdzczjff").length; i++) {
		if ($ES("gdzczjff")[i].checked == true) {
			document.getElementById("vo.gdzczjff").value = document.getElementById("vo.gdzczjff").value
					+ $ES("gdzczjff")[i].value + ",";
		}
	}
	if ($F("vo.gdzczjff") == "") {
		iconDialog('请选择【206固定资产折旧方法】类型！', 'WARNING');
		return false;
	}
	document.getElementById("vo.gdzczjff").value = document.getElementById("vo.gdzczjff").value.substr(0,
			document.getElementById("vo.gdzczjff").value.length - 1);

	$("#vo.chcbjjff").val("");
	for (var i = 0; i < $ES("chcbjjff").length; i++) {
		if ($ES("chcbjjff")[i].checked == true) {
			document.getElementById("vo.chcbjjff").value = document.getElementById("vo.chcbjjff").value
					+ $ES("chcbjjff")[i].value + ",";
		}
	}
	if ($F("vo.chcbjjff") == "") {
		iconDialog('请选择【207存货成本计价方法】类型！', 'WARNING');
		return false;
	}
	document.getElementById("vo.chcbjjff").value = document.getElementById("vo.chcbjjff").value.substr(0,
			document.getElementById("vo.chcbjjff").value.length - 1);

	selected = false;
	for (var i = 0; i < $ES("vo.hzsshsff").length; i++) {
		if ($ES("vo.hzsshsff")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【208坏账损失核算方法】类型！', 'WARNING', function() {
					$ES("vo.hzsshsff")[0].focus();
				});
		return false;
	}

	selected = false;
	for (var i = 0; i < $ES("vo.sdsjsff").length; i++) {
		if ($ES("vo.sdsjsff")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【209所得税计算方法】类型！', 'WARNING', function() {
					$ES("vo.sdsjsff")[0].focus();
				});
		return false;
	}

	selected = false;
	for (var i = 0; i < $ES("gdmc").length; i++) {
		if (!trim($ES("gdmc")[i].value).empty()) {
			selected = true;
		}
	}
	if (selected == false && isfr == "1") {
		iconDialog('请填写【301企业主要股东（前5位）】，至少填写一行！', 'WARNING');
		return false;
	}

	for (var i = 0; i < $ES("gdmc").length; i++) {
		if (!trim($ES("gdmc")[i].value).empty()) {
			if (trim($ES("zjzl")[i].value).empty()) {
				iconDialog('请填写【301企业主要股东（前5位）】，第' + parseInt(i + 1)
								+ '行的证件种类！', 'WARNING', function() {
							$ES("zjzl")[i].focus();
						});
				return false;
			}

			if (trim($ES("zjhm")[i].value).empty()) {
				iconDialog('请填写【301企业主要股东（前5位）】，第' + parseInt(i + 1)
								+ '行的证件号码！', 'WARNING', function() {
							$ES("zjhm")[i].focus();
						});
				return false;
			}

			if (trim($ES("zjzl")[i].value) == "06") {
				if (f_check_sfz($ES("zjhm")[i]) == false) {
					iconDialog('【301企业主要股东（前5位）】，第' + parseInt(i + 1)
									+ '行的身份证号码不正确！', 'WARNING', function() {
								$ES("zjhm")[i].focus();
							});
					return false;
				}
			}

			if (trim($ES("zjzl")[i].value) == "80") {
				if ($ES("zjhm")[i].value.length != 9) {
					iconDialog('【301企业主要股东（前5位）】，第' + parseInt(i + 1)
									+ '行的全国组织机构统一代码证长度应该为9位！', 'WARNING',
							function() {
								$ES("zjhm")[i].focus();
							});
					return false;
				}
			}

			if (trim($ES("djzclxdm")[i].value).empty()) {
				iconDialog('请填写【301企业主要股东（前5位）】，第' + parseInt(i + 1)
								+ '行的经济性质！', 'WARNING', function() {
							$ES("djzclxdm")[i].focus();
						});
				return false;
			}

			if (trim($ES("tzbl")[i].value).empty()) {
				iconDialog('请填写【301企业主要股东（前5位）】，第' + parseInt(i + 1)
								+ '行的投资比例！', 'WARNING', function() {
							$ES("tzbl")[i].focus();
						});
				return false;
			}
			if (trim($ES("gj")[i].value).empty()) {
				iconDialog('请填写【301企业主要股东（前5位）】，第' + parseInt(i + 1)
								+ '行的国籍（注册地址）！', 'WARNING', function() {
							$ES("gj")[i].focus();
						});
				return false;
			}
		}
	}

	var tzblSum = 0;
	var yxTzblSum = 0;

	for (var i = 0; i < $ES("gdmc").length; i++) {
		if (!trim($ES("gdmc")[i].value).empty()) {
			tzblSum = parseFloat(tzblSum) + parseFloat($ES("tzbl")[i].value);
			yxTzblSum = parseInt(yxTzblSum) + 1;
		}
	}
	if (caltbNumloop(parseFloat(tzblSum), 6) > 1) {
		iconDialog('【301企业主要股东（前5位）】，投资比例之和不能大于1！', 'WARNING');
		return false;
	}

	if (selected == true) {
		if (parseInt(yxTzblSum) < 5) {
			if (caltbNumloop(parseFloat(tzblSum), 6) != 1) {
				iconDialog('【301企业主要股东（前5位）】，填写行数小于5行时，投资比例之和应等于1！', 'WARNING');
				return false;
			}
		}
	}

	selected = false;
	for (var i = 0; i < $ES("vo.sfdwtz").length; i++) {
		if ($ES("vo.sfdwtz")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【302是否对外投资】！', 'WARNING', function() {
					$ES("vo.sfdwtz")[0].focus();
				});
		return false;
	}

	if ($ES("vo.sfdwtz")[0].checked == true) {
		selected = false;
		for (var i = 0; i < $ES("btzzmc").length; i++) {
			if (!trim($ES("btzzmc")[i].value).empty()) {
				selected = true;
			}
		}
		if (selected == false) {
			iconDialog('请填写【302对外投资（前5位）】，至少填写一行！', 'WARNING');
			return false;
		}

		for (var i = 0; i < $ES("btzzmc").length; i++) {
			if (!trim($ES("btzzmc")[i].value).empty()) {
				if (trim($ES("nsrsbh")[i].value).empty()) {
					iconDialog('请填写【302对外投资（前5位）】，第' + parseInt(i + 1)
									+ '行的纳税人识别号！', 'WARNING', function() {
								$ES("nsrsbh")[i].focus();
							});
					return false;
				}
				if (trim($ES("djzclxdm2")[i].value).empty()) {
					iconDialog('请填写【302对外投资（前5位）】，第' + parseInt(i + 1)
									+ '行的经济性质！', 'WARNING', function() {
								$ES("djzclxdm2")[i].focus();
							});
					return false;
				}
				if (trim($ES("tzbl2")[i].value).empty()) {
					iconDialog('请填写【302对外投资（前5位）】，第' + parseInt(i + 1)
									+ '行的投资比例！', 'WARNING', function() {
								$ES("tzbl2")[i].focus();
							});
					return false;
				}

				if (parseFloat($ES("tzbl2")[i].value) <= 0
						|| parseFloat($ES("tzbl2")[i].value) > 1) {
					iconDialog('【302对外投资（前5位）】，第' + parseInt(i + 1)
									+ '行的投资比例必须大于0小于等于1！', 'WARNING',
							function() {
								$ES("tzbl2")[i].focus();
							});
					return false;
				}

				if (trim($ES("tzje")[i].value).empty()) {
					iconDialog('请填写【302对外投资（前5位）】，第' + parseInt(i + 1)
									+ '行的投资金额！', 'WARNING', function() {
								$ES("tzje")[i].focus();
							});
					return false;
				}

				if (trim($ES("gj2")[i].value).empty()) {
					iconDialog('请填写【302对外投资（前5位）】，第' + parseInt(i + 1)
									+ '行的注册地址！', 'WARNING', function() {
								$ES("gj2")[i].focus();
							});
					return false;
				}
			}
		}
	}

	// tzblSum = 0;
	//
	// for (var i = 0; i < $ES("btzzmc").length; i++) {
	// if (!trim($ES("btzzmc")[i].value).empty()) {
	// tzblSum = parseFloat(tzblSum) + parseFloat($ES("tzbl2")[i].value);
	// }
	// }
	// if (tzblSum > 1) {
	// iconDialog('【302对外投资（前5位）】，投资比例之和不能大于1！', 'WARNING');
	// return false;
	// }

	// selected = false;
	// for (var i = 0; i < $ES("vo.sfwwg").length; i++) {
	// if ($ES("vo.sfwwg")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【401是否发生视同销售收入或房地产企业销售未完工开发产品】！', 'WARNING', function() {
	// $ES("vo.sfwwg")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfqrsr").length; i++) {
	// if ($ES("vo.sfqrsr")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【402是否存在未按权责发生制确认收入】！', 'WARNING', function() {
	// $ES("vo.sfqrsr")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sftzsy").length; i++) {
	// if ($ES("vo.sftzsy")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【403是否取得投资收益】！', 'WARNING', function() {
	// $ES("vo.sftzsy")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfczxzj").length; i++) {
	// if ($ES("vo.sfczxzj")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【404是否取得专项用途财政性资金（含以前年度取得尚未使用完的）】！', 'WARNING',
	// function() {
	// $ES("vo.sfczxzj")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfgg").length; i++) {
	// if ($ES("vo.sfgg")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【405是否发生广告费和业务宣传费支出（含结转以后年度扣除）】！', 'WARNING',
	// function() {
	// $ES("vo.sfgg")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfjz").length; i++) {
	// if ($ES("vo.sfjz")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【406是否发生捐赠支出】！', 'WARNING', function() {
	// $ES("vo.sfjz")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfcz").length; i++) {
	// if ($ES("vo.sfcz")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【407是否发生重组事项（法律形式变更除外）】！', 'WARNING', function() {
	// $ES("vo.sfcz")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfzcbq").length; i++) {
	// if ($ES("vo.sfzcbq")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【408是否完成政策性搬迁】！', 'WARNING', function() {
	// $ES("vo.sfzcbq")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sftshy").length; i++) {
	// if ($ES("vo.sftshy")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【409是否发生特殊行业准备金业务（保险、证券、期货、金融等）】！', 'WARNING',
	// function() {
	// $ES("vo.sftshy")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfmb").length; i++) {
	// if ($ES("vo.sfmb")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【410是否弥补、结转以前年度亏损或者当年发生亏损需要结转以后年度弥补】！', 'WARNING',
	// function() {
	// $ES("vo.sfmb")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfsryh").length; i++) {
	// if ($ES("vo.sfsryh")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【411是否享受收入优惠、加计扣除优惠】！', 'WARNING', function() {
	// $ES("vo.sfsryh")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfxmsdjm").length; i++) {
	// if ($ES("vo.sfxmsdjm")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【412是否享受项目所得减免优惠】！', 'WARNING', function() {
	// $ES("vo.sfxmsdjm")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfdkyh").length; i++) {
	// if ($ES("vo.sfdkyh")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【413是否享受抵扣或者结转抵扣应纳税所得额优惠】！', 'WARNING', function() {
	// $ES("vo.sfdkyh")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfjmsds").length; i++) {
	// if ($ES("vo.sfjmsds")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【414是否享受减免所得税优惠】！', 'WARNING', function() {
	// $ES("vo.sfjmsds")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfzysb").length; i++) {
	// if ($ES("vo.sfzysb")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【415是否享受专用设备投资额抵免或结转抵免优惠】！', 'WARNING', function() {
	// $ES("vo.sfzysb")[0].focus();
	// });
	// return false;
	// }
	//
	// selected = false;
	// for (var i = 0; i < $ES("vo.sfjwsd").length; i++) {
	// if ($ES("vo.sfjwsd")[i].checked == true) {
	// selected = true;
	// break;
	// }
	// }
	// if (selected == false) {
	// iconDialog('请选择【416是否存在境外所得抵免】！', 'WARNING', function() {
	// $ES("vo.sfjwsd")[0].focus();
	// });
	// return false;
	// }

	selected = false;
	for (var i = 0; i < $ES("vo.sfglqy").length; i++) {
		if ($ES("vo.sfglqy")[i].checked == true) {
			selected = true;
			break;
		}
	}
	if (selected == false) {
		iconDialog('请选择【417是否关联企业】！', 'WARNING', function() {
					$ES("vo.sfglqy")[0].focus();
				});
		return false;
	}

	selected = false;
	if ($ES("vo.sfglqy")[0].checked == true) {

		for (var i = 0; i < $ES("vo.sfgljy").length; i++) {
			if ($ES("vo.sfgljy")[i].checked == true) {
				selected = true;
				break;
			}
		}
		if (selected == false) {
			iconDialog('请选择【418是否存在关联交易】！', 'WARNING', function() {
						$ES("vo.sfglqy")[0].focus();
					});
			return false;

		}
	}

	selected = false;
	if ($ES("vo.sfglqy")[0].checked == true) {
		for (var i = 0; i < $ES("vo.sfskwg").length; i++) {
			if ($ES("vo.sfskwg")[i].checked == true) {
				selected = true;
				break;
			}
		}
		if (selected == false) {
			iconDialog('请选择【419是否受控外国企业】！', 'WARNING', function() {
						$ES("vo.sfskwg")[0].focus();
					});
			return false;
		}
	}

	selected = false;
	if ($ES("vo.sfglqy")[0].checked == true) {
		for (var i = 0; i < $ES("vo.sfdwzf").length; i++) {
			if ($ES("vo.sfdwzf")[i].checked == true) {
				selected = true;
				break;
			}
		}
		if (selected == false) {
			iconDialog('请选择【420是否存在对外支付款项情况】！', 'WARNING', function() {
						$ES("vo.sfdwzf")[0].focus();
					});
			return false;
		}
	}

	if ($ES("vo.sfjwgljy")[0].checked == true) {
		if ($ES("vo.sfglqy")[1].checked == true) {
			iconDialog('【108存在境外关联交易】,若勾选为"是",则【417是否存在关联关系】必须为"是"!',
					'WARNING', function() {
						$ES("vo.sfglqy")[0].focus();
					});
			return false;
		}

		if ($ES("vo.sfgljy")[1].checked == true) {
			iconDialog('【108存在境外关联交易】,若勾选为"是",则【418是否存在关联交易】必须为"是"!',
					'WARNING', function() {
						$ES("vo.sfgljy")[0].focus();
					});

			return false;
		}

	}

	return true;
}

function tempSave() {
	if (baseCheck()) {
		$('#sucessMsg').val("");
		$('#errorMessage').val("");
		$("#handleCode").val("tempSave");
		confirmDialog(
				"系统将根据您此次填写的基础信息生成【企业所得税年度纳税申报表应填报表单】<br/>如果已经保存的报表不在清单中，系统将从【企业所得税年度纳税申报表已填报表单】中删除。<br/>是否确认暂存数据?",
				function(button) {
					if (button == "yes") {
						waitDialog();
//						new Ajax.Request('/WB395A000000Action.do', {
//									method : 'post',
//									parameters : $('WB395A000000Form')
//											.serialize(),
//									onComplete : function(originalRequest) {
//										Ext.MessageBox.hide();
//										ajaxUpdateMoreTag(
//												originalRequest.responseText,
//												"update");
//
//										runMsg("0", null, null,
//												"WB395IndexForm");
//										/*
//										 * if (!trim($F('sucessMsg')).empty()) {
//										 * iconDialog($F('sucessMsg'), 'INFO'); }
//										 * else if
//										 * (!trim($F('errorMessage')).empty()) {
//										 * iconDialog($F('errorMessage'),
//										 * 'ERROR', function() { }); } else if
//										 * (!trim($F('proMessage')).empty()) {
//										 * $("proMessageDiv").innerHTML =
//										 * toProMesHTML(); proMessageWin = new
//										 * Ext.Window({ width : 550, height :
//										 * 520, title : '信息提示', closeAction :
//										 * 'hide', closable : false, modal :
//										 * true, layout : "fit", items : new
//										 * Ext.Panel({ contentEl :
//										 * 'proMessageDiv' }), buttons : [{ text :
//										 * '提交', scope : this, handler :
//										 * function() { if
//										 * (parseInt($F("qzlJyCount")) > 0) {
//										 * iconDialog( "共有" + $F("qzlJyCount") +
//										 * "条强制类校验未通过,不允许提交!", "WARNING");
//										 * return; } proMessageWin.hide();
//										 * $("proMessage").value = "";
//										 * $("proMessageDiv").innerHTML = "";
//										 * $("nsrQrtjBz").value = "1";
//										 * tempSave(); } }, { text : '取消', scope :
//										 * this, handler : function() {
//										 * proMessageWin.hide(); } }] });
//										 * proMessageWin.show(); } else {
//										 * iconDialog('未获取到返回消息！', 'ERROR',
//										 * function() { }); }
//										 */
//									},
//									onException : function() {
//										Ext.MessageBox.hide();
//										iconDialog('系统异常', 'ERROR');
//									}
//								});
						
						$.ajax({
							url : "/WB395A000000Action.do",
							async : true,
							dataType : "html",
							data : $('#WB395A000000Form').serialize(),
							type : 'post',
							error : function(XMLHttpRequest, textStatus, errorThrown) {
								alert('系统异常' + textStatus);
							},
							success : function(responseText, textStatus, XMLHttpRequest) {
								debugger
								ajaxUpdateMoreTag(responseText, "update");
								runMsg("0", null, null,"WB395IndexForm");
							}
						});
						
					}

				}

		);

	}
}

function submitData() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A000000Action.do', {
//				method : 'post',
//				parameters : $('WB395A000000Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					runMsg("0", null, null, "WB395IndexForm");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A000000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A000000Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0", null, null,
			"WB395IndexForm");
		}
	});
	

}
