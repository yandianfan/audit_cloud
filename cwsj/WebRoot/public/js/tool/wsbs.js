document
		.write('<script language="javascript" src="/public/jquery/jquery.min.js"></script>');
document
		.write('<script language="javascript" src="/public/jquery/jquery.json.min.js"></script>');
document
		.write('<script language="javascript" src="/public/jquery/jquery.easyui.min.js"></script>');
document
		.write('<link rel="stylesheet" type="text/css" href="/public/jquery/themes/default/easyui.css"></link>');
document
		.write('<link rel="stylesheet" type="text/css" href="/public/jquery/themes/icon.css"></link>');
document
		.write('<script language="javascript" src="/public/ext/ext-all.js"></script>');
document
		.write('<script language="javascript" src="/public/ext/ext-lang-zh_CN.js"></script>');
document
		.write('<script language="javascript" src="/public/js/tool/dialogtool.js"></script>');
document
		.write('<script language="javascript" src="/public/js/tool/appserver.js"></script>');
document
		.write('<script language="javascript" src="/public/js/codectrl/public.js"></script>');
document
		.write('<script language="javascript" src="/public/js/codectrl/clsDynamicSelect.js"></script>');
document
		.write('<script language="javascript" src="/public/js/tool/datetool.js"></script>');
document
		.write('<script language="javascript" src="/public/js/tool/common.js"></script>');
document
		.write('<script language="javascript" src="/public/js/tool/print.js"></script>');

document
		.write('<OBJECT id="WebBrowser" height="0" width="0" classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>');
var COMMERRORMSG = "后台处理失败!";
// 系统超时定义成60秒
var SYS_TIMEOUT = 600000;
var proMessageWin = null;
var proMessageCxWin = null;
var qynsrKkQr_MessageWin = null;
var zrrWykkQr_MessageDiv = null;

function caSetValue(data) {
	var flag = 0;
	try {
		flag = document.getElementById('signerx').PKCS1(data, "sha1");
	} catch (e) {
		try {
			new ActiveXObject("SignerX.FormSigner.1");
			alert("您的补丁为老版本，请返回首页下载最新的(E-sign090205.exe)补丁");
		} catch (e) {
			alert("1 首先确认您的补丁是否已正确安装" + '\n' + '2 降低您的IE浏览器级别\n'
					+ '3 如以上不能解决，请联系CA客服：025-83393888');
		}
	}
	if (flag != 0) {
		document.getElementById('signerx').GetErrorString(flag);
		return false;
	}
	document.getElementById('caVO.str_signature').value == document
			.getElementById('signerx').SXSignature;
	document.getElementById('caVO.str_certificate').value == document
			.getElementById('signerx').SXCertificate;
	return true;
}

function AutoVO(text, content, parentCode) {
	this.text = text;
	this.content = content;
	if (parentCode == null) {
		this.parentCode = "";
	} else {
		this.parentCode = parentCode;
	}
}

function pageCofig() {
	this.headRow = 1;
	this.sbbname = "";
}

var pageInfo = new pageCofig();

function checkYssr(mustvalue, checkvlaue, mes) {
	if (mes == null) {
		mes = "请填写应税收入!";
	}
	var bqyingjsejeArr = $ES(mustvalue);
	var yssrjeArr = $ES(checkvlaue);
	for (var i = 0; i < bqyingjsejeArr.length; i++) {
		if (bqyingjsejeArr[i].value != "") {
			if (trim(yssrjeArr[i].value) == "") {
				iconDialog(mes, 'WARNING', function() {
							if (yssrjeArr[i].readOnly == false) {
								yssrjeArr[i].focus();
							}
							yssrjeArr[i].style.background = "red";
						});
				return false;
			} else {
				yssrjeArr[i].style.background = "#FFFFFF";
			}
		}
	}
	return true;
}

function checkSbData(mustvalue, checkvlaueArr, mes) {
	var mustvalueArr = $ES(mustvalue);
	var empFlag = true;
	for (var i = 0; i < mustvalueArr.length; i++) {
		if (mustvalueArr[i].value != "") {
			for (var j = 0; j < checkvlaueArr.length; j++) {
				if (trim($ES(checkvlaueArr[j])[i].value) == "") {
					iconDialog(mes[j], 'WARNING', function() {
								if ($ES(checkvlaueArr[j])[i].readOnly == false) {
									$ES(checkvlaueArr[j])[i].focus();
								}
								$ES(checkvlaueArr[j])[i].style.background = "red";
							});
					return false;
				} else {
					$ES(checkvlaueArr[j])[i].style.background = "#FFFFFF";
				}
			}
			empFlag = false;
		}
	}
	if (empFlag) {
		iconDialog('请填写申报数据!', 'WARNING');
		return false;
	}
	return true;
}

function fzYhNull(filedArr) {
	var sbje = 0;
	try {
		for (var i = 0; i < filedArr.length; i++) {
			for (var j = 0; j < $ES(filedArr[i]).length; j++) {
				sbje = sbje + parseFloat(emptyToZ($ES(filedArr[i])[j].value));
			}
		}

		if (sbje > 0 && nsryhzh == "") {
			iconDialog(
					'非零申报时必须有银行帐号信息!<br>新办户请检查银行扣款协议是否已完成签约、验证；<br>老户请检查纳税人识别号、纳税人名称、银行账号发生变化的，是否重新签约',
					'WARNING');
			return false;
		}
		if (sbje > 0 && nsryhzh == "null") {
			// iconDialog('非零申报时必须有银行帐号信息!', 'WARNING');
			iconDialog(
					'非零申报时必须有银行帐号信息!<br>新办户请检查银行扣款协议是否已完成签约、验证；<br>老户请检查纳税人识别号、纳税人名称、银行账号发生变化的，是否重新签约',
					'WARNING');
			return false;
		}
		if (sbje > 0 && nsryhzh == "") {
			// iconDialog('非零申报时必须有银行帐号信息!', 'WARNING');
			iconDialog(
					'非零申报时必须有银行帐号信息!<br>新办户请检查银行扣款协议是否已完成签约、验证；<br>老户请检查纳税人识别号、纳税人名称、银行账号发生变化的，是否重新签约',
					'WARNING');
			return false;
		}
	} catch (e) {
		iconDialog(e.message, 'ERROR');
		return false;
	}
	return true;
}

function openMsgWindow() {
	if (document.getElementById("proMessageDiv").innerHTML == "") {
		iconDialog('没有可查看的信息!');
	} else {
		proMessageCxWin = new Ext.Window({
					width : 550,
					height : 520,
					title : '信息提示',
					closeAction : 'hide',
					closable : false,
					modal : true,
					layout : "fit",
					items : new Ext.Panel({
								contentEl : 'proMessageDiv'
							}),
					buttons : [{
								text : '关闭',
								scope : this,
								handler : function() {
									proMessageCxWin.hide();
								}
							}]
				});
		proMessageCxWin.show();
	}
}

function runMsg(bbZt, cwbbFlag, formname, fblb) {
	setCookie('panelNum', 1);
	if (document.getElementById('sucessMsg').value != "") {
		iconDialog(document.getElementById('sucessMsg').value, 'INFO',
				function() {
					if (bbZt != null) {
						document.getElementById('bbZt').value = bbZt;
					} else {
						document.getElementById('bbZt').value = "1";
					}
					readText(cwbbFlag);
				});
	} else if (document.getElementById('errorMessage').value != "") {
		iconDialog(document.getElementById('errorMessage').value, 'ERROR');
	} else if (null != document.getElementById('proMessage')
			&& document.getElementById('proMessage').value != "") {
		document.getElementById("proMessageDiv").innerHTML = toProMesHTML();
		proMessageWin = new Ext.Window({
			width : 550,
			height : 520,
			title : '信息提示',
			closeAction : 'hide',
			closable : false,
			modal : true,
			layout : "fit",
			items : new Ext.Panel({
						contentEl : 'proMessageDiv'
					}),
			buttons : [{
				text : '提交',
				scope : this,
				handler : function() {
					if (parseInt(document.getElementById("qzlJyCount").value) > 0) {
						iconDialog(
								"共有"
										+ document.getElementById("qzlJyCount").value
										+ "条强制类校验未通过,不允许提交!", "WARNING");
						return;
					}
					proMessageWin.hide();
					document.getElementById("proMessage").value = "";
					document.getElementById("proMessageDiv").innerHTML = "";
					document.getElementById("nsrQrtjBz").value = "1";
					submitData('yes');
				}
			}, {
				text : '取消',
				scope : this,
				handler : function() {
					proMessageWin.hide();
				}
			}]
		});
		proMessageWin.show();
	} else {
		iconDialog(COMMERRORMSG, 'ERROR');
	}

	try {
		if (formname != null) {
			formname.submit();
		} else {
			if (window.opener != null && window.opener.MainForm != null) {
				// 刷新列表窗口
				if (typeof(window.opener.querySblbxx) != "undefined") {
					window.opener.querySblbxx();
				} else {
					window.opener.MainForm.submit();
				}
			}
			if (window.opener != null && window.opener.opener != null
					&& window.opener.opener.MainForm != null) {
				// 刷新列表窗口
				if (typeof(window.opener.opener.querySblbxx) != "undefined") {
					window.opener.opener.querySblbxx();
				} else {
					window.opener.opener.MainForm.submit();
				}
			}

			if (window.opener != null && window.opener.opener != null
					&& window.opener.opener.opener != null
					&& window.opener.opener.opener.MainForm != null) {
				// 刷新列表窗口
				if (typeof(window.opener.opener.opener.querySblbxx) != "undefined") {
					window.opener.opener.opener.querySblbxx();
				} else {
					window.opener.opener.opener.MainForm.submit();
				}

			}

		}
		if (fblb != null) {
			eval("window.opener." + fblb + ".submit()");
		}
	} catch (e) {

	}
}

function yzsbqk_new(pzxh, sessionId, url, isZrr) {
	if (pzxh == "") {
		iconDialog("请先暂存主表！", "WARNING");
		return;
	}

	waitDialog();
	$.ajax({
				url : "/WB338JmsAction.do?handleCode=yzsbqk&sessionId="
						+ sessionId,
				async : true,
				data : {
					"pzxh" : pzxh,
					"isZrr" : isZrr
				},
				type : 'post',
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					Ext.MessageBox.hide();
					alert('系统异常' + textStatus);
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					Ext.MessageBox.hide();
					if (responseText == '1') {
						openMaxWindow(url);
					} else {
						iconDialog("请先暂存主表！", "WARNING");
					}
				}
			});

}
// 数组顺序pzxh, ybtse, bbZt, formname, fblb,pzzldm
function runMsgKk(arrayObj, sessionId) {
	if (!trim($F('sucessMsg')).empty()) {
		if (typeof(arrayObj[2]) != undefined && arrayObj[2] != "undefined"
				&& null != arrayObj[2] && "null" != arrayObj[2]
				&& "" != arrayObj[2]) {
			document.getElementById('bbZt').value = arrayObj[2];
		} else {
			document.getElementById('bbZt').value = "1";
		}

		var pzzlDm
		if (typeof(arrayObj[5]) != "undefined" && arrayObj[5] != undefined
				&& null != arrayObj[5] && "" != arrayObj[5]) {
			pzzlDm = arrayObj[5];
		} else {
			pzzlDm = 0
		}
		readText();
		if (wsbs_kkbj == '1') {
			if (parseFloat(arrayObj[1]) > 0) {
				document.getElementById("qynsrKkQr_MessageDiv").innerHTML = '<p algin="center" style="padding-top:15px;"><font size=3><b>&nbsp;&nbsp;提交成功!</b></font></p><br/><table width="98%" align="center" border="1" style="background-color: #FFFFFF;" cellpadding="0" cellspacing="0" bordercolor="#505050" style=" border-collapse:collapse;">'
						+ '<tr> <td align="center" bgcolor="#ededed" style="font-size: 12px">纳税人识别号：</td><td align="center" style="font-size: 12px">'
						+ nsrsbh
						+ ' </td></tr> '
						+ '<tr> <td align="center" bgcolor="#ededed" style="font-size: 12px">纳税人名称：</td><td align="center" style="font-size: 12px">'
						+ nsrmc
						+ ' </td></tr> '
						+ '<tr> <td align="center" bgcolor="#ededed" style="font-size: 12px">开户行：</td><td align="center" style="font-size: 12px">'
						+ yhmc
						+ '</td></tr> '
						+ '<tr> <td align="center" bgcolor="#ededed" style="font-size: 12px">账号：</td><td align="center" style="font-size: 12px">'
						+ nsryhzh
						+ ' </td></tr> '
						+ '<tr> <td align="center" bgcolor="#ededed" style="font-size: 12px">本次应缴纳税额为：</td><td align="center" style="font-size: 12px"><font color="red">'
						+ arrayObj[1]
						+ '</font>元</td></tr> '
						+ '<tr> <td align="left" colspan="2" style="font-size:12px">友情提示:</td></tr> '
						+ '<tr> <td align="left" colspan="2" style="font-size:12px">如不及时缴纳税款,逾期将加收滞纳金并根据《中华人民共和国税收征收管理法》<br/>第六十二条的有关规定,税务机关将责令限期改正,并按照规定依法对你单位进行政处罚!</td></tr></table>';
				qynsrKkQr_MessageWin = new Ext.Window({
					width : 515,
					height : 320,
					title : '信息提示',
					closable : false,
					modal : true,
					layout : "fit",
					items : new Ext.Panel({
								contentEl : 'qynsrKkQr_MessageDiv'
							}),
					buttons : [{
						text : 'TIPS缴款',
						scope : this,
						iconCls : "tips",
						handler : function() {
							openModalDialog(
									"/WBkkAction.do?handleCode=initForm&pzXh="
											+ arrayObj[0] + "&ybtseHj="
											+ arrayObj[1] + "&pzzlDm=" + pzzlDm
											+ "&sessionId=" + sessionId,
									"850px", "550px");
							qynsrKkQr_MessageWin.destroy();
						}
					}, {
						text : '关 闭',
						scope : this,
						iconCls : "close2",
						handler : function() {
							confirmDialog(
									"后续扣款事项将由税务机关直接发起，从您签约账户扣款。如有疑问请拨打12366进行咨询。是否确认暂不缴款",
									function(button) {
										if (button == "yes") {
											qynsrKkQr_MessageWin.destroy();
										}
									});
						}
					}]
				});
				qynsrKkQr_MessageWin.show();
			} else {
				iconDialog(document.getElementById('sucessMsg').value, 'INFO');
			}
		} else {
			iconDialog(document.getElementById('sucessMsg').value, 'INFO');
		}

	} else if (!$F('errorMessage').empty()) {
		iconDialog(document.getElementById('errorMessage').value, 'ERROR');
	} else if (!$F('proMessage').empty()) {
		document.getElementById("proMessageDiv").innerHTML = toProMesHTML();
		proMessageWin = new Ext.Window({
			width : 550,
			height : 520,
			title : '信息提示',
			closeAction : 'hide',
			closable : false,
			modal : true,
			layout : "fit",
			items : new Ext.Panel({
						contentEl : 'proMessageDiv'
					}),
			buttons : [{
				text : '提交',
				scope : this,
				handler : function() {
					if (parseInt($F("qzlJyCount")) > 0) {
						iconDialog(
								"共有"
										+ document.getElementById("qzlJyCount").value
										+ "条强制类校验未通过,不允许提交!", "WARNING");
						return;
					}
					proMessageWin.hide();
					document.getElementById("proMessage").value = "";
					document.getElementById("proMessageDiv").innerHTML = "";
					document.getElementById("nsrQrtjBz").value = "1";
					submitData('yes');
				}
			}, {
				text : '取消',
				scope : this,
				handler : function() {
					proMessageWin.hide();
				}
			}]
		});
		proMessageWin.show();
	} else {
		iconDialog(COMMERRORMSG, 'ERROR');
	}
	sbMainPageRe(arrayObj[3], arrayObj[4]);
}

function sbMainPageRe(formname, fblb) {
	try {
		setCookie('panelNum', 1);
		if (typeof(formname) != "undefined" && null != formname
				&& "" != formname && formname != undefined) {
			formname.submit();
		} else {
			if (window.opener != null && window.opener.MainForm != null) {
				// 刷新列表窗口
				if (typeof window.opener.querySblbxx != "undefined") {
					window.opener.querySblbxx();
				} else {
					window.opener.MainForm.submit();
				}

			}
			if (window.opener != null && window.opener.opener != null
					&& window.opener.opener.MainForm != null) {
				// 刷新列表窗口
				if (typeof window.opener.opener.querySblbxx != "undefined") {
					window.opener.opener.querySblbxx();
				} else {
					window.opener.opener.MainForm.submit();
				}

			}

			if (window.opener != null && window.opener.opener != null
					&& window.opener.opener.opener != null
					&& window.opener.opener.opener.MainForm != null) {
				// 刷新列表窗口
				if (typeof window.opener.opener.opener.querySblbxx != "undefined") {
					window.opener.opener.opener.querySblbxx();
				} else {
					window.opener.opener.opener.MainForm.submit();
				}
			}

		}
		if (typeof(fblb) != "undefined" && null != fblb && "" != fblb
				&& undefined != fblb) {
			eval("window.opener." + fblb + ".submit()");
		}
	} catch (e) {

	}
}

// 数组顺序pzxh, ybtse, ddly,bbZt, formname, fblb,pzzl_dm
function runMsgWykk(arrayObj, sessionId) {
	if (!trim($F('sucessMsg')).empty()) {
		if (typeof(arrayObj[3]) != undefined || arrayObj[3] != "undefined"
				|| null != arrayObj[3] || "" != arrayObj[3]) {
			document.getElementById('bbZt').value = arrayObj[3];
		} else {
			document.getElementById('bbZt').value = "1";
		}
		var pzzlDm
		if (typeof(arrayObj[6]) != "undefined" && arrayObj[6] != undefined
				&& null != arrayObj[6] && "" != arrayObj[6]) {
			pzzlDm = arrayObj[6];
		} else {
			pzzlDm = 0
		}
		readText();
		if (parseFloat(arrayObj[1]) > 0) {
			document.getElementById("zrrWykkQr_MessageDiv").innerHTML = '<p algin="center" style="padding-top:15px;"><font size=3><b>&nbsp;&nbsp;提交成功!</b></font></p><br/><table width="98%"  align="center" border="1" style="background-color: #FFFFFF;" cellpadding="0" cellspacing="0" bordercolor="#505050"  style=" border-collapse:collapse;">'
					+ '<tr>	<td align="center" bgcolor="#ededed" style="font-size: 12px" width="40%">纳税人名称：</td><td align="center" style="font-size: 12px">'
					+ zrr_nsrmc
					+ ' </td></tr> '
					+ '<tr>	<td align="center" bgcolor="#ededed" style="font-size: 12px">本次应缴纳税额为：</td><td align="center" style="font-size: 12px"><font color="red">'
					+ arrayObj[1]
					+ '</font>元</td></tr> '
					+ '<tr>	<td align="left"  colspan="2" style="font-size: 12px">友情提示:</td></tr> '
					+ '<tr>	<td align="left"  colspan="2" style="font-size: 12px">&nbsp;&nbsp;如不及时缴纳税款,逾期将加收滞纳金并根据《中华人民共和国税收征收管理法》<br/>第六十二条的有关规定,税务机关将责令限期改正,并按照规定依法对你个人进行行政处罚!</td></tr></table> ';
			zrrWykkQr_MessageDiv = new Ext.Window({
				width : 515,
				height : 320,
				title : '信息提示',
				closable : false,
				modal : true,
				layout : "fit",
				items : new Ext.Panel({
							contentEl : 'zrrWykkQr_MessageDiv'
						}),
				buttons : [{
					id : 'btn_tips',
					text : 'TIPS缴款',
					scope : this,
					iconCls : "tips",
					width : 90,
					hidden : true,
					handler : function() {
						openModalDialog(
								"/WBkkAction.do?handleCode=initForm&pzXh="
										+ arrayObj[0] + "&ybtseHj="
										+ arrayObj[1] + "&pzzlDm=" + pzzlDm
										+ "&sessionId=" + sessionId, "850px",
								"550px");
						zrrWykkQr_MessageDiv.destroy();
					}
				}, {
					id : 'btn_unionPay',
					text : '银联缴款',
					scope : this,
					iconCls : "unionPay",
					width : 90,
					hidden : true,
					handler : function() {
						window.location.href = "/WBwykkAction.do?handleCode=createZrrOrder&ddLy="
								+ arrayObj[2]
								+ "&pzXh="
								+ arrayObj[0]
								+ "&sessionId=" + sessionId;
					}
				}, {
					id : 'btn_aliPay',
					text : '支付宝缴款',
					scope : this,
					iconCls : "aliPay",
					width : 90,
					hidden : true,
					handler : function() {
						window.location.href = "/WBzfbkkAction.do?handleCode=zfbkk&ddLy="
								+ arrayObj[2]
								+ "&pzXh="
								+ arrayObj[0]
								+ "&sessionId=" + sessionId;
					}
				}, {
					id : 'btn_weixin',
					text : '微信缴款',
					scope : this,
					iconCls : "weixin",
					width : 90,
					hidden : true,
					handler : function() {
					}
				}, {
					text : '关 闭',
					scope : this,
					iconCls : "close2",
					width : 90,
					handler : function() {
						confirmDialog(
								"后续扣款事项将由税务机关直接发起，从您签约账户扣款。如有疑问请拨打12366进行咨询。是否确认暂不缴款",
								function(button) {
									if (button == "yes") {
										zrrWykkQr_MessageDiv.destroy();
									}
								});
					}
				}]
			});
			if (nsryhzh != null && nsryhzh != 'null' && nsryhzh != ''
					&& wsbs_kkbj == '1') {
				Ext.getCmp("btn_tips").show();
			}
			if (nsrJkZffs == '1') {
				Ext.getCmp("btn_unionPay").show();
			} else if (nsrJkZffs == '2') {
				Ext.getCmp("btn_unionPay").show();
				Ext.getCmp("btn_aliPay").show();
			} else if (nsrJkZffs == '3') {
				Ext.getCmp("btn_unionPay").show();
				Ext.getCmp("btn_aliPay").show();
				Ext.getCmp("btn_weixin").show();
			}
			zrrWykkQr_MessageDiv.show();

		} else {
			iconDialog(document.getElementById('sucessMsg').value, 'INFO');
		}
	} else if (!$F('errorMessage').empty()) {
		iconDialog(document.getElementById('errorMessage').value, 'ERROR');
	} else {
		iconDialog(COMMERRORMSG, 'ERROR');
	}
	zrrsbMainPageRe(arrayObj[4], arrayObj[5]);
}

function zrrsbMainPageRe(formname, fblb) {
	try {
		if (typeof(formname) != "undefined" && null != formname
				&& "" != formname && formname != undefined) {
			formname.submit();
		} else {
			if (window.opener != null && window.opener.ZrrMainForm != null) {
				// 刷新列表窗口
				window.opener.ZrrMainForm.submit();
			}
			if (window.opener != null && window.opener.opener != null
					&& window.opener.opener.ZrrMainForm != null) {
				// 刷新列表窗口
				window.opener.opener.ZrrMainForm.submit();
			}
		}
		if (typeof(fblb) != "undefined" && null != fblb && "" != fblb
				&& undefined != fblb) {
			eval("window.opener." + fblb + ".submit()");
		}
	} catch (e) {

	}
}
// 判断网银扣款后续操作
function pdWykkHxcz(_je) {
	var action;
	if (parseFloat(_je) <= 0) {
		action = 'a';
		confirmDialog("本张申报表合计税额为" + caltbNumloop(_je, 2) + ",是否确认提交申报数据?",
				submitData);

	} else {
		// 如果没有银行帐号
		if (zrr_yhzh == '' || zrr_yhzh == 'null' || zrr_yhzh == null) {
			// 没有开通网银的地区
			if (wsbs_wykkbj != '1') {
				iconDialog('由于您没有银行账号，且您所在地区未开通网银扣款，不允许进行有税申报！', 'ERROR');
				return;
			} else {
				// 开通网银的地区
				action = 'b';
				confirmDialog(
						"本张申报表合计额为" + caltbNumloop(_je, 2) + ",是否进行网银缴款?",
						submitData);
			}
		} else {
			// 如果有银行帐号
			if (wsbs_wykkbj != '1') {
				// 如果没有开通网银
				action = 'a';
				confirmDialog("本张申报表合计税额为" + caltbNumloop(_je, 2)
								+ ",是否确认提交申报数据?", submitData);
			} else {
				action = 'c';
				confirmDialog("本张申报表合计税额为" + caltbNumloop(_je, 2)
								+ ",是否确认提交申报数据?", submitData);
			}
		}
	}
	return action;
}
