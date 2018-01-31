

function goUrl(pzxh, fbpzzldm) {
//	new Ajax.Request('/WB395A100000Action.do?handleCode=queryUrl&pzXh=' + pzxh
//					+ '&fbpzzldm=' + fbpzzldm, {
//				method : 'post',
//				onComplete : function(originalRequest) {
//					var qysdsUrl = eval("(" + originalRequest.responseText
//							+ ")");
//					if (qysdsUrl.qysdsUrl.sucessMsg != "") {
//
//						openMaxWindow(qysdsUrl.qysdsUrl.url);
//					} else if (qysdsUrl.qysdsUrl.errorMsg != "") {
//						alert(qysdsUrl.qysdsUrl.errorMsg);
//					} else {
//						alert("未获取到后台返回信息!");
//					}
//				},
//				onException : function(e) {
//					alert('系统异常' + e.message);
//				}
//			});
	
	
	$.ajax({
		url : "/WB395A100000Action.do?handleCode=queryUrl&pzXh=" + pzxh	+ "&fbpzzldm=" + fbpzzldm,
		async : true,
		dataType : "html",
		data : $('#WB395A105081_2Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			var qysdsUrl = eval("(" + responseText
					+ ")");
			if (qysdsUrl.qysdsUrl.sucessMsg != "") {

				openMaxWindow(qysdsUrl.qysdsUrl.url);
			} else if (qysdsUrl.qysdsUrl.errorMsg != "") {
				alert(qysdsUrl.qysdsUrl.errorMsg);
			} else {
				alert("未获取到后台返回信息!");
			}
		}
	});

}