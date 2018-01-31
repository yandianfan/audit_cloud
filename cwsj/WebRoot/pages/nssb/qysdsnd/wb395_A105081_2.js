var jsonContent;
var calObj;

var selAutoFlag;
var autoSel;
var configuration;
var autoComplete;
var dataSource;
var hyzxlDataSource = new Array();

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow("/nssb/wb395/wb395_A105081__2TbSm.html");
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
					}, '-', {
						text : "查看信息",
						iconCls : "fb",
						handler : function() {
							openMsgWindow();// 公用方法
						},
						scope : this

					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395A105081_2Action.do?handleCode=printPage&pzXh="
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
	calObj = new caltb('tab1');
	calObj.negative = true;
	calObj.type = "1";
	calObj.setRulesID(ymkj_getRulesX("tab1"));

	initCalTable(calObj);

	selAutoFlag = true;

	configuration = {
		instanceName : "autoComplete",
		textbox : $ES("hymc")[0],
		dataSource : new Array()
	};

	autoComplete = new neverModules.modules.autocomplete(configuration);
	autoComplete.useContent = true;
	autoComplete.create();
	autoComplete.callback = function(autocompleteValue, autocompleteContent,
			textObj) {
		if (typeof(blurAfterCall) == "function") {
			blurAfterCall(autocompleteValue, autocompleteContent, textObj);
		}
	}

	jsonContent = eval("(" + $F('bizData') + ")");
	var rowInfo;
	if ($F('handleCode') == "initForm") {
		var defaultList = jsonContent.defaultList;
		if (defaultList != null) {
			for (var i = 0; i < defaultList.length; i++) {
				rowInfo = defaultList[i];
				// 征收品目代码
				$ES('hybj')[0].value = rowInfo.content;

				$ES('hymc')[0].value = rowInfo.text;
				if (rowInfo.content == "07") {
					document.getElementById("unableinput1").style.display = "block";
					document.getElementById("unableinput2").style.display = "block";
					document.getElementById("unableinput3").style.display = "block";
				}

			}
		}
		for (var i = 0; i < $ES("sytj").length; i++) {
			if (i != 0 && i != 2 && i != 6) {
				$ES("sytj")[i].parentElement.children[0].checked = true;
				$ES("sytj")[i].value = "01";
			}
		}
	}
	if ($F('handleCode') == "queryData") {
		var bizData = jsonContent.BIZDATA;
		for (var i = 0; i < bizData.length; i++) {
			rowInfo = bizData[i];
			if (parseInt(rowInfo.sbmxxh) == 2) {
				$ES('hybj')[0].value = rowInfo.hybj;
				$ES('hymc')[0].value = rowInfo.hymc;
			}
			$ES('fwjzyz')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.fwjzyz;
			$ES('fwjzbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.fwjzbqzjje;
			$ES('fwjzljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.fwjzljzjje;
			$ES('scsbyz')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.scsbyz;
			$ES('scsbbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.scsbbqzjje;
			$ES('scsbljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.scsbljzjje;
			$ES('scgjyz')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.scgjyz;
			$ES('scgjbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.scgjbqzjje;
			$ES('scgjljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.scgjljzjje;
			$ES('ysgjyz')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.ysgjyz;
			$ES('ysgjbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.ysgjbqzjje;
			$ES('ysgjljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.ysgjljzjje;
			$ES('dzsbyz')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.dzsbyz;
			$ES('dzsbbqzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.dzsbbqzjje;
			$ES('dzsbljzjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.dzsbljzjje;
			$ES('hjyz')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.hjyz;
			$ES('hjbqzjzczjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.hjbqzjzczjje;
			$ES('hjbqzjjszjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.hjbqzjjszjje;
			$ES('hjljzjzczjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.hjljzjzczjje;
			$ES('hjljzjjszjje')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.hjljzjjszjje;
			$ES('sytj')[parseInt(rowInfo.sbmxxh) - 1].value = rowInfo.sytj;
			if (rowInfo.sytj == "01") {
				$ES('sytj')[parseInt(rowInfo.sbmxxh) - 1].parentElement.children[0].checked = true;
			} else if (rowInfo.sytj == "02") {
				$ES('sytj')[parseInt(rowInfo.sbmxxh) - 1].parentElement.children[2].checked = true;
				initQueryData(parseInt(rowInfo.sbmxxh) - 1);
			} else if (rowInfo.sytj == "03") {
				$ES('sytj')[parseInt(rowInfo.sbmxxh) - 1].parentElement.children[4].checked = true;
				initQueryData(parseInt(rowInfo.sbmxxh) - 1);
			}

		}
	}
	runRulesForID(calObj);

	if ($ES('hybj')[0].value == "07") {

		$ES("fwjzyz")[1].value = "";
		$ES("fwjzyz")[1].style.textAlign = "center";
		$ES("fwjzyz")[1].readOnly = true;
		$ES("fwjzyz")[1].className = "fsrx";
		$ES("fwjzyz")[1].style.display = "none";
		$ES("fwjzbqzjje")[1].value = "";
		$ES("fwjzbqzjje")[1].style.textAlign = "center";
		$ES("fwjzbqzjje")[1].readOnly = true;
		$ES("fwjzbqzjje")[1].className = "fsrx";
		$ES("fwjzbqzjje")[1].style.display = "none";
		$ES("fwjzljzjje")[1].value = "";
		$ES("fwjzljzjje")[1].style.textAlign = "center";
		$ES("fwjzljzjje")[1].readOnly = true;
		$ES("fwjzljzjje")[1].className = "fsrx";
		$ES("fwjzljzjje")[1].style.display = "none";

		document.getElementById("unableinput1").style.display = "block";
		document.getElementById("unableinput2").style.display = "block";
		document.getElementById("unableinput3").style.display = "block";
	}

	if (!isReadPage()) {
		for (var i = 0; i < $ES("hymc").length; i++) {
			if ($ES("hymc")[i].readOnly != true) {
				$ES("hymc")[i].onkeydown = function() {
					autoEvent(this);
				}
				$ES("hymc")[i].ondblclick = function() {
					autoExpand(this);
				}
				$ES("hymc")[i].onchange = function() {
					clearRow(this);
				}
			}
		}

	}
}

function clearRow(obj) {
	if (selAutoFlag == false) {
		obj.value = "";
	}

	var index = obj.parentNode.parentNode.rowIndex - 4;
	if (trim(obj.value).empty() || (obj.checked == true && obj.value == "02")
			|| (obj.checked == true && obj.value == "03")) {
		$ES('fwjzyz')[index].value = "";
		$ES('fwjzbqzjje')[index].value = "";
		$ES('fwjzljzjje')[index].value = "";
		$ES('scsbyz')[index].value = "";
		$ES('scsbbqzjje')[index].value = "";
		$ES('scsbljzjje')[index].value = "";
		$ES('scgjyz')[index].value = "";
		$ES('scgjbqzjje')[index].value = "";
		$ES('scgjljzjje')[index].value = "";
		$ES('ysgjyz')[index].value = "";
		$ES('ysgjbqzjje')[index].value = "";
		$ES('ysgjljzjje')[index].value = "";
		$ES('dzsbyz')[index].value = "";
		$ES('dzsbbqzjje')[index].value = "";
		$ES('dzsbljzjje')[index].value = "";
		$ES('hjyz')[index].value = "";
		$ES('hjbqzjzczjje')[index].value = "";
		$ES('hjbqzjjszjje')[index].value = "";
		$ES('hjljzjzczjje')[index].value = "";
		$ES('hjljzjjszjje')[index].value = "";
		runRulesForID(calObj);

	}
}
function autoEvent(obj) {
	selAutoFlag = false;
	if (obj.name == "hymc") {
		if (hyzxlDataSource.length == 0) {
			for (var i = 0; i < jsonContent.autoSel.length; i++) {
				if (jsonContent.autoSel[i].parentCode == "") {
					hyzxlDataSource.push(jsonContent.autoSel[i]);
				}
			}
		}
		autoComplete._dataSource = hyzxlDataSource;
	}
	autoComplete.textbox = obj;
	autoComplete.returnBox = obj;
	autoComplete.hdleEvent(event);
}

function autoExpand(obj) {
	if (obj.name == "hymc") {
		if (hyzxlDataSource.length == 0) {
			for (var i = 0; i < jsonContent.autoSel.length; i++) {
				if (jsonContent.autoSel[i].parentCode == "") {
					hyzxlDataSource.push(jsonContent.autoSel[i]);
				}
			}
		}
		autoComplete._dataSource = hyzxlDataSource;
	}
	autoComplete.textbox = obj;
	autoComplete.returnBox = obj;
	autoComplete.expandAllItem();
}

function blurAfterCall(autocompleteValue, autocompleteContent, textObj) {
	selAutoFlag = true;
	var index = textObj.parentNode.parentNode.rowIndex - 5;
	if (textObj.name == "hymc") {
		$ES('hybj')[index].value = autocompleteContent;

		if ($ES('hybj')[index].value == "07") {
			$ES("fwjzyz")[index + 1].value = "";
			$ES("fwjzyz")[index + 1].style.textAlign = "center";
			$ES("fwjzyz")[index + 1].readOnly = true;
			$ES("fwjzyz")[index + 1].className = "fsrx";
			$ES("fwjzyz")[index + 1].style.display = "none";
			$ES("fwjzbqzjje")[index + 1].value = "";
			$ES("fwjzbqzjje")[index + 1].style.textAlign = "center";
			$ES("fwjzbqzjje")[index + 1].readOnly = true;
			$ES("fwjzbqzjje")[index + 1].className = "fsrx";
			$ES("fwjzbqzjje")[index + 1].style.display = "none";
			$ES("fwjzljzjje")[index + 1].value = "";
			$ES("fwjzljzjje")[index + 1].style.textAlign = "center";
			$ES("fwjzljzjje")[index + 1].readOnly = true;
			$ES("fwjzljzjje")[index + 1].className = "fsrx";
			$ES("fwjzljzjje")[index + 1].style.display = "none";
			$ES("scsbyz")[index].value = "";
			$ES("scsbbqzjje")[index].value = "";
			$ES("scsbljzjje")[index].value = "";
			$ES("scgjyz")[index].value = "";
			$ES("scgjbqzjje")[index].value = "";
			$ES("scgjljzjje")[index].value = "";
			$ES("ysgjyz")[index].value = "";
			$ES("ysgjbqzjje")[index].value = "";
			$ES("ysgjljzjje")[index].value = "";
			$ES("dzsbyz")[index].value = "";
			$ES("dzsbbqzjje")[index].value = "";
			$ES("dzsbljzjje")[index].value = "";
			$ES("hjyz")[index].value = "";
			$ES("hjbqzjzczjje")[index].value = "";
			$ES("hjbqzjjszjje")[index].value = "";
			$ES("hjljzjzczjje")[index].value = "";
			$ES("hjljzjjszjje")[index].value = "";

			$ES("scsbyz")[index + 4].readOnly = true;
			$ES("scsbbqzjje")[index + 4].readOnly = true;
			$ES("scsbljzjje")[index + 4].readOnly = true;
			$ES("scgjyz")[index + 4].readOnly = true;
			$ES("scgjbqzjje")[index + 4].readOnly = true;
			$ES("scgjljzjje")[index + 4].readOnly = true;
			$ES("ysgjyz")[index + 4].readOnly = true;
			$ES("ysgjbqzjje")[index + 4].readOnly = true;
			$ES("ysgjljzjje")[index + 4].readOnly = true;
			$ES("dzsbyz")[index + 4].readOnly = true;
			$ES("dzsbbqzjje")[index + 4].readOnly = true;
			$ES("dzsbljzjje")[index + 4].readOnly = true;
			$ES("hjyz")[index + 4].readOnly = true;
			$ES("hjbqzjzczjje")[index + 4].readOnly = true;
			$ES("hjbqzjjszjje")[index + 4].readOnly = true;
			$ES("hjljzjzczjje")[index + 4].readOnly = true;
			$ES("hjljzjjszjje")[index + 4].readOnly = true;

			$ES("scsbyz")[index + 4].className = "fsrx";
			$ES("scsbbqzjje")[index + 4].className = "fsrx";
			$ES("scsbljzjje")[index + 4].className = "fsrx";
			$ES("scgjyz")[index + 4].className = "fsrx";
			$ES("scgjbqzjje")[index + 4].className = "fsrx";
			$ES("scgjljzjje")[index + 4].className = "fsrx";
			$ES("ysgjyz")[index + 4].className = "fsrx";
			$ES("ysgjbqzjje")[index + 4].className = "fsrx";
			$ES("ysgjljzjje")[index + 4].className = "fsrx";
			$ES("dzsbyz")[index + 4].className = "fsrx";
			$ES("dzsbbqzjje")[index + 4].className = "fsrx";
			$ES("dzsbljzjje")[index + 4].className = "fsrx";
			$ES("hjyz")[index + 4].className = "fsrx";
			$ES("hjbqzjzczjje")[index + 4].className = "fsrx";
			$ES("hjbqzjjszjje")[index + 4].className = "fsrx";
			$ES("hjljzjzczjje")[index + 4].className = "fsrx";
			$ES("hjljzjjszjje")[index + 4].className = "fsrx";

			document.getElementById("unableinput1").style.display = "block";
			document.getElementById("unableinput2").style.display = "block";
			document.getElementById("unableinput3").style.display = "block";
			$ES("sytj3")[1].checked = true;
			$ES("sytj3")[1].parentElement.children[5].value = "02";

		} else {
			if ($ES("sytj")[1].value == "01") {
				$ES("fwjzyz")[index + 1].style.textAlign = "right";
				$ES("fwjzyz")[index + 1].className = "srx";

				$ES("fwjzyz")[index + 1].readOnly = false;
				$ES("fwjzbqzjje")[index + 1].style.textAlign = "right";
				$ES("fwjzbqzjje")[index + 1].className = "srx";

				$ES("fwjzbqzjje")[index + 1].readOnly = false;
				$ES("fwjzljzjje")[index + 1].style.textAlign = "right";
//				$ES("fwjzljzjje")[index + 1].className = "srx";
//
//				$ES("fwjzljzjje")[index + 1].readOnly = false;
			}
			
			$ES("fwjzyz")[index + 1].style.display = "block";
			$ES("fwjzbqzjje")[index + 1].style.display = "block";
			$ES("fwjzljzjje")[index + 1].style.display = "block";
			document.getElementById("unableinput1").style.display = "none";
			document.getElementById("unableinput2").style.display = "none";
			document.getElementById("unableinput3").style.display = "none";

			$ES("scsbyz")[index + 4].readOnly = false;
			$ES("scsbbqzjje")[index + 4].readOnly = false;
			$ES("scgjyz")[index + 4].readOnly = false;
			$ES("scgjbqzjje")[index + 4].readOnly = false;
			$ES("ysgjyz")[index + 4].readOnly = false;
			$ES("ysgjbqzjje")[index + 4].readOnly = false;
			$ES("dzsbyz")[index + 4].readOnly = false;
			$ES("dzsbbqzjje")[index + 4].readOnly = false;
			$ES("hjbqzjzczjje")[index + 4].readOnly = false;
			$ES("hjljzjzczjje")[index + 4].readOnly = false;

			$ES("scsbyz")[index + 4].className = "srx";
			$ES("scsbbqzjje")[index + 4].className = "srx";
			$ES("scgjyz")[index + 4].className = "srx";
			$ES("scgjbqzjje")[index + 4].className = "srx";
			$ES("ysgjyz")[index + 4].className = "srx";
			$ES("ysgjbqzjje")[index + 4].className = "srx";
			$ES("dzsbyz")[index + 4].className = "srx";
			$ES("dzsbbqzjje")[index + 4].className = "srx";
			$ES("hjbqzjzczjje")[index + 4].className = "srx";
			$ES("hjljzjzczjje")[index + 4].className = "srx";

			$ES("sytj3")[0].checked = true;
			$ES("sytj3")[1].parentElement.children[5].value = "01";
		}
	}

	runRulesForID(calObj);
}

function A105081_2js() {
	if ($ES('hybj')[0].value == "07") {
		$("#gdzcscsbyzhj").val("");
		$("#gdzcscsbbqzjjehj").val("");
		$("#gdzcscsbljzjjehj").val("");
		$("#gdzcscgjyzhj").val("");
		$("#gdzcscgjbqzjjehj").val("");
		$("#gdzcscgjljzjjehj").val("");
		$("#gdzcysgjyzhj").val("");
		$("#gdzcysgjbqzjjehj").val("");
		$("#gdzcysgjljzjjehj").val("");
		$("#gdzcdzsbyzhj").val("");
		$("#gdzcdzsbbqzjjehj").val("");
		$("#gdzcdzsbljzjjehj").val("");
		$("#gdzchjyzhj").val("");
		$("#gdzchjbqzjzczjjehj").val("");
		$("#gdzchjbqzjjszjjehj").val("");
		$("#gdzchjljzjzczjjehj").val("");
		$("#gdzchjljzjjszjjehj").val("");
	}
}

function sytjOper(Obj) {
	var index = Obj.parentNode.parentNode.rowIndex - 4;
	Obj.parentElement.children[5].value = Obj.value;

	if ($ES("sytj")[1].value == "01") {
		$ES("fwjzyz")[1].readOnly = false;
		$ES("fwjzbqzjje")[1].readOnly = false;
//		$ES("fwjzljzjje")[1].readOnly = false;
		$ES("fwjzyz")[1].className = "srx";
		$ES("fwjzbqzjje")[1].className = "srx";
//		$ES("fwjzljzjje")[1].className = "srx";
		
//		$ES("scsbljzjje")[index].readOnly = false;	
//		$ES("scgjljzjje")[index].readOnly = false;
//		$ES("ysgjljzjje")[index].readOnly = false;
//		$ES("dzsbljzjje")[index].readOnly = false;
//		
//		$ES("scsbljzjje")[index].className = "srx";
//		$ES("scgjljzjje")[index].className = "srx";
//		$ES("ysgjljzjje")[index].className = "srx";
//		$ES("dzsbljzjje")[index].className = "srx";
	}
	$ES("scsbyz")[index].readOnly = false;
	$ES("scsbbqzjje")[index].readOnly = false;
	$ES("scgjyz")[index].readOnly = false;
	$ES("scgjbqzjje")[index].readOnly = false;
	$ES("ysgjyz")[index].readOnly = false;
	$ES("ysgjbqzjje")[index].readOnly = false;
	$ES("dzsbyz")[index].readOnly = false;
	$ES("dzsbbqzjje")[index].readOnly = false;
	$ES("hjbqzjzczjje")[index].readOnly = false;
	$ES("hjljzjzczjje")[index].readOnly = false;
	$ES("scsbyz")[index].className = "srx";
	$ES("scsbbqzjje")[index].className = "srx";
	$ES("scgjyz")[index].className = "srx";
	$ES("scgjbqzjje")[index].className = "srx";
	$ES("ysgjyz")[index].className = "srx";
	$ES("ysgjbqzjje")[index].className = "srx";
	$ES("dzsbyz")[index].className = "srx";
	$ES("dzsbbqzjje")[index].className = "srx";
	$ES("hjbqzjzczjje")[index].className = "srx";
	$ES("hjljzjzczjje")[index].className = "srx";

	if (Obj.value != "01") {

		initQueryData(index);

		$ES("fwjzyz")[index].readOnly = true;
		$ES("fwjzbqzjje")[index].readOnly = true;
//		$ES("fwjzljzjje")[index].readOnly = true;

		$ES("scsbyz")[index].readOnly = true;
		$ES("scsbbqzjje")[index].readOnly = true;
//		$ES("scsbljzjje")[index].readOnly = true;
		$ES("scgjyz")[index].readOnly = true;
		$ES("scgjbqzjje")[index].readOnly = true;
//		$ES("scgjljzjje")[index].readOnly = true;
		$ES("ysgjyz")[index].readOnly = true;
		$ES("ysgjbqzjje")[index].readOnly = true;
//		$ES("ysgjljzjje")[index].readOnly = true;
		$ES("dzsbyz")[index].readOnly = true;
		$ES("dzsbbqzjje")[index].readOnly = true;
//		$ES("dzsbljzjje")[index].readOnly = true;
		$ES("hjyz")[index].readOnly = true;
		$ES("hjbqzjzczjje")[index].readOnly = true;
		$ES("hjbqzjjszjje")[index].readOnly = true;
		$ES("hjljzjzczjje")[index].readOnly = true;
		$ES("hjljzjjszjje")[index].readOnly = true;

		$ES("fwjzyz")[index].className = "fsrx";
		$ES("fwjzbqzjje")[index].className = "fsrx";
//		$ES("fwjzljzjje")[index].className = "fsrx";
		$ES("scsbyz")[index].className = "fsrx";
		$ES("scsbbqzjje")[index].className = "fsrx";
//		$ES("scsbljzjje")[index].className = "fsrx";
		$ES("scgjyz")[index].className = "fsrx";
		$ES("scgjbqzjje")[index].className = "fsrx";
//		$ES("scgjljzjje")[index].className = "fsrx";
		$ES("ysgjyz")[index].className = "fsrx";
		$ES("ysgjbqzjje")[index].className = "fsrx";
//		$ES("ysgjljzjje")[index].className = "fsrx";
		$ES("dzsbyz")[index].className = "fsrx";
		$ES("dzsbbqzjje")[index].className = "fsrx";
//		$ES("dzsbljzjje")[index].className = "fsrx";
		$ES("hjyz")[index].className = "fsrx";
		$ES("hjbqzjzczjje")[index].className = "fsrx";
		$ES("hjbqzjjszjje")[index].className = "fsrx";
		$ES("hjljzjzczjje")[index].className = "fsrx";
		$ES("hjljzjjszjje")[index].className = "fsrx";
	}

	// clearRow(Obj);
}

function initQueryData(index) {

	$ES("fwjzyz")[index].readOnly = true;
	$ES("fwjzbqzjje")[index].readOnly = true;
	$ES("fwjzljzjje")[index].readOnly = true;

	$ES("scsbyz")[index].readOnly = true;
	$ES("scsbbqzjje")[index].readOnly = true;
	$ES("scsbljzjje")[index].readOnly = true;
	$ES("scgjyz")[index].readOnly = true;
	$ES("scgjbqzjje")[index].readOnly = true;
	$ES("scgjljzjje")[index].readOnly = true;
	$ES("ysgjyz")[index].readOnly = true;
	$ES("ysgjbqzjje")[index].readOnly = true;
	$ES("ysgjljzjje")[index].readOnly = true;
	$ES("dzsbyz")[index].readOnly = true;
	$ES("dzsbbqzjje")[index].readOnly = true;
	$ES("dzsbljzjje")[index].readOnly = true;
	$ES("hjyz")[index].readOnly = true;
	$ES("hjbqzjzczjje")[index].readOnly = true;
	$ES("hjbqzjjszjje")[index].readOnly = true;
	$ES("hjljzjzczjje")[index].readOnly = true;
	$ES("hjljzjjszjje")[index].readOnly = true;

	$ES("fwjzyz")[index].className = "fsrx";
	$ES("fwjzbqzjje")[index].className = "fsrx";
	$ES("fwjzljzjje")[index].className = "fsrx";
	$ES("scsbyz")[index].className = "fsrx";
	$ES("scsbbqzjje")[index].className = "fsrx";
	$ES("scsbljzjje")[index].className = "fsrx";
	$ES("scgjyz")[index].className = "fsrx";
	$ES("scgjbqzjje")[index].className = "fsrx";
	$ES("scgjljzjje")[index].className = "fsrx";
	$ES("ysgjyz")[index].className = "fsrx";
	$ES("ysgjbqzjje")[index].className = "fsrx";
	$ES("ysgjljzjje")[index].className = "fsrx";
	$ES("dzsbyz")[index].className = "fsrx";
	$ES("dzsbbqzjje")[index].className = "fsrx";
	$ES("dzsbljzjje")[index].className = "fsrx";
	$ES("hjyz")[index].className = "fsrx";
	$ES("hjbqzjzczjje")[index].className = "fsrx";
	$ES("hjbqzjjszjje")[index].className = "fsrx";
	$ES("hjljzjzczjje")[index].className = "fsrx";
	$ES("hjljzjjszjje")[index].className = "fsrx";
}

function submitData() {
	tempSave();
}
function tempSave(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("固定资产加速折旧、扣除明细表暂存");
	$("#handleCode").val("tempSave");
	$("#proMessage").val("");
	waitDialog();
//	new Ajax.Request('/WB395A105081_2Action.do', {
//				method : 'post',
//				parameters : $('WB395A105081_2Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", null, null, "WB395IndexForm");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105081_2Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105081_2Form').serialize(),
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
