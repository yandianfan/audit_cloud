Ext.BLANK_IMAGE_URL = './public/images/s.gif';
var rules;
var calObj;
Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A107030_TbSm.html");
						},
						scope : this
					}, {
						id : "tempBtn",
						text : "暂存",
						iconCls : "save",
						handler : function() {
							tempSave();
						},
						scope : this
					},  "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395A107030Action.do?handleCode=printPage&pzXh="
									+ $F("pzXh"));
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
	readText();		
	
	rules = new Array();
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.negative = false;
	initCalTable(calObj);
	runRulesForName(calObj);
	
}

function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A107030Action.do', {
//				method : 'post',
//				parameters : $('WB395A107030Form').serialize(),
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
		url : "/WB395A107030Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107030Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0", null, null, "WB395IndexForm");
		}
	});
	
}

//7 本年实际抵扣应纳税所得额（5≤6，本行=5行；5＞6，本行=6行）
function check7() {
	//5
	var bnkdkgqtze = $ES("a107030VO.bnkdkgqtze")[0].value;
	//6 
	var bnkyydkynssde = $ES("a107030VO.bnkyydkynssde")[0].value;

	if (bnkdkgqtze == '') {
		bnkdkgqtze = '0';
	}
	if (bnkyydkynssde == '') {
		bnkyydkynssde = '0';
	}
	if (parseFloat(bnkyydkynssde) < parseFloat(bnkdkgqtze)) {
		$ES("a107030VO.bnsjdkynssde")[0].value = $ES("a107030VO.bnkyydkynssde")[0].value;
	} else {
		$ES("a107030VO.bnsjdkynssde")[0].value = $ES("a107030VO.bnkdkgqtze")[0].value;
	}

}


//8=计算生成：若5＞6，本行=5-7行；5≤6，本行=0
function check8() {
	//5
	var bnkdkgqtze = $ES("a107030VO.bnkdkgqtze")[0].value;
	//6 
	var bnkyydkynssde = $ES("a107030VO.bnkyydkynssde")[0].value;
	//7
	var bnsjdkynssde = $ES("a107030VO.bnsjdkynssde")[0].value;

	if (bnkdkgqtze == '') {
		bnkdkgqtze = '0';
	}
	if (bnkyydkynssde == '') {
		bnkyydkynssde = '0';
	}
	if (bnsjdkynssde == '') {
		bnsjdkynssde = '0';
	}	
	if (parseFloat(bnkyydkynssde) < parseFloat(bnkdkgqtze)) {
		var jzyhnddkgqtzye = parseFloat(bnkdkgqtze) - parseFloat(bnsjdkynssde);
		$ES("a107030VO.jzyhnddkgqtzye")[0].value = caltbNumloop(jzyhnddkgqtzye.toString(),2);
	} else {
		$ES("a107030VO.jzyhnddkgqtzye")[0].value = "0";
	}

}


//13=计算生成：9行≤12行，本行=9行；9行＞12行，本行=12行
function check13() {
	//9
	var bnhhyfdynssde = $ES("a107030VO.bnhhyfdynssde")[0].value;
	//12 
	var bnkdktze = $ES("a107030VO.bnkdktze")[0].value;
	if (bnhhyfdynssde == '') {
		bnhhyfdynssde = '0';
	}
	if (bnkdktze == '') {
		bnkdktze = '0';
	}	
	if (parseFloat(bnhhyfdynssde) > parseFloat(bnkdktze)) {
		$ES("a107030VO.bnsjdkyfdynssde")[0].value = bnkdktze;
	} else {
		$ES("a107030VO.bnsjdkyfdynssde")[0].value = bnhhyfdynssde;
	}

}


//14=计算生成：9行≤12行，本行=12行-9行；9行＞12行，本行=0
function check14() {
	//9
	var bnhhyfdynssde = $ES("a107030VO.bnhhyfdynssde")[0].value;
	//12
	var bnkdktze = $ES("a107030VO.bnkdktze")[0].value;
	if (bnhhyfdynssde == '') {
		bnhhyfdynssde = '0';
	}
	if (bnkdktze == '') {
		bnkdktze = '0';
	}
	if (parseFloat(bnhhyfdynssde) > parseFloat(bnkdktze)) {
		$ES("a107030VO.zjnddktzye")[0].value = "0";
	} else {
		var zjnddktzye = parseFloat(bnkdktze) - parseFloat(bnhhyfdynssde);
		$ES("a107030VO.zjnddktzye")[0].value = caltbNumloop(zjnddktzye.toString(),2);
	}

}




