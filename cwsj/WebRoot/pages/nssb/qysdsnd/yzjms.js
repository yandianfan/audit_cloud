function yzJmssb(pzxh, zbpzzldm, ssqq, ssqz, call) {
	waitDialog();
	new Ajax.Request('/WB338JmsAction.do?handleCode=yzjms', {
		method : 'post',
		parameters : "pzxh=" + pzxh + "&zbpzzldm=" + zbpzzldm + "&ssqq=" + ssqq
				+ "&ssqz=" + ssqz,
		onComplete : function(originalRequest) {
			Ext.MessageBox.hide();
			if (originalRequest.responseText.split('||')[0] != '1') {
				// iconDialog("有减免税发生的，请填写减免税申报表（在暂存后点击附表按钮）");
		iconDialog(originalRequest.responseText.split('||')[1]);
	} else {
		eval(call);
	}
},
onException : function() {
	Ext.MessageBox.hide();
	iconDialog('系统异常', 'ERROR');
}
	});
}

function openJmssq(pzxh, pzzldm, bbzt) {
	try {
		if (pzxh == null || pzxh == "") {
			throw new Error("凭证序号不能为空");
		} else if (pzzldm == null || pzzldm == "") {
			throw new Error("凭证种类代码不能为空");
		} else if (bbzt == null || bbzt == "") {
			throw new Error("报表状态不能为空");
		}
		waitDialog();
				$.ajax({
					url : "/WB338JmsAction.do?handleCode=yzksb&sessionId="+$F("sessionId"),
					async : true,
					data : {"pzxh":pzxh,"zbpzzldm":pzzldm},
					type : 'post',
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						Ext.MessageBox.hide();
						iconDialog('系统异常', 'ERROR');
					},
					success : function(responseText, textStatus, XMLHttpRequest) {
						Ext.MessageBox.hide();
						if (responseText == "0") {
							if(pzzldm=="42014"){
								iconDialog("请先填报【A100000 中华人民共和国企业所得税年度纳税申报表（A类）】！");
							}else{
								iconDialog("没有可申报减免税的相应税种税目，请确认是否存在有效的减免税认定！");
							}
						}else{
							var jmssqForm = document.createElement("form");
							jmssqForm.setAttribute("target", "jmssqWin");
							jmssqForm.setAttribute("name", "yzjmsForm");
							jmssqForm.setAttribute("method", "post");
							jmssqForm.setAttribute("action",
									"/WB338JmsAction.do?sessionId="+$F("sessionId")+"&pzxh=" + pzxh
											+ "&zbpzzldm=" + pzzldm + "&BBZT="
											+ bbzt);
							document.body.appendChild(jmssqForm);
							var winheight = screen.availHeight - 55;
							var winwidth = screen.availWidth - 10;
							var param = "height="
									+ winheight
									+ ",width="
									+ winwidth
									+ ",top=0,left=0,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no,titlebar=no";
							window.open('', 'jmssqWin', param);
							jmssqForm.submit();
						}
					}
				});
				

	} catch (e) {
		iconDialog(e.message);
	}
}

function yzsbqk(pzxh, action, bbzt, isZrr) {
	if (pzxh.empty()) {
		iconDialog("请先暂存主表！", "WARNING");
		return;
	}
	waitDialog();
			$.ajax({
					url : "/WB338JmsAction.do?handleCode=yzsbqk&sessionId="+$F("sessionId"),
					async : true,
					data :{"pzxh":pzxh,"isZrr":isZrr},
					type : 'post',
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						Ext.MessageBox.hide();
						iconDialog('系统异常', 'ERROR');
					},
					success : function(responseText, textStatus, XMLHttpRequest) {
						Ext.MessageBox.hide();
						if (responseText == '1') {
					openMaxWindow("/" + action + ".do?sessionId="+$F("sessionId")+"&pzxh=" + pzxh + "&BBZT="
						+ bbzt);
						} else {
							iconDialog("请先暂存主表！", "WARNING");
								}
						
					}
				});
	
}

function delJms(pzxh) {
	confirmDialog("是否确认删除数据?", function(button) {
		if (button == "yes") {
			// waitDialog();
			loadDialog('删除数据', '正在删除....');
					$.ajax({
					url : "/WB338JmsAction.do?handleCode=delData&sessionId="+$F("sessionId"),
					async : true,
					data :{"pzxh":pzxh},
					type : 'post',
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						Ext.MessageBox.hide();
						iconDialog('系统异常', 'ERROR');
					},
					success : function(responseText, textStatus, XMLHttpRequest) {
						Ext.MessageBox.hide();
					if (responseText == '1') {
						iconDialog('删除成功', 'INFO', function() {
							document.forms[0].submit();
						});

					} else if (responseText == '2') {
						iconDialog('主表已提交，不能删除', 'ERROR');
					} else {
						iconDialog('删除失败', 'ERROR');
					}
					}
				});	
			
		}
	});
}