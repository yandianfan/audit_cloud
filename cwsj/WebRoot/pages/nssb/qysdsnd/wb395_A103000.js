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
							openMaxWindow("/nssb/wb395/wb395_A103000_TbSm.html");
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
							$("handleCode").value = "printPage";
							openMaxWindow("/WB395A103000Action.do?handleCode=printPage&pzXh="
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
	setsymjClass();
	calObj = new caltb("tab1");
	calObj.setRules(ymkj_getRulesX("tab1"));
	calObj.negative = true;
	initCalTable(calObj);
	readText();
}

function tempSave(button) {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
	getsrxBj();
//	new Ajax.Request('/WB395A103000Action.do', {
//				method : 'post',
//				parameters : $('WB395A103000Form').serialize(),
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
		url : "/WB395A103000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A103000Form').serialize(),
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

function setsymjClass() {
	// bj=1事业单位
	// bj=2民间非营利组织会计制度
	// bj=3村集体经济组织会计制度
	if ($ES("bj")[0].value == '2') {
		$ES("a103000VO.czbzsr")[0].disabled = true;
		$ES("a103000VO.sysr")[0].disabled = true;
		$ES("a103000VO.sjbzsr")[0].disabled = true;
		$ES("a103000VO.fsdwsjsr")[0].disabled = true;
		$ES("a103000VO.yysr")[0].disabled = true;
		$ES("a103000VO.sydwsrtzxy")[0].disabled = true;
		$ES("a103000VO.qt")[0].disabled = true;

		$ES("a103000VO.sydwsr")[0].value = "";
		$ES("a103000VO.czbzsr")[0].value = "";
		$ES("a103000VO.sysr")[0].value = "";
		$ES("a103000VO.sjbzsr")[0].value = "";
		$ES("a103000VO.fsdwsjsr")[0].value = "";
		$ES("a103000VO.yysr")[0].value = "";
		$ES("a103000VO.sydwsrqtsr")[0].value = "";
		$ES("a103000VO.sydwsrtzxy")[0].value = "";
		$ES("a103000VO.qt")[0].value = "";

		$ES("a103000VO.czbzsr")[0].className = 'fsrx';
		$ES("a103000VO.sysr")[0].className = 'fsrx';
		$ES("a103000VO.sjbzsr")[0].className = 'fsrx';
		$ES("a103000VO.fsdwsjsr")[0].className = 'fsrx';
		$ES("a103000VO.yysr")[0].className = 'fsrx';
		$ES("a103000VO.sydwsrtzxy")[0].className = 'fsrx';
		$ES("a103000VO.qt")[0].className = 'fsrx';

		$ES("a103000VO.syzc")[0].disabled = true;
		$ES("a103000VO.sjsjzc")[0].disabled = true;
		$ES("a103000VO.dfsdwbz")[0].disabled = true;
		$ES("a103000VO.jyzc")[0].disabled = true;
		$ES("a103000VO.qtzc")[0].disabled = true;

		$ES("a103000VO.sydwzc")[0].value = "";
		$ES("a103000VO.syzc")[0].value = "";
		$ES("a103000VO.sjsjzc")[0].value = "";
		$ES("a103000VO.dfsdwbz")[0].value = "";
		$ES("a103000VO.jyzc")[0].value = "";
		$ES("a103000VO.qtzc")[0].value = "";

		$ES("a103000VO.syzc")[0].className = 'fsrx';
		$ES("a103000VO.sjsjzc")[0].className = 'fsrx';
		$ES("a103000VO.dfsdwbz")[0].className = 'fsrx';
		$ES("a103000VO.jyzc")[0].className = 'fsrx';
		$ES("a103000VO.qtzc")[0].className = 'fsrx';
	} else if ($ES("bj")[0].value == '1') {

		$ES("a103000VO.jsjzsr")[0].disabled = true;
		$ES("a103000VO.hfsr")[0].disabled = true;
		$ES("a103000VO.tglwsr")[0].disabled = true;
		$ES("a103000VO.spxssr")[0].disabled = true;
		$ES("a103000VO.zfbzsr")[0].disabled = true;
		$ES("a103000VO.mjfylzzsrtzxy")[0].disabled = true;
		$ES("a103000VO.mjfylzzsrqtsr")[0].disabled = true;


		$ES("a103000VO.mjfylzzsr")[0].value = "";
		$ES("a103000VO.jsjzsr")[0].value = "";
		$ES("a103000VO.hfsr")[0].value = "";
		$ES("a103000VO.tglwsr")[0].value = "";
		$ES("a103000VO.spxssr")[0].value = "";
		$ES("a103000VO.zfbzsr")[0].value = "";
		$ES("a103000VO.mjfylzzsrtzxy")[0].value = "";
		$ES("a103000VO.mjfylzzsrqtsr")[0].value = "";

		$ES("a103000VO.jsjzsr")[0].className = 'fsrx';
		$ES("a103000VO.hfsr")[0].className = 'fsrx';
		$ES("a103000VO.tglwsr")[0].className = 'fsrx';
		$ES("a103000VO.spxssr")[0].className = 'fsrx';
		$ES("a103000VO.zfbzsr")[0].className = 'fsrx';
		$ES("a103000VO.mjfylzzsrtzxy")[0].className = 'fsrx';
		$ES("a103000VO.mjfylzzsrqtsr")[0].className = 'fsrx';

		$ES("a103000VO.ywhdcb")[0].disabled = true;
		$ES("a103000VO.glfy")[0].disabled = true;
		$ES("a103000VO.czfy")[0].disabled = true;
		$ES("a103000VO.qyfy")[0].disabled = true;


		$ES("a103000VO.mjfylzzzc")[0].value = "";
		$ES("a103000VO.ywhdcb")[0].value = "";
		$ES("a103000VO.glfy")[0].value = "";
		$ES("a103000VO.czfy")[0].value = "";
		$ES("a103000VO.qyfy")[0].value = "";

		$ES("a103000VO.ywhdcb")[0].className = 'fsrx';
		$ES("a103000VO.glfy")[0].className = 'fsrx';
		$ES("a103000VO.czfy")[0].className = 'fsrx';
		$ES("a103000VO.qyfy")[0].className = 'fsrx';

	}
}

function getsrxBj() {
	var xkj_bj = '0';// 事业单位标记
	var ckm_bj = '0';// 民间非营利组织会计制度标记
	if ($ES("a103000VO.czbzsr")[0].value != null
			&& $ES("a103000VO.czbzsr")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.sysr")[0].value != null
			&& $ES("a103000VO.sysr")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.sjbzsr")[0].value != null
			&& $ES("a103000VO.sjbzsr")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.fsdwsjsr")[0].value != null
			&& $ES("a103000VO.fsdwsjsr")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.yysr")[0].value != null
			&& $ES("a103000VO.yysr")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.sydwsrtzxy")[0].value != null
			&& $ES("a103000VO.sydwsrtzxy")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.qt")[0].value != null
			&& $ES("a103000VO.qt")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.syzc")[0].value != null
			&& $ES("a103000VO.syzc")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.sjsjzc")[0].value != null
			&& $ES("a103000VO.sjsjzc")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.dfsdwbz")[0].value != null
			&& $ES("a103000VO.dfsdwbz")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.jyzc")[0].value != null
			&& $ES("a103000VO.jyzc")[0].value != "") {
		xkj_bj = '1';
	} else if ($ES("a103000VO.qtzc")[0].value != null
			&& $ES("a103000VO.qtzc")[0].value != "") {
		xkj_bj = '1';
	}

	if ($ES("a103000VO.jsjzsr")[0].value != null
			&& $ES("a103000VO.jsjzsr")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.hfsr")[0].value != null
			&& $ES("a103000VO.hfsr")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.tglwsr")[0].value != null
			&& $ES("a103000VO.tglwsr")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.spxssr")[0].value != null
			&& $ES("a103000VO.spxssr")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.zfbzsr")[0].value != null
			&& $ES("a103000VO.zfbzsr")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.mjfylzzsrtzxy")[0].value != null
			&& $ES("a103000VO.mjfylzzsrtzxy")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.mjfylzzsrqtsr")[0].value != null
			&& $ES("a103000VO.mjfylzzsrqtsr")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.ywhdcb")[0].value != null
			&& $ES("a103000VO.ywhdcb")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.glfy")[0].value != null
			&& $ES("a103000VO.glfy")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.czfy")[0].value != null
			&& $ES("a103000VO.czfy")[0].value != "") {
		ckm_bj = '1';
	} else if ($ES("a103000VO.qyfy")[0].value != null
			&& $ES("a103000VO.qyfy")[0].value != "") {
		ckm_bj = '1';
	}

	if (xkj_bj == '1' && ckm_bj == '1') {
		$ES("srxbj")[0].value = '1';
	} else {
		$ES("srxbj")[0].value = '0';
	}

}
