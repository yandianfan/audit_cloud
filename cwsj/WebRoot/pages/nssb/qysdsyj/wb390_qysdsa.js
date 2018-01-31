var rules;
var calObj;
var empty;
var emptyArr;
var sbje = 0;

Ext.BLANK_IMAGE_URL = './public/images/s.gif';

Ext.onReady(function() {
	try {
		var tb = new Ext.Toolbar({
			renderTo : "toolbar",
			items : ['-', '->', {
						id : "tbsmBtn",
						text : "填表说明",
						iconCls : "fb",
						handler : function() {
							openMaxWindow('/nssb/wb390/wb390_qysds_TbSm.html');
						},
						scope : this
					}, '-', {
						id : "dqsjBtn",
						text : "自动计算",
						iconCls : "magnify",
						handler : function() {
							readData();
						},
						scope : this
					}, '-', {
						id : "tempBtn",
						text : "暂存",
						iconCls : "save",
						handler : function() {
							saveTemp();
						},
						scope : this
					}, '-', {
						id : "submitBtn",
						text : "提交",
						iconCls : "submit",
						handler : function() {
							showSubmitDialog();
						},
						scope : this
					}, '-', {
						id : "fbBtn",
						text : "附表",
						iconCls : "fb",
						handler : function() {
							openFbBtnWindow();
						},
						scope : this
					}, '-', {
						text : "查看信息",
						iconCls : "fb",
						handler : function() {
							openMsgWindow();
						},
						scope : this
					}, '-', {
						id : "printBtn",
						text : "打印",
						iconCls : "print",
						handler : function() {
							openMaxWindow("/WB390qysdsaAction.do?pzxh="
									+ $F('vo.pzxh') + "&handleCode=print&sessionId="+$F("sessionId"));
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

/**
 * 初始化页面
 */
function initPage() {
	maxPage();
	if (!beforeInitPage()) {
		return;
	}
	readText();
	// 用于下面计算判断清空所有0.0的INPUT
	// var inputArr = $$('input');
	// for (var i = 0; i < inputArr.length; i++) {
	// if (inputArr[i].type == "text" && inputArr[i].value == "0.0") {
	// inputArr[i].value = "";
	// }
	// }
	setTableStyle();
}

function setTableStyle() {
	if ($F('vo.zspmdm') == "0110") {
		// 居民纳税人 非总分机构
		fzfjg_init();
	} else if ($F('vo.zspmdm') == "0143") {
		// 总机构预缴所得税(分支机构跨省)
		zjgks_init();
	} else if ($F('vo.zspmdm') == "0142") {
		// 总机构预缴所得税(分支机构全部省内) 填表同0110居民纳税人 非总分机构
		fzfjg_init();
	} else if ($F('vo.zspmdm') == "0141") {
		// 分支机构（总、分支机构跨省）预缴所得税
		fzjgks_init();
	}
	if ("0" == $F('vo.xwqybj')) {
		$ES('tmp_xwbj')[0].checked = true;
	} else if ("1" == $F('vo.xwqybj')) {
		$ES('tmp_xwbj')[1].checked = true;
	} else if ("2" == $F('vo.xwqybj')) {
		$ES('tmp_xwbj')[2].checked = true;
	}
}

// 非总分机构初始化
function fzfjg_init() {
	// 第一种计税方法
	if ($F('vo.yjfsdm') == "01") {
		document.getElementById('vo.bzsbqje').readOnly = true;
		document.getElementById('vo.bzsbqje').className = "fsrx";
		document.getElementById('vo.bzsljje').readOnly = true;
		document.getElementById('vo.bzsljje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
		document.getElementById('vo.jmbqje').readOnly = true;
		document.getElementById('vo.jmbqje').className = "fsrx";
		document.getElementById('vo.jmljje').readOnly = true;
		document.getElementById('vo.jmljje').className = "fsrx";

		// 第二种计税方式只读
		document.getElementById('vo.sndynssdljje').readOnly = true;
		document.getElementById('vo.sndynssdljje').className = "fsrx";
		document.getElementById('vo.byynssdbqje').readOnly = true;
		document.getElementById('vo.byynssdbqje').className = "fsrx";
		document.getElementById('vo.xwjmbq2je').readOnly = true;
		document.getElementById('vo.xwjmbq2je').className = "fsrx";
		document.getElementById('vo.xwjmlj2je').readOnly = true;
		document.getElementById('vo.xwjmlj2je').className = "fsrx";
		// 第三种计税方式只读
		document.getElementById('vo.byswjgqdyjbqje').readOnly = true;
		document.getElementById('vo.byswjgqdyjbqje').className = "fsrx";
		document.getElementById('vo.byswjgqdyjljje').readOnly = true;
		document.getElementById('vo.byswjgqdyjljje').className = "fsrx";
		// 总机构只读
		document.getElementById('vo.zjgftsdsbqje').readOnly = true;
		document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.zjgftsdsljje').readOnly = true;
		document.getElementById('vo.zjgftsdsljje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
		document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsljje').readOnly = true;
		document.getElementById('vo.czjzfpsdsljje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
		document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsljje').readOnly = true;
		document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
		document.getElementById('vo.zjgdlftbqje').readOnly = true;
		document.getElementById('vo.zjgdlftbqje').className = "fsrx";
		document.getElementById('vo.zjgdlftljje').readOnly = true;
		document.getElementById('vo.zjgdlftljje').className = "fsrx";
		// 分支机构只读
		document.getElementById('vo.fpbqbl').readOnly = true;
		document.getElementById('vo.fpbqbl').className = "fsrx";
		document.getElementById('vo.fpljbl').readOnly = true;
		document.getElementById('vo.fpljbl').className = "fsrx";
		document.getElementById('vo.fpsdbqje').readOnly = true;
		document.getElementById('vo.fpsdbqje').className = "fsrx";
		document.getElementById('vo.fpsdljje').readOnly = true;
		document.getElementById('vo.fpsdljje').className = "fsrx";

		// 第一种计税方式计算公式
		rules = new Array();
		// 10=4+5-6-7-8
		rules
				.push("vo.sjlrbqje = vo.lrzebqje + vo.tdywbqje - vo.bzsbqje - vo.gdzcjszjtjbqje - vo.nbksbqje");
		rules
				.push("vo.sjlrljje = vo.lrzeljje + vo.tdywljje - vo.bzsljje - vo.gdzcjszjtjljje - vo.nbksljje");
		// 11=9*10
		rules.push("vo.ynsdsbqje = vo.sjlrbqje * vo.bqsl");
		rules.push("vo.ynsdsljje = vo.sjlrljje * vo.ljsl");
		// 15=11-12-13-14
		rules
				.push("vo.ybtsdsljje = vo.ynsdsljje - vo.jmljje - vo.sjyyjljje - vo.tdywyzljje");
		// 17=15-16
		rules.push("vo.bysjybtseljje = vo.ybtsdsljje - vo.yqnddjdkljje");
		calObj = new caltb('jstb');
		calObj.negative = true;
		calObj.setRules(rules);
		emptyArr = new Array();
		emptyArr.push("vo.bysjybtseljje");
		calObj.setEmptyArr(emptyArr);
	} else if ($F('vo.yjfsdm') == "02" || $F('vo.yjfsdm') == "03") {
		// 第二种计税方式
		// 第一种计税方式只读
		document.getElementById('vo.yysrbqje').readOnly = true;
		document.getElementById('vo.yysrbqje').className = "fsrx";
		document.getElementById('vo.yysrljje').readOnly = true;
		document.getElementById('vo.yysrljje').className = "fsrx";
		document.getElementById('vo.yycbbqje').readOnly = true;
		document.getElementById('vo.yycbbqje').className = "fsrx";
		document.getElementById('vo.yycbljje').readOnly = true;
		document.getElementById('vo.yycbljje').className = "fsrx";
		document.getElementById('vo.lrzebqje').readOnly = true;
		document.getElementById('vo.lrzebqje').className = "fsrx";
		document.getElementById('vo.lrzeljje').readOnly = true;
		document.getElementById('vo.lrzeljje').className = "fsrx";
		document.getElementById('vo.tdywbqje').readOnly = true;
		document.getElementById('vo.tdywbqje').className = "fsrx";
		document.getElementById('vo.tdywljje').readOnly = true;
		document.getElementById('vo.tdywljje').className = "fsrx";
		document.getElementById('vo.bzsbqje').readOnly = true;
		document.getElementById('vo.bzsbqje').className = "fsrx";
		document.getElementById('vo.bzsljje').readOnly = true;
		document.getElementById('vo.bzsljje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
		document.getElementById('vo.nbksbqje').readOnly = true;
		document.getElementById('vo.nbksbqje').className = "fsrx";
		document.getElementById('vo.nbksljje').readOnly = true;
		document.getElementById('vo.nbksljje').className = "fsrx";
		document.getElementById('vo.jmbqje').readOnly = true;
		document.getElementById('vo.jmbqje').className = "fsrx";
		document.getElementById('vo.jmljje').readOnly = true;
		document.getElementById('vo.jmljje').className = "fsrx";
		document.getElementById('vo.sjyyjljje').readOnly = true;
		document.getElementById('vo.sjyyjljje').className = "fsrx";
		document.getElementById('vo.tdywyzbqje').readOnly = true;
		document.getElementById('vo.tdywyzbqje').className = "fsrx";
		document.getElementById('vo.tdywyzljje').readOnly = true;
		document.getElementById('vo.tdywyzljje').className = "fsrx";
		document.getElementById('vo.yqnddjdkbqje').readOnly = true;
		document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
		document.getElementById('vo.yqnddjdkljje').readOnly = true;
		document.getElementById('vo.yqnddjdkljje').className = "fsrx";
		// 第二种计税方式只读
		document.getElementById('vo.byynssdbqje').readOnly = true;
		document.getElementById('vo.byynssdbqje').className = "fsrx";
		document.getElementById('vo.xwjmbq2je').readOnly = true;
		document.getElementById('vo.xwjmbq2je').className = "fsrx";
		document.getElementById('vo.xwjmlj2je').readOnly = true;
		document.getElementById('vo.xwjmlj2je').className = "fsrx";
		// 第三种计税方式只读
		document.getElementById('vo.byswjgqdyjbqje').readOnly = true;
		document.getElementById('vo.byswjgqdyjbqje').className = "fsrx";
		document.getElementById('vo.byswjgqdyjljje').readOnly = true;
		document.getElementById('vo.byswjgqdyjljje').className = "fsrx";
		// 总机构只读
		document.getElementById('vo.zjgftsdsbqje').readOnly = true;
		document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.zjgftsdsljje').readOnly = true;
		document.getElementById('vo.zjgftsdsljje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
		document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsljje').readOnly = true;
		document.getElementById('vo.czjzfpsdsljje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
		document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsljje').readOnly = true;
		document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
		document.getElementById('vo.zjgdlftbqje').readOnly = true;
		document.getElementById('vo.zjgdlftbqje').className = "fsrx";
		document.getElementById('vo.zjgdlftljje').readOnly = true;
		document.getElementById('vo.zjgdlftljje').className = "fsrx";
		// 分支机构只读
		document.getElementById('vo.fpbqbl').readOnly = true;
		document.getElementById('vo.fpbqbl').className = "fsrx";
		document.getElementById('vo.fpljbl').readOnly = true;
		document.getElementById('vo.fpljbl').className = "fsrx";
		document.getElementById('vo.fpsdbqje').readOnly = true;
		document.getElementById('vo.fpsdbqje').className = "fsrx";
		document.getElementById('vo.fpsdljje').readOnly = true;
		document.getElementById('vo.fpsdljje').className = "fsrx";

		// 第二种计税方式计算公式
		rules = new Array();
		// 20=21/4 /12
		// var ts = getSubDays($F('vo.str_sfssqqsrq'), $F('vo.str_sfssqzzrq'))
		if ($F('vo.yjfsdm') == "02") {
			rules.push("vo.byynssdbqje = vo.sndynssdljje / 4");
			rules.push("vo.byynssdljje = vo.sndynssdljje / 4");
		} else {
			rules.push("vo.byynssdbqje = vo.sndynssdljje / 12");
			rules.push("vo.byynssdljje = vo.sndynssdljje / 12");
		}
		// 22=20*21
		rules.push("vo.byynsdbqje = vo.byynssdbqje * vo.bq2sl");
		rules.push("vo.byynsdljje = vo.byynssdljje * vo.lj2sl");
		// 24=22-23
		rules.push("vo.bysjynsdbqje = vo.byynsdbqje - vo.xwjmbq2je");
		rules.push("vo.bysjynsdljje = vo.byynsdljje - vo.xwjmlj2je");
		calObj = new caltb('jstb');
		calObj.negative = true;
		calObj.setRules(rules);
		emptyArr = new Array();
		emptyArr.push("vo.bysjynsdbqje");
		calObj.setEmptyArr(emptyArr);
	} else if ($F('vo.yjfsdm') == "04") {
		// 第三种计税方式
		// 第一种计税方式只读
		document.getElementById('vo.yysrbqje').readOnly = true;
		document.getElementById('vo.yysrbqje').className = "fsrx";
		document.getElementById('vo.yysrljje').readOnly = true;
		document.getElementById('vo.yysrljje').className = "fsrx";
		document.getElementById('vo.yycbbqje').readOnly = true;
		document.getElementById('vo.yycbbqje').className = "fsrx";
		document.getElementById('vo.yycbljje').readOnly = true;
		document.getElementById('vo.yycbljje').className = "fsrx";
		document.getElementById('vo.lrzebqje').readOnly = true;
		document.getElementById('vo.lrzebqje').className = "fsrx";
		document.getElementById('vo.lrzeljje').readOnly = true;
		document.getElementById('vo.lrzeljje').className = "fsrx";
		document.getElementById('vo.tdywbqje').readOnly = true;
		document.getElementById('vo.tdywbqje').className = "fsrx";
		document.getElementById('vo.tdywljje').readOnly = true;
		document.getElementById('vo.tdywljje').className = "fsrx";
		document.getElementById('vo.bzsbqje').readOnly = true;
		document.getElementById('vo.bzsbqje').className = "fsrx";
		document.getElementById('vo.bzsljje').readOnly = true;
		document.getElementById('vo.bzsljje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
		document.getElementById('vo.nbksbqje').readOnly = true;
		document.getElementById('vo.nbksbqje').className = "fsrx";
		document.getElementById('vo.nbksljje').readOnly = true;
		document.getElementById('vo.nbksljje').className = "fsrx";
		document.getElementById('vo.jmbqje').readOnly = true;
		document.getElementById('vo.jmbqje').className = "fsrx";
		document.getElementById('vo.jmljje').readOnly = true;
		document.getElementById('vo.jmljje').className = "fsrx";
		document.getElementById('vo.sjyyjljje').readOnly = true;
		document.getElementById('vo.sjyyjljje').className = "fsrx";
		document.getElementById('vo.tdywyzbqje').readOnly = true;
		document.getElementById('vo.tdywyzbqje').className = "fsrx";
		document.getElementById('vo.tdywyzljje').readOnly = true;
		document.getElementById('vo.tdywyzljje').className = "fsrx";
		document.getElementById('vo.yqnddjdkbqje').readOnly = true;
		document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
		document.getElementById('vo.yqnddjdkljje').readOnly = true;
		document.getElementById('vo.yqnddjdkljje').className = "fsrx";
		// 第二种计税方式只读
		document.getElementById('vo.sndynssdljje').readOnly = true;
		document.getElementById('vo.sndynssdljje').className = "fsrx";
		document.getElementById('vo.byynssdbqje').readOnly = true;
		document.getElementById('vo.byynssdbqje').className = "fsrx";
		document.getElementById('vo.xwjmbq2je').readOnly = true;
		document.getElementById('vo.xwjmbq2je').className = "fsrx";
		document.getElementById('vo.xwjmlj2je').readOnly = true;
		document.getElementById('vo.xwjmlj2je').className = "fsrx";
		// 第三种计税方式只读
		document.getElementById('vo.byswjgqdyjljje').readOnly = true;
		document.getElementById('vo.byswjgqdyjljje').className = "fsrx";
		// 总机构只读
		document.getElementById('vo.zjgftsdsbqje').readOnly = true;
		document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.zjgftsdsljje').readOnly = true;
		document.getElementById('vo.zjgftsdsljje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
		document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsljje').readOnly = true;
		document.getElementById('vo.czjzfpsdsljje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
		document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsljje').readOnly = true;
		document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
		document.getElementById('vo.zjgdlftbqje').readOnly = true;
		document.getElementById('vo.zjgdlftbqje').className = "fsrx";
		document.getElementById('vo.zjgdlftljje').readOnly = true;
		document.getElementById('vo.zjgdlftljje').className = "fsrx";
		// 分支机构只读
		document.getElementById('vo.fpbqbl').readOnly = true;
		document.getElementById('vo.fpbqbl').className = "fsrx";
		document.getElementById('vo.fpljbl').readOnly = true;
		document.getElementById('vo.fpljbl').className = "fsrx";
		document.getElementById('vo.fpsdbqje').readOnly = true;
		document.getElementById('vo.fpsdbqje').className = "fsrx";
		document.getElementById('vo.fpsdljje').readOnly = true;
		document.getElementById('vo.fpsdljje').className = "fsrx";

		// 第三种计税方式计算公式
		rules = new Array();
		// 26 = 26 + 0
		rules.push("vo.byswjgqdyjbqje = vo.byswjgqdyjbqje + 0");
		rules.push("vo.byswjgqdyjljje = vo.byswjgqdyjbqje + 0");
		calObj = new caltb('jstb');
		calObj.negative = true;
		calObj.setRules(rules);
		emptyArr = new Array();
		emptyArr.push("vo.byswjgqdyjbqje");
		calObj.setEmptyArr(emptyArr);
	}
	initCalTable(calObj);
}

// 总机构跨省初始化
function zjgks_init() {
	// 第一种计税方法
	if ($F('vo.yjfsdm') == "01") {
		// 第一种计税方式只读
		document.getElementById('vo.bzsbqje').readOnly = true;
		document.getElementById('vo.bzsbqje').className = "fsrx";
		document.getElementById('vo.bzsljje').readOnly = true;
		document.getElementById('vo.bzsljje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
		document.getElementById('vo.jmbqje').readOnly = true;
		document.getElementById('vo.jmbqje').className = "fsrx";
		document.getElementById('vo.jmljje').readOnly = true;
		document.getElementById('vo.jmljje').className = "fsrx";

		// 第二种计税方式只读
		document.getElementById('vo.sndynssdljje').readOnly = true;
		document.getElementById('vo.sndynssdljje').className = "fsrx";
		document.getElementById('vo.byynssdbqje').readOnly = true;
		document.getElementById('vo.byynssdbqje').className = "fsrx";
		document.getElementById('vo.xwjmbq2je').readOnly = true;
		document.getElementById('vo.xwjmbq2je').className = "fsrx";
		document.getElementById('vo.xwjmlj2je').readOnly = true;
		document.getElementById('vo.xwjmlj2je').className = "fsrx";
		// 第三种计税方式只读
		document.getElementById('vo.byswjgqdyjbqje').readOnly = true;
		document.getElementById('vo.byswjgqdyjbqje').className = "fsrx";
		document.getElementById('vo.byswjgqdyjljje').readOnly = true;
		document.getElementById('vo.byswjgqdyjljje').className = "fsrx";
		// 总机构只读
		document.getElementById('vo.zjgftsdsbqje').readOnly = true;
		document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.zjgftsdsljje').readOnly = true;
		document.getElementById('vo.zjgftsdsljje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
		document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsljje').readOnly = true;
		document.getElementById('vo.czjzfpsdsljje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
		document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsljje').readOnly = true;
		document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
		document.getElementById('vo.zjgdlftbqje').readOnly = true;
		document.getElementById('vo.zjgdlftbqje').className = "fsrx";
		// 分支机构只读
		document.getElementById('vo.fpbqbl').readOnly = true;
		document.getElementById('vo.fpbqbl').className = "fsrx";
		document.getElementById('vo.fpljbl').readOnly = true;
		document.getElementById('vo.fpljbl').className = "fsrx";
		document.getElementById('vo.fpsdbqje').readOnly = true;
		document.getElementById('vo.fpsdbqje').className = "fsrx";
		document.getElementById('vo.fpsdljje').readOnly = true;
		document.getElementById('vo.fpsdljje').className = "fsrx";

		// 第一种计税方式计算公式
		rules = new Array();
		// 10=4+5-6-7-8
		rules
				.push("vo.sjlrbqje = vo.lrzebqje + vo.tdywbqje - vo.bzsbqje - vo.gdzcjszjtjbqje - vo.nbksbqje");
		rules
				.push("vo.sjlrljje = vo.lrzeljje + vo.tdywljje - vo.bzsljje - vo.gdzcjszjtjljje - vo.nbksljje");
		// 11=9*10
		rules.push("vo.ynsdsbqje = vo.sjlrbqje * vo.bqsl");
		rules.push("vo.ynsdsljje = vo.sjlrljje * vo.ljsl");
		// 15=11-12-13-14
		rules
				.push("vo.ybtsdsljje = vo.ynsdsljje - vo.jmljje - vo.sjyyjljje - vo.tdywyzljje");
		// 17=15-16
		rules.push("vo.bysjybtseljje = vo.ybtsdsljje - vo.yqnddjdkljje");

		// 30=19*0.25
		// rules.push("vo.zjgftsdsljje = vo.bysjybtseljje * 0.25");
		// 31=19*0.25
		// rules.push("vo.czjzfpsdsljje = vo.bysjybtseljje * 0.25");
		// 32=19*0.5
		// rules.push("vo.fzjgftsdsljje = vo.bysjybtseljje * 0.5");
		calObj = new caltb('jstb');
		calObj.negative = true;
		calObj.setRules(rules);
		empty = new Array();
		empty.push("vo.bysjybtseljje");
		calObj.setEmpty(empty);
		emptyArr = new Array();
		emptyArr.push("vo.zjgftsdsljje");
		emptyArr.push("vo.czjzfpsdsljje");
		// empty.push("vo.fzjgftsdsljje");
		emptyArr.push("vo.zjgdlftljje");
		calObj.setEmptyArr(emptyArr);
	} else if ($F('vo.yjfsdm') == "02" || $F('vo.yjfsdm') == "03") {
		// 第二种计税方法
		// 第一种计税方式只读
		document.getElementById('vo.yysrbqje').readOnly = true;
		document.getElementById('vo.yysrbqje').className = "fsrx";
		document.getElementById('vo.yysrljje').readOnly = true;
		document.getElementById('vo.yysrljje').className = "fsrx";
		document.getElementById('vo.yycbbqje').readOnly = true;
		document.getElementById('vo.yycbbqje').className = "fsrx";
		document.getElementById('vo.yycbljje').readOnly = true;
		document.getElementById('vo.yycbljje').className = "fsrx";
		document.getElementById('vo.lrzebqje').readOnly = true;
		document.getElementById('vo.lrzebqje').className = "fsrx";
		document.getElementById('vo.lrzeljje').readOnly = true;
		document.getElementById('vo.lrzeljje').className = "fsrx";
		document.getElementById('vo.tdywbqje').readOnly = true;
		document.getElementById('vo.tdywbqje').className = "fsrx";
		document.getElementById('vo.tdywljje').readOnly = true;
		document.getElementById('vo.tdywljje').className = "fsrx";
		document.getElementById('vo.bzsbqje').readOnly = true;
		document.getElementById('vo.bzsbqje').className = "fsrx";
		document.getElementById('vo.bzsljje').readOnly = true;
		document.getElementById('vo.bzsljje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
		document.getElementById('vo.nbksbqje').readOnly = true;
		document.getElementById('vo.nbksbqje').className = "fsrx";
		document.getElementById('vo.nbksljje').readOnly = true;
		document.getElementById('vo.nbksljje').className = "fsrx";
		document.getElementById('vo.jmbqje').readOnly = true;
		document.getElementById('vo.jmbqje').className = "fsrx";
		document.getElementById('vo.jmljje').readOnly = true;
		document.getElementById('vo.jmljje').className = "fsrx";
		document.getElementById('vo.sjyyjljje').readOnly = true;
		document.getElementById('vo.sjyyjljje').className = "fsrx";
		document.getElementById('vo.tdywyzbqje').readOnly = true;
		document.getElementById('vo.tdywyzbqje').className = "fsrx";
		document.getElementById('vo.tdywyzljje').readOnly = true;
		document.getElementById('vo.tdywyzljje').className = "fsrx";
		document.getElementById('vo.yqnddjdkbqje').readOnly = true;
		document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
		document.getElementById('vo.yqnddjdkljje').readOnly = true;
		document.getElementById('vo.yqnddjdkljje').className = "fsrx";
		document.getElementById('vo.yqnddjdkbqje').readOnly = true;
		document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
		document.getElementById('vo.yqnddjdkljje').readOnly = true;
		document.getElementById('vo.yqnddjdkljje').className = "fsrx";
		// 第二种计税方式只读
		document.getElementById('vo.byynssdbqje').readOnly = true;
		document.getElementById('vo.byynssdbqje').className = "fsrx";
		document.getElementById('vo.xwjmbq2je').readOnly = true;
		document.getElementById('vo.xwjmbq2je').className = "fsrx";
		document.getElementById('vo.xwjmlj2je').readOnly = true;
		document.getElementById('vo.xwjmlj2je').className = "fsrx";

		// 第三种计税方式只读
		document.getElementById('vo.byswjgqdyjbqje').readOnly = true;
		document.getElementById('vo.byswjgqdyjbqje').className = "fsrx";
		document.getElementById('vo.byswjgqdyjljje').readOnly = true;
		document.getElementById('vo.byswjgqdyjljje').className = "fsrx";
		// 总机构只读
		document.getElementById('vo.zjgftsdsbqje').readOnly = true;
		document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.zjgftsdsljje').readOnly = true;
		document.getElementById('vo.zjgftsdsljje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
		document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsljje').readOnly = true;
		document.getElementById('vo.czjzfpsdsljje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
		document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsljje').readOnly = true;
		document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
		document.getElementById('vo.zjgdlftbqje').readOnly = true;
		document.getElementById('vo.zjgdlftbqje').className = "fsrx";
		// 分支机构只读
		document.getElementById('vo.fpbqbl').readOnly = true;
		document.getElementById('vo.fpbqbl').className = "fsrx";
		document.getElementById('vo.fpljbl').readOnly = true;
		document.getElementById('vo.fpljbl').className = "fsrx";
		document.getElementById('vo.fpsdbqje').readOnly = true;
		document.getElementById('vo.fpsdbqje').className = "fsrx";
		document.getElementById('vo.fpsdljje').readOnly = true;
		document.getElementById('vo.fpsdljje').className = "fsrx";

		// 第二种计税方式计算公式
		rules = new Array();
		// 22=21/4 /12
		// var ts = getSubDays($F('vo.str_sfssqqsrq'), $F('vo.str_sfssqzzrq'))
		if ($F('vo.yjfsdm') == "02") {
			rules.push("vo.byynssdbqje = vo.sndynssdljje / 4");
			rules.push("vo.byynssdljje = vo.sndynssdljje / 4");
		} else {
			rules.push("vo.byynssdbqje = vo.sndynssdljje / 12");
			rules.push("vo.byynssdljje = vo.sndynssdljje / 12");
		}
		// 24=22*23
		rules.push("vo.byynsdbqje = vo.byynssdbqje * vo.bq2sl");
		rules.push("vo.byynsdljje = vo.byynssdljje * vo.lj2sl");
		// 26=24-25
		rules.push("vo.bysjynsdbqje = vo.byynsdbqje - vo.xwjmbq2je");
		rules.push("vo.bysjynsdljje = vo.byynsdljje - vo.xwjmlj2je");
		calObj = new caltb('jstb');
		calObj.negative = true;
		calObj.setRules(rules);
		emptyArr = new Array();
		// emptyArr.push("vo.bysjynsdljje");
		emptyArr.push("vo.zjgftsdsljje");
		emptyArr.push("vo.czjzfpsdsljje");
		// emptyArr.push("vo.fzjgftsdsljje");
		emptyArr.push("vo.zjgdlftljje");
		calObj.setEmptyArr(emptyArr);
	} else if ($F('vo.yjfsdm') == "04") {
		// 第三种计税方式
		// 第一种计税方式只读
		document.getElementById('vo.yysrbqje').readOnly = true;
		document.getElementById('vo.yysrbqje').className = "fsrx";
		document.getElementById('vo.yysrljje').readOnly = true;
		document.getElementById('vo.yysrljje').className = "fsrx";
		document.getElementById('vo.yycbbqje').readOnly = true;
		document.getElementById('vo.yycbbqje').className = "fsrx";
		document.getElementById('vo.yycbljje').readOnly = true;
		document.getElementById('vo.yycbljje').className = "fsrx";
		document.getElementById('vo.lrzebqje').readOnly = true;
		document.getElementById('vo.lrzebqje').className = "fsrx";
		document.getElementById('vo.lrzeljje').readOnly = true;
		document.getElementById('vo.lrzeljje').className = "fsrx";
		document.getElementById('vo.tdywbqje').readOnly = true;
		document.getElementById('vo.tdywbqje').className = "fsrx";
		document.getElementById('vo.tdywljje').readOnly = true;
		document.getElementById('vo.tdywljje').className = "fsrx";
		document.getElementById('vo.bzsbqje').readOnly = true;
		document.getElementById('vo.bzsbqje').className = "fsrx";
		document.getElementById('vo.bzsljje').readOnly = true;
		document.getElementById('vo.bzsljje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
		document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
		document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
		document.getElementById('vo.nbksbqje').readOnly = true;
		document.getElementById('vo.nbksbqje').className = "fsrx";
		document.getElementById('vo.nbksljje').readOnly = true;
		document.getElementById('vo.nbksljje').className = "fsrx";
		document.getElementById('vo.jmbqje').readOnly = true;
		document.getElementById('vo.jmbqje').className = "fsrx";
		document.getElementById('vo.jmljje').readOnly = true;
		document.getElementById('vo.jmljje').className = "fsrx";
		document.getElementById('vo.sjyyjljje').readOnly = true;
		document.getElementById('vo.sjyyjljje').className = "fsrx";
		document.getElementById('vo.tdywyzbqje').readOnly = true;
		document.getElementById('vo.tdywyzbqje').className = "fsrx";
		document.getElementById('vo.tdywyzljje').readOnly = true;
		document.getElementById('vo.tdywyzljje').className = "fsrx";
		document.getElementById('vo.yqnddjdkbqje').readOnly = true;
		document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
		document.getElementById('vo.yqnddjdkljje').readOnly = true;
		document.getElementById('vo.yqnddjdkljje').className = "fsrx";
		document.getElementById('vo.yqnddjdkbqje').readOnly = true;
		document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
		document.getElementById('vo.yqnddjdkljje').readOnly = true;
		document.getElementById('vo.yqnddjdkljje').className = "fsrx";
		// 第二种计税方式只读
		document.getElementById('vo.sndynssdljje').readOnly = true;
		document.getElementById('vo.sndynssdljje').className = "fsrx";
		document.getElementById('vo.byynssdbqje').readOnly = true;
		document.getElementById('vo.byynssdbqje').className = "fsrx";
		document.getElementById('vo.byynssdljje').readOnly = true;
		document.getElementById('vo.byynssdljje').className = "fsrx";
		document.getElementById('vo.xwjmbq2je').readOnly = true;
		document.getElementById('vo.xwjmbq2je').className = "fsrx";
		document.getElementById('vo.xwjmlj2je').readOnly = true;
		document.getElementById('vo.xwjmlj2je').className = "fsrx";
		// 总机构只读
		document.getElementById('vo.zjgftsdsbqje').readOnly = true;
		document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.zjgftsdsljje').readOnly = true;
		document.getElementById('vo.zjgftsdsljje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
		document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
		document.getElementById('vo.czjzfpsdsljje').readOnly = true;
		document.getElementById('vo.czjzfpsdsljje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
		document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
		document.getElementById('vo.fzjgftsdsljje').readOnly = true;
		document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
		document.getElementById('vo.zjgdlftbqje').readOnly = true;
		document.getElementById('vo.zjgdlftbqje').className = "fsrx";
		// 分支机构只读
		document.getElementById('vo.fpbqbl').readOnly = true;
		document.getElementById('vo.fpbqbl').className = "fsrx";
		document.getElementById('vo.fpljbl').readOnly = true;
		document.getElementById('vo.fpljbl').className = "fsrx";
		document.getElementById('vo.fpsdbqje').readOnly = true;
		document.getElementById('vo.fpsdbqje').className = "fsrx";
		document.getElementById('vo.fpsdljje').readOnly = true;
		document.getElementById('vo.fpsdljje').className = "fsrx";

		// 第三种计税方式计算公式
		rules = new Array();
		// 26 = 26 + 0
		rules.push("vo.byswjgqdyjljje = vo.byswjgqdyjbqje + 0");
		// rules.push("vo.byswjgqdyjljje = vo.byswjgqdyjljje + 0");
		// 30=26*0.25
		// rules.push("vo.zjgftsdsbqje = vo.byswjgqdyjbqje * 0.25");
		// rules.push("vo.zjgftsdsljje = vo.byswjgqdyjljje * 0.25");
		// 31=26*0.25
		// rules.push("vo.czjzfpsdsbqje = vo.byswjgqdyjbqje * 0.25");
		// rules.push("vo.czjzfpsdsljje = vo.byswjgqdyjljje * 0.25");
		// 32=26*0.5
		// rules.push("vo.fzjgftsdsbqje = vo.byswjgqdyjbqje * 0.5");
		// rules.push("vo.fzjgftsdsljje = vo.byswjgqdyjljje * 0.5");
		calObj = new caltb('jstb');
		calObj.negative = true;
		calObj.setRules(rules);
		emptyArr = new Array();
		// emptyArr.push("vo.bysjynsdljje");
		emptyArr.push("vo.zjgftsdsljje");
		emptyArr.push("vo.czjzfpsdsljje");
		// emptyArr.push("vo.fzjgftsdsljje");
		emptyArr.push("vo.zjgdlftljje");
		calObj.setEmptyArr(emptyArr);
	}
	initCalTable(calObj);
}

// 分支机构跨省初始化
function fzjgks_init() {
	// 第一种计税方法只读
	document.getElementById('vo.yysrbqje').readOnly = true;
	document.getElementById('vo.yysrbqje').className = "fsrx";
	document.getElementById('vo.yysrljje').readOnly = true;
	document.getElementById('vo.yysrljje').className = "fsrx";
	document.getElementById('vo.yycbbqje').readOnly = true;
	document.getElementById('vo.yycbbqje').className = "fsrx";
	document.getElementById('vo.yycbljje').readOnly = true;
	document.getElementById('vo.yycbljje').className = "fsrx";
	document.getElementById('vo.lrzebqje').readOnly = true;
	document.getElementById('vo.lrzebqje').className = "fsrx";
	document.getElementById('vo.lrzeljje').readOnly = true;
	document.getElementById('vo.lrzeljje').className = "fsrx";
	document.getElementById('vo.tdywbqje').readOnly = true;
	document.getElementById('vo.tdywbqje').className = "fsrx";
	document.getElementById('vo.tdywljje').readOnly = true;
	document.getElementById('vo.tdywljje').className = "fsrx";
	document.getElementById('vo.bzsbqje').readOnly = true;
	document.getElementById('vo.bzsbqje').className = "fsrx";
	document.getElementById('vo.bzsljje').readOnly = true;
	document.getElementById('vo.bzsljje').className = "fsrx";
	document.getElementById('vo.gdzcjszjtjbqje').readOnly = true;
	document.getElementById('vo.gdzcjszjtjbqje').className = "fsrx";
	document.getElementById('vo.gdzcjszjtjljje').readOnly = true;
	document.getElementById('vo.gdzcjszjtjljje').className = "fsrx";
	document.getElementById('vo.nbksbqje').readOnly = true;
	document.getElementById('vo.nbksbqje').className = "fsrx";
	document.getElementById('vo.nbksljje').readOnly = true;
	document.getElementById('vo.nbksljje').className = "fsrx";
	document.getElementById('vo.jmbqje').readOnly = true;
	document.getElementById('vo.jmbqje').className = "fsrx";
	document.getElementById('vo.jmljje').readOnly = true;
	document.getElementById('vo.jmljje').className = "fsrx";
	document.getElementById('vo.sjyyjljje').readOnly = true;
	document.getElementById('vo.sjyyjljje').className = "fsrx";
	document.getElementById('vo.tdywyzbqje').readOnly = true;
	document.getElementById('vo.tdywyzbqje').className = "fsrx";
	document.getElementById('vo.tdywyzljje').readOnly = true;
	document.getElementById('vo.tdywyzljje').className = "fsrx";
	document.getElementById('vo.yqnddjdkbqje').readOnly = true;
	document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
	document.getElementById('vo.yqnddjdkljje').readOnly = true;
	document.getElementById('vo.yqnddjdkljje').className = "fsrx";
	document.getElementById('vo.yqnddjdkbqje').readOnly = true;
	document.getElementById('vo.yqnddjdkbqje').className = "fsrx";
	document.getElementById('vo.yqnddjdkljje').readOnly = true;
	document.getElementById('vo.yqnddjdkljje').className = "fsrx";
	// 第二种计税方式只读
	document.getElementById('vo.sndynssdljje').readOnly = true;
	document.getElementById('vo.sndynssdljje').className = "fsrx";
	document.getElementById('vo.byynssdbqje').readOnly = true;
	document.getElementById('vo.byynssdbqje').className = "fsrx";
	document.getElementById('vo.xwjmbq2je').readOnly = true;
	document.getElementById('vo.xwjmbq2je').className = "fsrx";
	document.getElementById('vo.xwjmlj2je').readOnly = true;
	document.getElementById('vo.xwjmlj2je').className = "fsrx";
	// 第三种计税方式只读
	document.getElementById('vo.byswjgqdyjbqje').readOnly = true;
	document.getElementById('vo.byswjgqdyjbqje').className = "fsrx";
	document.getElementById('vo.byswjgqdyjljje').readOnly = true;
	document.getElementById('vo.byswjgqdyjljje').className = "fsrx";
	// 总机构只读
	document.getElementById('vo.zjgftsdsbqje').readOnly = true;
	document.getElementById('vo.zjgftsdsbqje').className = "fsrx";
	document.getElementById('vo.zjgftsdsljje').readOnly = true;
	document.getElementById('vo.zjgftsdsljje').className = "fsrx";
	document.getElementById('vo.czjzfpsdsbqje').readOnly = true;
	document.getElementById('vo.czjzfpsdsbqje').className = "fsrx";
	document.getElementById('vo.czjzfpsdsljje').readOnly = true;
	document.getElementById('vo.czjzfpsdsljje').className = "fsrx";

	document.getElementById('vo.fzjgftsdsbqje').readOnly = true;
	document.getElementById('vo.fzjgftsdsbqje').className = "fsrx";
	document.getElementById('vo.fzjgftsdsljje').readOnly = true;
	document.getElementById('vo.fzjgftsdsljje').className = "fsrx";
	document.getElementById('vo.fpbqbl').readOnly = true;
	document.getElementById('vo.fpbqbl').className = "fsrx";
	document.getElementById('vo.fpljbl').readOnly = true;
	document.getElementById('vo.fpljbl').className = "fsrx";
	document.getElementById('vo.fpsdbqje').readOnly = true;
	document.getElementById('vo.fpsdbqje').className = "fsrx";
	document.getElementById('vo.fpsdljje').readOnly = true;
	document.getElementById('vo.fpsdljje').className = "fsrx";

	document.getElementById('vo.zjgdlftbqje').readOnly = true;
	document.getElementById('vo.zjgdlftbqje').className = "fsrx";
	document.getElementById('vo.zjgdlftljje').readOnly = true;
	document.getElementById('vo.zjgdlftljje').className = "fsrx";

	// 分支机构计算公式
	rules = new Array();
	// 35 = 35 + 0
	rules.push("vo.fpsdbqje = vo.fpsdbqje + 0");
	rules.push("vo.fpsdljje = vo.fpsdljje + 0");
	calObj = new caltb('jstb');
	calObj.negative = true;
	calObj.setRules(rules);
	emptyArr = new Array();
	emptyArr.push("vo.fpsdljje");
	calObj.setEmptyArr(emptyArr);
	initCalTable(calObj);
}

/**
 * 确认提交
 */
function showSubmitDialog() {
	if (!bascicCheck($F('vo.zspmdm'), $F('vo.yjfsdm'))) {
		return;
	}
	var filedArr = [];
	if ($F('vo.zspmdm') == "0110" || $F('vo.zspmdm') == "0142") {
		filedArr.push("vo.bysjybtseljje");
		filedArr.push("vo.bysjynsdbqje");
		filedArr.push("vo.byswjgqdyjbqje");
	} else if ($F('vo.zspmdm') == "0143") {
		filedArr.push("vo.zjgftsdsljje");
		filedArr.push("vo.czjzfpsdsljje");
		filedArr.push("vo.zjgdlftljje");
	} else if ($F('vo.zspmdm') == "0141") {
		filedArr.push("vo.fpsdljje");
	}
	if (!fzYhNull(filedArr)) {
		return;
	}
	sbje = 0;

	for (var i = 0; i < filedArr.length; i++) {
		for (var j = 0; j < $ES(filedArr[i]).length; j++) {
			sbje = sbje + parseFloat(emptyToZ($ES(filedArr[i])[j].value));
		}
	}
	document.getElementById('sbje').value = sbje;
	confirmDialog("本张申报表合计税额为" + caltbNumloop(sbje, 2) + ",是否确认提交申报数据?",
			iSdoubleSub);
}

/**
 * 提示重复申报
 */
function iSdoubleSub(button) {
	if (button == "yes") {
		$("#handleDesc").val("判断是否重复申报");
		$("#handleCode").val("pdCfsb");
		waitDialog();
//		new Ajax.Request('/WB390qysdsaAction.do', {
//					method : 'post',
//					parameters : $('WB390qysdsaForm').serialize(),
//					onComplete : function(originalRequest) {
//						Ext.MessageBox.hide();
//						ajaxUpdate(originalRequest.responseText, "update");
//						if ($F("cfsbbh") > 0) {
//							confirmDialog("本月或同一税款所属期内已报送过" + $F("cfsbbh")
//											+ "张该报表，是否重复申报？", submitData);
//						} else {
//							submitData("yes");
//						}
//					},
//					onException : function() {
//						Ext.MessageBox.hide();
//						iconDialog('系统异常', 'ERROR');
//					}
//				});
//		
		$.ajax({
			url : "/WB390qysdsaAction.do",
			async : true,
			dataType : "html",
			data : $('#WB390qysdsaForm').serialize(),
			type : 'post',
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				alert('系统异常' + textStatus);
			},
			success : function(responseText, textStatus, XMLHttpRequest) {
				ajaxUpdate(responseText, "update");
				if ($F("cfsbbh") > 0) {
					confirmDialog("本月或同一税款所属期内已报送过" + $F("cfsbbh")
									+ "张该报表，是否重复申报？", submitData);
				} else {
					submitData("yes");
				}
			}
		});
		

	}
}

/**
 * 提交
 */
function submitData(button) {
	if (button == "yes") {
		$('#sucessMsg').val("");
		$('#errorMessage').val("");
		$("#handleDesc").val("");
		$("#handleCode").val("submitData");
		if (ca == "0") {
			if (!caSetValue(getCaData())) {
				return;
			}
		}
		waitDialog();
//		new Ajax.Request('/WB390qysdsaAction.do', {
//					method : 'post',
//					parameters : $('WB390qysdsaForm').serialize(),
//					onComplete : function(originalRequest) {
//						Ext.MessageBox.hide();
//						ajaxUpdate(originalRequest.responseText, "update");
//						var arrayObj = new Array();
//						arrayObj.push($F('vo.pzxh'));
//						arrayObj.push(caltbNumloop($F("sbje"), 2));
//						runMsgKk(arrayObj);
//					},
//					onException : function() {
//						Ext.MessageBox.hide();
//						iconDialog('系统异常', 'ERROR');
//					}
//				});
		
		$.ajax({
			url : "/WB390qysdsaAction.do",
			async : true,
			dataType : "html",
			data : $('#WB390qysdsaForm').serialize(),
			type : 'post',
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				Ext.MessageBox.hide();
				alert('系统异常' + textStatus);
			},
			success : function(responseText, textStatus, XMLHttpRequest) {
				Ext.MessageBox.hide();
				ajaxUpdate(responseText, "update");
				var arrayObj = new Array();
				arrayObj.push($F('vo.pzxh'));
				arrayObj.push(caltbNumloop($F("sbje"), 2));
				arrayObj.push($("#bbZt").val());
				arrayObj.push("");
				arrayObj.push("");
				arrayObj.push("31363");
				runMsgKk(arrayObj, $("#sessionId").val());

			}
		});
		
	}
}

/**
 * 基本校验
 */
function bascicCheck(zspmdm, yjfsdm) {
	if (zspmdm == '0110' || zspmdm == '0142') {
		// 非总分机构 总机构省内
		if (yjfsdm == "01") {
			// 2 营业收入 必填
			if ($F('vo.yysrljje') == '') {
				iconDialog('累计【行次2减：营业收入】为必填项，请核实!', 'WARNING');
				return false;
			}
			// 3 营业成本 必填
			if ($F('vo.yycbljje') == '') {
				iconDialog('累计【行次3减：营业成本】为必填项，请核实!', 'WARNING');
				return false;
			}
			// 4 利润总额 必填
			if ($F('vo.lrzeljje') == '') {
				iconDialog('累计【行次4减：利润总额】为必填项，请核实!', 'WARNING');
				return false;
			}
			// 行次13必填项
			if ($F('vo.sjyyjljje') == '') {
				iconDialog('累计【行次13实际已预缴所得税额】为必填项，请核实!', 'WARNING');
				return false;
			}
			if ($F("vo.ybtsdsljje").empty()) {
				iconDialog('请填写申报数据!', 'WARNING');
				return false;
			}
		} else if (yjfsdm == "02" || yjfsdm == "03") {
			// 行次19 上一纳税年度应纳税所得额为必填项
			if ($F('vo.sndynssdljje') == '') {
				iconDialog('累计【行次19上一纳税年度应纳税所得额】为必填项，请核实!', 'WARNING');
				return false;
			}
			if ($F("vo.bysjynsdbqje").empty()) {
				iconDialog('请填写申报数据!', 'WARNING');
				return false;
			}
		} else if (yjfsdm == "04") {
			if ($F("vo.byswjgqdyjbqje").empty()) {
				iconDialog('请填写申报数据!', 'WARNING');
				return false;
			}
		}
	} else if (zspmdm == '0143') {
		// 总机构跨省
		if (yjfsdm == "01") {
			// 2 营业收入 必填
			if ($F('vo.yysrljje') == '') {
				iconDialog('累计【行次2减：营业收入】为必填项，请核实!', 'WARNING');
				return false;
			}
			// 3 营业成本 必填
			if ($F('vo.yycbljje') == '') {
				iconDialog('累计【行次3减：营业成本】为必填项，请核实!', 'WARNING');
				return false;
			}
			// 4 利润总额 必填
			if ($F('vo.lrzeljje') == '') {
				iconDialog('累计【行次4减：利润总额】为必填项，请核实!', 'WARNING');
				return false;
			}
			// 行次13必填项
			if ($F('vo.sjyyjljje') == '') {
				iconDialog('累计【行次13实际已预缴所得税额】为必填项，请核实!', 'WARNING');
				return false;
			}
			if ($F("vo.bysjybtseljje").empty()) {
				iconDialog('请填写申报数据!', 'WARNING');
				return false;
			}
		} else if (yjfsdm == "02" || yjfsdm == "03") {
			// 行次19 上一纳税年度应纳税所得额为必填项
			if ($F('vo.sndynssdljje') == '') {
				iconDialog('累计【行次19上一纳税年度应纳税所得额】为必填项，请核实!', 'WARNING');
				return false;
			}
			if ($F("vo.bysjynsdbqje").empty()) {
				iconDialog('请填写申报数据!', 'WARNING');
				return false;
			}
		} else if (yjfsdm == "04") {
			if ($F("vo.byswjgqdyjbqje").empty()) {
				iconDialog('请填写申报数据!', 'WARNING');
				return false;
			}
		}
		// 行次33<行次32
		// if (parseFloat(emptyToZ($F('vo.zjgdlftbqje'))) >
		// parseFloat(emptyToZ($F('vo.fzjgftsdsbqje')))) {
		// iconDialog('本期【行次31其中：总机构独立生产经营部门应分摊所得税额】应小于等于本期【行次30分支机构分摊所得税额】!',
		// 'WARNING');
		// return false;
		// }
		// if (parseFloat(emptyToZ($F('vo.zjgdlftljje'))) >
		// parseFloat(emptyToZ($F('vo.fzjgftsdsljje')))) {
		// iconDialog('累计【行次31其中：总机构独立生产经营部门应分摊所得税额】应小于等于累计【行次30分支机构分摊所得税额】!',
		// 'WARNING');
		// return false;
		// }
		if ($F("vo.zjgftsdsljje").empty()) {
			iconDialog('累计【行次28总机构分摊所得税额】不能为空，请填写附表4后使用自动计算功能！', 'WARNING');
			return false;
		}
		if ($F("vo.czjzfpsdsljje").empty()) {
			iconDialog('累计【行次29财政集中分配所得税额】不能为空，请填写附表4后使用自动计算功能！', 'WARNING');
			return false;
		}
		if ($F("vo.zjgdlftljje").empty()) {
			iconDialog('累计【行次31其中：总机构独立生产经营部门应分摊所得税额】不能为空！', 'WARNING');
			return false;
		}
	} else if (zspmdm == '0141') {
		// 行次32不能为空
		if ($F("vo.fzjgftsdsljje").empty()) {
			iconDialog('累计【行次30分支机构分摊所得税额】不能为空，请填写附表4后使用自动计算功能！', 'WARNING');
			return false;
		}
		// 行次34不能为空
		if ($F("vo.fpljbl").empty()) {
			iconDialog('累计【行次32分配比例】不能为空，请填写附表4后使用自动计算功能！', 'WARNING');
			return false;
		}
		// 行次35不能为空
		if ($F("vo.fpsdljje").empty()) {
			iconDialog('累计【行次33分配的所得税额】不能为空，请填写附表4后使用自动计算功能！', 'WARNING');
			return false;
		}
		var fpbl = parseFloat(emptyToZ($F('vo.fpljbl')));
		var fpseje = parseFloat(emptyToZ($F('vo.fpsdljje')));
		var minBl = accSub(fpbl, '0.0001')
				* parseFloat(emptyToZ($F('vo.fzjgftsdsljje')));
		var MaxBl = accAdd(fpbl, '0.0001')
				* parseFloat(emptyToZ($F('vo.fzjgftsdsljje')));
		if (fpbl > 1) {
			iconDialog('行次32累计【分配比例】不能大于1', 'WARNING');
			return false;
		}
		if (fpseje < minBl || fpseje > MaxBl) {
			iconDialog(
					'行次30累计【分支机构分摊所得税额】*（行次32累计【分配比例】- 0.0001）< 行次33累计【分配的所得税额】< 行次30累计【分支机构分摊所得税额】*（行次32累计【分配比例】+0.0001）',
					'WARNING');
			return false;
		}
	}
	if ($F("vo.xwqybj").empty()) {
		iconDialog('请选择是否属于小型微利企业!', 'WARNING');
		return false;
	}
	return true;
}

function accAdd(arg1, arg2) {
	var r1, r2, m;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	return (arg1 * m + arg2 * m) / m;
}

function accSub(arg1, arg2) {
	var r1, r2, m, n;
	try {
		r1 = arg1.toString().split(".")[1].length;
	} catch (e) {
		r1 = 0;
	}
	try {
		r2 = arg2.toString().split(".")[1].length;
	} catch (e) {
		r2 = 0;
	}
	m = Math.pow(10, Math.max(r1, r2));
	// 动态控制精度长度
	n = (r1 >= r2) ? r1 : r2;
	return ((arg1 * m - arg2 * m) / m).toFixed(n);
}

function getCaData() {
	var data = "";
	// 应补退所得税额;
	data = data + $F('sbje') + "=";
	return data;
}

function saveTemp() {
	if ($F("vo.xwqybj").empty()) {
		iconDialog('请选择是否属于小型微利企业!', 'WARNING');
		return false;
	}
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleDesc").val("中华人民共和国企业所得税月（季）预缴纳税申报表（A类）暂存");
	$("#handleCode").val("saveTemp");
	waitDialog();
//	new Ajax.Request('/WB390qysdsaAction.do', {
//				method : 'post',
//				parameters : $('WB390qysdsaForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdate(originalRequest.responseText, "update");
//					runMsg("0");
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB390qysdsaAction.do",
		async : true,
		dataType : "html",
		data : $('#WB390qysdsaForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "update");
			runMsg("0");
		}
	});
	
}

function openFbBtnWindow() {
	yzsbqk_new($F('vo.pzxh'),$F('sessionId'), '/WB390fbListAction.do?sessionId='+$F('sessionId')+'&handleCode=initForm&pzxh='
					+ $F('vo.pzxh') + '&BBZT=' + $F('bbzt') + "&ssqs="
					+ $F("vo.str_sfssqqsrq") + "&ssqz="
					+ $F("vo.str_sfssqzzrq"));
}

function checkXwbj(obj, tmp_value) {
	document.getElementById('vo.xwqybj').value = tmp_value;
}

function readData() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB390qysdsaAction.do', {
//				method : 'post',
//				parameters : $('WB390qysdsaForm').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "sjdq");
//					if (!trim($F('sucessMsg')).empty()) {
//						iconDialog($F('sucessMsg'), 'INFO');
//					} else if (!$F('errorMessage').empty()) {
//						iconDialog($F('errorMessage'), 'ERROR');
//					}
//					setTableStyle();
//					runRulesForName(calObj);
//
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB390qysdsaAction.do",
		async : true,
		dataType : "html",
		data : $('#WB390qysdsaForm').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdateMoreTag(responseText, "sjdq");
			if (!trim($F('sucessMsg')).empty()) {
				iconDialog($F('sucessMsg'), 'INFO');
			} else if (!$F('errorMessage').empty()) {
				iconDialog($F('errorMessage'), 'ERROR');
			}
			setTableStyle();
			runRulesForName(calObj);
		}
	});
	
}