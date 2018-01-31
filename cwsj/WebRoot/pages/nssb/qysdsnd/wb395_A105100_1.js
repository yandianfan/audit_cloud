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
							openMaxWindow("/nssb/wb395/wb395_A105100_1_TbSm.html");
						},
						scope : this
					}, '-', {
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

					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printData");
							openMaxWindow("/WB395A105100_1Action.do?handleCode=printData&pzXh="
									+ $F("pzXh")+"&ssq="+$F("ssq"));
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
	codeToName();
	initJsgs();
}

function initJsgs() {
	calObj = new caltb('tab1');
	var rulesID1 = new Array();
	// 计算生成：18=13-9
	rulesID1.push("dynsbnje = bnssje - bnzzje");
	rulesID1.push("gsjz");
	var rulesID2 = new Array();
	rulesID2.push("gyjzje_hj = gyjzje");
	rulesID2.push("zmjzje_hj = zmjzje");
	rulesID2.push("jsjcje_hj = jsjcje");
	rulesID2.push("bnzzje_hj = bnzzje");
	rulesID2.push("fhbxzrsdje_hj = fhbxzrsdje");
	rulesID2.push("bnssje_hj = bnssje");
	rulesID2.push("dynsbnje_hj = dynsbnje");
	rulesID2.push("zjyhnddyje_hj = zjyhnddyje");

	calObj.negative = true;
	// 都是根据name属性加载的setRulesY可以加载多个数据setRules加载一行公式
	calObj.setRules(rulesID1);
	calObj.setRulesY(rulesID2);
	initCalTable(calObj);
	runRulesForName(calObj);

}

function gsjz() {
	for (var i = 0; i < $ES("qymc").length; i++) {
		if ($ES("fhbxzrsrnd")[i].value.substr(0, 4) == $F('ssq')) {
			// 非货币性资产转让收入实现年度
			// 若8列与所属年度一致，则10=5-7，若8列与所属年度不一致，则本列为空;
			$ES("fhbxzrsdje")[i].value = caltbNumloop(
					parseFloat(emptyToZ($ES("gyjzje")[i].value))
							- parseFloat(emptyToZ($ES("jsjcje")[i].value)), 2);
            //若8列与所属年度一致的，则19=10-13；不一致的由纳税人自行填报
			$ES("zjyhnddyje")[i].value = caltbNumloop(
					parseFloat(emptyToZ($ES("fhbxzrsdje")[i].value))
							- parseFloat(emptyToZ($ES("bnssje")[i].value)), 2);
			$ES("zjyhnddyje")[i].className = "fsrx";
			$ES("zjyhnddyje")[i].readOnly = true;									
		} else {
			$ES("fhbxzrsdje")[i].value = "";
			$ES("zjyhnddyje")[i].className = "srx";
			$ES("zjyhnddyje")[i].readOnly = false;
		}

		// 分期确认税收所得年限 计算生成：12=（5-7）/11 11为下拉菜单

		if ($ES("fqqrnx")[i].value != "") {
			$ES("fqjjqrje")[i].value = caltbNumloop(
					(parseFloat(emptyToZ($ES("gyjzje")[i].value)) - parseFloat(emptyToZ($ES("jsjcje")[i].value)))
							/ parseFloat(emptyToZ($ES("fqqrnx")[i].value)), 2);
		} else {
			$ES("fqjjqrje")[i].value = "";
		}
	} 
}

function ysbh(obj) {
	var i= obj.parentNode.parentNode.rowIndex - 3;
	if($ES("fhbxzrsrnd")[i].value!=""){
	// 行次14-17 的控制判断
	var ndc = $F('ssq') - $ES("fhbxzrsrnd")[i].value.substr(0, 4);

	// 前四年度
	if (ndc == 4) {
		$ES("dynsfourje")[i].className = "srx";
		$ES("dynsfourje")[i].readOnly = false;
		$ES("dynsthreeje")[i].className = "srx";
		$ES("dynsthreeje")[i].readOnly = false;
		$ES("dynstwoje")[i].className = "srx";
		$ES("dynstwoje")[i].readOnly = false;
		$ES("dynsoneje")[i].className = "srx";
		$ES("dynsoneje")[i].readOnly = false;
	} else if (ndc == 3) {
		$ES("dynsfourje")[i].value = "";
		$ES("dynsfourje")[i].className = "fsrx";
		$ES("dynsfourje")[i].readOnly = true;
		$ES("dynsthreeje")[i].className = "srx";
		$ES("dynsthreeje")[i].readOnly = false;
		$ES("dynstwoje")[i].className = "srx";
		$ES("dynstwoje")[i].readOnly = false;
		$ES("dynsoneje")[i].className = "srx";
		$ES("dynsoneje")[i].readOnly = false;
	} else if (ndc == 2) {
		$ES("dynsfourje")[i].value = "";
		$ES("dynsfourje")[i].className = "fsrx";
		$ES("dynsfourje")[i].readOnly = true;

		$ES("dynsthreeje")[i].value = "";
		$ES("dynsthreeje")[i].className = "fsrx";
		$ES("dynsthreeje")[i].readOnly = true;

		$ES("dynstwoje")[i].className = "srx";
		$ES("dynstwoje")[i].readOnly = false;
		$ES("dynsoneje")[i].className = "srx";
		$ES("dynsoneje")[i].readOnly = false;

	} else if (ndc == 1) {
		$ES("dynsfourje")[i].value = "";
		$ES("dynsfourje")[i].className = "fsrx";
		$ES("dynsfourje")[i].readOnly = true;

		$ES("dynsthreeje")[i].value = "";
		$ES("dynsthreeje")[i].className = "fsrx";
		$ES("dynsthreeje")[i].readOnly = true;

		$ES("dynstwoje")[i].value = "";
		$ES("dynstwoje")[i].className = "fsrx";
		$ES("dynstwoje")[i].readOnly = true;

		$ES("dynsoneje")[i].className = "srx";
		$ES("dynsoneje")[i].readOnly = false;

	} else {
		$ES("dynsfourje")[i].value = "";
		$ES("dynsfourje")[i].className = "fsrx";
		$ES("dynsfourje")[i].readOnly = true;
		$ES("dynsthreeje")[i].value = "";
		$ES("dynsthreeje")[i].className = "fsrx";
		$ES("dynsthreeje")[i].readOnly = true;
		$ES("dynstwoje")[i].value = "";
		$ES("dynstwoje")[i].className = "fsrx";
		$ES("dynstwoje")[i].readOnly = true;
		$ES("dynsoneje")[i].value = "";
		$ES("dynsoneje")[i].className = "fsrx";
		$ES("dynsoneje")[i].readOnly = true;
	 }		
		
	}	
	
	runRulesForName(calObj);
	
}

function ysbh02(){
runRulesForName(calObj);
}

function codeToName() {
	var namesAy = "zgswjgsheng,zgswjgshi";
	namesAy = namesAy.split(",");
	clsDynamicSelect$codeToName(namesAy);
}

function tempSave(button) {
	$("#handleCode").val("tempSave");
	$("#sucessMsg").val("");
	$("#errorMessage").val("");
	$("#proMessage").val("");
	waitDialog();
//	new Ajax.Request('/WB395A105100_1Action.do', {
//				method : 'post',
//				parameters : $('WB395A105100_1Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "updata");
//					runMsg("0", null, null, "WB395IndexForm");
//					// initCalTable(calObj);
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105100_1Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105100_1Form').serialize(),
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
