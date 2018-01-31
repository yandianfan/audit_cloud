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
										openMaxWindow("/nssb/wb395/wb395_A105000_TbSm.html");
					
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
								  },'-', {
										id : "tempBtn",
										text : "暂存",
										iconCls : "save",
										handler : function() {
											tempSave();
										},
										scope : this
									},   '-', {
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
											openMaxWindow("/WB395A105000Action.do?pzXh="
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
}
function tempSave() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("tempSave");
	waitDialog();
//	new Ajax.Request('/WB395A105000Action.do', {
//				method : 'post',
//				parameters : $('WB395A105000Form').serialize(),
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
		url : "/WB395A105000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105000Form').serialize(),
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
function readData() {
	$('#sucessMsg').val("");
	$('#errorMessage').val("");
	$("#handleCode").val("readData");
	waitDialog();
//	new Ajax.Request('/WB395A105000Action.do', {
//				method : 'post',
//				parameters : $('WB395A105000Form').serialize(),
//				onComplete : function(originalRequest) {
//					Ext.MessageBox.hide();
//					ajaxUpdateMoreTag(originalRequest.responseText, "sjdq");
//					if (!trim($F('sucessMsg')).empty()) {
//						iconDialog($F('sucessMsg'), 'INFO', function() {
//									initCalTable(tab1);
//									runRulesForName(tab1);
//								});
//					} else if (!$F('errorMessage').empty()) {
//						iconDialog($F('errorMessage'), 'ERROR');
//					}
//				},
//				onException : function() {
//					Ext.MessageBox.hide();
//					iconDialog('系统异常', 'ERROR');
//				}
//			});
	
	$.ajax({
		url : "/WB395A105000Action.do",
		async : true,
		dataType : "html",
		data : $('#WB395A105000Form').serialize(),
		type : 'post',
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert('系统异常' + textStatus);
		},
		success : function(responseText, textStatus, XMLHttpRequest) {
			ajaxUpdate(responseText, "sjdq");
			if (!trim($F('sucessMsg')).empty()) {
				iconDialog($F('sucessMsg'), 'INFO', function() {
							initCalTable(tab1);
							runRulesForName(tab1);
						});
			} else if (!$F('errorMessage').empty()) {
				iconDialog($F('errorMessage'), 'ERROR');
			}
		}
	});
	
}
function a_105000_check1() {
	//第7行（六）公允价值变动净损益  若第1列＜0，将第1列数据绝对值迁移生成 第3列，若第1列≥0，将第1列数据迁移生成第4列
	var gyjzbdzzje = $ES("vo.gyjzbdzzje")[0].value;
	if (gyjzbdzzje == '') {
		$ES("vo.gyjzbdtzje")[0].value = '';
		$ES("vo.gyjzbdtjje")[0].value  = '';
		
	}else{
		if (parseFloat(gyjzbdzzje) < 0) {
		   $ES("vo.gyjzbdtzje")[0].value = -1 *  gyjzbdzzje;
		   $ES("vo.gyjzbdtjje")[0].value  = '';
  	   } else {
		   $ES("vo.gyjzbdtjje")[0].value = $ES("vo.gyjzbdzzje")[0].value;
		   $ES("vo.gyjzbdtzje")[0].value = '';
	   }
	}
	//第10行（八）销售折扣、折让和退回  若(1-2)列≥0，1-2数据迁移生成 第3列，若(1-2)列＜0，(1-2)列绝对值数据迁移生成第4列
	var xszkzzje = $ES("vo.xszkzzje")[0].value;
	var xszkssje = $ES("vo.xszkssje")[0].value;
	if (xszkzzje == '' && xszkssje == '') {
		$ES("vo.xszktzje")[0].value = '';
		$ES("vo.xszktjje")[0].value  = '';
	}else{
		if (xszkzzje == '') {
		   xszkzzje = '0';
	    }
	    if (xszkssje == '') {
		   xszkssje  = '0';
	    }
		if (parseFloat(xszkzzje) - parseFloat(xszkssje)  < 0) {
			$ES("vo.xszktzje")[0].value = '';
		    $ES("vo.xszktjje")[0].value  =  -1 * (parseFloat(xszkzzje) - parseFloat(xszkssje));
  	   } else {
		   $ES("vo.xszktzje")[0].value = parseFloat(xszkzzje) - parseFloat(xszkssje);
		    $ES("vo.xszktjje")[0].value  =  '';
	   }
	}
	//第11行（九）其他  若(2-1)列≥0，数据迁移生成 第3列，若(2-1)列＜0，(2-1)列绝对值数据迁移生成第4列
	var srlxmqtzzje = $ES("vo.srlxmqtzzje")[0].value;
	var srlxmqtssje = $ES("vo.srlxmqtssje")[0].value;
	if (srlxmqtzzje == '' && srlxmqtssje == '') {
		$ES("vo.srlxmqttzje")[0].value = '';
		$ES("vo.srlxmqttjje")[0].value  = '';
	}else{
		if (srlxmqtzzje == '') {
		   srlxmqtzzje = '0';
	    }
	    if (srlxmqtssje == '') {
		   srlxmqtssje  = '0';
	    }
		if (parseFloat(srlxmqtssje) - parseFloat(srlxmqtzzje)  < 0) {
			$ES("vo.srlxmqttzje")[0].value = '';
		    $ES("vo.srlxmqttjje")[0].value  =   -1 * (parseFloat(srlxmqtssje) - parseFloat(srlxmqtzzje));
  	   } else {
		   $ES("vo.srlxmqttzje")[0].value = parseFloat(srlxmqtssje) - parseFloat(srlxmqtzzje);
		   $ES("vo.srlxmqttjje")[0].value  = '';
	   }
	}
	//第15行（三）业务招待费支出  数据迁移生成：第1-2列金额 =  第3列
	var ywzdfzzje = $ES("vo.ywzdfzzje")[0].value;
	var ywzdfssje = $ES("vo.ywzdfssje")[0].value;
	if (ywzdfzzje == '' && ywzdfssje == '') {
		$ES("vo.ywzdftzje")[0].value = '';
	}else{
		if (ywzdfzzje == '') {
		   ywzdfzzje = '0';
	    }
	    if (ywzdfssje == '') {
		    ywzdfssje  = '0';
	    }
		$ES("vo.ywzdftzje")[0].value = parseFloat(ywzdfzzje) - parseFloat(ywzdfssje);
	}
	//第18行（六）利息支出  若(1-2)列≥0，数据迁移生成  第3列 若1列＜2列，数据迁移生成1-2列绝对值 数据迁移生成  第4列
	var lxzczzje = $ES("vo.lxzczzje")[0].value;
	var lxzcssje = $ES("vo.lxzcssje")[0].value;
	if (lxzczzje == '' && lxzcssje == '') {
		$ES("vo.lxzctzje")[0].value = '';
		$ES("vo.lxzctjje")[0].value = '';
	}else{
		if (lxzczzje == '') {
		   lxzczzje = '0';
	    }
	    if (lxzcssje == '') {
		    lxzcssje  = '0';
	    }
		if (parseFloat(lxzczzje) - parseFloat(lxzcssje)  < 0) {
			$ES("vo.lxzctzje")[0].value = '';
			$ES("vo.lxzctjje")[0].value = -1 * (parseFloat(lxzczzje) - parseFloat(lxzcssje));
  	    } else {
		  $ES("vo.lxzctzje")[0].value = parseFloat(lxzczzje) - parseFloat(lxzcssje);
		  $ES("vo.lxzctjje")[0].value = '';
	   }
	}
	//第19行（七）罚金、罚款和被没收财物的损失  数据迁移生成：第1列 =  第3列
	$ES("vo.fjfktzje")[0].value = $ES("vo.fjfkzzje")[0].value;
	//第20行（八）税收滞纳金、加收利息  数据迁移生成：第1列 =  第3列
	$ES("vo.ssznjtzje")[0].value = $ES("vo.ssznjzzje")[0].value;
	//第21行（九）赞助支出  数据迁移生成：第1列 =  第3列
	$ES("vo.zzzctzje")[0].value = $ES("vo.zzzczzje")[0].value;
	//第22行（十）与未实现融资收益相关在当期确认的财务费用  若1列≥2列，数据迁移生成：1-2列金额 第3列，若1列＜2列，数据迁移生成：1-2列绝对值 第4列
	var wsxrzsyzzje = $ES("vo.wsxrzsyzzje")[0].value;
	var wsxrzsyssje = $ES("vo.wsxrzsyssje")[0].value;
	if (wsxrzsyzzje == '' && wsxrzsyssje == '') {
		$ES("vo.wsxrzsytzje")[0].value = '';
		$ES("vo.wsxrzsytjje")[0].value  = '';
	}else{
		if (wsxrzsyzzje == '') {
		   wsxrzsyzzje = '0';
	    }
	    if (wsxrzsyssje == '') {
		   wsxrzsyssje  = '0';
	    }
		if (parseFloat(wsxrzsyzzje) - parseFloat(wsxrzsyssje)  < 0) {
			$ES("vo.wsxrzsytzje")[0].value = '';
		    $ES("vo.wsxrzsytjje")[0].value  =   -1 * (parseFloat(wsxrzsyzzje) - parseFloat(wsxrzsyssje));
  	   } else {
		   $ES("vo.wsxrzsytzje")[0].value = parseFloat(wsxrzsyzzje) - parseFloat(wsxrzsyssje);
		   $ES("vo.wsxrzsytjje")[0].value  = '';
	   }
	}
	//第23行（十一）佣金和手续费支出  若1列>2列，数据迁移生成：第1-2列 =  第3列
	var yjssfzzje = $ES("vo.yjssfzzje")[0].value;
	var yjssfssje = $ES("vo.yjssfssje")[0].value;
	if (yjssfzzje == '' && yjssfssje == '') {
		$ES("vo.yjssftzje")[0].value = '';
	}else{
		if (yjssfzzje == '') {
		   yjssfzzje = '0';
	    }
	    if (yjssfssje == '') {
		    yjssfssje  = '0';
	    }
		if (parseFloat(yjssfzzje) - parseFloat(yjssfssje)  > 0) {
			$ES("vo.yjssftzje")[0].value = parseFloat(yjssfzzje) - parseFloat(yjssfssje);
  	    } else {
		  $ES("vo.yjssftzje")[0].value ='';
	   }
	}
		//第26行（十三）跨期扣除项目  若1列≥2列，数据迁移生成1-2列 = 第3列，若1列＜2列，数据迁移生成1-2列绝对值 = 第4列
	var kqkcxmzzje = $ES("vo.kqkcxmzzje")[0].value;
	var kqkcxmssje = $ES("vo.kqkcxmssje")[0].value;
	if (kqkcxmzzje == '' && kqkcxmssje == '') {
		$ES("vo.kqkcxmtzje")[0].value = '';
		$ES("vo.kqkcxmtjje")[0].value  = '';
	}else{
		if (kqkcxmzzje == '') {
		   kqkcxmzzje = '0';
	    }
	    if (kqkcxmssje == '') {
		   kqkcxmssje  = '0';
	    }
		if (parseFloat(kqkcxmzzje) - parseFloat(kqkcxmssje)  < 0) {
			$ES("vo.kqkcxmtzje")[0].value = '';
		    $ES("vo.kqkcxmtjje")[0].value  =   -1 * (parseFloat(kqkcxmzzje) - parseFloat(kqkcxmssje));
  	   } else {
		   $ES("vo.kqkcxmtzje")[0].value = parseFloat(kqkcxmzzje) - parseFloat(kqkcxmssje);
		   $ES("vo.kqkcxmtjje")[0].value  = '';
	   }
	}
	//第27行（十四）与取得收入无关的支出 数据迁移生成：第1列 =  第3列
	$ES("vo.srwgdzctzje")[0].value = $ES("vo.srwgdzczzje")[0].value;
	//第29行（十六）其他  若1列≥2列，数据迁移生成：1-2列 第3列，若1列＜2列，数据迁移生成：1-2列绝对值 第4列
	var kclxmqtzzje = $ES("vo.kclxmqtzzje")[0].value;
	var kclxmqtssje = $ES("vo.kclxmqtssje")[0].value;
	if (kclxmqtzzje == '' && kclxmqtssje == '') {
		$ES("vo.kclxmqttzje")[0].value = '';
		$ES("vo.kclxmqttjje")[0].value  = '';
	}else{
		if (kclxmqtzzje == '') {
		   kclxmqtzzje = '0';
	    }
	    if (kclxmqtssje == '') {
		   kclxmqtssje  = '0';
	    }
		if (parseFloat(kclxmqtzzje) - parseFloat(kclxmqtssje)  < 0) {
			$ES("vo.kclxmqttzje")[0].value = '';
		    $ES("vo.kclxmqttjje")[0].value  =   -1 * (parseFloat(kclxmqtzzje) - parseFloat(kclxmqtssje));
  	   } else {
		   $ES("vo.kclxmqttzje")[0].value = parseFloat(kclxmqtzzje) - parseFloat(kclxmqtssje);
		   $ES("vo.kclxmqttjje")[0].value  = '';
	   }
	}
	//第32行（二）资产减值准备金  第1列，若≥0，数据迁移生成 第3列，第1列，若<0，数据迁移生成第1列绝对值 第4列
	var zcjzzbjzzje = $ES("vo.zcjzzbjzzje")[0].value;
	if (zcjzzbjzzje == '') {
		$ES("vo.zcjzzbjtzje")[0].value = '';
		$ES("vo.zcjzzbjtjje")[0].value  = '';
	}else{
		if (zcjzzbjzzje < 0) {
			$ES("vo.zcjzzbjtzje")[0].value = '';
		    $ES("vo.zcjzzbjtjje")[0].value  =  -1 * parseFloat(zcjzzbjzzje) ;
  	   } else {
		  $ES("vo.zcjzzbjtzje")[0].value = $ES("vo.zcjzzbjzzje")[0].value;
		  $ES("vo.zcjzzbjtjje")[0].value  = '';
	   }
	}
//第34行（四）其他  若1列≥2列，数据迁移生成1-2列 第3列，若1列＜2列，数据迁移生成1-2列绝对值 第4列
	var zclxmqtzzje = $ES("vo.zclxmqtzzje")[0].value;
	var zclxmqtssje = $ES("vo.zclxmqtssje")[0].value;
	if (zclxmqtzzje == '' && zclxmqtssje == '') {
		$ES("vo.zclxmqttzje")[0].value = '';
		$ES("vo.zclxmqttjje")[0].value  = '';
	}else{
		if (zclxmqtzzje == '') {
		   zclxmqtzzje = '0';
	    }
	    if (zclxmqtssje == '') {
		   zclxmqtssje  = '0';
	    }
		if (parseFloat(zclxmqtzzje) - parseFloat(zclxmqtssje)  < 0) {
			$ES("vo.zclxmqttzje")[0].value = '';
		    $ES("vo.zclxmqttjje")[0].value  =   -1 * (parseFloat(zclxmqtzzje) - parseFloat(zclxmqtssje));
  	   } else {
		   $ES("vo.zclxmqttzje")[0].value = parseFloat(zclxmqtzzje) - parseFloat(zclxmqtssje);
		   $ES("vo.zclxmqttjje")[0].value  = '';
	   }
	}
}
function openFB(fbdm) {
	goUrl($F('vo.pzxh'), fbdm)
}