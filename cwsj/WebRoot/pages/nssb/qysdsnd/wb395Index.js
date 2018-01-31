var labelId;
/**
Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
					renderTo : "toolbar",
					items : ['-', '->', '-', {
								text : "填表说明",
								iconCls : "fb",
								id : "tbsmBtn",
								handler : function() {
									openMaxWindow("/nssb/wb395/wb395IndexTbSm.html");

								},
								scope : this
							}, '-', {
								id : "reBtn",
								text : "刷新",
								iconCls : "refresh",
								handler : function() {
									rePage();
								},
								scope : this
							}, '-', {
								id : "UploadBtn",
								text : "上传",
								iconCls : "up",
								handler : function() {
									upload();
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
*/
function upload() {
	openMaxWindow('/WB395IndexAction.do?handleCode=toUp&pzXh=' + $F("pzXh")
					+ '&SSQS=' + $F("SSQS") + '&SSQZ=' + $F("SSQZ") + '&SBQX='
					+ $F("SBQX") + "&BBZT=" + $F('bbzt') + "&gzsbbj="
					+ $F('gzsbbj'), 800, 700);
}

function initPage() {
	if ($F("zt") == "0") {
		iconDialog('您有暂存的申报记录,请核实处理!', 'WARNING');
		readTextIne();
		return;
	}
	if ($F("zt") == "1") {
		iconDialog('您有已提交的申报记录,可撤销修改后再次提交!', 'WARNING');
		readTextIne();
		return;
	}
	if ($F("zt") == "2") {
		iconDialog('您有已迁移的数据,请等待!', 'WARNING');
		readTextIne();
		return;
	}
	if ($F("zt") == "4") {
		iconDialog('您有已退回的申报记录,可修改后再次提交或删除后再次申报!', 'WARNING');
		readTextIne();
		return;
	}
	if ($F("zt") == "5" || $F("zt") == "6") {
		iconDialog('您有税务机关待处理的申报记录,请联系税务机关核实处理!', 'WARNING');
		readTextIne();
		return;
	}

	if ($F("gzsbbj") == "1" && $F("handleCode") == "initForm") {
		confirmDialog("本次申报为更正申报,是否进行申报?", function(button) {
					if (button == "yes") {
						$("#handleCode").val("gzsb");
						loadDialog('更正申报', '正在读取....');
//						new Ajax.Request('/WB395IndexAction.do', {
//									method : 'post',
//									parameters : $('WB395IndexForm')
//											.serialize(),
//									onComplete : function(originalRequest) {
//										Ext.MessageBox.hide();
//										ajaxUpdateMoreTag(
//												originalRequest.responseText,
//												"update");
//										runMsg("0", null, null,
//												"WB395IndexForm");
//										$("gzsbbj").value = "2";
//										if (trim($F('errorMessage')).empty()) {
//											iconDialog($F('sucessMsg'), 'INFO',
//													function() {
//														rePage();
//													});
//										} else {
//											iconDialog($F('errorMessage'),
//													'ERROR');
//										}
//									},
//									onException : function() {
//										Ext.MessageBox.hide();
//										iconDialog('系统异常', 'ERROR');
//									}
//								});
						
						$.ajax({
							url : "/WB395IndexAction.do",
							async : true,
							dataType : "html",
							data : $('#WB395IndexForm').serialize(),
							type : 'post',
							error : function(XMLHttpRequest, textStatus, errorThrown) {
								alert('系统异常' + textStatus);
							},
							success : function(responseText, textStatus, XMLHttpRequest) {
								ajaxUpdate(responseText, "update");
								runMsg("0", null, null,
								"WB395IndexForm");
								$("#gzsbbj").val("2");
								if (trim($F('errorMessage')).empty()) {
									iconDialog($F('sucessMsg'), 'INFO',
									function() {
										rePage();
									});
								} else {
							iconDialog($F('errorMessage'),
									'ERROR');
								}
							}
						});
						
					} else {
						window.close();
					}
				});
	}

	 if ($F("gzsbbj") == "0" && $F("handleCode") == "initForm") {
		openModalDialog('/WB395A000000Action.do?sessionId='+ $F("sessionId") +'&handleCode=initForm&pzXh='
						+ $F("pzXh") + '&ssQs=' + $F("SSQS") + '&ssQz='
						+ $F("SSQZ") + '&sbQx=' + $F("SBQX") + "&BBZT="
						+ $F('bbzt'), 800, 700) ;
	} 
	 
	if (isReadPage()) {
		for (var i = 0; i < $$("input.button").length; i++) {
			if ($$("input.button")[i].name != "queryBtn") {
				$$("input.button")[i].hide();
			}
		}
	}
	readText();
	showLabel();
}

function showLabel() {
	var sjfb = $ES('SJFB');
	var fbpzzldm = $ES('FBPZZL_DM');
	var flag = false;
	for (var i = 0; i < sjfb.length; i++) {
		if ("" != sjfb[i].value) {
			labelId = "showXjcdLable" + trim(sjfb[i].value);
			if (null != document.getElementById(labelId)) {
				document.getElementById(labelId).style.display = "inline";
			}
			flag = false;
			for (var j = 0; j < fbpzzldm.length; j++) {
				if (sjfb[i].value == fbpzzldm[j].value) {
					flag = true;
					break;
				}
			}
			if (false == flag) {
				sjfb[i].parentNode.parentNode.style.display = "";
			}
		}
	}
}

function reMainPage() {
	window.opener.MainForm.submit();
	rePage();
}
function rePage() {
	$("#handleCode").val("queryData");
	document.getElementById('WB395IndexForm').submit();
}

function openSBB(fbPzzlDm, url) {
	if (fbPzzlDm == "A000000") {
		openModalDialog(url + "?handleCode=initForm&pzXh=" + $F('pzXh')
						+ "&ssQs=" + $F('SSQS') + "&ssQz=" + $F('SSQZ')
						+ "&sbQx=" + $F('SBQX') + "&BBZT=0", 800, 700);
	} else {
		openMaxWindow(url + "?handleCode=initForm&pzXh=" + $F('pzXh')
				+ "&ssQs=" + $F('SSQS') + "&ssQz=" + $F('SSQZ') + "&sbQx="
				+ $F('SBQX') + "&BBZT=0");
	}

}

function querySBB(fbPzzlDm, url, xh) {
	if (fbPzzlDm == "A000000") {
		openModalDialog(url + "?handleCode=queryData&pzXh=" + $F('pzXh')
						+ "&xh=" + xh + "&ssQs=" + $F('SSQS') + "&ssQz="
						+ $F('SSQZ') + "&sbQx=" + $F('SBQX') + "&BBZT=1", 800,
				700);
	} else if ('39999' == fbPzzlDm) {
		openMaxWindow("/WB338JmsAction.do?handleCode=queryData&sbmxxh=1&pzxh="
				+ $F('pzXh') + "&BBZT=1&zbpzzldm=42014");
	} else {
		openMaxWindow(url + "?handleCode=queryData&pzXh=" + $F('pzXh') + "&xh="
				+ xh + "&ssQs=" + $F('SSQS') + "&ssQz=" + $F('SSQZ') + "&sbQx="
				+ $F('SBQX') + "&BBZT=1");
	}
}

function modifySBB(fbPzzlDm, url, xh,name) {
	if (fbPzzlDm == "A000000") {
		openMaxWindow(url + "/queryData?pzXh=" +$("input[name='pzxh']").val()
						+ "&xh=" + xh + "&ssQs=" +$("input[name='ssqs']").val() + "&ssQz="
						+ $("input[name='sszz']").val()  + "&BBZT=1", 800, 700);
	/**	siMenu(xh,'lm1',name,url + "_queryData&pzXh=" +$("input[name='pzxh']").val()
				+ "&xh=" + xh + "&ssQs=" +$("input[name='ssqs']").val() + "&ssQz="
				+ $("input[name='sszz']").val()  + "&BBZT=1");*/
	} else if ('39999' == fbPzzlDm) {
		openMaxWindow("/WB338JmsAction.do?handleCode=queryData&sbmxxh=1&pzxh="
				+ $F('pzXh') + "&BBZT=" + $F("bbzt") + "&zbpzzldm=42014");
	} else {
	
		openMaxWindow(url + "/queryData?pzXh=" +$("input[name='pzxh']").val()
				+ "&xh=" + xh + "&ssQs=" +$("input[name='ssqs']").val() + "&ssQz="
				+ $("input[name='sszz']").val()  + "&BBZT=1", 800, 700);
		
		/**siMenu(xh,'lm1',name,url + "_queryData&pzXh=" +$("input[name='pzxh']").val()
				+ "&xh=" + xh + "&ssQs=" +$("input[name='ssqs']").val() + "&ssQz="
				+ $("input[name='sszz']").val()  + "&BBZT=1");		**/
	/**	openMaxWindow(url + "?handleCode=queryData&pzXh=" + $F('pzXh') + "&xh="
				+ xh + "&ssQs=" + $F('SSQS') + "&ssQz=" + $F('SSQZ') + "&sbQx="
				+ $F('SBQX') + "&BBZT=" + $F('bbzt'));
				*/
	}
}

function deleteData(obj, fbPzzlDm, xh) {
	confirmDialog("是否确认删除数据?", function(button) {
				if (button == "yes") {
					$('#sucessMsg').val("");
					$('#errorMessage').val("");
					obj.disabled = true;
					$("#handleCode").val("deleteData");
					$("#sbmxXh").val(xh);
					$("#fbPzzlDm").val(fbPzzlDm);
					loadDialog('删除数据', '正在删除....');
//					new Ajax.Request('/WB395IndexAction.do', {
//								method : 'post',
//								parameters : $('WB395IndexForm').serialize(),
//								onComplete : function(originalRequest) {
//									Ext.MessageBox.hide();
//									ajaxUpdateMoreTag(
//											originalRequest.responseText,
//											"update");
//									if (trim($F('errorMessage')).empty()) {
//										iconDialog($F('sucessMsg'), 'INFO',
//												function() {
//													rePage();
//												});
//									} else {
//										iconDialog($F('errorMessage'), 'ERROR',
//												function() {
//													rePage();
//												});
//									}
//								},
//								onException : function() {
//									Ext.MessageBox.hide();
//									iconDialog('系统异常', 'ERROR');
//								}
//							});
					
					$.ajax({
						url : "/WB395IndexAction.do",
						async : true,
						dataType : "html",
						data : $('#WB395IndexForm').serialize(),
						type : 'post',
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							alert('系统异常' + textStatus);
						},
						success : function(responseText, textStatus, XMLHttpRequest) {
							ajaxUpdate(responseText, "update");
							if (trim($F('errorMessage')).empty()) {
								iconDialog($F('sucessMsg'), 'INFO',
										function() {
											rePage();
										});
							} else {
								iconDialog($F('errorMessage'), 'ERROR',
										function() {
											rePage();
										});
							}
						}
					});
					
				}
			});
}

function showXjcd(fbpzzldm) {
	var sjfb = $ES('SJFB');
	for (var i = sjfb.length - 1; i > 0; i--) {
		if (fbpzzldm == $ES("SJFB")[i].value) {
			if ("" == $ES("SJFB")[i].parentNode.parentNode.style.display) {
				$ES("SJFB")[i].parentNode.parentNode.style.display = "none";
				labelId = "showXjcdLable" + trim(fbpzzldm);
				document.getElementById(labelId).show();
				labelId = "hideXjcdLable" + trim(fbpzzldm);
				document.getElementById(labelId).hide();
			} else if ("none" == $ES("SJFB")[i].parentNode.parentNode.style.display) {
				$ES("SJFB")[i].parentNode.parentNode.style.display = "";
				labelId = "showXjcdLable" + trim(fbpzzldm);
				document.getElementById(labelId).hide();
				labelId = "hideXjcdLable" + trim(fbpzzldm);
				document.getElementById(labelId).show();
			}
		}
	}
}

function onRefreshsbb(){
	Modal.sysConfirm("将按照工作底稿生成申报表，原来的申报表数据将被覆盖，确认继续操作", onSbbOk);
}
function onSbbOk(result){
	if(result){
	    var $w1=new  $w("Windking");
	    var PZXH=$("input[name='pzxh']").val();
	    var DJXH=$("#DJXH").val();
	    $w1.pushData("PZXH", PZXH);
	    $w1.pushData("DJXH", DJXH);
	    //Modal.proShow();
	    $w1.ajax("/zbjgCtrl/jgSbb",Refresh);			
	}
}

function tsshSbb(){
	var $w1=new  $w("Windking");
	var pzxh=$("input[name='pzxh']").val();
	$w1.pushData("pzxh", pzxh);
	$w1.ajax("/qysdsndIndexCtrl/tsshSbb",viewTsshbutton);	
}
$(document).ready(function(){
   var tsshbj=$("#tsshbj").val();
   if(tsshbj=="1"){
	   $("#tsshbutton").text("收回申报表");
   }else{
       $("#tsshbutton").text("推送申报表");
   }
}) 
function viewTsshbutton(res){
	if(res!=null){
		   var tsshbj=res.data.tsshbj;
		   if(tsshbj=="1"){
			   $("#tsshbutton").text("推送申报表");
		   }else{
		       $("#tsshbutton").text("收回申报表");
		   }		
	}
}