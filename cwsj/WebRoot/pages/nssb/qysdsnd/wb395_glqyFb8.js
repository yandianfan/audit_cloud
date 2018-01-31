var rulsefb8;
var calObjfb8;
Ext
		.onReady(function() {
			try {
				var tb = new Ext.Toolbar(
						{
							renderTo : "toolbar",
							items : [
									'-',
									'->',
									{
										id : "tempBtn",
										text : "暂存",
										iconCls : "save",
										handler : function() {
											save();
										},
										scope : this
									},
									'-',
									{
										id : "printBtn",
										text : "打印",
										iconCls : "print",
										handler : function() {
											openMaxWindow("/WB395glqyFb8Action.do?pzXh="
													+ $F("fb8vo.pzxh")
													+ "&xh="
													+ $F("fb8vo.sbmxxh")
													+ "&handleCode=printData");
										},
										scope : this
									}, '-', {
										text : "关闭",
										iconCls : "close",
										handler : function() {
											window.close();
										},
										scope : this
									} ]
						});
				initPage();
			} catch (e) {

			}
		});

function initPage() {

	if (!beforeInitPage()) {
		return;
	}
	readText();
	if ($F("fb8vo.zfdslgjbj") == "0") {
		document.getElementById("sall").checked = true;
		document.getElementById("hh").checked = false;
	} else if ($F("fb8vo.zfdslgjbj") == "1") {
		document.getElementById("hh").checked = true;
		document.getElementById("sall").checked = false;
	}

	if ($F("fb8vo.nlrgy5bj") == "0") {
		document.getElementById("ee").checked = true;
		document.getElementById("uu").checked = false;
	} else if ($F("fb8vo.nlrgy5bj") == "1") {
		document.getElementById("uu").checked = true;
		document.getElementById("ee").checked = false;
	}
	clsDynamicSelect$init('selectXml');
	testCodeToName();

	if ($F('handleCode') == "initPage") {
		openCenterDialog("/WB395glqyFb8ListAction.do?pzxh=" + $F('fb8vo.pzxh'),
				"800px", "600px");
	}

	rulsefb8 = new Array();
	rulsefb8[0] = "fb8vo.qycygfbl1 = fb8vo.qycygfsl1 / fb8vo.btzqyzgfsl1";// 6=5/1
	rulsefb8[1] = "fb8vo.qycygfbl2 = fb8vo.qycygfsl2 / fb8vo.btzqyzgfsl2";// 6=5/1
	rulsefb8[2] = "fb8vo.qycygfbl3 = fb8vo.qycygfsl3 / fb8vo.btzqyzgfsl3";// 6=5/1
	rulsefb8[3] = "fb8vo.shlreje = fb8vo.ynssdeje - fb8vo.sjjnsdsje";// 9=7-8
	rulsefb8[4] = "fb8vo.sjsfbl = fb8vo.sjjnsdsje / fb8vo.ynssdeje";// 10=8/7
	rulsefb8[5] = "fb8vo.bl = fb8vo.sjfpgxeje / fb8vo.yfpgxeje";// 14=13/12

	calObjfb8 = new caltb('t8');
	calObjfb8.negative = true;
	calObjfb8.setRules(rulsefb8);
	initCalTable(calObjfb8);

}

function testCodeToName() {
	var namesAy = "fb8vo.gdgjdqdm1,fb8vo.gdgjdqdm2,fb8vo.gdgjdqdm3,fb8vo.gdgjdqdm4,fb8vo.gdgjdqdm5,fb8vo.btzqyhbdm";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

function setCheckValue1() {
	if (document.getElementById("sall").checked == true) {
		document.getElementById("hh").checked = false;
		document.getElementById("fb8vo.zfdslgjbj").value = "0";
	} else {
		document.getElementById("fb8vo.zfdslgjbj").value = "";
	}
}

function setCheckValue2() {
	if (document.getElementById("hh").checked == true) {
		document.getElementById("sall").checked = false;
		document.getElementById("fb8vo.zfdslgjbj").value = "1";
	} else {
		document.getElementById("fb8vo.zfdslgjbj").value = "";
	}
}

function setCheckValue3() {
	if (document.getElementById("ee").checked == true) {
		document.getElementById("uu").checked = false;
		document.getElementById("fb8vo.nlrgy5bj").value = "0";
	} else {
		document.getElementById("fb8vo.nlrgy5bj").value = "";
	}
}

function setCheckValue4() {
	if (document.getElementById("uu").checked == true) {
		document.getElementById("ee").checked = false;
		document.getElementById("fb8vo.nlrgy5bj").value = "1";
	} else {
		document.getElementById("fb8vo.nlrgy5bj").value = "";
	}
}

function baseCheck() {
	if ($F("fb8vo.zfdslgjbj") == "") {
		iconDialog('请选择被投资外国企业是否在国家税务总局指定的非低税率国家（地区）', "WARNING");
		return false;
	}

	if ($F("fb8vo.nlrgy5bj") == "") {
		iconDialog('请选择被投资外国企业年度利润是否不高于500万元人民币', "WARNING");
		return false;
	}
	return true;
}

function save() {
	if (baseCheck()) {
		$('#sucessMsg').val("");
		$('#errorMessage').val("");
		$("#handleDesc").val("对外投资情况表（表八）暂存");
		$("#handleCode").val("tempSave");
		waitDialog();
//		new Ajax.Request('/WB395glqyFb8Action.do', {
//			method : 'post',
//			parameters : $('WB395GlqyForm').serialize(),
//			onComplete : function(originalRequest) {
//				Ext.MessageBox.hide();
//				ajaxUpdate(originalRequest.responseText, "update");
//				runMsg("0", false, null, 'WB395IndexForm');
//			},
//			onException : function() {
//				Ext.MessageBox.hide();
//				iconDialog('系统异常', 'ERROR');
//			}
//		});
		
		$.ajax({
			url : "/WB395glqyFb8Action.do",
			async : true,
			dataType : "html",
			data : $('#WB395GlqyForm').serialize(),
			type : 'post',
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert('系统异常' + textStatus);
			},
			success : function(responseText, textStatus, XMLHttpRequest) {
				ajaxUpdate(responseText, "update");
				runMsg("0", false, null, 'WB395IndexForm');
			}
		});
		
	}

}