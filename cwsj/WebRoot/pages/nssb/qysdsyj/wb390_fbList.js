Ext.onReady(function() {
			try {
				var tb = new Ext.Toolbar({
							renderTo : "toolbar",
							items : ['-', '->', {
										id : "submitBtn",
										text : "获取上一次居民企业参股外国企业信息报告表",
										iconCls : "submit",
										handler : function() {
											initJmData();
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

function initPage() {
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	readText();
}

function openFB(url, fbpzzldm, pzzldm) {
	if (pzzldm != null) {
		// if ('39999' == fbpzzldm) {
		// openJmssq($F("pzxh"), "31347", $F("bbzt"));
		// } else {
		openMaxWindow(url + "?sessionId="+$F("sessionId") +"&handleCode=initForm&fbpzzldm=" + fbpzzldm
				+ "&pzxh=" + $F("pzxh") + "&pzzldm=" + pzzldm + "&ssqs="
				+ $F("ssqs") + "&ssqz=" + $F("ssqz"));

		// }
	} else {
		openMaxWindow(url + "?fbpzzldm=" + fbpzzldm + "&ssqs=" + $F("ssqs")
				+ "&ssqz=" + $F("ssqz") + "&pzxh=" + $F("pzxh") + "&pzzldm="
				+ pzzldm);
	}
}
function editFB(url, fbpzzldm, pzzldm, sbbxh) {
	if (pzzldm != null) {
		// if ('39999' == fbpzzldm) {
		// openMaxWindow("/WB338JmsAction.do?handleCode=queryData&sbmxxh=1&pzxh="
		// + $F('pzxh') + "&BBZT=" + $F("bbzt") + "&zbpzzldm=31347");
		// } else {
		openMaxWindow(url + "?sessionId="+$F("sessionId") +"&handleCode=queryData&fbpzzldm=" + fbpzzldm
				+ "&ssqs=" + $F("ssqs") + "&ssqz=" + $F("ssqz") + "&pzxh="
				+ $F("pzxh") + "&BBZT=" + $F("bbzt") + "&pzzldm=" + pzzldm
				+ "&sbmxxh=" + sbbxh);
		// }
	}
}

function delFB(pzxh, fbpzzldm, sbbxh) {
	confirmDialog("是否确认删除数据?", function(button) {
				if (button == "yes") {
					$('#fbpzzldm').val(fbpzzldm);
					$('#sbbxh').val(sbbxh);
					$('#pzxh').val(pzxh);
					$("#handleCode").val("delData");
					$('#errorMessage').val("");
					loadDialog('删除数据', '正在删除....');
//					new Ajax.Request('/WB390fbListAction.do', {
//								method : 'post',
//								parameters : $('WB390fbListForm').serialize(),
//								onComplete : function(originalRequest) {
//									Ext.MessageBox.hide();
//									ajaxUpdate(originalRequest.responseText,
//											"update");
//									if (!trim($F('sucessMsg')).empty()) {
//										iconDialog($F('sucessMsg'), 'INFO',
//												function() {
//													refresh();
//												});
//									} else if (!trim($F('errorMessage'))
//											.empty()) {
//										iconDialog($F('errorMessage'), 'ERROR',
//												function() {
//													refresh();
//												});
//									} else {
//										iconDialog('未获取到返回消息！', 'ERROR',
//												function() {
//													refresh();
//												});
//									}
//								},
//								onException : function() {
//									Ext.MessageBox.hide();
//									iconDialog('系统异常', 'ERROR');
//								}
//
//							});
					
					$.ajax({
						url : "/WB390fbListAction.do",
						async : true,
						dataType : "html",
						data : $('#WB390fbListForm').serialize(),
						type : 'post',
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							alert('系统异常' + textStatus);
						},
						success : function(responseText, textStatus, XMLHttpRequest) {
							ajaxUpdate(responseText, "update");
							if (!trim($F('sucessMsg')).empty()) {
								iconDialog($F('sucessMsg'), 'INFO',function() {
											refresh();
										});
							} else if (!trim($F('errorMessage')).empty()) {
								iconDialog($F('errorMessage'), 'ERROR',function() {
											refresh();
										});
							} else {
								iconDialog('未获取到返回消息！', 'ERROR',function() {
											refresh();
										});
							}
						}
					});
					
				}
			});
}

function refresh() {
	$('#errorMessage').val("");
	$("#handleCode").val("initForm");
	$('#WB390fbListForm').submit();
}

function initJmData() {
	confirmDialog("此操作将获取上一次申报的居民企业参股外国企业信息报告表并替换已暂存的数据，是否继续操作?", function(
					button) {
				if (button == "yes") {
					$("#handleCode").val("initJmData");
					$('#errorMessage').val("");
					loadDialog('删除数据', '正在删除....');
//					new Ajax.Request('/WB390fbListAction.do', {
//								method : 'post',
//								parameters : $('WB390fbListForm').serialize(),
//								onComplete : function(originalRequest) {
//									Ext.MessageBox.hide();
//									ajaxUpdate(originalRequest.responseText,
//											"update");
//									if (!trim($F('sucessMsg')).empty()) {
//										iconDialog($F('sucessMsg'), 'INFO',
//												function() {
//													refresh();
//												});
//									} else if (!trim($F('errorMessage'))
//											.empty()) {
//										iconDialog($F('errorMessage'), 'ERROR',
//												function() {
//													refresh();
//												});
//									} else {
//										iconDialog('未获取到返回消息！', 'ERROR',
//												function() {
//													refresh();
//												});
//									}
//								},
//								onException : function() {
//									Ext.MessageBox.hide();
//									iconDialog('系统异常', 'ERROR');
//								}
//
//							});
					
					$.ajax({
						url : "/WB390fbListAction.do",
						async : true,
						dataType : "html",
						data : $('#WB390fbListForm').serialize(),
						type : 'post',
						error : function(XMLHttpRequest, textStatus, errorThrown) {
							alert('系统异常' + textStatus);
						},
						success : function(responseText, textStatus, XMLHttpRequest) {
							ajaxUpdate(responseText, "update");
							if (!trim($F('sucessMsg')).empty()) {
								iconDialog($F('sucessMsg'), 'INFO',function() {
											refresh();
										});
							} else if (!trim($F('errorMessage')).empty()) {
								iconDialog($F('errorMessage'), 'ERROR',function() {
											refresh();
										});
							} else {
								iconDialog('未获取到返回消息！', 'ERROR',function() {
											refresh();
										});
							}
						}
					});
					
				}
			});
}
