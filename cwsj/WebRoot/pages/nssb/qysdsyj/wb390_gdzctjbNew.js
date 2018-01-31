var a;
var b;
var rulesID;
var rulesbID;
var bascicCheckErrorMessage;
var configuration;
var autoComplete;
var selAutoFlag;
var hcmc;
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
							openMaxWindow('/nssb/wb390/wb390_gdzctjb_TbSm.html');
						},
						scope : this
					}, {
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
							openMsgWindow();
						},
						scope : this
					}, '-', {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB390gdzctjbNewAction.do?handleCode=printPage&pzxh="
									+ $F('pzxh')+ "&sessionId="
									+ $F("sessionId"));
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
		iconDialog('初始化异常', 'ERROR');
	}
});

function initPage() {
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	// calObj = new caltb("tab1");
	// calObj.setRules(ymkj_getRulesX("tab1"));
	// calObj.negative = true;
	// initCalTable(calObj);
	// runRulesForName(calObj);

	calObj = new caltb('tab1', true);
	calObj.type = "1";
	calObj.negative = true;
	rulesID = new Array();
	// 1
	rulesID.push("hjyje3 = fjyje3 + jqyje3");
	rulesID.push("hjyje4 = fjyje4 + jqyje4");
	rulesID.push("hjyje7 = fjyje7 + jqyje7");
	rulesID.push("hjyje8 = fjyje8 + jqyje8");
	// rulesID.push("hjyje10 = fjyje10 + jqyje10");
	// rulesID.push("hjyje11 = fjyje11 + jqyje11");
	rulesID.push("hjyje13 = fjyje13 + jqyje13");
	rulesID.push("hjyje14 = fjyje14 + jqyje14");
	rulesID.push("hjbqsszjje3 = fjbqje3 + jqbqje3");
	rulesID.push("hjbqsszjje4 = fjbqje4 + jqbqje4");

	// 2
	rulesID.push("hjbqsszjje7 = fjbqje7 + jqbqje7");
	rulesID.push("hjbqsszjje8 = fjbqje8 + jqbqje8");
	// rulesID.push("hjbqsszjje10 = fjbqje10 + jqbqje10");
	// rulesID.push("hjbqsszjje11 = fjbqje11 + jqbqje11");
	rulesID.push("hjbqsszjje13 = fjbqje13 + jqbqje13");
	rulesID.push("hjbqsszjje14 = fjbqje14 + jqbqje14");
	rulesID.push("hjbqnstzje4 = hjbqsszjje4 - hjbqkjzjje4");
	rulesID.push("hjbqnstzje8 = hjbqsszjje8 - hjbqkjzjje8");
	rulesID.push("hjbqnstzje11 = hjbqsszjje11 - hjbqkjzjje11");
	rulesID.push("hjbqnstzje14 = hjbqsszjje14 - hjbqkjzjje14");
	// 3
	rulesID.push("hjbqyhje3 = hjbqsszjje3 - hjbqzczjje3");
	rulesID.push("hjbqyhje7 = hjbqsszjje7 - hjbqzczjje7");
	// rulesID.push("hjbqyhje10 = hjbqsszjje10 - hjbqzczjje10");
	rulesID.push("hjbqyhje13 = hjbqsszjje13 - hjbqzczjje13");
	rulesID.push("hjljsszjje3 = fjljje3 + jqljje3");
	rulesID.push("hjljsszjje4 = fjljje4 + jqljje4");
	rulesID.push("hjljsszjje7 = fjljje7 + jqljje7");
	rulesID.push("hjljsszjje8 = fjljje8 + jqljje8");
	// rulesID.push("hjljsszjje10 = fjljje10 + jqljje10");
	// rulesID.push("hjljsszjje11 = fjljje11 + jqljje11");
	// 4
	rulesID.push("hjljsszjje13 = fjljje13 + jqljje13");
	rulesID.push("hjljsszjje14 = fjljje14 + jqljje14");
	rulesID.push("hjljnstzje4 = hjljsszjje4 - hjljkjzjje4");
	rulesID.push("hjljnstzje8 = hjljsszjje8 - hjljkjzjje8");
	// rulesID.push("hjljnstzje11 = hjljsszjje11 - hjljkjzjje11");
	rulesID.push("hjljnstzje14 = hjljsszjje14 - hjljkjzjje14");
	rulesID.push("hjljyhje3 = hjljsszjje3 - hjljzczjje3");
	rulesID.push("hjljyhje7 = hjljsszjje7 - hjljzczjje7");
	// rulesID.push("hjljyhje10 = hjljsszjje10 - hjljzczjje10");
	rulesID.push("hjljyhje13 = hjljsszjje13 - hjljzczjje13");
	// 5
	rulesID.push("fjyje2 = fjyje3 + fjyje4");
	rulesID.push("fjbqje2 = fjbqje3 + fjbqje4");
	rulesID.push("fjljje2 = fjljje3 + fjljje4");
	rulesID.push("jqyje2 = jqyje3 + jqyje4");
	rulesID.push("jqbqje2 = jqbqje3 + jqbqje4");
	rulesID.push("jqljje2 = jqljje3 + jqljje4");
	rulesID.push("hjyje2 = hjyje3 + hjyje4");
	rulesID.push("hjbqkjzjje2 = hjbqkjzjje3 + hjbqkjzjje4");
	rulesID.push("hjbqzczjje2 = hjbqzczjje3 + hjbqzczjje4");
	rulesID.push("hjbqsszjje2 = hjbqsszjje3 + hjbqsszjje4");
	// 6
	rulesID.push("hjbqnstzje2 = hjbqnstzje3 + hjbqnstzje4");
	rulesID.push("hjbqyhje2 = hjbqyhje3 + hjbqyhje4");
	rulesID.push("hjljkjzjje2 = hjljkjzjje3 + hjljkjzjje4");
	rulesID.push("hjljzczjje2 = hjljzczjje3 + hjljzczjje4");
	rulesID.push("hjljsszjje2 = hjljsszjje3 + hjljsszjje4");
	rulesID.push("hjljnstzje2 = hjljnstzje3 + hjljnstzje4");
	rulesID.push("hjljyhje2 = hjljyhje3 + hjljyhje4");
	rulesID.push("fjyje6 = fjyje7 + fjyje8");
	rulesID.push("fjbqje6 = fjbqje7 + fjbqje8");
	rulesID.push("fjljje6 = fjljje7 + fjljje8");
	// 7

	rulesID.push("jqyje6 = jqyje7 + jqyje8");
	rulesID.push("jqbqje6 = jqbqje7 + jqbqje8");
	rulesID.push("jqljje6 = jqljje7 + jqljje8");
	rulesID.push("hjyje6 = hjyje7 + hjyje8");
	rulesID.push("hjbqkjzjje6 = hjbqkjzjje7 + hjbqkjzjje8");
	rulesID.push("hjbqzczjje6 = hjbqzczjje7 + hjbqzczjje8");
	rulesID.push("hjbqsszjje6 = hjbqsszjje7 + hjbqsszjje8");
	rulesID.push("hjbqnstzje6 = hjbqnstzje7 + hjbqnstzje8");
	rulesID.push("hjbqyhje6 = hjbqyhje7 + hjbqyhje8");
	rulesID.push("hjljkjzjje6 = hjljkjzjje7 + hjljkjzjje8");
	// 8
	rulesID.push("hjljzczjje6 = hjljzczjje7 + hjljzczjje8");
	rulesID.push("hjljsszjje6 = hjljsszjje7 + hjljsszjje8");
	rulesID.push("hjljnstzje6 = hjljnstzje7 + hjljnstzje8");
	rulesID.push("hjljyhje6 = hjljyhje7 + hjljyhje8");
	// rulesID.push("fjyje9 = fjyje10 + fjyje11");
	// rulesID.push("fjbqje9 = fjbqje10 + fjbqje11");
	// rulesID.push("fjljje9 = fjljje10 + fjljje11");
	// rulesID.push("jqyje9 = jqyje10 + jqyje11");
	// rulesID.push("jqbqje9 = jqbqje10 + jqbqje11");
	// rulesID.push("jqljje9 = jqljje10 + jqljje11");
	// 9
	// rulesID.push("hjyje9 = hjyje10 + hjyje11");
	// rulesID.push("hjbqkjzjje9 = hjbqkjzjje10 + hjbqkjzjje11");
	// rulesID.push("hjbqzczjje9 = hjbqzczjje10 + hjbqzczjje11");
	// rulesID.push("hjbqsszjje9 = hjbqsszjje10 + hjbqsszjje11");
	// rulesID.push("hjbqnstzje9 = hjbqnstzje10 + hjbqnstzje11");
	// rulesID.push("hjbqyhje9 = hjbqyhje10 + hjbqyhje11");
	// rulesID.push("hjljkjzjje9 = hjljkjzjje10 + hjljkjzjje11");
	// rulesID.push("hjljzczjje9 = hjljzczjje10 + hjljzczjje11");
	// rulesID.push("hjljsszjje9 = hjljsszjje10 + hjljsszjje11");
	// rulesID.push("hjljnstzje9 = hjljnstzje10 + hjljnstzje11");
	// 10
	// rulesID.push("hjljyhje9 = hjljyhje10 + hjljyhje11");

	// 新开始
	rulesID.push("jqyje9 = jqyje6");
	rulesID.push("jqbqje9 = jqbqje6");
	rulesID.push("jqljje9 = jqljje6");
	rulesID.push("hjyje9 = hjyje6");
	rulesID.push("hjbqkjzjje9 = hjbqkjzjje6");
	rulesID.push("hjbqzczjje9 = hjbqzczjje6");
	rulesID.push("hjbqsszjje9 = hjbqsszjje6");
	rulesID.push("hjbqnstzje9 = hjbqnstzje6");
	rulesID.push("hjbqyhje9 = hjbqyhje6");
	rulesID.push("hjljkjzjje9 = hjljkjzjje6");
	rulesID.push("hjljzczjje9 = hjljzczjje6");
	rulesID.push("hjljsszjje9 = hjljsszjje6");
	rulesID.push("hjljnstzje9 = hjljnstzje6");
	rulesID.push("hjljyhje9 = hjljyhje6");

	rulesID.push("jqyje10 = jqyje7");
	rulesID.push("jqbqje10 = jqbqje7");
	rulesID.push("jqljje10 = jqljje7");
	rulesID.push("hjyje10 = hjyje7");
	rulesID.push("hjbqkjzjje10 = hjbqkjzjje7");
	rulesID.push("hjbqzczjje10 = hjbqzczjje7");
	rulesID.push("hjbqsszjje10 = hjbqsszjje7");
	rulesID.push("hjbqnstzje10 = hjbqnstzje7");
	rulesID.push("hjbqyhje10 = hjbqyhje7");
	rulesID.push("hjljkjzjje10 = hjljkjzjje7");
	rulesID.push("hjljzczjje10 = hjljzczjje7");
	rulesID.push("hjljsszjje10 = hjljsszjje7");
	rulesID.push("hjljnstzje10 = hjljnstzje7");
	rulesID.push("hjljyhje10 = hjljyhje7");

	rulesID.push("jqyje11 = jqyje8");
	rulesID.push("jqbqje11 = jqbqje8");
	rulesID.push("jqljje11 = jqljje8");
	rulesID.push("hjyje11 = hjyje8");
	rulesID.push("hjbqkjzjje11 = hjbqkjzjje8");
	rulesID.push("hjbqzczjje11 = hjbqzczjje8");
	rulesID.push("hjbqsszjje11 = hjbqsszjje8");
	rulesID.push("hjbqnstzje11 = hjbqnstzje8");
	rulesID.push("hjbqyhje11 = hjbqyhje8");
	rulesID.push("hjljkjzjje11 = hjljkjzjje8");
	rulesID.push("hjljzczjje11 = hjljzczjje8");
	rulesID.push("hjljsszjje11 = hjljsszjje8");
	rulesID.push("hjljnstzje11 = hjljnstzje8");
	rulesID.push("hjljyhje11 = hjljyhje8");

	// 新结束

	rulesID.push("fjyje12 = fjyje13 + fjyje14");
	rulesID.push("fjbqje12 = fjbqje13 + fjbqje14");
	rulesID.push("fjljje12 = fjljje13 + fjljje14");
	rulesID.push("jqyje12 = jqyje13 + jqyje14");
	rulesID.push("jqbqje12 = jqbqje13 + jqbqje14");
	rulesID.push("jqljje12 = jqljje13 + jqljje14");
	rulesID.push("hjyje12 = hjyje13 + hjyje14");
	rulesID.push("hjbqkjzjje12 = hjbqkjzjje13 + hjbqkjzjje14");
	rulesID.push("hjbqzczjje12 = hjbqzczjje13 + hjbqzczjje14");
	// 11
	rulesID.push("hjbqsszjje12 = hjbqsszjje13 + hjbqsszjje14");
	rulesID.push("hjbqnstzje12 = hjbqnstzje13 + hjbqnstzje14");
	rulesID.push("hjbqyhje12 = hjbqyhje13 + hjbqyhje14");
	rulesID.push("hjljkjzjje12 = hjljkjzjje13 + hjljkjzjje14");
	rulesID.push("hjljzczjje12 = hjljzczjje13 + hjljzczjje14");
	rulesID.push("hjljsszjje12 = hjljsszjje13 + hjljsszjje14");
	rulesID.push("hjljnstzje12 = hjljnstzje13 + hjljnstzje14");
	rulesID.push("hjljyhje12 = hjljyhje13 + hjljyhje14");
	rulesID.push("fjyje1 = fjyje2");
	rulesID.push("fjbqje1 = fjbqje2");
	// 12
	rulesID.push("fjljje1 = fjljje2");
	rulesID.push("jqyje1 = jqyje2");
	rulesID.push("jqbqje1 = jqbqje2");
	rulesID.push("jqljje1 = jqljje2");
	rulesID.push("hjyje1 = hjyje2");
	rulesID.push("hjbqkjzjje1 = hjbqkjzjje2");
	rulesID.push("hjbqzczjje1 = hjbqzczjje2");
	rulesID.push("hjbqsszjje1 = hjbqsszjje2");
	rulesID.push("hjbqnstzje1 = hjbqnstzje2");
	rulesID.push("hjbqyhje1 = hjbqyhje2");
	// 13
	rulesID.push("hjljkjzjje1 = hjljkjzjje2");
	rulesID.push("hjljzczjje1 = hjljzczjje2");
	rulesID.push("hjljsszjje1 = hjljsszjje2");
	rulesID.push("hjljnstzje1 = hjljnstzje2");
	rulesID.push("hjljyhje1 = hjljyhje2");
	rulesID.push("fjyje5 = fjyje6 + fjyje12");
	rulesID.push("fjbqje5 = fjbqje6 + fjbqje12");
	rulesID.push("fjljje5 = fjljje6 + fjljje12");
	rulesID.push("jqyje5 = jqyje6 + jqyje12");
	rulesID.push("jqbqje5 = jqbqje6 + jqbqje12");
	// 14
	rulesID.push("jqljje5 = jqljje6 + jqljje12");
	rulesID.push("hjyje5 = hjyje6 + hjyje12");
	rulesID.push("hjbqkjzjje5 = hjbqkjzjje6 + hjbqkjzjje12");
	rulesID.push("hjbqzczjje5 = hjbqzczjje6 + hjbqzczjje12");
	rulesID.push("hjbqsszjje5 = hjbqsszjje6 + hjbqsszjje12");
	rulesID.push("hjbqnstzje5 = hjbqnstzje6 + hjbqnstzje12");
	rulesID.push("hjbqyhje5 = hjbqyhje6 + hjbqyhje12");
	rulesID.push("hjljkjzjje5 = hjljkjzjje6 + hjljkjzjje12");
	rulesID.push("hjljzczjje5 = hjljzczjje6 + hjljzczjje12");
	rulesID.push("hjljsszjje5 = hjljsszjje6 + hjljsszjje12");
	// 15
	rulesID.push("hjljnstzje5 = hjljnstzje6 + hjljnstzje12");
	rulesID.push("hjljyhje5 = hjljyhje6 + hjljyhje12");
	rulesID.push("fjyje15 = fjyje1 + fjyje5");
	rulesID.push("fjbqje15 = fjbqje1 + fjbqje5");
	rulesID.push("fjljje15 = fjljje1 + fjljje5");
	rulesID.push("jqyje15 = jqyje1 + jqyje5");
	rulesID.push("jqbqje15 = jqbqje1 + jqbqje5");
	rulesID.push("jqljje15 = jqljje1 + jqljje5");
	rulesID.push("hjyje15 = hjyje1 + hjyje5");
	rulesID.push("hjbqkjzjje15 = hjbqkjzjje1 + hjbqkjzjje5");
	// 159
	rulesID.push("hjbqzczjje15 = hjbqzczjje1 + hjbqzczjje5");
	rulesID.push("hjbqsszjje15 = hjbqsszjje1 + hjbqsszjje5");
	rulesID.push("hjbqnstzje15 = hjbqnstzje1 + hjbqnstzje5");
	rulesID.push("hjbqyhje15 = hjbqyhje1 + hjbqyhje5");
	rulesID.push("hjljkjzjje15 = hjljkjzjje1 + hjljkjzjje5");
	rulesID.push("hjljzczjje15 = hjljzczjje1 + hjljzczjje5");
	rulesID.push("hjljsszjje15 = hjljsszjje1 + hjljsszjje5");
	rulesID.push("hjljnstzje15 = hjljnstzje1 + hjljnstzje5");
	rulesID.push("hjljyhje15 = hjljyhje1 + hjljyhje5");
	calObj.setRulesID(rulesID);
	// 计算完成后调用：行次2是“其他”，第一行值清空
	calObj.customrulesEnd = function() {
		if ($ES('hybj')[1].value == "07") {
			$ES("fjyje")[0].value = "";
			$ES("fjbqje")[0].value = "";
			$ES("fjljje")[0].value = "";
			$ES("jqyje")[0].value = "";
			$ES("jqbqje")[0].value = "";
			$ES("jqljje")[0].value = "";
			$ES("hjyje")[0].value = "";
			$ES("hjbqkjzjje")[0].value = "";
			$ES("hjbqzczjje")[0].value = "";
			$ES("hjbqsszjje")[0].value = "";
			$ES("hjbqnstzje")[0].value = "";
			$ES("hjbqyhje")[0].value = "";
			$ES("hjljkjzjje")[0].value = "";
			$ES("hjljzczjje")[0].value = "";
			$ES("hjljsszjje")[0].value = "";
			$ES("hjljnstzje")[0].value = "";
			$ES("hjljyhje")[0].value = "";
		}
	}
	initCalTable(calObj);
	runRulesForID(calObj);

	jsonContent = eval("(" + $F("bizData") + ")");
	if (null != jsonContent.BIZDATA) {
		var bizData = jsonContent.BIZDATA;
		var rowInfo;
		for (var i = 0; i < bizData.length; i++) {
			if (i < $ES("xmmc").length) {
				rowInfo = bizData[i];
				$ES('hybj')[i].value = rowInfo.hybj;
				$ES("fjyje")[i].value = sciToNumber(rowInfo.fjyje);
				$ES("fjbqje")[i].value = sciToNumber(rowInfo.fjbqje);
				$ES("fjljje")[i].value = sciToNumber(rowInfo.fjljje);
				$ES("jqyje")[i].value = sciToNumber(rowInfo.jqyje);
				$ES("jqbqje")[i].value = sciToNumber(rowInfo.jqbqje);
				$ES("jqljje")[i].value = sciToNumber(rowInfo.jqljje);
				$ES("hjyje")[i].value = sciToNumber(rowInfo.hjyje);
				$ES("hjbqkjzjje")[i].value = sciToNumber(rowInfo.hjbqkjzjje);
				$ES("hjbqzczjje")[i].value = sciToNumber(rowInfo.hjbqzczjje);
				$ES("hjbqsszjje")[i].value = sciToNumber(rowInfo.hjbqsszjje);
				$ES("hjbqnstzje")[i].value = sciToNumber(rowInfo.hjbqnstzje);
				$ES("hjbqyhje")[i].value = sciToNumber(rowInfo.hjbqyhje);
				$ES("hjljkjzjje")[i].value = sciToNumber(rowInfo.hjljkjzjje);
				$ES("hjljzczjje")[i].value = sciToNumber(rowInfo.hjljzczjje);
				$ES("hjljsszjje")[i].value = sciToNumber(rowInfo.hjljsszjje);
				$ES("hjljnstzje")[i].value = sciToNumber(rowInfo.hjljnstzje);
				$ES("hjljyhje")[i].value = sciToNumber(rowInfo.hjljyhje);
				$ES("sytj")[i].value = rowInfo.sytj;
				if (i == 1) {
					// 只有第一行需要替换
					var autosel = jsonContent.autoSel;
					// if (autosel != null) {
					// for (var j = 0; j < autosel.length; j++) {
					// if (trim($ES('hybj')[i].value) == trim(autosel[j].content
					// .split("||")[0])) {
					// $ES('xmmc')[i].value = autosel[j].text;
					// if (i = i) {
					// $('temp_xmmc').value = autosel[j].text;
					// }
					// }
					// }
					// }
					if ("07" == $ES('hybj')[i].value) {
						document.getElementById('div_fjyje1').style.display = "";
						document.getElementById('div_fjbqje1').style.display = "";
						document.getElementById('div_fjljje1').style.display = "";
						document.getElementById('div_fjyje3').style.display = "";
						document.getElementById('div_fjbqje3').style.display = "";
						document.getElementById('div_fjljje3').style.display = "";
						document.getElementById('div_fjyje5').style.display = "";
						document.getElementById('div_fjbqje5').style.display = "";
						document.getElementById('div_fjljje5').style.display = "";
						document.getElementById('div_fjyje2').style.display = "none";
						document.getElementById('div_fjbqje2').style.display = "none";
						document.getElementById('div_fjljje2').style.display = "none";
						document.getElementById('div_fjyje4').style.display = "none";
						document.getElementById('div_fjbqje4').style.display = "none";
						document.getElementById('div_fjljje4').style.display = "none";
						document.getElementById('div_fjyje6').style.display = "none";
						document.getElementById('div_fjbqje6').style.display = "none";
						document.getElementById('div_fjljje6').style.display = "none";

						// 其他行业，【行5-1】锁定不予填报，勾选项默认在否（非适用范围）
						// $ES("tmp_sytj_9")[1].checked = true;
						// $ES("sytj")[10].value = "02";

						$ES("fjyje")[10].readOnly = "true";
						$ES("fjbqje")[10].readOnly = "true";
						$ES("fjljje")[10].readOnly = "true";
						$ES("jqyje")[10].readOnly = "true";
						$ES("jqbqje")[10].readOnly = "true";
						$ES("jqljje")[10].readOnly = "true";
						$ES("hjyje")[10].readOnly = "true";
						$ES("hjbqkjzjje")[10].readOnly = "true";
						$ES("hjbqzczjje")[10].readOnly = "true";
						$ES("hjbqsszjje")[10].readOnly = "true";
						$ES("hjbqnstzje")[10].readOnly = "true";
						$ES("hjbqyhje")[10].readOnly = "true";
						$ES("hjljkjzjje")[10].readOnly = "true";
						$ES("hjljzczjje")[10].readOnly = "true";
						$ES("hjljsszjje")[10].readOnly = "true";
						$ES("hjljnstzje")[10].readOnly = "true";
						$ES("hjljyhje")[10].readOnly = "true";

						$ES("fjyje")[10].className = "fsrx";
						$ES("fjbqje")[10].className = "fsrx";
						$ES("fjljje")[10].className = "fsrx";
						$ES("jqyje")[10].className = "fsrx";
						$ES("jqbqje")[10].className = "fsrx";
						$ES("jqljje")[10].className = "fsrx";
						$ES("hjyje")[10].className = "fsrx";
						$ES("hjbqkjzjje")[10].className = "fsrx";
						$ES("hjbqzczjje")[10].className = "fsrx";
						$ES("hjbqsszjje")[10].className = "fsrx";
						$ES("hjbqnstzje")[10].className = "fsrx";
						$ES("hjbqyhje")[10].className = "fsrx";
						$ES("hjljkjzjje")[10].className = "fsrx";
						$ES("hjljzczjje")[10].className = "fsrx";
						$ES("hjljsszjje")[10].className = "fsrx";
						$ES("hjljnstzje")[10].className = "fsrx";
						$ES("hjljyhje")[10].className = "fsrx";

						// 其他行业，【行5-2】锁定不予填报，勾选项默认在否（非适用范围）
						// $ES("tmp_sytj_10")[1].checked = true;
						// $ES("sytj")[11].value = "02";

						$ES("fjyje")[11].readOnly = "true";
						$ES("fjbqje")[11].readOnly = "true";
						$ES("fjljje")[11].readOnly = "true";
						$ES("jqyje")[11].readOnly = "true";
						$ES("jqbqje")[11].readOnly = "true";
						$ES("jqljje")[11].readOnly = "true";
						$ES("hjyje")[11].readOnly = "true";
						$ES("hjbqkjzjje")[11].readOnly = "true";
						$ES("hjbqzczjje")[11].readOnly = "true";
						$ES("hjbqsszjje")[11].readOnly = "true";
						$ES("hjbqnstzje")[11].readOnly = "true";
						$ES("hjbqyhje")[11].readOnly = "true";
						$ES("hjljkjzjje")[11].readOnly = "true";
						$ES("hjljzczjje")[11].readOnly = "true";
						$ES("hjljsszjje")[11].readOnly = "true";
						$ES("hjljnstzje")[11].readOnly = "true";
						$ES("hjljyhje")[11].readOnly = "true";

						$ES("fjyje")[11].className = "fsrx";
						$ES("fjbqje")[11].className = "fsrx";
						$ES("fjljje")[11].className = "fsrx";
						$ES("jqyje")[11].className = "fsrx";
						$ES("jqbqje")[11].className = "fsrx";
						$ES("jqljje")[11].className = "fsrx";
						$ES("hjyje")[11].className = "fsrx";
						$ES("hjbqkjzjje")[11].className = "fsrx";
						$ES("hjbqzczjje")[11].className = "fsrx";
						$ES("hjbqsszjje")[11].className = "fsrx";
						$ES("hjbqnstzje")[11].className = "fsrx";
						$ES("hjbqyhje")[11].className = "fsrx";
						$ES("hjljkjzjje")[11].className = "fsrx";
						$ES("hjljzczjje")[11].className = "fsrx";
						$ES("hjljsszjje")[11].className = "fsrx";
						$ES("hjljnstzje")[11].className = "fsrx";
						$ES("hjljyhje")[11].className = "fsrx";
					} else {
						document.getElementById('div_fjyje1').style.display = "none";
						document.getElementById('div_fjbqje1').style.display = "none";
						document.getElementById('div_fjljje1').style.display = "none";
						document.getElementById('div_fjyje3').style.display = "none";
						document.getElementById('div_fjbqje3').style.display = "none";
						document.getElementById('div_fjljje3').style.display = "none";
						document.getElementById('div_fjyje5').style.display = "none";
						document.getElementById('div_fjbqje5').style.display = "none";
						document.getElementById('div_fjljje5').style.display = "none";
						document.getElementById('div_fjyje2').style.display = "";
						document.getElementById('div_fjbqje2').style.display = "";
						document.getElementById('div_fjljje2').style.display = "";
						document.getElementById('div_fjyje4').style.display = "";
						document.getElementById('div_fjbqje4').style.display = "";
						document.getElementById('div_fjljje4').style.display = "";
						document.getElementById('div_fjyje6').style.display = "";
						document.getElementById('div_fjbqje6').style.display = "";
						document.getElementById('div_fjljje6').style.display = "";
					}
				}
				if ("" != rowInfo.sytj) {
					document.getElementById(("tmp_sytj_" + i)).value = rowInfo.sytj;
					if ("01" == rowInfo.sytj) {
						$ES(("tmp_sytj_" + i))[0].checked = true;
					} else if ("02" == rowInfo.sytj) {
						$ES(("tmp_sytj_" + i))[1].checked = true;
					}
				}
				// 如果使用条件是“是”，加上只读属性
				if ("01" == rowInfo.sytj) {
					$ES("fjyje")[i].readOnly = "";
					$ES("fjbqje")[i].readOnly = "";
					$ES("fjljje")[i].readOnly = "";
					$ES("jqyje")[i].readOnly = "";
					$ES("jqbqje")[i].readOnly = "";
					$ES("jqljje")[i].readOnly = "";
					// $ES("hjyje")[i].readOnly = "";
					$ES("hjbqkjzjje")[i].readOnly = "";
					$ES("hjbqzczjje")[i].readOnly = "";
					// $ES("hjbqsszjje")[i].readOnly = "";
					// $ES("hjbqnstzje")[i].readOnly = "";
					// $ES("hjbqyhje")[i].readOnly = "";
					$ES("hjljkjzjje")[i].readOnly = "";
					$ES("hjljzczjje")[i].readOnly = "";
					// $ES("hjljsszjje")[i].readOnly = "";
					// $ES("hjljnstzje")[i].readOnly = "";
					// $ES("hjljyhje")[i].readOnly = "";

					$ES("fjyje")[i].className = "srx";
					$ES("fjbqje")[i].className = "srx";
					$ES("fjljje")[i].className = "srx";
					$ES("jqyje")[i].className = "srx";
					$ES("jqbqje")[i].className = "srx";
					$ES("jqljje")[i].className = "srx";
					// $ES("hjyje")[i].className = "srx";
					$ES("hjbqkjzjje")[i].className = "srx";
					$ES("hjbqzczjje")[i].className = "srx";
					// $ES("hjbqsszjje")[i].className = "srx";
					// $ES("hjbqnstzje")[i].className = "srx";
					// $ES("hjbqyhje")[i].className = "srx";
					$ES("hjljkjzjje")[i].className = "srx";
					$ES("hjljzczjje")[i].className = "srx";
					// $ES("hjljsszjje")[i].className = "srx";
					// $ES("hjljnstzje")[i].className = "srx";
					// $ES("hjljyhje")[i].className = "srx";
				}
			} else {
				break;
			}
		}
	} else {
		if ("" != $F('temp_hybj')) {
			$ES('hybj')[1].value = $F('temp_hybj');
			var autosel = jsonContent.autoSel;
			// if (autosel != null) {
			// for (var j = 0; j < autosel.length; j++) {
			// if ($F('temp_hybj') == trim(autosel[j].content.split("||")[0])) {
			// $ES('hybj')[1].value = $F('temp_hybj');
			// $ES('xmmc')[1].value = autosel[j].text;
			// $('temp_xmmc').value = autosel[j].text;
			// break;
			// }
			// }
			// }
			if ("07" == $ES('hybj')[1].value) {
				document.getElementById('div_fjyje1').style.display = "";
				document.getElementById('div_fjbqje1').style.display = "";
				document.getElementById('div_fjljje1').style.display = "";
				document.getElementById('div_fjyje3').style.display = "";
				document.getElementById('div_fjbqje3').style.display = "";
				document.getElementById('div_fjljje3').style.display = "";
				document.getElementById('div_fjyje5').style.display = "";
				document.getElementById('div_fjbqje5').style.display = "";
				document.getElementById('div_fjljje5').style.display = "";
				document.getElementById('div_fjyje2').style.display = "none";
				document.getElementById('div_fjbqje2').style.display = "none";
				document.getElementById('div_fjljje2').style.display = "none";
				document.getElementById('div_fjyje4').style.display = "none";
				document.getElementById('div_fjbqje4').style.display = "none";
				document.getElementById('div_fjljje4').style.display = "none";
				document.getElementById('div_fjyje6').style.display = "none";
				document.getElementById('div_fjbqje6').style.display = "none";
				document.getElementById('div_fjljje6').style.display = "none";

				// 其他行业，【行5-1】锁定不予填报，勾选项默认在否（非适用范围）
				// $ES("tmp_sytj_9")[1].checked = true;
				// $ES("sytj")[9].value = "02";

				$ES("fjyje")[9].readOnly = "true";
				$ES("fjbqje")[9].readOnly = "true";
				$ES("fjljje")[9].readOnly = "true";
				$ES("jqyje")[9].readOnly = "true";
				$ES("jqbqje")[9].readOnly = "true";
				$ES("jqljje")[9].readOnly = "true";
				$ES("hjyje")[9].readOnly = "true";
				$ES("hjbqkjzjje")[9].readOnly = "true";
				$ES("hjbqzczjje")[9].readOnly = "true";
				$ES("hjbqsszjje")[9].readOnly = "true";
				$ES("hjbqnstzje")[9].readOnly = "true";
				$ES("hjbqyhje")[9].readOnly = "true";
				$ES("hjljkjzjje")[9].readOnly = "true";
				$ES("hjljzczjje")[9].readOnly = "true";
				$ES("hjljsszjje")[9].readOnly = "true";
				$ES("hjljnstzje")[9].readOnly = "true";
				$ES("hjljyhje")[9].readOnly = "true";

				$ES("fjyje")[9].className = "fsrx";
				$ES("fjbqje")[9].className = "fsrx";
				$ES("fjljje")[9].className = "fsrx";
				$ES("jqyje")[9].className = "fsrx";
				$ES("jqbqje")[9].className = "fsrx";
				$ES("jqljje")[9].className = "fsrx";
				$ES("hjyje")[9].className = "fsrx";
				$ES("hjbqkjzjje")[9].className = "fsrx";
				$ES("hjbqzczjje")[9].className = "fsrx";
				$ES("hjbqsszjje")[9].className = "fsrx";
				$ES("hjbqnstzje")[9].className = "fsrx";
				$ES("hjbqyhje")[9].className = "fsrx";
				$ES("hjljkjzjje")[9].className = "fsrx";
				$ES("hjljzczjje")[9].className = "fsrx";
				$ES("hjljsszjje")[9].className = "fsrx";
				$ES("hjljnstzje")[9].className = "fsrx";
				$ES("hjljyhje")[9].className = "fsrx";

				// 其他行业，【行5-2】锁定不予填报，勾选项默认在否（非适用范围）
				// $ES("tmp_sytj_10")[1].checked = true;
				// $ES("sytj")[10].value = "02";

				$ES("fjyje")[10].readOnly = "true";
				$ES("fjbqje")[10].readOnly = "true";
				$ES("fjljje")[10].readOnly = "true";
				$ES("jqyje")[10].readOnly = "true";
				$ES("jqbqje")[10].readOnly = "true";
				$ES("jqljje")[10].readOnly = "true";
				$ES("hjyje")[10].readOnly = "true";
				$ES("hjbqkjzjje")[10].readOnly = "true";
				$ES("hjbqzczjje")[10].readOnly = "true";
				$ES("hjbqsszjje")[10].readOnly = "true";
				$ES("hjbqnstzje")[10].readOnly = "true";
				$ES("hjbqyhje")[10].readOnly = "true";
				$ES("hjljkjzjje")[10].readOnly = "true";
				$ES("hjljzczjje")[10].readOnly = "true";
				$ES("hjljsszjje")[10].readOnly = "true";
				$ES("hjljnstzje")[10].readOnly = "true";
				$ES("hjljyhje")[10].readOnly = "true";

				$ES("fjyje")[10].className = "fsrx";
				$ES("fjbqje")[10].className = "fsrx";
				$ES("fjljje")[10].className = "fsrx";
				$ES("jqyje")[10].className = "fsrx";
				$ES("jqbqje")[10].className = "fsrx";
				$ES("jqljje")[10].className = "fsrx";
				$ES("hjyje")[10].className = "fsrx";
				$ES("hjbqkjzjje")[10].className = "fsrx";
				$ES("hjbqzczjje")[10].className = "fsrx";
				$ES("hjbqsszjje")[10].className = "fsrx";
				$ES("hjbqnstzje")[10].className = "fsrx";
				$ES("hjbqyhje")[10].className = "fsrx";
				$ES("hjljkjzjje")[10].className = "fsrx";
				$ES("hjljzczjje")[10].className = "fsrx";
				$ES("hjljsszjje")[10].className = "fsrx";
				$ES("hjljnstzje")[10].className = "fsrx";
				$ES("hjljyhje")[10].className = "fsrx";
			}
		}
	}

	if (!isReadPage()) {
		setSel("temp_xmmc", jsonContent.autoSel);
	}
	readText();
}

function blurAfterCall(autocompleteValue, autocompleteContent, textObj) {
	var index = textObj.parentNode.parentNode.rowIndex - 4;
	var selectHybj = autocompleteContent.split("||")[0];
	var selectXmmc = autocompleteContent.split("||")[1];
	$ES("hybj")[index].value = selectHybj;
	document.getElementById("temp_xmmc").value = selectXmmc;
	$ES("xmmc")[index].value = selectXmmc;
	// 如果行业选择“其他”，列1、2、3换成“--”
	if ("07" == selectHybj) {
		document.getElementById('div_fjyje1').style.display = "";
		document.getElementById('div_fjbqje1').style.display = "";
		document.getElementById('div_fjljje1').style.display = "";
		document.getElementById('div_fjyje3').style.display = "";
		document.getElementById('div_fjbqje3').style.display = "";
		document.getElementById('div_fjljje3').style.display = "";
		document.getElementById('div_fjyje5').style.display = "";
		document.getElementById('div_fjbqje5').style.display = "";
		document.getElementById('div_fjljje5').style.display = "";
		document.getElementById('div_fjyje2').style.display = "none";
		document.getElementById('div_fjbqje2').style.display = "none";
		document.getElementById('div_fjljje2').style.display = "none";
		document.getElementById('div_fjyje4').style.display = "none";
		document.getElementById('div_fjbqje4').style.display = "none";
		document.getElementById('div_fjljje4').style.display = "none";
		document.getElementById('div_fjyje6').style.display = "none";
		document.getElementById('div_fjbqje6').style.display = "none";
		document.getElementById('div_fjljje6').style.display = "none";

		// 其他行业，【行5-1】锁定不予填报，勾选项默认在否（非适用范围）
		// $ES("tmp_sytj_9")[1].checked = true;
		// $ES("sytj")[9].value = "02";

		$ES("fjyje")[9].readOnly = "true";
		$ES("fjbqje")[9].readOnly = "true";
		$ES("fjljje")[9].readOnly = "true";
		$ES("jqyje")[9].readOnly = "true";
		$ES("jqbqje")[9].readOnly = "true";
		$ES("jqljje")[9].readOnly = "true";
		$ES("hjyje")[9].readOnly = "true";
		$ES("hjbqkjzjje")[9].readOnly = "true";
		$ES("hjbqzczjje")[9].readOnly = "true";
		$ES("hjbqsszjje")[9].readOnly = "true";
		$ES("hjbqnstzje")[9].readOnly = "true";
		$ES("hjbqyhje")[9].readOnly = "true";
		$ES("hjljkjzjje")[9].readOnly = "true";
		$ES("hjljzczjje")[9].readOnly = "true";
		$ES("hjljsszjje")[9].readOnly = "true";
		$ES("hjljnstzje")[9].readOnly = "true";
		$ES("hjljyhje")[9].readOnly = "true";

		$ES("fjyje")[9].className = "fsrx";
		$ES("fjbqje")[9].className = "fsrx";
		$ES("fjljje")[9].className = "fsrx";
		$ES("jqyje")[9].className = "fsrx";
		$ES("jqbqje")[9].className = "fsrx";
		$ES("jqljje")[9].className = "fsrx";
		$ES("hjyje")[9].className = "fsrx";
		$ES("hjbqkjzjje")[9].className = "fsrx";
		$ES("hjbqzczjje")[9].className = "fsrx";
		$ES("hjbqsszjje")[9].className = "fsrx";
		$ES("hjbqnstzje")[9].className = "fsrx";
		$ES("hjbqyhje")[9].className = "fsrx";
		$ES("hjljkjzjje")[9].className = "fsrx";
		$ES("hjljzczjje")[9].className = "fsrx";
		$ES("hjljsszjje")[9].className = "fsrx";
		$ES("hjljnstzje")[9].className = "fsrx";
		$ES("hjljyhje")[9].className = "fsrx";

		// 其他行业，【行5-2】锁定不予填报，勾选项默认在否（非适用范围）
		// $ES("tmp_sytj_10")[1].checked = true;
		// $ES("sytj")[10].value = "02";

		$ES("fjyje")[10].readOnly = "true";
		$ES("fjbqje")[10].readOnly = "true";
		$ES("fjljje")[10].readOnly = "true";
		$ES("jqyje")[10].readOnly = "true";
		$ES("jqbqje")[10].readOnly = "true";
		$ES("jqljje")[10].readOnly = "true";
		$ES("hjyje")[10].readOnly = "true";
		$ES("hjbqkjzjje")[10].readOnly = "true";
		$ES("hjbqzczjje")[10].readOnly = "true";
		$ES("hjbqsszjje")[10].readOnly = "true";
		$ES("hjbqnstzje")[10].readOnly = "true";
		$ES("hjbqyhje")[10].readOnly = "true";
		$ES("hjljkjzjje")[10].readOnly = "true";
		$ES("hjljzczjje")[10].readOnly = "true";
		$ES("hjljsszjje")[10].readOnly = "true";
		$ES("hjljnstzje")[10].readOnly = "true";
		$ES("hjljyhje")[10].readOnly = "true";

		$ES("fjyje")[10].className = "fsrx";
		$ES("fjbqje")[10].className = "fsrx";
		$ES("fjljje")[10].className = "fsrx";
		$ES("jqyje")[10].className = "fsrx";
		$ES("jqbqje")[10].className = "fsrx";
		$ES("jqljje")[10].className = "fsrx";
		$ES("hjyje")[10].className = "fsrx";
		$ES("hjbqkjzjje")[10].className = "fsrx";
		$ES("hjbqzczjje")[10].className = "fsrx";
		$ES("hjbqsszjje")[10].className = "fsrx";
		$ES("hjbqnstzje")[10].className = "fsrx";
		$ES("hjbqyhje")[10].className = "fsrx";
		$ES("hjljkjzjje")[10].className = "fsrx";
		$ES("hjljzczjje")[10].className = "fsrx";
		$ES("hjljsszjje")[10].className = "fsrx";
		$ES("hjljnstzje")[10].className = "fsrx";
		$ES("hjljyhje")[10].className = "fsrx";
	} else {
		document.getElementById('div_fjyje1').style.display = "none";
		document.getElementById('div_fjbqje1').style.display = "none";
		document.getElementById('div_fjljje1').style.display = "none";
		document.getElementById('div_fjyje3').style.display = "none";
		document.getElementById('div_fjbqje3').style.display = "none";
		document.getElementById('div_fjljje3').style.display = "none";
		document.getElementById('div_fjyje5').style.display = "none";
		document.getElementById('div_fjbqje5').style.display = "none";
		document.getElementById('div_fjljje5').style.display = "none";
		document.getElementById('div_fjyje2').style.display = "";
		document.getElementById('div_fjbqje2').style.display = "";
		document.getElementById('div_fjljje2').style.display = "";
		document.getElementById('div_fjyje4').style.display = "";
		document.getElementById('div_fjbqje4').style.display = "";
		document.getElementById('div_fjljje4').style.display = "";
		document.getElementById('div_fjyje6').style.display = "";
		document.getElementById('div_fjbqje6').style.display = "";
		document.getElementById('div_fjljje6').style.display = "";
	}
	runRulesForName(calObj);
}

// 删除行
function clearRow(obj) {
	var index = obj.parentNode.parentNode.rowIndex - 4;
	if (trim(obj.value).empty()) {
		$ES('hybj')[index].value = "";
		$ES('xmmc')[index].value = "";
		if ("1" == index) {
			document.getElementById('temp_xmmc').value = "";
		}
		// $ES("fjyje")[index].value = "";
		// $ES("fjbqje")[index].value = "";
		// $ES("fjljje")[index].value = "";
		// $ES("jqyje")[index].value = "";
		// $ES("jqbqje")[index].value = "";
		// $ES("jqljje")[index].value = "";
		// $ES("hjyje")[index].value = "";
		// $ES("hjbqkjzjje")[index].value = "";
		// $ES("hjbqzczjje")[index].value = "";
		// $ES("hjbqsszjje")[index].value = "";
		// $ES("hjbqnstzje")[index].value = "";
		// $ES("hjbqyhje")[index].value = "";
		// $ES("hjljkjzjje")[index].value = "";
		// $ES("hjljzczjje")[index].value = "";
		// $ES("hjljsszjje")[index].value = "";
		// $ES("hjljnstzje")[index].value = "";
		// $ES("hjljyhje")[index].value = "";
		$ES("sytj")[index].value = "";
		runRulesForID(calObj);
	}
}

function clearReadRow(obj, tmp_value) {
	if ("" == tmp_value) {
		return;
	} else {
		var index = obj.parentNode.parentNode.rowIndex - 4;
		if ("01" == tmp_value) {
			// 选择是
			if ("2" == index) {
				$ES("fjyje")[index].readOnly = "";
				$ES("fjyje")[index].className = "srx";
				$ES("fjbqje")[index].readOnly = "";
				$ES("fjbqje")[index].className = "srx";
				$ES("fjljje")[index].readOnly = "";
				$ES("fjljje")[index].className = "srx";
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqzczjje")[index].readOnly = "";
				$ES("hjbqzczjje")[index].className = "srx";
				$ES("hjljzczjje")[index].readOnly = "";
				$ES("hjljzczjje")[index].className = "srx";
			} else if ("3" == index) {
				$ES("fjyje")[index].readOnly = "";
				$ES("fjyje")[index].className = "srx";
				$ES("fjbqje")[index].readOnly = "";
				$ES("fjbqje")[index].className = "srx";
				$ES("fjljje")[index].readOnly = "";
				$ES("fjljje")[index].className = "srx";
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqkjzjje")[index].readOnly = "";
				$ES("hjbqkjzjje")[index].className = "srx";
				$ES("hjljkjzjje")[index].readOnly = "";
				$ES("hjljkjzjje")[index].className = "srx";
			} else if ("6" == index || "9" == index || "12" == index) {
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqzczjje")[index].readOnly = "";
				$ES("hjbqzczjje")[index].className = "srx";
				$ES("hjljzczjje")[index].readOnly = "";
				$ES("hjljzczjje")[index].className = "srx";
			} else if ("7" == index || "10" == index || "13" == index) {
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqkjzjje")[index].readOnly = "";
				$ES("hjbqkjzjje")[index].className = "srx";
				$ES("hjljkjzjje")[index].readOnly = "";
				$ES("hjljkjzjje")[index].className = "srx";
			}
		} else {
			if ("2" == index) {
				$ES("fjyje")[index].readOnly = "true";
				$ES("fjyje")[index].className = "fsrx";
				$ES("fjbqje")[index].readOnly = "true";
				$ES("fjbqje")[index].className = "fsrx";
				$ES("fjljje")[index].readOnly = "true";
				$ES("fjljje")[index].className = "fsrx";
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqzczjje")[index].readOnly = "true";
				$ES("hjbqzczjje")[index].className = "fsrx";
				$ES("hjljzczjje")[index].readOnly = "true";
				$ES("hjljzczjje")[index].className = "fsrx";

				if (caltbNumloop(
						parseFloat(emptyToZ($ES("fjyje")[index].value))
								+ parseFloat(emptyToZ($ES("fjbqje")[index].value))
								+ parseFloat(emptyToZ($ES("fjljje")[index].value))
								+ parseFloat(emptyToZ($ES("jqyje")[index].value))
								+ parseFloat(emptyToZ($ES("jqbqje")[index].value))
								+ parseFloat(emptyToZ($ES("jqljje")[index].value))
								+ parseFloat(emptyToZ($ES("hjbqzczjje")[index].value))
								+ parseFloat(emptyToZ($ES("hjljzczjje")[index].value)),
						2) != 0) {
					confirmDialog("您选择“否”，是否需要清空本行填写数据？", function nsrCleanXx(
									button) {
								if (button == "yes") {
									$ES("fjyje")[index].value = "";
									$ES("fjbqje")[index].value = "";
									$ES("fjljje")[index].value = "";
									$ES("jqyje")[index].value = "";
									$ES("jqbqje")[index].value = "";
									$ES("jqljje")[index].value = "";
									$ES("hjbqzczjje")[index].value = "";
									$ES("hjljzczjje")[index].value = "";
									runRulesForID(calObj);
								}
							});
				}

			} else if ("3" == index) {
				$ES("fjyje")[index].readOnly = "true";
				$ES("fjyje")[index].className = "fsrx";
				$ES("fjbqje")[index].readOnly = "true";
				$ES("fjbqje")[index].className = "fsrx";
				$ES("fjljje")[index].readOnly = "true";
				$ES("fjljje")[index].className = "fsrx";
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqkjzjje")[index].readOnly = "true";
				$ES("hjbqkjzjje")[index].className = "fsrx";
				$ES("hjljkjzjje")[index].readOnly = "true";
				$ES("hjljkjzjje")[index].className = "fsrx";

				if (caltbNumloop(
						parseFloat(emptyToZ($ES("fjyje")[index].value))
								+ parseFloat(emptyToZ($ES("fjbqje")[index].value))
								+ parseFloat(emptyToZ($ES("fjljje")[index].value))
								+ parseFloat(emptyToZ($ES("jqyje")[index].value))
								+ parseFloat(emptyToZ($ES("jqbqje")[index].value))
								+ parseFloat(emptyToZ($ES("jqljje")[index].value))
								+ parseFloat(emptyToZ($ES("hjbqkjzjje")[index].value))
								+ parseFloat(emptyToZ($ES("hjljkjzjje")[index].value)),
						2) != 0) {
					confirmDialog("您选择“否”，是否需要清空本行填写数据？", function nsrCleanXx(
									button) {
								if (button == "yes") {
									$ES("fjyje")[index].value = "";
									$ES("fjbqje")[index].value = "";
									$ES("fjljje")[index].value = "";
									$ES("jqyje")[index].value = "";
									$ES("jqbqje")[index].value = "";
									$ES("jqljje")[index].value = "";
									$ES("hjbqkjzjje")[index].value = "";
									$ES("hjljkjzjje")[index].value = "";
									runRulesForID(calObj);
								}
							});
				}

			} else if ("6" == index || "9" == index || "12" == index) {
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqzczjje")[index].readOnly = "true";
				$ES("hjbqzczjje")[index].className = "fsrx";
				$ES("hjljzczjje")[index].readOnly = "true";
				$ES("hjljzczjje")[index].className = "fsrx";

				if (caltbNumloop(
						parseFloat(emptyToZ($ES("jqyje")[index].value))
								+ parseFloat(emptyToZ($ES("jqbqje")[index].value))
								+ parseFloat(emptyToZ($ES("jqljje")[index].value))
								+ parseFloat(emptyToZ($ES("hjbqzczjje")[index].value))
								+ parseFloat(emptyToZ($ES("hjljzczjje")[index].value)),
						2) != 0) {
					confirmDialog("您选择“否”，是否需要清空本行填写数据？", function nsrCleanXx(
									button) {
								if (button == "yes") {
									$ES("jqyje")[index].value = "";
									$ES("jqbqje")[index].value = "";
									$ES("jqljje")[index].value = "";
									$ES("hjbqzczjje")[index].value = "";
									$ES("hjljzczjje")[index].value = "";
									runRulesForID(calObj);
								}
							});
				}

			} else if ("7" == index || "10" == index || "13" == index) {
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqkjzjje")[index].readOnly = "true";
				$ES("hjbqkjzjje")[index].className = "fsrx";
				$ES("hjljkjzjje")[index].readOnly = "true";
				$ES("hjljkjzjje")[index].className = "fsrx";

				if (caltbNumloop(
						parseFloat(emptyToZ($ES("jqyje")[index].value))
								+ parseFloat(emptyToZ($ES("jqbqje")[index].value))
								+ parseFloat(emptyToZ($ES("jqljje")[index].value))
								+ parseFloat(emptyToZ($ES("hjbqkjzjje")[index].value))
								+ parseFloat(emptyToZ($ES("hjljkjzjje")[index].value)),
						2) != 0) {
					confirmDialog("您选择“否”，是否需要清空本行填写数据？", function nsrCleanXx(
									button) {
								if (button == "yes") {
									$ES("jqyje")[index].value = "";
									$ES("jqbqje")[index].value = "";
									$ES("jqljje")[index].value = "";
									$ES("hjbqkjzjje")[index].value = "";
									$ES("hjljkjzjje")[index].value = "";
									runRulesForID(calObj);
								}
							});
				}

			}
		}
		$ES("sytj")[index].value = tmp_value;
	}
	runRulesForID(calObj);
}

function setTableStyle(obj, tmp_value) {
	if ("" == tmp_value) {
		return;
	} else {
		var index = obj.parentNode.parentNode.rowIndex - 4;
		if ("01" == tmp_value) {
			// 选择是
			if ("2" == index) {
				$ES("fjyje")[index].readOnly = "";
				$ES("fjyje")[index].className = "srx";
				$ES("fjbqje")[index].readOnly = "";
				$ES("fjbqje")[index].className = "srx";
				$ES("fjljje")[index].readOnly = "";
				$ES("fjljje")[index].className = "srx";
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqzczjje")[index].readOnly = "";
				$ES("hjbqzczjje")[index].className = "srx";
				$ES("hjljzczjje")[index].readOnly = "";
				$ES("hjljzczjje")[index].className = "srx";
			} else if ("3" == index) {
				$ES("fjyje")[index].readOnly = "";
				$ES("fjyje")[index].className = "srx";
				$ES("fjbqje")[index].readOnly = "";
				$ES("fjbqje")[index].className = "srx";
				$ES("fjljje")[index].readOnly = "";
				$ES("fjljje")[index].className = "srx";
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqkjzjje")[index].readOnly = "";
				$ES("hjbqkjzjje")[index].className = "srx";
				$ES("hjljkjzjje")[index].readOnly = "";
				$ES("hjljkjzjje")[index].className = "srx";
			} else if ("6" == index || "9" == index || "12" == index) {
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqzczjje")[index].readOnly = "";
				$ES("hjbqzczjje")[index].className = "srx";
				$ES("hjljzczjje")[index].readOnly = "";
				$ES("hjljzczjje")[index].className = "srx";
			} else if ("7" == index || "10" == index || "13" == index) {
				$ES("jqyje")[index].readOnly = "";
				$ES("jqyje")[index].className = "srx";
				$ES("jqbqje")[index].readOnly = "";
				$ES("jqbqje")[index].className = "srx";
				$ES("jqljje")[index].readOnly = "";
				$ES("jqljje")[index].className = "srx";
				$ES("hjbqkjzjje")[index].readOnly = "";
				$ES("hjbqkjzjje")[index].className = "srx";
				$ES("hjljkjzjje")[index].readOnly = "";
				$ES("hjljkjzjje")[index].className = "srx";
			}
		} else {
			if ("2" == index) {
				$ES("fjyje")[index].readOnly = "true";
				$ES("fjyje")[index].className = "fsrx";
				$ES("fjbqje")[index].readOnly = "true";
				$ES("fjbqje")[index].className = "fsrx";
				$ES("fjljje")[index].readOnly = "true";
				$ES("fjljje")[index].className = "fsrx";
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqzczjje")[index].readOnly = "true";
				$ES("hjbqzczjje")[index].className = "fsrx";
				$ES("hjljzczjje")[index].readOnly = "true";
				$ES("hjljzczjje")[index].className = "fsrx";
			} else if ("3" == index) {
				$ES("fjyje")[index].readOnly = "true";
				$ES("fjyje")[index].className = "fsrx";
				$ES("fjbqje")[index].readOnly = "true";
				$ES("fjbqje")[index].className = "fsrx";
				$ES("fjljje")[index].readOnly = "true";
				$ES("fjljje")[index].className = "fsrx";
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqkjzjje")[index].readOnly = "true";
				$ES("hjbqkjzjje")[index].className = "fsrx";
				$ES("hjljkjzjje")[index].readOnly = "true";
				$ES("hjljkjzjje")[index].className = "fsrx";
			} else if ("6" == index || "9" == index || "12" == index) {
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqzczjje")[index].readOnly = "true";
				$ES("hjbqzczjje")[index].className = "fsrx";
				$ES("hjljzczjje")[index].readOnly = "true";
				$ES("hjljzczjje")[index].className = "fsrx";
			} else if ("7" == index || "10" == index || "13" == index) {
				$ES("jqyje")[index].readOnly = "true";
				$ES("jqyje")[index].className = "fsrx";
				$ES("jqbqje")[index].readOnly = "true";
				$ES("jqbqje")[index].className = "fsrx";
				$ES("jqljje")[index].readOnly = "true";
				$ES("jqljje")[index].className = "fsrx";
				$ES("hjbqkjzjje")[index].readOnly = "true";
				$ES("hjbqkjzjje")[index].className = "fsrx";
				$ES("hjljkjzjje")[index].readOnly = "true";
				$ES("hjljkjzjje")[index].className = "fsrx";
			}
		}
		$ES("sytj")[index].value = tmp_value;
	}
	runRulesForID(calObj);
}

function tempSave(button) {
	if (!bascicCheck()) {
		return;
	}
	$('#errorMessage').val("");
	$('#sucessMsg').val('');
	$("#handleDesc").val("");
	$("#handleCode").val("tempSave");
	jsonContent = eval("(" + $F("bizData") + ")");
	var bizData = jsonContent.BIZDATA;
	var autosel = jsonContent.autoSel;
	if (autosel != null) {
		for (var j = 0; j < autosel.length; j++) {
			if (trim($ES('hybj')[1].value) == trim(autosel[j].content
					.split("||")[0])) {
				$ES('xmmc')[1].value = autosel[j].text;
				break;
			}
		}
	}
	waitDialog();
//	new Ajax.Request('/WB390gdzctjbNewAction.do', {
//				method : 'post',
//				parameters : $('WB390gdzctjbNewForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "update");
//					runMsg("0", false, null, 'WB390fbListForm');
//					if (!$F('errorMessage').empty()) {
//						return;
//					}
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB390gdzctjbNewAction.do",
		async : true,
		dataType : "html",
		data : $('#WB390gdzctjbNewForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			Ext.MessageBox.hide();
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			Ext.MessageBox.hide();
			ajaxUpdate(responseText, "update");
			runMsg("0", false, null, 'WB390fbListForm');
			if (!$F('errorMessage').empty()) {
				return;
			}
		}
	});

}
function submitData(button) {
	tempSave('yes');
	document.getElementById("nsrQrtjBz").value = "0";
}

function bascicCheck() {
	bascicCheckErrorMessage = "";
	if ("" == $ES('hybj')[1].value) {
		bascicCheckErrorMessage = setBascicCheckErrorMessage(
				bascicCheckErrorMessage, '请选择行次2的【项目】！');
	}
	if ("" == $F('zbvo.hylx')) {
		bascicCheckErrorMessage = setBascicCheckErrorMessage(
				bascicCheckErrorMessage, '请选择行次5的【项目】！');
	}
	var temp_sytj = $ES('sytj');
	for (var i = 0; i < temp_sytj.length; i++) {
		if ("2" == i || "3" == i || "6" == i || "7" == i || "12" == i
				|| "13" == i) {
			if ($ES('sytj')[i].value == "") {
				if ("2" == i) {
					hcmc = "2-1";
				} else if ("3" == i) {
					hcmc = "2-2";
				} else if ("6" == i) {
					hcmc = "4-1";
				} else if ("7" == i) {
					hcmc = "4-2";
				}
				// else if ("9" == i) {
				// hcmc = "5-1";
				// } else if ("10" == i) {
				// hcmc = "5-2";
				// }
				else if ("12" == i) {
					hcmc = "6-1";
				} else if ("13" == i) {
					hcmc = "6-2";
				}
				bascicCheckErrorMessage = setBascicCheckErrorMessage(
						bascicCheckErrorMessage, '请选择行次' + hcmc + '的加速折旧适用情况！');
			}
		}
	}
	if ("" != bascicCheckErrorMessage) {
		iconDialog(bascicCheckErrorMessage, 'ERROR');
		return false;
	} else {
		return true;
	}
}

function setBascicCheckErrorMessage(bascicCheckErrorMessage, errorMessage) {
	if ("" == bascicCheckErrorMessage) {
		bascicCheckErrorMessage = errorMessage;
	} else {
		bascicCheckErrorMessage = bascicCheckErrorMessage + "<br/>"
				+ errorMessage;
	}
	return bascicCheckErrorMessage;
}