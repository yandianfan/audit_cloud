Ext.BLANK_IMAGE_URL = './public/images/s.gif';
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
							openMaxWindow("/nssb/wb395/wb395_A107020_TbSm.html");
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
							openMaxWindow("/WB395A107020Action.do?handleCode=printPage&pzXh="
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
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	//calObj.negative = true;
	initCalTable(calObj);
	readText();		
}

function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A107020Action.do', {
//				method : 'post',
//				parameters : $('WB395A107020Form').serialize(),
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
		url : "/WB395A107020Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A107020Form').serialize(),
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


	//第33行6列若小于等于500万，则第34行第7列=第33行第6列，35行第7列=0
    //第33行6列若大于500万，    则第34行第7列=500万，35行第7列=（33行6列-34行7列）*50%

	function getJszrjmse() {
		//第33行6列
		var fhtjjszrxmxmsde = $ES("a107020VO.fhtjjszrxmxmsde")[0].value;
	
		if (fhtjjszrxmxmsde == '') {
			fhtjjszrxmxmsde = '0';
		}
		if (parseFloat(fhtjjszrxmxmsde) <="5000000") {
			$ES("a107020VO.jszrsdbcbfjmsde")[0].value = parseFloat(fhtjjszrxmxmsde);
			$ES("a107020VO.jszrsdcgbfjmsde")[0].value = "0.00";
		} else {
			$ES("a107020VO.jszrsdbcbfjmsde")[0].value = "5000000.00"
			$ES("a107020VO.jszrsdcgbfjmsde")[0].value = (parseFloat(fhtjjszrxmxmsde)-"5000000")*0.5;
		}
	
	}


