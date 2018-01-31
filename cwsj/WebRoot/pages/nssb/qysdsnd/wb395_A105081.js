var jsonContent;
var calObj;
var selAutoFlag;
var autoSel;
var configuration;
var autoComplete;
var dataSource;
var hyzxlDataSource = new Array();
var rulesID;

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
										id : "tbsmBtn",
										text : "填表说明",
										iconCls : "fb",
										handler : function() {
											openMaxWindow("/nssb/wb395/wb395_A105081_TbSm.html");
										},
										scope : this
									},
									{
										id : "tempBtn",
										text : "暂存",
										iconCls : "save",
										handler : function() {
											tempSave();
										},
										scope : this
									},
									'-',
									{
										text : "查看信息",
										iconCls : "fb",
										handler : function() {
											openMsgWindow();// 公用方法
										},
										scope : this

									},
									'-',
									{
										text : "打印",
										id : "printBtn",
										iconCls : "print",
										handler : function() {
											$("#handleCode").val("printPage");
											openMaxWindow("/WB395A105081Action.do?handleCode=printPage&pzXh="
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
									} ]
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
	// initJsgs();
	calObj = new caltb('tab1');
	calObj.negative = false;
	calObj.type = "1";
	calObj.setRulesID(ymkj_getRulesX("tab1"));
	initCalTable(calObj);
	if ("" != $ES('hyzl')[0].value) {
		for (var i = 4; i < 6; i++) {
			$ES('scsbyzje')[i].value = "";
			$ES('scsbyzje')[i].readOnly = true;
			$ES('scsbyzje')[i].className = "fsrx";
			$ES('scsbyzje')[i].style.display = "none";
			$ES('scsbsszjje')[i].value = "";
			$ES('scsbsszjje')[i].readOnly = true;
			$ES('scsbsszjje')[i].className = "fsrx";
			$ES('scsbsszjje')[i].style.display = "none";
			$ES('scgjyzje')[i].value = "";
			$ES('scgjyzje')[i].readOnly = true;
			$ES('scgjyzje')[i].className = "fsrx";
			$ES('scgjyzje')[i].style.display = "none";
			$ES('scgjsszjje')[i].value = "";
			$ES('scgjsszjje')[i].readOnly = true;
			$ES('scgjsszjje')[i].className = "fsrx";
			$ES('scgjsszjje')[i].style.display = "none";
			$ES('ysgjyzje')[i].value = "";
			$ES('ysgjyzje')[i].readOnly = true;
			$ES('ysgjyzje')[i].className = "fsrx";
			$ES('ysgjyzje')[i].style.display = "none";
			$ES('ysgjsszjje')[i].value = "";
			$ES('ysgjsszjje')[i].readOnly = true;
			$ES('ysgjsszjje')[i].className = "fsrx";
			$ES('ysgjsszjje')[i].style.display = "none";
			$ES('dzsbyzje')[i].value = "";
			$ES('dzsbyzje')[i].readOnly = true;
			$ES('dzsbyzje')[i].className = "fsrx";
			$ES('dzsbyzje')[i].style.display = "none";
			$ES('dzsbsszjje')[i].value = "";
			$ES('dzsbsszjje')[i].readOnly = true;
			$ES('dzsbsszjje')[i].className = "fsrx";
			$ES('dzsbsszjje')[i].style.display = "none";
			$ES('qtyzje')[i].value = "";
			$ES('qtyzje')[i].readOnly = true;
			$ES('qtyzje')[i].className = "fsrx";
			$ES('qtyzje')[i].style.display = "none";
			$ES('qtsszjje')[i].value = "";
			$ES('qtsszjje')[i].readOnly = true;
			$ES('qtsszjje')[i].className = "fsrx";
			$ES('qtsszjje')[i].style.display = "none";
			$ES('hjyzje')[i].value = "";
			$ES('hjyzje')[i].readOnly = true;
			$ES('hjyzje')[i].className = "fsrx";
			$ES('hjyzje')[i].style.display = "none";
			$ES('hjkjzjje')[i].value = "";
			$ES('hjkjzjje')[i].readOnly = true;
			$ES('hjkjzjje')[i].className = "fsrx";
			$ES('hjkjzjje')[i].style.display = "none";
			$ES('hjzczjje')[i].value = "";
			$ES('hjzczjje')[i].readOnly = true;
			$ES('hjzczjje')[i].className = "fsrx";
			$ES('hjzczjje')[i].style.display = "none";
			$ES('hjsszjje')[i].value = "";
			$ES('hjsszjje')[i].readOnly = true;
			$ES('hjsszjje')[i].className = "fsrx";
			$ES('hjsszjje')[i].style.display = "none";
			$ES('hjnsjsje')[i].value = "";
			$ES('hjnsjsje')[i].readOnly = true;
			$ES('hjnsjsje')[i].className = "fsrx";
			$ES('hjnsjsje')[i].style.display = "none";
			$ES('hjjszjyhtjje')[i].value = "";
			$ES('hjjszjyhtjje')[i].readOnly = true;
			$ES('hjjszjyhtjje')[i].className = "fsrx";
			$ES('hjjszjyhtjje')[i].style.display = "none";
		}
		for (var j = 1; j < 3; j++) {
			$ES('fwjzyzje')[j].readOnly = false;
			$ES('fwjzyzje')[j].className = "srx";
			$ES('fwjzyzje')[j].style.display = "";
			$ES('fwjzsszjje')[j].readOnly = false;
			$ES('fwjzsszjje')[j].className = "srx";
			$ES('fwjzsszjje')[j].style.display = "";
			$ES('scsbyzje')[j].readOnly = false;
			$ES('scsbyzje')[j].className = "srx";
			$ES('scsbyzje')[j].style.display = "";
			$ES('scsbsszjje')[j].readOnly = false;
			$ES('scsbsszjje')[j].className = "srx";
			$ES('scsbsszjje')[j].style.display = "";
			$ES('scgjyzje')[j].readOnly = false;
			$ES('scgjyzje')[j].className = "srx";
			$ES('scgjyzje')[j].style.display = "";
			$ES('scgjsszjje')[j].readOnly = false;
			$ES('scgjsszjje')[j].className = "srx";
			$ES('scgjsszjje')[j].style.display = "";
			$ES('ysgjyzje')[j].readOnly = false;
			$ES('ysgjyzje')[j].className = "srx";
			$ES('ysgjyzje')[j].style.display = "";
			$ES('ysgjsszjje')[j].readOnly = false;
			$ES('ysgjsszjje')[j].className = "srx";
			$ES('ysgjsszjje')[j].style.display = "";
			$ES('dzsbyzje')[j].readOnly = false;
			$ES('dzsbyzje')[j].className = "srx";
			$ES('dzsbyzje')[j].style.display = "";
			$ES('dzsbsszjje')[j].readOnly = false;
			$ES('dzsbsszjje')[j].className = "srx";
			$ES('dzsbsszjje')[j].style.display = "";
			$ES('qtyzje')[j].readOnly = false;
			$ES('qtyzje')[j].className = "srx";
			$ES('qtyzje')[j].style.display = "";
			$ES('qtsszjje')[j].readOnly = false;
			$ES('qtsszjje')[j].className = "srx";
			$ES('qtsszjje')[j].style.display = "";
			$ES('hjyzje')[j].readOnly = false;
			$ES('hjyzje')[j].className = "srx";
			$ES('hjyzje')[j].style.display = "";
			$ES('hjkjzjje')[j].readOnly = false;
			$ES('hjkjzjje')[j].className = "srx";
			$ES('hjkjzjje')[j].style.display = "";
			$ES('hjzczjje')[j].readOnly = false;
			$ES('hjzczjje')[j].className = "srx";
			$ES('hjzczjje')[j].style.display = "";
			$ES('hjsszjje')[j].readOnly = true;
			$ES('hjsszjje')[j].className = "fsrx";
			$ES('hjsszjje')[j].style.display = "";
			$ES('hjnsjsje')[j].readOnly = true;
			$ES('hjnsjsje')[j].className = "fsrx";
			$ES('hjnsjsje')[j].style.display = "";
			$ES('hjjszjyhtjje')[j].readOnly = true;
			$ES('hjjszjyhtjje')[j].className = "fsrx";
			$ES('hjjszjyhtjje')[j].style.display = "";
		}
	} else {
		for (var i = 4; i < 6; i++) {
			$ES('scsbyzje')[i].readOnly = false;
			$ES('scsbyzje')[i].className = "srx";
			$ES('scsbyzje')[i].style.display = "";
			$ES('scsbsszjje')[i].readOnly = false;
			$ES('scsbsszjje')[i].className = "srx";
			$ES('scsbsszjje')[i].style.display = "";
			$ES('scgjyzje')[i].readOnly = false;
			$ES('scgjyzje')[i].className = "srx";
			$ES('scgjyzje')[i].style.display = "";
			$ES('scgjsszjje')[i].readOnly = false;
			$ES('scgjsszjje')[i].className = "srx";
			$ES('scgjsszjje')[i].style.display = "";
			$ES('ysgjyzje')[i].readOnly = false;
			$ES('ysgjyzje')[i].className = "srx";
			$ES('ysgjyzje')[i].style.display = "";
			$ES('ysgjsszjje')[i].readOnly = false;
			$ES('ysgjsszjje')[i].className = "srx";
			$ES('ysgjsszjje')[i].style.display = "";
			$ES('dzsbyzje')[i].readOnly = false;
			$ES('dzsbyzje')[i].className = "srx";
			$ES('dzsbyzje')[i].style.display = "";
			$ES('dzsbsszjje')[i].readOnly = false;
			$ES('dzsbsszjje')[i].className = "srx";
			$ES('dzsbsszjje')[i].style.display = "";
			$ES('qtyzje')[i].readOnly = false;
			$ES('qtyzje')[i].className = "srx";
			$ES('qtyzje')[i].style.display = "";
			$ES('qtsszjje')[i].readOnly = false;
			$ES('qtsszjje')[i].className = "srx";
			$ES('qtsszjje')[i].style.display = "";
			$ES('hjyzje')[i].readOnly = false;
			$ES('hjyzje')[i].className = "srx";
			$ES('hjyzje')[i].style.display = "";
			$ES('hjkjzjje')[i].readOnly = false;
			$ES('hjkjzjje')[i].className = "srx";
			$ES('hjkjzjje')[i].style.display = "";
			$ES('hjzczjje')[i].readOnly = false;
			$ES('hjzczjje')[i].className = "srx";
			$ES('hjzczjje')[i].style.display = "";
			$ES('hjsszjje')[i].readOnly = true;
			$ES('hjsszjje')[i].className = "fsrx";
			$ES('hjsszjje')[i].style.display = "";
			$ES('hjnsjsje')[i].readOnly = true;
			$ES('hjnsjsje')[i].className = "fsrx";
			$ES('hjnsjsje')[i].style.display = "";
			$ES('hjjszjyhtjje')[i].readOnly = true;
			$ES('hjjszjyhtjje')[i].className = "fsrx";
			$ES('hjjszjyhtjje')[i].style.display = "";
		}
		for (var j = 1; j < 3; j++) {
			$ES('fwjzyzje')[j].value = "";
			$ES('fwjzyzje')[j].readOnly = true;
			$ES('fwjzyzje')[j].className = "fsrx";
			$ES('fwjzyzje')[j].style.display = "none";
			$ES('fwjzsszjje')[j].value = "";
			$ES('fwjzsszjje')[j].readOnly = true;
			$ES('fwjzsszjje')[j].className = "fsrx";
			$ES('fwjzsszjje')[j].style.display = "none";
			$ES('scsbyzje')[j].value = "";
			$ES('scsbyzje')[j].readOnly = true;
			$ES('scsbyzje')[j].className = "fsrx";
			$ES('scsbyzje')[j].style.display = "none";
			$ES('scsbsszjje')[j].value = "";
			$ES('scsbsszjje')[j].readOnly = true;
			$ES('scsbsszjje')[j].className = "fsrx";
			$ES('scsbsszjje')[j].style.display = "none";
			$ES('scgjyzje')[j].value = "";
			$ES('scgjyzje')[j].readOnly = true;
			$ES('scgjyzje')[j].className = "fsrx";
			$ES('scgjyzje')[j].style.display = "none";
			$ES('scgjsszjje')[j].value = "";
			$ES('scgjsszjje')[j].readOnly = true;
			$ES('scgjsszjje')[j].className = "fsrx";
			$ES('scgjsszjje')[j].style.display = "none";
			$ES('ysgjyzje')[j].value = "";
			$ES('ysgjyzje')[j].readOnly = true;
			$ES('ysgjyzje')[j].className = "fsrx";
			$ES('ysgjyzje')[j].style.display = "none";
			$ES('ysgjsszjje')[j].value = "";
			$ES('ysgjsszjje')[j].readOnly = true;
			$ES('ysgjsszjje')[j].className = "fsrx";
			$ES('ysgjsszjje')[j].style.display = "none";
			$ES('dzsbyzje')[j].value = "";
			$ES('dzsbyzje')[j].readOnly = true;
			$ES('dzsbyzje')[j].className = "fsrx";
			$ES('dzsbyzje')[j].style.display = "none";
			$ES('dzsbsszjje')[j].value = "";
			$ES('dzsbsszjje')[j].readOnly = true;
			$ES('dzsbsszjje')[j].className = "fsrx";
			$ES('dzsbsszjje')[j].style.display = "none";
			$ES('qtyzje')[j].value = "";
			$ES('qtyzje')[j].readOnly = true;
			$ES('qtyzje')[j].className = "fsrx";
			$ES('qtyzje')[j].style.display = "none";
			$ES('qtsszjje')[j].value = "";
			$ES('qtsszjje')[j].readOnly = true;
			$ES('qtsszjje')[j].className = "fsrx";
			$ES('qtsszjje')[j].style.display = "none";
			$ES('hjyzje')[j].value = "";
			$ES('hjyzje')[j].readOnly = true;
			$ES('hjyzje')[j].className = "fsrx";
			$ES('hjyzje')[j].style.display = "none";
			$ES('hjkjzjje')[j].value = "";
			$ES('hjkjzjje')[j].readOnly = true;
			$ES('hjkjzjje')[j].className = "fsrx";
			$ES('hjkjzjje')[j].style.display = "none";
			$ES('hjzczjje')[j].value = "";
			$ES('hjzczjje')[j].readOnly = true;
			$ES('hjzczjje')[j].className = "fsrx";
			$ES('hjzczjje')[j].style.display = "none";
			$ES('hjsszjje')[j].value = "";
			$ES('hjsszjje')[j].readOnly = true;
			$ES('hjsszjje')[j].className = "fsrx";
			$ES('hjsszjje')[j].style.display = "none";
			$ES('hjnsjsje')[j].value = "";
			$ES('hjnsjsje')[j].readOnly = true;
			$ES('hjnsjsje')[j].className = "fsrx";
			$ES('hjnsjsje')[j].style.display = "none";
			$ES('hjjszjyhtjje')[j].value = "";
			$ES('hjjszjyhtjje')[j].readOnly = true;
			$ES('hjjszjyhtjje')[j].className = "fsrx";
			$ES('hjjszjyhtjje')[j].style.display = "none";
		}
	}

	if ($F('handleCode') == "queryData") {
		jsonContent = eval("(" + $F('bizData') + ")");
		var rowInfo;
		var bizData = jsonContent.BIZDATA;
		var j = 0;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			if (parseInt(rowInfo.sbmxxh) > 14) {
				j = 2;
			} else {
				j = 1;
			}
			$ES('hyzl')[0].value = rowInfo.hyzldm;
			$ES('zyhybj')[0].value = rowInfo.zyhybj
			$ES('fwjzyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.fwjzyzje;
			$ES('fwjzsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.fwjzsszjje;
			$ES('scsbyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.scsbyzje;
			$ES('scsbsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.scsbsszjje;
			$ES('scgjyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.scgjyzje;
			$ES('scgjsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.scgjsszjje;
			$ES('ysgjyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.ysgjyzje;
			$ES('ysgjsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.ysgjsszjje;
			$ES('dzsbyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.dzsbyzje;
			$ES('dzsbsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.dzsbsszjje;
			$ES('qtyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.qtyzje;
			$ES('qtsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.qtsszjje;
			$ES('hjyzje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.hjyzje;
			$ES('hjkjzjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.hjkjzjje;
			$ES('hjzczjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.hjzczjje;
			$ES('hjsszjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.hjsszjje;
			$ES('hjnsjsje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.hjnsjsje;
			$ES('hjjszjyhtjje')[parseInt(rowInfo.sbmxxh) - j].value = rowInfo.hjjszjyhtjje;
		}
	}
	runRulesForID(calObj);
}

function tempSave(button) {
	$("#handleDesc").val("固定资产加速折旧、扣除明细表暂存");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105081Action.do', {
//		method : 'post',
//		parameters : $('WB395A105081Form').serialize(),
//		onComplete : function(originalRequest) {
//			Ext.MessageBox.hide();
//			ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//			runMsg("0", null, null, "WB395IndexForm");
//		},
//		onException : function() {
//			Ext.MessageBox.hide();
//			iconDialog('系统异常', 'ERROR');
//		}
//	});
	
	$.ajax({
		url : "/WB395A105081Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105081Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "updata");
			runMsg("0", null, null, "WB395IndexForm");
		}
	});
	
}

function changeHyzl() {
	if ("" != $ES('hyzl')[0].value) {
		for (var i = 4; i < 6; i++) {
			$ES('scsbyzje')[i].value = "";
			$ES('scsbyzje')[i].readOnly = true;
			$ES('scsbyzje')[i].className = "fsrx";
			$ES('scsbyzje')[i].style.display = "none";
			$ES('scsbsszjje')[i].value = "";
			$ES('scsbsszjje')[i].readOnly = true;
			$ES('scsbsszjje')[i].className = "fsrx";
			$ES('scsbsszjje')[i].style.display = "none";
			$ES('scgjyzje')[i].value = "";
			$ES('scgjyzje')[i].readOnly = true;
			$ES('scgjyzje')[i].className = "fsrx";
			$ES('scgjyzje')[i].style.display = "none";
			$ES('scgjsszjje')[i].value = "";
			$ES('scgjsszjje')[i].readOnly = true;
			$ES('scgjsszjje')[i].className = "fsrx";
			$ES('scgjsszjje')[i].style.display = "none";
			$ES('ysgjyzje')[i].value = "";
			$ES('ysgjyzje')[i].readOnly = true;
			$ES('ysgjyzje')[i].className = "fsrx";
			$ES('ysgjyzje')[i].style.display = "none";
			$ES('ysgjsszjje')[i].value = "";
			$ES('ysgjsszjje')[i].readOnly = true;
			$ES('ysgjsszjje')[i].className = "fsrx";
			$ES('ysgjsszjje')[i].style.display = "none";
			$ES('dzsbyzje')[i].value = "";
			$ES('dzsbyzje')[i].readOnly = true;
			$ES('dzsbyzje')[i].className = "fsrx";
			$ES('dzsbyzje')[i].style.display = "none";
			$ES('dzsbsszjje')[i].value = "";
			$ES('dzsbsszjje')[i].readOnly = true;
			$ES('dzsbsszjje')[i].className = "fsrx";
			$ES('dzsbsszjje')[i].style.display = "none";
			$ES('qtyzje')[i].value = "";
			$ES('qtyzje')[i].readOnly = true;
			$ES('qtyzje')[i].className = "fsrx";
			$ES('qtyzje')[i].style.display = "none";
			$ES('qtsszjje')[i].value = "";
			$ES('qtsszjje')[i].readOnly = true;
			$ES('qtsszjje')[i].className = "fsrx";
			$ES('qtsszjje')[i].style.display = "none";
			$ES('hjyzje')[i].value = "";
			$ES('hjyzje')[i].readOnly = true;
			$ES('hjyzje')[i].className = "fsrx";
			$ES('hjyzje')[i].style.display = "none";
			$ES('hjkjzjje')[i].value = "";
			$ES('hjkjzjje')[i].readOnly = true;
			$ES('hjkjzjje')[i].className = "fsrx";
			$ES('hjkjzjje')[i].style.display = "none";
			$ES('hjzczjje')[i].value = "";
			$ES('hjzczjje')[i].readOnly = true;
			$ES('hjzczjje')[i].className = "fsrx";
			$ES('hjzczjje')[i].style.display = "none";
			$ES('hjsszjje')[i].value = "";
			$ES('hjsszjje')[i].readOnly = true;
			$ES('hjsszjje')[i].className = "fsrx";
			$ES('hjsszjje')[i].style.display = "none";
			$ES('hjnsjsje')[i].value = "";
			$ES('hjnsjsje')[i].readOnly = true;
			$ES('hjnsjsje')[i].className = "fsrx";
			$ES('hjnsjsje')[i].style.display = "none";
			$ES('hjjszjyhtjje')[i].value = "";
			$ES('hjjszjyhtjje')[i].readOnly = true;
			$ES('hjjszjyhtjje')[i].className = "fsrx";
			$ES('hjjszjyhtjje')[i].style.display = "none";
		}
		for (var j = 1; j < 3; j++) {
			$ES('fwjzyzje')[j].value = "";
			$ES('fwjzyzje')[j].readOnly = false;
			$ES('fwjzyzje')[j].className = "srx";
			$ES('fwjzyzje')[j].style.display = "";
			$ES('fwjzsszjje')[j].value = "";
			$ES('fwjzsszjje')[j].readOnly = false;
			$ES('fwjzsszjje')[j].className = "srx";
			$ES('fwjzsszjje')[j].style.display = "";
			$ES('scsbyzje')[j].value = "";
			$ES('scsbyzje')[j].readOnly = false;
			$ES('scsbyzje')[j].className = "srx";
			$ES('scsbyzje')[j].style.display = "";
			$ES('scsbsszjje')[j].value = "";
			$ES('scsbsszjje')[j].readOnly = false;
			$ES('scsbsszjje')[j].className = "srx";
			$ES('scsbsszjje')[j].style.display = "";
			$ES('scgjyzje')[j].value = "";
			$ES('scgjyzje')[j].readOnly = false;
			$ES('scgjyzje')[j].className = "srx";
			$ES('scgjyzje')[j].style.display = "";
			$ES('scgjsszjje')[j].value = "";
			$ES('scgjsszjje')[j].readOnly = false;
			$ES('scgjsszjje')[j].className = "srx";
			$ES('scgjsszjje')[j].style.display = "";
			$ES('ysgjyzje')[j].value = "";
			$ES('ysgjyzje')[j].readOnly = false;
			$ES('ysgjyzje')[j].className = "srx";
			$ES('ysgjyzje')[j].style.display = "";
			$ES('ysgjsszjje')[j].value = "";
			$ES('ysgjsszjje')[j].readOnly = false;
			$ES('ysgjsszjje')[j].className = "srx";
			$ES('ysgjsszjje')[j].style.display = "";
			$ES('dzsbyzje')[j].value = "";
			$ES('dzsbyzje')[j].readOnly = false;
			$ES('dzsbyzje')[j].className = "srx";
			$ES('dzsbyzje')[j].style.display = "";
			$ES('dzsbsszjje')[j].value = "";
			$ES('dzsbsszjje')[j].readOnly = false;
			$ES('dzsbsszjje')[j].className = "srx";
			$ES('dzsbsszjje')[j].style.display = "";
			$ES('qtyzje')[j].value = "";
			$ES('qtyzje')[j].readOnly = false;
			$ES('qtyzje')[j].className = "srx";
			$ES('qtyzje')[j].style.display = "";
			$ES('qtsszjje')[j].value = "";
			$ES('qtsszjje')[j].readOnly = false;
			$ES('qtsszjje')[j].className = "srx";
			$ES('qtsszjje')[j].style.display = "";
			$ES('hjyzje')[j].value = "";
			$ES('hjyzje')[j].readOnly = true;
			$ES('hjyzje')[j].className = "fsrx";
			$ES('hjyzje')[j].style.display = "";
			$ES('hjkjzjje')[j].value = "";
			$ES('hjkjzjje')[j].readOnly = false;
			$ES('hjkjzjje')[j].className = "srx";
			$ES('hjkjzjje')[j].style.display = "";
			$ES('hjzczjje')[j].value = "";
			$ES('hjzczjje')[j].readOnly = false;
			$ES('hjzczjje')[j].className = "srx";
			$ES('hjzczjje')[j].style.display = "";
			$ES('hjsszjje')[j].value = "";
			$ES('hjsszjje')[j].readOnly = true;
			$ES('hjsszjje')[j].className = "fsrx";
			$ES('hjsszjje')[j].style.display = "";
			$ES('hjnsjsje')[j].value = "";
			$ES('hjnsjsje')[j].readOnly = true;
			$ES('hjnsjsje')[j].className = "fsrx";
			$ES('hjnsjsje')[j].style.display = "";
			$ES('hjjszjyhtjje')[j].value = "";
			$ES('hjjszjyhtjje')[j].readOnly = true;
			$ES('hjjszjyhtjje')[j].className = "fsrx";
			$ES('hjjszjyhtjje')[j].style.display = "";
		}
	} else {
		for (var i = 4; i < 6; i++) {
			$ES('scsbyzje')[i].value = "";
			$ES('scsbyzje')[i].readOnly = false;
			$ES('scsbyzje')[i].className = "srx";
			$ES('scsbyzje')[i].style.display = "";
			$ES('scsbsszjje')[i].value = "";
			$ES('scsbsszjje')[i].readOnly = false;
			$ES('scsbsszjje')[i].className = "srx";
			$ES('scsbsszjje')[i].style.display = "";
			$ES('scgjyzje')[i].value = "";
			$ES('scgjyzje')[i].readOnly = false;
			$ES('scgjyzje')[i].className = "srx";
			$ES('scgjyzje')[i].style.display = "";
			$ES('scgjsszjje')[i].value = "";
			$ES('scgjsszjje')[i].readOnly = false;
			$ES('scgjsszjje')[i].className = "srx";
			$ES('scgjsszjje')[i].style.display = "";
			$ES('ysgjyzje')[i].value = "";
			$ES('ysgjyzje')[i].readOnly = false;
			$ES('ysgjyzje')[i].className = "srx";
			$ES('ysgjyzje')[i].style.display = "";
			$ES('ysgjsszjje')[i].value = "";
			$ES('ysgjsszjje')[i].readOnly = false;
			$ES('ysgjsszjje')[i].className = "srx";
			$ES('ysgjsszjje')[i].style.display = "";
			$ES('dzsbyzje')[i].value = "";
			$ES('dzsbyzje')[i].readOnly = false;
			$ES('dzsbyzje')[i].className = "srx";
			$ES('dzsbyzje')[i].style.display = "";
			$ES('dzsbsszjje')[i].value = "";
			$ES('dzsbsszjje')[i].readOnly = false;
			$ES('dzsbsszjje')[i].className = "srx";
			$ES('dzsbsszjje')[i].style.display = "";
			$ES('qtyzje')[i].value = "";
			$ES('qtyzje')[i].readOnly = false;
			$ES('qtyzje')[i].className = "srx";
			$ES('qtyzje')[i].style.display = "";
			$ES('qtsszjje')[i].value = "";
			$ES('qtsszjje')[i].readOnly = false;
			$ES('qtsszjje')[i].className = "srx";
			$ES('qtsszjje')[i].style.display = "";
			$ES('hjyzje')[i].value = "";
			$ES('hjyzje')[i].readOnly = true;
			$ES('hjyzje')[i].className = "fsrx";
			$ES('hjyzje')[i].style.display = "";
			$ES('hjkjzjje')[i].value = "";
			$ES('hjkjzjje')[i].readOnly = false;
			$ES('hjkjzjje')[i].className = "srx";
			$ES('hjkjzjje')[i].style.display = "";
			$ES('hjzczjje')[i].value = "";
			$ES('hjzczjje')[i].readOnly = false;
			$ES('hjzczjje')[i].className = "srx";
			$ES('hjzczjje')[i].style.display = "";
			$ES('hjsszjje')[i].value = "";
			$ES('hjsszjje')[i].readOnly = true;
			$ES('hjsszjje')[i].className = "fsrx";
			$ES('hjsszjje')[i].style.display = "";
			$ES('hjnsjsje')[i].value = "";
			$ES('hjnsjsje')[i].readOnly = true;
			$ES('hjnsjsje')[i].className = "fsrx";
			$ES('hjnsjsje')[i].style.display = "";
			$ES('hjjszjyhtjje')[i].value = "";
			$ES('hjjszjyhtjje')[i].readOnly = true;
			$ES('hjjszjyhtjje')[i].className = "fsrx";
			$ES('hjjszjyhtjje')[i].style.display = "";
		}
		for (var j = 1; j < 3; j++) {
			$ES('fwjzyzje')[j].value = "";
			$ES('fwjzyzje')[j].readOnly = true;
			$ES('fwjzyzje')[j].className = "fsrx";
			$ES('fwjzyzje')[j].style.display = "none";
			$ES('fwjzsszjje')[j].value = "";
			$ES('fwjzsszjje')[j].readOnly = true;
			$ES('fwjzsszjje')[j].className = "fsrx";
			$ES('fwjzsszjje')[j].style.display = "none";
			$ES('scsbyzje')[j].value = "";
			$ES('scsbyzje')[j].readOnly = true;
			$ES('scsbyzje')[j].className = "fsrx";
			$ES('scsbyzje')[j].style.display = "none";
			$ES('scsbsszjje')[j].value = "";
			$ES('scsbsszjje')[j].readOnly = true;
			$ES('scsbsszjje')[j].className = "fsrx";
			$ES('scsbsszjje')[j].style.display = "none";
			$ES('scgjyzje')[j].value = "";
			$ES('scgjyzje')[j].readOnly = true;
			$ES('scgjyzje')[j].className = "fsrx";
			$ES('scgjyzje')[j].style.display = "none";
			$ES('scgjsszjje')[j].value = "";
			$ES('scgjsszjje')[j].readOnly = true;
			$ES('scgjsszjje')[j].className = "fsrx";
			$ES('scgjsszjje')[j].style.display = "none";
			$ES('ysgjyzje')[j].value = "";
			$ES('ysgjyzje')[j].readOnly = true;
			$ES('ysgjyzje')[j].className = "fsrx";
			$ES('ysgjyzje')[j].style.display = "none";
			$ES('ysgjsszjje')[j].value = "";
			$ES('ysgjsszjje')[j].readOnly = true;
			$ES('ysgjsszjje')[j].className = "fsrx";
			$ES('ysgjsszjje')[j].style.display = "none";
			$ES('dzsbyzje')[j].value = "";
			$ES('dzsbyzje')[j].readOnly = true;
			$ES('dzsbyzje')[j].className = "fsrx";
			$ES('dzsbyzje')[j].style.display = "none";
			$ES('dzsbsszjje')[j].value = "";
			$ES('dzsbsszjje')[j].readOnly = true;
			$ES('dzsbsszjje')[j].className = "fsrx";
			$ES('dzsbsszjje')[j].style.display = "none";
			$ES('qtyzje')[j].value = "";
			$ES('qtyzje')[j].readOnly = true;
			$ES('qtyzje')[j].className = "fsrx";
			$ES('qtyzje')[j].style.display = "none";
			$ES('qtsszjje')[j].value = "";
			$ES('qtsszjje')[j].readOnly = true;
			$ES('qtsszjje')[j].className = "fsrx";
			$ES('qtsszjje')[j].style.display = "none";
			$ES('hjyzje')[j].value = "";
			$ES('hjyzje')[j].readOnly = true;
			$ES('hjyzje')[j].className = "fsrx";
			$ES('hjyzje')[j].style.display = "none";
			$ES('hjkjzjje')[j].value = "";
			$ES('hjkjzjje')[j].readOnly = true;
			$ES('hjkjzjje')[j].className = "fsrx";
			$ES('hjkjzjje')[j].style.display = "none";
			$ES('hjzczjje')[j].value = "";
			$ES('hjzczjje')[j].readOnly = true;
			$ES('hjzczjje')[j].className = "fsrx";
			$ES('hjzczjje')[j].style.display = "none";
			$ES('hjsszjje')[j].value = "";
			$ES('hjsszjje')[j].readOnly = true;
			$ES('hjsszjje')[j].className = "fsrx";
			$ES('hjsszjje')[j].style.display = "none";
			$ES('hjnsjsje')[j].value = "";
			$ES('hjnsjsje')[j].readOnly = true;
			$ES('hjnsjsje')[j].className = "fsrx";
			$ES('hjnsjsje')[j].style.display = "none";
			$ES('hjjszjyhtjje')[j].value = "";
			$ES('hjjszjyhtjje')[j].readOnly = true;
			$ES('hjjszjyhtjje')[j].className = "fsrx";
			$ES('hjjszjyhtjje')[j].style.display = "none";
		}
	}
	runRulesForID(calObj);
}

function initJsgs() {
	rulesID = new Array();
	calObj = new caltb("tab1");
	rulesID
			.push("gdzchjyzje1 = gdzcfwjzyzje1 + gdzcscsbyzje1 + gdzcscgjyzje1 + gdzcysgjyzje1 + gdzcdzsbyzje1 + gdzcqtyzje1");
	rulesID
			.push("gdzchjyzje2 = gdzcfwjzyzje2 + gdzcscsbyzje2 + gdzcscgjyzje2 + gdzcysgjyzje2 + gdzcdzsbyzje2 + gdzcqtyzje2");
	rulesID
			.push("yfsbhjyzje1 = yfsbfwjzyzje1 + yfsbscsbyzje1 + yfsbscgjyzje1 + yfsbysgjyzje1 + yfsbdzsbyzje1 + yfsbqtyzje1");
	rulesID
			.push("yfsbhjyzje2 = yfsbfwjzyzje2 + yfsbscsbyzje2 + yfsbscgjyzje2 + yfsbysgjyzje2 + yfsbdzsbyzje2 + yfsbqtyzje2");
	rulesID
			.push("bwyfsbhjyzje1 = bwyfsbfwjzyzje1 + bwyfsbscsbyzje1 + bwyfsbscgjyzje1 + bwyfsbysgjyzje1 + bwyfsbdzsbyzje1 + bwyfsbqtyzje1");
	rulesID
			.push("bwyfsbhjyzje2 = bwyfsbfwjzyzje2 + bwyfsbscsbyzje2 + bwyfsbscgjyzje2 + bwyfsbysgjyzje2 + bwyfsbdzsbyzje2 + bwyfsbqtyzje2");
	rulesID
			.push("wqyhjyzje1 = wqyfwjzyzje1 + wqyscsbyzje1 + wqyscgjyzje1 + wqyysgjyzje1 + wqydzsbyzje1 + wqyqtyzje1");
	rulesID
			.push("wqyhjyzje2 = wqyfwjzyzje2 + wqyscsbyzje2 + wqyscgjyzje2 + wqyysgjyzje2 + wqydzsbyzje2 + wqyqtyzje2");
	rulesID
			.push("jsjbhjyzje1 = jsjbfwjzyzje1 + jsjbscsbyzje1 + jsjbscgjyzje1 + jsjbysgjyzje1 + jsjbdzsbyzje1 + jsjbqtyzje1");
	rulesID
			.push("jsjbhjyzje2 = jsjbfwjzyzje2 + jsjbscsbyzje2 + jsjbscgjyzje2 + jsjbysgjyzje2 + jsjbdzsbyzje2 + jsjbqtyzje2");
	rulesID
			.push("gfshjyzje1 = gfsfwjzyzje1 + gfsscsbyzje1 + gfsscgjyzje1 + gfsysgjyzje1 + gfsdzsbyzje1 + gfsqtyzje1");
	rulesID
			.push("gfshjyzje2 = gfsfwjzyzje2 + gfsscsbyzje2 + gfsscgjyzje2 + gfsysgjyzje2 + gfsdzsbyzje2 + gfsqtyzje2");
	rulesID
			.push("wgrjhjyzje1 = wgrjfwjzyzje1 + wgrjscsbyzje1 + wgrjscgjyzje1 + wgrjysgjyzje1 + wgrjdzsbyzje1 + wgrjqtyzje1");
	rulesID
			.push("wgrjhjyzje2 = wgrjfwjzyzje2 + wgrjscsbyzje2 + wgrjscgjyzje2 + wgrjysgjyzje2 + wgrjdzsbyzje2 + wgrjqtyzje2");
	rulesID
			.push("jcdlhjyzje1 = jcdlfwjzyzje1 + jcdlscsbyzje1 + jcdlscgjyzje1 + jcdlysgjyzje1 + jcdldzsbyzje1 + jcdlqtyzje1");
	rulesID
			.push("jcdlhjyzje2 = jcdlfwjzyzje2 + jcdlscsbyzje2 + jcdlscgjyzje2 + jcdlysgjyzje2 + jcdldzsbyzje2 + jcdlqtyzje2");
	rulesID
			.push("gdzchjsszjje1 = gdzcfwjzsszjje1 + gdzcscsbsszjje1 + gdzcscgjsszjje1 + gdzcysgjsszjje1 + gdzcdzsbsszjje1 + gdzcqtsszjje1");
	rulesID
			.push("gdzchjsszjje2 = gdzcfwjzsszjje2 + gdzcscsbsszjje2 + gdzcscgjsszjje2 + gdzcysgjsszjje2 + gdzcdzsbsszjje2 + gdzcqtsszjje2");
	rulesID
			.push("yfsbhjsszjje1 = yfsbfwjzsszjje1 + yfsbscsbsszjje1 + yfsbscgjsszjje1 + yfsbysgjsszjje1 + yfsbdzsbsszjje1 + yfsbqtsszjje1");
	rulesID
			.push("yfsbhjsszjje2 = yfsbfwjzsszjje2 + yfsbscsbsszjje2 + yfsbscgjsszjje2 + yfsbysgjsszjje2 + yfsbdzsbsszjje2 + yfsbqtsszjje2");
	rulesID
			.push("bwyfsbhjsszjje1 = bwyfsbfwjzsszjje1 + bwyfsbscsbsszjje1 + bwyfsbscgjsszjje1 + bwyfsbysgjsszjje1 + bwyfsbdzsbsszjje1 + bwyfsbqtsszjje1");
	rulesID
			.push("bwyfsbhjsszjje2 = bwyfsbfwjzsszjje2 + bwyfsbscsbsszjje2 + bwyfsbscgjsszjje2 + bwyfsbysgjsszjje2 + bwyfsbdzsbsszjje2 + bwyfsbqtsszjje2");
	rulesID
			.push("wqyhjsszjje1 = wqyfwjzsszjje1 + wqyscsbsszjje1 + wqyscgjsszjje1 + wqyysgjsszjje1 + wqydzsbsszjje1 + wqyqtsszjje1");
	rulesID
			.push("wqyhjsszjje2 = wqyfwjzsszjje2 + wqyscsbsszjje2 + wqyscgjsszjje2 + wqyysgjsszjje2 + wqydzsbsszjje2 + wqyqtsszjje2");
	rulesID
			.push("jsjbhjsszjje1 = jsjbfwjzsszjje1 + jsjbscsbsszjje1 + jsjbscgjsszjje1 + jsjbysgjsszjje1 + jsjbdzsbsszjje1 + jsjbqtsszjje1");
	rulesID
			.push("jsjbhjsszjje2 = jsjbfwjzsszjje2 + jsjbscsbsszjje2 + jsjbscgjsszjje2 + jsjbysgjsszjje2 + jsjbdzsbsszjje2 + jsjbqtsszjje2");
	rulesID
			.push("gfshjsszjje1 = gfsfwjzsszjje1 + gfsscsbsszjje1 + gfsscgjsszjje1 + gfsysgjsszjje1 + gfsdzsbsszjje1 + gfsqtsszjje1");
	rulesID
			.push("gfshjsszjje2 = gfsfwjzsszjje2 + gfsscsbsszjje2 + gfsscgjsszjje2 + gfsysgjsszjje2 + gfsdzsbsszjje2 + gfsqtsszjje2");
	rulesID
			.push("wgrjhjsszjje1 = wgrjfwjzsszjje1 + wgrjscsbsszjje1 + wgrjscgjsszjje1 + wgrjysgjsszjje1 + wgrjdzsbsszjje1 + wgrjqtsszjje1");
	rulesID
			.push("wgrjhjsszjje2 = wgrjfwjzsszjje2 + wgrjscsbsszjje2 + wgrjscgjsszjje2 + wgrjysgjsszjje2 + wgrjdzsbsszjje2 + wgrjqtsszjje2");
	rulesID
			.push("jcdlhjsszjje1 = jcdlfwjzsszjje1 + jcdlscsbsszjje1 + jcdlscgjsszjje1 + jcdlysgjsszjje1 + jcdldzsbsszjje1 + jcdlqtsszjje1");
	rulesID
			.push("jcdlhjsszjje2 = jcdlfwjzsszjje2 + jcdlscsbsszjje2 + jcdlscgjsszjje2 + jcdlysgjsszjje2 + jcdldzsbsszjje2 + jcdlqtsszjje2");
	rulesID.push("gdzchjnsjsje1 = gdzchjsszjje1");
	rulesID.push("gdzchjnsjsje2 = gdzchjsszjje2 - gdzchjkjzjje2");
	rulesID.push("yfsbhjnsjsje1 = yfsbhjsszjje1 - yfsbhjkjzjje1");
	rulesID.push("yfsbhjnsjsje2 = yfsbhjsszjje2 - yfsbhjkjzjje2");
	rulesID.push("bwyfsbhjnsjsje1 = bwyfsbhjsszjje1 - bwyfsbhjkjzjje1");
	rulesID.push("bwyfsbhjnsjsje2 = bwyfsbhjsszjje2 - bwyfsbhjkjzjje2");
	rulesID.push("wqyhjnsjsje1 = wqyhjsszjje1 - wqyhjkjzjje1");
	rulesID.push("wqyhjnsjsje2 = wqyhjsszjje2 - wqyhjkjzjje2");
	rulesID.push("jsjbhjnsjsje1 = jsjbhjsszjje1 - jsjbhjkjzjje1");
	rulesID.push("jsjbhjnsjsje2 = jsjbhjsszjje2 - jsjbhjkjzjje2");
	rulesID.push("gfshjnsjsje1 = gfshjsszjje1 - gfshjkjzjje1");
	rulesID.push("gfshjnsjsje2 = gfshjsszjje2 - gfshjkjzjje2");
	// rulesID.push("wgrjhjnsjsje1 = wgrjhjsszjje1 - wgrjhjkjzjje1");
	rulesID.push("wgrjhjnsjsje2 = wgrjhjsszjje2 - wgrjhjkjzjje2");
	// rulesID.push("jcdlhjnsjsje1 = jcdlhjsszjje1 - jcdlhjkjzjje1");
	rulesID.push("jcdlhjnsjsje2 = jcdlhjsszjje2 - jcdlhjkjzjje2");
	rulesID.push("gdzchjjszjyhtjje1 = gdzchjsszjje1 - gdzchjzczjje1");
	rulesID.push("yfsbhjjszjyhtjje1 = yfsbhjsszjje1 - yfsbhjzczjje1");
	rulesID.push("yfsbhjjszjyhtjje2 = yfsbhjsszjje2 - yfsbhjzczjje2");
	rulesID.push("bwyfsbhjjszjyhtjje1 = bwyfsbhjsszjje1 - bwyfsbhjzczjje1");
	rulesID.push("bwyfsbhjjszjyhtjje2 = bwyfsbhjsszjje2 - bwyfsbhjzczjje2");
	rulesID.push("wqyhjjszjyhtjje1 = wqyhjsszjje1 - wqyhjzczjje1");
	rulesID.push("wqyhjjszjyhtjje2 = wqyhjsszjje2 - wqyhjzczjje2");
	rulesID.push("jsjbhjjszjyhtjje1 = jsjbhjsszjje1 - jsjbhjzczjje1");
	rulesID.push("jsjbhjjszjyhtjje2 = jsjbhjsszjje2 - jsjbhjzczjje2");
	rulesID.push("gfshjjszjyhtjje1 = gfshjsszjje1 - gfshjzczjje1");
	rulesID.push("gfshjjszjyhtjje2 = gfshjsszjje2 - gfshjzczjje2");
	rulesID.push("wgrjhjjszjyhtjje1 = wgrjhjsszjje1 - wgrjhjzczjje1");
	// rulesID.push("wgrjhjjszjyhtjje2 = wgrjhjsszjje2 - wgrjhjzczjje2");
	rulesID.push("jcdlhjjszjyhtjje1 = jcdlhjsszjje1 - jcdlhjzczjje1");
	// rulesID.push("jcdlhjjszjyhtjje2 = jcdlhjsszjje2 - jcdlhjzczjje2");
	rulesID.push("gdzcfwjzyzjehj = gdzcfwjzyzje1 + gdzcfwjzyzje2");
	rulesID.push("gdzcfwjzsszjjehj = gdzcfwjzsszjje1 + gdzcfwjzsszjje2");
	rulesID.push("gdzcscsbyzjehj = gdzcscsbyzje1 + gdzcscsbyzje2");
	rulesID.push("gdzcscsbsszjjehj = gdzcscsbsszjje1 + gdzcscsbsszjje2");
	rulesID.push("gdzcscgjyzjehj = gdzcscgjyzje1 + gdzcscgjyzje2");
	rulesID.push("gdzcscgjsszjjehj = gdzcscgjsszjje1 + gdzcscgjsszjje2");
	rulesID.push("gdzcysgjyzjehj = gdzcysgjyzje1 + gdzcysgjyzje2");
	rulesID.push("gdzcysgjsszjjehj = gdzcysgjsszjje1 + gdzcysgjsszjje2");
	rulesID.push("gdzcdzsbyzjehj = gdzcdzsbyzje1 + gdzcdzsbyzje2");
	rulesID.push("gdzcdzsbsszjjehj = gdzcdzsbsszjje1 + gdzcdzsbsszjje2");
	rulesID.push("gdzcqtyzjehj = gdzcqtyzje1 + gdzcqtyzje2");
	rulesID.push("gdzcqtsszjjehj = gdzcqtsszjje1 + gdzcqtsszjje2");
	rulesID.push("gdzchjyzjehj = gdzchjyzje1 + gdzchjyzje2");
	rulesID.push("gdzchjkjzjjehj = gdzchjkjzjje2");
	rulesID.push("gdzchjzczjjehj = gdzchjzczjje1");
	rulesID.push("gdzchjsszjjehj = gdzchjsszjje1 + gdzchjsszjje2");
	rulesID.push("gdzchjnsjsjehj = gdzchjnsjsje2");
	rulesID.push("gdzchjjszjyhtjjehj = gdzchjjszjyhtjje1");
	rulesID.push("yfsbyzjehj = yfsbfwjzyzje1 + yfsbfwjzyzje2");
	rulesID.push("yfsbfwjzsszjjehj = yfsbfwjzsszjje1 + yfsbfwjzsszjje2");
	rulesID.push("yfsbscsbyzjehj = yfsbscsbyzje1 + yfsbscsbyzje2");
	rulesID.push("yfsbscsbsszjjehj = yfsbscsbsszjje1 + yfsbscsbsszjje2");
	rulesID.push("yfsbscgjyzjehj = yfsbscgjyzje1 + yfsbscgjyzje2");
	rulesID.push("yfsbscgjsszjjehj = yfsbscgjsszjje1 + yfsbscgjsszjje2");
	rulesID.push("yfsbysgjyzjehj = yfsbysgjyzje1 + yfsbysgjyzje2");
	rulesID.push("yfsbysgjsszjjehj = yfsbysgjsszjje1 + yfsbysgjsszjje2");
	rulesID.push("yfsbdzsbyzjehj = yfsbdzsbyzje1 + yfsbdzsbyzje2");
	rulesID.push("yfsbdzsbsszjjehj = yfsbdzsbsszjje1 + yfsbdzsbsszjje2");
	rulesID.push("yfsbqtyzjehj = yfsbqtyzje1 + yfsbqtyzje2");
	rulesID.push("yfsbqtsszjjehj = yfsbqtsszjje1 + yfsbqtsszjje2");
	rulesID.push("yfsbhjyzjehj = yfsbhjyzje1 + yfsbhjyzje2");
	rulesID.push("yfsbhjkjzjjehj = yfsbhjkjzjje1 + yfsbhjkjzjje2");
	rulesID.push("yfsbhjzczjjehj = yfsbhjzczjje1 + yfsbhjzczjje2");
	rulesID.push("yfsbhjsszjjehj = yfsbhjsszjje1 + yfsbhjsszjje2");
	rulesID.push("yfsbhjnsjsjehj = yfsbhjnsjsje1 + yfsbhjnsjsje2");
	rulesID.push("yfsbhjjszjyhtjjehj = yfsbhjjszjyhtjje1 + yfsbhjjszjyhtjje2");
	rulesID.push("bwyfsbfwjzyzjehj = bwyfsbfwjzyzje1 + bwyfsbfwjzyzje2");
	rulesID.push("bwyfsbfwjzsszjjehj = bwyfsbfwjzsszjje1 + bwyfsbfwjzsszjje2");
	rulesID.push("bwyfsbscsbyzjehj = bwyfsbscsbyzje1 + bwyfsbscsbyzje2");
	rulesID.push("bwyfsbscsbsszjjehj = bwyfsbscsbsszjje1 + bwyfsbscsbsszjje2");
	rulesID.push("bwyfsbscgjyzjehj = bwyfsbscgjyzje1 + bwyfsbscgjyzje2");
	rulesID.push("bwyfsbscgjsszjjehj = bwyfsbscgjsszjje1 + bwyfsbscgjsszjje2");
	rulesID.push("bwyfsbysgjyzjehj = bwyfsbysgjyzje1 + bwyfsbysgjyzje2");
	rulesID.push("bwyfsbysgjsszjjehj = bwyfsbysgjsszjje1 + bwyfsbysgjsszjje2");
	rulesID.push("bwyfsbdzsbyzjehj = bwyfsbdzsbyzje1 + bwyfsbdzsbyzje2");
	rulesID.push("bwyfsbdzsbsszjjehj = bwyfsbdzsbsszjje1 + bwyfsbdzsbsszjje2");
	rulesID.push("bwyfsbqtyzjehj = bwyfsbqtyzje1 + bwyfsbqtyzje2");
	rulesID.push("bwyfsbqtsszjjehj = bwyfsbqtsszjje1 + bwyfsbqtsszjje2");
	rulesID.push("bwyfsbhjyzjehj = bwyfsbhjyzje1 + bwyfsbhjyzje2");
	rulesID.push("bwyfsbhjkjzjjehj = bwyfsbhjkjzjje1 + bwyfsbhjkjzjje2");
	rulesID.push("bwyfsbhjzczjjehj = bwyfsbhjzczjje1 + bwyfsbhjzczjje2");
	rulesID.push("bwyfsbhjsszjjehj = bwyfsbhjsszjje1 + bwyfsbhjsszjje2");
	rulesID.push("bwyfsbhjnsjsjehj = bwyfsbhjnsjsje2");
	rulesID.push("bwyfsbhjjszjyhtjjehj = bwyfsbhjjszjyhtjje1");
	rulesID.push("wqyfwjzyzjehj = wqyfwjzyzje1 + wqyfwjzyzje2");
	rulesID.push("wqyfwjzsszjjehj = wqyfwjzsszjje1 + wqyfwjzsszjje2");
	rulesID.push("wqyscsbyzjehj = wqyscsbyzje1 + wqyscsbyzje2");
	rulesID.push("wqyscsbsszjjehj = wqyscsbsszjje1 + wqyscsbsszjje2");
	rulesID.push("wqyscgjyzjehj = wqyscgjyzje1 + wqyscgjyzje2");
	rulesID.push("wqyscgjsszjjehj = wqyscgjsszjje1 + wqyscgjsszjje2");
	rulesID.push("wqyysgjyzjehj = wqyysgjyzje1 + wqyysgjyzje2");
	rulesID.push("wqyysgjsszjjehj = wqyysgjsszjje1 + wqyysgjsszjje2");
	rulesID.push("wqydzsbyzjehj = wqydzsbyzje1 + wqydzsbyzje2");
	rulesID.push("wqydzsbsszjjehj = wqydzsbsszjje1 + wqydzsbsszjje2");
	rulesID.push("wqyqtyzjehj = wqyqtyzje1 + wqyqtyzje2");
	rulesID.push("wqyqtsszjjehj = wqyqtsszjje1 + wqyqtsszjje2");
	rulesID.push("wqyhjyzjehj = wqyhjyzje1 + wqyhjyzje2");
	rulesID.push("wqyhjkjzjjehj = wqyhjkjzjje1 + wqyhjkjzjje2");
	rulesID.push("wqyhjzczjjehj = wqyhjzczjje1 + wqyhjzczjje2");
	rulesID.push("wqyhjsszjjehj = wqyhjsszjje1 + wqyhjsszjje2");
	rulesID.push("wqyhjnsjsjehj = wqyhjnsjsje2");
	rulesID.push("wqyhjjszjyhtjjehj = wqyhjjszjyhtjje1");
	rulesID.push("ycxgdzcfwjzyzjehj = bwyfsbfwjzyzjehj + wqyfwjzyzjehj");
	rulesID.push("ycxgdzcfwjzsszjjehj = bwyfsbfwjzsszjjehj + wqyfwjzsszjjehj");
	rulesID.push("ycxgdzcscsbyzjehj = bwyfsbscsbyzjehj + wqyscsbyzjehj");
	rulesID.push("ycxgdzcscsbsszjjehj = bwyfsbscsbsszjjehj + wqyscsbsszjjehj");
	rulesID.push("ycxgdzcscgjyzjehj = bwyfsbscgjyzjehj + wqyscgjyzjehj");
	rulesID.push("ycxgdzcscgjsszjjehj = bwyfsbscgjsszjjehj + wqyscgjsszjjehj");
	rulesID.push("ycxgdzcysgjyzjehj = bwyfsbysgjyzjehj + wqyysgjyzjehj");
	rulesID.push("ycxgdzcysgjsszjjehj = bwyfsbysgjsszjjehj + wqyysgjsszjjehj");
	rulesID.push("ycxgdzcdzsbyzjehj = bwyfsbdzsbyzjehj + wqydzsbyzjehj");
	rulesID.push("ycxgdzcdzsbsszjjehj = bwyfsbdzsbsszjjehj + wqydzsbsszjjehj");
	rulesID.push("ycxgdzcqtyzjehj = bwyfsbqtyzjehj + wqyqtyzjehj");
	rulesID.push("ycxgdzcqtsszjjehj = bwyfsbqtsszjjehj + wqyqtsszjjehj");
	rulesID.push("ycxgdzchjyzjehj = bwyfsbhjyzjehj + wqyhjyzjehj");
	rulesID.push("ycxgdzchjkjzjjehj = bwyfsbhjkjzjjehj + wqyhjkjzjjehj");
	rulesID.push("ycxgdzchjzczjjehj = bwyfsbhjzczjjehj + wqyhjzczjjehj");
	rulesID.push("ycxgdzchjsszjjehj = bwyfsbhjsszjjehj + wqyhjsszjjehj");
	rulesID.push("ycxgdzchjnsjsjehj = bwyfsbhjnsjsjehj + wqyhjnsjsjehj");
	rulesID
			.push("ycxgdzchjjszjyhtjjehj = bwyfsbhjjszjyhtjjehj + wqyhjjszjyhtjjehj");
	rulesID
			.push("fwjzyzjehj1 = gdzcfwjzyzjehj + yfsbyzjehj + ycxgdzcfwjzyzjehj");
	rulesID
			.push("fwjzsszjjehj1 = gdzcfwjzsszjjehj + yfsbfwjzsszjjehj + ycxgdzcfwjzsszjjehj");
	rulesID
			.push("scsbyzjehj1 = gdzcscsbyzjehj + yfsbscsbyzjehj + ycxgdzcscsbyzjehj");
	rulesID
			.push("scsbsszjjehj1 = gdzcscsbsszjjehj + yfsbscsbsszjjehj + ycxgdzcscsbsszjjehj");
	rulesID
			.push("scgjyzjehj1 = gdzcscgjyzjehj + yfsbscgjyzjehj + ycxgdzcscgjyzjehj");
	rulesID
			.push("scgjsszjjehj1 = gdzcscgjsszjjehj + yfsbscgjsszjjehj + ycxgdzcscgjsszjjehj");
	rulesID
			.push("ysgjyzjehj1 = gdzcysgjyzjehj + yfsbysgjyzjehj + ycxgdzcysgjyzjehj");
	rulesID
			.push("ysgjsszjjehj1 = gdzcysgjsszjjehj + yfsbysgjsszjjehj + ycxgdzcysgjsszjjehj");
	rulesID
			.push("dzsbyzjehj1 = gdzcdzsbyzjehj + yfsbdzsbyzjehj + ycxgdzcdzsbyzjehj");
	rulesID
			.push("dzsbsszjjehj1 = gdzcdzsbsszjjehj + yfsbdzsbsszjjehj + ycxgdzcdzsbsszjjehj");
	rulesID.push("qtyzjehj1 = gdzcqtyzjehj + yfsbqtyzjehj + ycxgdzcqtyzjehj");
	rulesID
			.push("qtsszjjehj1 = gdzcqtsszjjehj + yfsbqtsszjjehj + ycxgdzcqtsszjjehj");
	rulesID.push("hjyzjehj1 = gdzchjyzjehj + yfsbhjyzjehj + ycxgdzchjyzjehj");
	rulesID
			.push("hjkjzjjehj1 = gdzchjkjzjjehj + yfsbhjkjzjjehj + ycxgdzchjkjzjjehj");
	rulesID
			.push("hjzczjjehj1 = gdzchjzczjjehj + yfsbhjzczjjehj + ycxgdzchjzczjjehj");
	rulesID
			.push("hjsszjjehj1 = gdzchjsszjjehj + yfsbhjsszjjehj + ycxgdzchjsszjjehj");
	rulesID
			.push("hjnsjsjehj1 = gdzchjnsjsjehj + yfsbhjnsjsjehj + ycxgdzchjnsjsjehj");
	rulesID
			.push("hjjszjyhtjjehj1 = gdzchjjszjyhtjjehj + yfsbhjjszjyhtjjehj + ycxgdzchjjszjyhtjjehj");
	rulesID.push("jsjbfwjzyzjehj = jsjbfwjzyzje1 + jsjbfwjzyzje2");
	rulesID.push("jsjbfwjzsszjjehj = jsjbfwjzsszjje1 + jsjbfwjzsszjje2");
	rulesID.push("jsjbscsbyzjehj = jsjbscsbyzje1 + jsjbscsbyzje2");
	rulesID.push("jsjbscsbsszjjehj = jsjbscsbsszjje1 + jsjbscsbsszjje2");
	rulesID.push("jsjbscgjyzjehj = jsjbscgjyzje1 + jsjbscgjyzje2");
	rulesID.push("jsjbscgjsszjjehj = jsjbscgjsszjje1 + jsjbscgjsszjje2");
	rulesID.push("jsjbysgjyzjehj = jsjbysgjyzje1 + jsjbysgjyzje2");
	rulesID.push("jsjbysgjsszjjehj = jsjbysgjsszjje1 + jsjbysgjsszjje2");
	rulesID.push("jsjbdzsbyzjehj = jsjbdzsbyzje1 + jsjbdzsbyzje2");
	rulesID.push("jsjbdzsbsszjjehj = jsjbdzsbsszjje1 + jsjbdzsbsszjje2");
	rulesID.push("jsjbqtyzjehj = jsjbqtyzje1 + jsjbqtyzje2");
	rulesID.push("jsjbqtsszjjehj = jsjbqtsszjje1 + jsjbqtsszjje2");
	rulesID.push("jsjbhjyzjehj = jsjbhjyzje1 + jsjbhjyzje2");
	rulesID.push("jsjbhjkjzjjehj = jsjbhjkjzjje1 + jsjbhjkjzjje2");
	rulesID.push("jsjbhjzczjjehj = jsjbhjzczjje1 + jsjbhjzczjje2");
	rulesID.push("jsjbhjsszjjehj = jsjbhjsszjje1 + jsjbhjsszjje2");
	rulesID.push("jsjbhjnsjsjehj = jsjbhjnsjsje1 + jsjbhjnsjsje2");
	rulesID.push("jsjbhjjszjyhtjjehj = jsjbhjjszjyhtjje1 + jsjbhjjszjyhtjje2");
	rulesID.push("gfsfwjzyzjehj = gfsfwjzyzje1 + gfsfwjzyzje2");
	rulesID.push("gfsfwjzsszjjehj = gfsfwjzsszjje1 + gfsfwjzsszjje2");
	rulesID.push("gfsscsbyzjehj = gfsscsbyzje1 + gfsscsbyzje2");
	rulesID.push("gfsscsbsszjjehj = gfsscsbsszjje1 + gfsscsbsszjje2");
	rulesID.push("gfsscgjyzjehj = gfsscgjyzje1 + gfsscgjyzje2");
	rulesID.push("gfsscgjsszjjehj = gfsscgjsszjje1 + gfsscgjsszjje2");
	rulesID.push("gfsysgjyzjehj = gfsysgjyzje1 + gfsysgjyzje2");
	rulesID.push("gfsysgjsszjjehj = gfsysgjsszjje1 + gfsysgjsszjje2");
	rulesID.push("gfsdzsbyzjehj = gfsdzsbyzje1 + gfsdzsbyzje2");
	rulesID.push("gfsdzsbsszjjehj = gfsdzsbsszjje1 + gfsdzsbsszjje2");
	rulesID.push("gfsqtyzjehj = gfsqtyzje1 + gfsqtyzje2");
	rulesID.push("gfsqtsszjjehj = gfsqtsszjje1 + gfsqtsszjje2");
	rulesID.push("gfshjyzjehj = gfshjyzje1 + gfshjyzje2");
	rulesID.push("gfshjkjzjjehj = gfshjkjzjje1 + gfshjkjzjje2");
	rulesID.push("gfshjzczjjehj = gfshjzczjje1 + gfshjzczjje2");
	rulesID.push("gfshjsszjjehj = gfshjsszjje1 + gfshjsszjje2");
	rulesID.push("gfshjnsjsjehj = gfshjnsjsje2");
	rulesID.push("gfshjjszjyhtjjehj = gfshjjszjyhtjje1");
	rulesID.push("wgrjfwjzyzjehj = wgrjfwjzyzje1 + wgrjfwjzyzje2");
	rulesID.push("wgrjfwjzsszjjehj = wgrjfwjzsszjje1 + wgrjfwjzsszjje2");
	rulesID.push("wgrjscsbyzjehj = wgrjscsbyzje1 + wgrjscsbyzje2");
	rulesID.push("wgrjscsbsszjjehj = wgrjscsbsszjje1 + wgrjscsbsszjje2");
	rulesID.push("wgrjscgjyzjehj = wgrjscgjyzje1 + wgrjscgjyzje2");
	rulesID.push("wgrjscgjsszjjehj = wgrjscgjsszjje1 + wgrjscgjsszjje2");
	rulesID.push("wgrjysgjyzjehj = wgrjysgjyzje1 + wgrjysgjyzje2");
	rulesID.push("wgrjysgjsszjjehj = wgrjysgjsszjje1 + wgrjysgjsszjje2");
	rulesID.push("wgrjdzsbyzjehj = wgrjdzsbyzje1 + wgrjdzsbyzje2");
	rulesID.push("wgrjdzsbsszjjehj = wgrjdzsbsszjje1 + wgrjdzsbsszjje2");
	rulesID.push("wgrjqtyzjehj = wgrjqtyzje1 + wgrjqtyzje2");
	rulesID.push("wgrjqtsszjjehj = wgrjqtsszjje1 + wgrjqtsszjje2");
	rulesID.push("wgrjhjyzjehj = wgrjhjyzje1 + wgrjhjyzje2");
	rulesID.push("wgrjhjkjzjjehj = wgrjhjkjzjje1 + wgrjhjkjzjje2");
	rulesID.push("wgrjhjzczjjehj = wgrjhjzczjje1 + wgrjhjzczjje2");
	rulesID.push("wgrjhjsszjjehj = wgrjhjsszjje1 + wgrjhjsszjje2");
	rulesID.push("wgrjhjnsjsjehj = wgrjhjnsjsje1 + wgrjhjnsjsje2");
	rulesID.push("wgrjhjjszjyhtjjehj = wgrjhjjszjyhtjje1 + wgrjhjjszjyhtjje2");
	rulesID.push("jcdlfwjzyzjehj = jcdlfwjzyzje1 + jcdlfwjzyzje2");
	rulesID.push("jcdlfwjzsszjjehj = jcdlfwjzsszjje1 + jcdlfwjzsszjje2");
	rulesID.push("jcdlscsbyzjehj = jcdlscsbyzje1 + jcdlscsbyzje2");
	rulesID.push("jcdlscsbsszjjehj = jcdlscsbsszjje1 + jcdlscsbsszjje2");
	rulesID.push("jcdlscgjyzjehj = jcdlscgjyzje1 + jcdlscgjyzje2");
	rulesID.push("jcdlscgjsszjjehj = jcdlscgjsszjje1 + jcdlscgjsszjje2");
	rulesID.push("jcdlysgjyzjehj = jcdlysgjyzje1 + jcdlysgjyzje2");
	rulesID.push("jcdlysgjsszjjehj = jcdlysgjsszjje1 + jcdlysgjsszjje2");
	rulesID.push("jcdldzsbyzjehj = jcdldzsbyzje1 + jcdldzsbyzje2");
	rulesID.push("jcdldzsbsszjjehj = jcdldzsbsszjje1 + jcdldzsbsszjje2");
	rulesID.push("jcdlqtyzjehj = jcdlqtyzje1 + jcdlqtyzje2");
	rulesID.push("jcdlqtsszjjehj = jcdlqtsszjje1 + jcdlqtsszjje2");
	rulesID.push("jcdlhjyzjehj = jcdlhjyzje1 + jcdlhjyzje2");
	rulesID.push("jcdlhjkjzjjehj = jcdlhjkjzjje1 + jcdlhjkjzjje2");
	rulesID.push("jcdlhjzczjjehj = jcdlhjzczjje1 + jcdlhjzczjje2");
	rulesID.push("jcdlhjsszjjehj = jcdlhjsszjje1 + jcdlhjsszjje2");
	rulesID.push("jcdlhjnsjsjehj = jcdlhjnsjsje1 + jcdlhjnsjsje2");
	rulesID.push("jcdlhjjszjyhtjjehj = jcdlhjjszjyhtjje1 + jcdlhjjszjyhtjje2");
	rulesID
			.push("fwjzyzjehj2 = jsjbfwjzyzjehj + gfsfwjzyzjehj + wgrjfwjzyzjehj + jcdlfwjzyzjehj");
	rulesID
			.push("fwjzsszjjehj2 = jsjbfwjzsszjjehj + gfsfwjzsszjjehj + wgrjfwjzsszjjehj + jcdlfwjzsszjjehj");
	rulesID
			.push("scsbyzjehj2 = jsjbscsbyzjehj + gfsscsbyzjehj + wgrjscsbyzjehj + jcdlscsbyzjehj");
	rulesID
			.push("scsbsszjjehj2 = jsjbscsbsszjjehj + gfsscsbsszjjehj + wgrjscsbsszjjehj + jcdlscsbsszjjehj");
	rulesID
			.push("scgjyzjehj2 = jsjbscgjyzjehj + gfsscgjyzjehj + wgrjscgjyzjehj + jcdlscgjyzjehj");
	rulesID
			.push("scgjsszjjehj2 = jsjbscgjsszjjehj + gfsscgjsszjjehj + wgrjscgjsszjjehj + jcdlscgjsszjjehj");
	rulesID
			.push("ysgjyzjehj2 = jsjbysgjyzjehj + gfsysgjyzjehj + wgrjysgjyzjehj + jcdlysgjyzjehj");
	rulesID
			.push("ysgjsszjjehj2 = jsjbysgjsszjjehj + gfsysgjsszjjehj + wgrjysgjsszjjehj + jcdlysgjsszjjehj");
	rulesID
			.push("dzsbyzjehj2 = jsjbdzsbyzjehj + gfsdzsbyzjehj + wgrjdzsbyzjehj + jcdldzsbyzjehj");
	rulesID
			.push("dzsbsszjjehj2 = jsjbdzsbsszjjehj + gfsdzsbsszjjehj + wgrjdzsbsszjjehj + jcdldzsbsszjjehj");
	rulesID
			.push("qtyzjehj2 = jsjbqtyzjehj + gfsqtyzjehj + wgrjqtyzjehj + jcdlqtyzjehj");
	rulesID
			.push("qtsszjjehj2 = jsjbqtsszjjehj + gfsqtsszjjehj + wgrjqtsszjjehj + jcdlqtsszjjehj");
	rulesID
			.push("hjyzjehj2 = jsjbhjyzjehj + gfshjyzjehj + wgrjhjyzjehj + jcdlhjyzjehj");
	rulesID
			.push("hjkjzjjehj2 = jsjbhjkjzjjehj + gfshjkjzjjehj + wgrjhjkjzjjehj + jcdlhjkjzjjehj");
	rulesID
			.push("hjzczjjehj2 = jsjbhjzczjjehj + gfshjzczjjehj + wgrjhjzczjjehj + jcdlhjzczjjehj");
	rulesID
			.push("hjsszjjehj2 = jsjbhjsszjjehj + gfshjsszjjehj + wgrjhjsszjjehj + jcdlhjsszjjehj");
	rulesID
			.push("hjnsjsjehj2 = jsjbhjnsjsjehj + gfshjnsjsjehj + wgrjhjnsjsjehj + jcdlhjnsjsjehj");
	rulesID
			.push("hjjszjyhtjjehj2 = jsjbhjjszjyhtjjehj + gfshjjszjyhtjjehj + wgrjhjjszjyhtjjehj + jcdlhjjszjyhtjjehj");
	calObj.setRulesID(rulesID);
	calObj.negative = false;
	calObj.type = "1";
	initCalTable(calObj);
}
