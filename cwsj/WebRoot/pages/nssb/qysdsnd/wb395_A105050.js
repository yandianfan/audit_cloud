Ext.BLANK_IMAGE_URL = './public/images/s.gif';

Ext.onReady(function() {
			try {
				var tb = new Ext.Toolbar({
							renderTo : "toolbar",
							items : ['-', '->', '-', {
									text : "填表说明",
									iconCls : "fb",
									id : "tbsmBtn",
									handler : function() {
										openMaxWindow("/nssb/wb395/wb395_A105050_TbSm.html");
					
									},
									scope : this
								  },'-', {
										id : "tempBtn",
										text : "暂存",
										iconCls : "save",
										handler : function() {
											tempSave();
										},
										scope : this
									},  '-', {
										text : "查看信息",
										iconCls : "fb",
										handler : function() {
											openMsgWindow();
										},
										scope : this
									},'-', {
										id : "printBtn",
										text : "打印",
										iconCls : "print",
										handler : function() {
											openMaxWindow("/WB395A105050Action.do?pzXh="
													+ $F("vo.pzxh")
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
									}]
						});
				initPage();
			} catch (e) {

			}
		});
var tab1;
function initPage() {
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	tab1 = new caltb("tab1");
	tab1.negative = true; 
	tab1.setRules(ymkj_getRulesX("tab1"));
	initCalTable(tab1);
	readText();
	document.getElementById('vo.zgflssgdkcl').value = "0.14";
	document.getElementById('vo.ajekcssgdkcl').value = "1";
	document.getElementById('vo.ghjfssgdkcl').value = "0.02";
	document.getElementById('vo.ylbxssgdkcl').value = "0.05";
	document.getElementById('vo.yilbxssgdkcl').value = "0.05";
	if($F('ablkcssgdkcl') != ''  && $F('ablkcssgdkcl') != null){
		document.getElementById('vo.ablkcssgdkcl').value = document.getElementById('ablkcssgdkcl').value;
	}
}
function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105050Action.do', {
//				method : 'post',
//				parameters : $('WB395A105050Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					runMsg('0',null,null,'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105050Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105050Form').serialize(),
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

function ablkcssgdkclChange(){
	runRulesForName(tab1);	
}