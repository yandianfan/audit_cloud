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
							openMaxWindow("/nssb/wb395/wb395_A105110_TbSm.html");
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
					}, "-", {
						text : "打印",
						id : "printBtn",
						iconCls : "print",
						handler : function() {
							$("#handleCode").val("printPage");
							openMaxWindow("/WB395A105110Action.do?handleCode=printPage&pzXh="
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
	for (var i = 0; i < document.getElementById("gglx").options.length; i++) {
		if (document.getElementById("gglx").options(i).value == document.getElementById("gglx111").value) {
			document.getElementById("gglx").options(i).selected = true;
		}
		if(document.getElementById("gglx").options(0).selected){
			document.getElementById("ws").style.display="none";	
		}else{
			document.getElementById("ws").style.display="block";
	     //$ES("a105110fbzlVO.zcgzzcsj")[0].disabled = true;		
		 //$ES("a105110fbzlVO.zcgzzcsj")[0].className = 'fsrx';
		 //$ES("a105110fbzlVO.zcgzzcsj")[0].value = '';	
		}
	}
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	//calObj.negative = true;
	initCalTable(calObj);
	readText();
}

function tempSave(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	$("#proMessage").val("");
	waitDialog();
//	new Ajax.Request('/WB395A105110Action.do', {
//				method : 'post',
//				parameters : $('WB395A105110Form').serialize(),
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
		url : "/WB395A105110Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105110Form').serialize(),
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

function submitData() {
	tempSave();
}


//与本表第16行的关联：资产处置支出+资产购置支出（2013年11号公告）的金额数据迁移至第16行资产处置支出
function check16() {

	var bbh=$ES("a105110fbzlVO.gglx")[0].value;
	//资产处置支出：
	var zcczzc = $ES("a105110fbzlVO.zcczzc")[0].value;
	//资产购置支出
	var zcgzzcsj = $ES("a105110fbzlVO.zcgzzcsj")[0].value;
	//其中，允许从搬迁收入中扣除的金额
	var zcgzzc = $ES("a105110fbzlVO.zcgzzc")[0].value;
	
	if (zcczzc == '') {
		zcczzc = '0';
	}
	if (zcgzzcsj == '') {
		zcgzzcsj = '0';
	}
	if (zcgzzc == '') {
		zcgzzc = '0';
	}	
	if(bbh=='1.0'){
	//16 a105110VO.bqzcczzc=zcczzc
	 var bqzcczzc = parseFloat(zcczzc);
     $ES("a105110VO.bqzcczzc")[0].value = caltbNumloop(bqzcczzc.toString(),2);
     document.getElementById("ws").style.display="none";
     zcgzzc = '0';
     $ES("a105110fbzlVO.zcgzzc")[0].value = '0.00';
	}else{
	 var bqzcczzc = parseFloat(zcczzc) + parseFloat(zcgzzc);
     $ES("a105110VO.bqzcczzc")[0].value = caltbNumloop(bqzcczzc.toString(),2);	
     document.getElementById("ws").style.display="block";
    // $ES("a105110fbzlVO.zcgzzc")[0].disabled = true;		
	 //$ES("a105110fbzlVO.zcgzzc")[0].className = 'fsrx';
	 //$ES("a105110fbzlVO.zcgzzc")[0].value = '';
	}

}

function bascicCheck() {
	//资产购置支出
	var zcgzzcsj = $ES("a105110fbzlVO.zcgzzcsj")[0].value;
	//其中，允许从搬迁收入中扣除的金额
	var zcgzzc = $ES("a105110fbzlVO.zcgzzc")[0].value;
	if(parseFloat(zcgzzc)>parseFloat(zcgzzcsj)){
		iconDialog('行次【其中，允许从搬迁收入中扣除的金额】必须小于等于行次【资产购置支出】', 'WARNING');
		return false;
	}
	return true;
}
