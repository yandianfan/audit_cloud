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
							openMaxWindow("/nssb/wb395/wb395_A105010_TbSm.html");

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
						id : "printBtn",
						text : "打印",
						iconCls : "print",
						handler : function() {
							openMaxWindow("/WB395A105010Action.do?pzXh="
									+ $F("vo.pzxh") + "&handleCode=printData");
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

	document.getElementById('vo.xswwgcpsrssje').title = "房地产开发企业填报，销售未完工开发产品，会计核算未进行收入确认的销售收入金额";
	document.getElementById('vo.xswwgcpyjmlssje').title = "房地产开发企业填报，销售未完工产品取得的销售收入按税法规定预计计税毛利率计算的金额";
	document.getElementById('vo.sjyysjssje').title = "房地产开发企业填报，已计入当期损益的不填报。销售未完工产品实际发生的营业税金及附加、土地增值税，且在会计核算中未计入当期损益的金额";
	document.getElementById('vo.xswwgzwgcpqrssje').title = "房地产开发企业填报，会计尚未结转收入的不填报";
	document.getElementById('vo.zhxswwgcpyjmlssje').title = "房地产开发企业填报，会计尚未结转收入的不填报";
	document.getElementById('vo.zhsjyysjssje').title = "房地产开发企业填报，销售的未完工产品结转完工产品后，会计核算确认为销售收入，同时将对应实际发生的营业税金及附加、土地增值税转入当期损益的金额";
}
function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105010Action.do', {
//				method : 'post',
//				parameters : $('WB395A105010Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "update");
//					runMsg('0', null, null, 'WB395IndexForm');
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105010Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105010Form').serialize(),
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