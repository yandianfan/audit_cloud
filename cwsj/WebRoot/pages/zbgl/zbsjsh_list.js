/**
 * 
 */
/**function getRootPath(){  
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp  
    var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht=curWwwPath.substring(0,pos);  
    //获取带"/"的项目名，如：/uimcardprj  
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
    return(localhostPaht+projectName);  
} */
function onSubmit(){
	workflow_submit("SJ_01");
//       var LSH=$("#LSH").val();
//       var djxh=$("#DJXH").val();
//       var qymc=$("#QYMC").val();
//       var LCSLH=$("#LCSLH").val();
	   //window.location.href=getRootPath()+"/BLH/rwfpBLH_selectTsry&LSH="+LSH+"&YWLC_DM=SJ_01&DJXH="+djxh+"&QYMC="+qymc+"&LCSLH="+LCSLH;
	   //window.location.href=getRootPath()+"/BLH/rwfpBLH_selectTsry&LSH="+LSH+"&YWLC_DM=SJ_01&DJXH="+djxh+"&LCSLH="+LSH;
}
function sjcyonSubmit(){
//    var LSH=$("#LSH").val();
//    var djxh=$("#DJXH").val();
//    var qymc=$("#QYMC").val();
//    var LCSLH=$("#LCSLH").val();
//	   var $w1=new  $w("Windking");
//	   $w1.pushData("DJXH", djxh);
//	   $w1.pushData("LSH", LSH);
//	   $w1.pushData("LCSLH", LCSLH);
//	   $w1.ajax("/tsdg0101Ctrl/jslc");	 
//	   $("button").attr({"disabled":"disabled"});
	workflow_submit("SJ_02");
}
function openQysdsndindex(pzxh){
	//openMaxWindow("BLH/qysdsndIndexBLH_init&pzxh="+pzxh, 800, 700);
	//siMenu(pzxh,"lm1","企业所得税申报表","BLH/qysdsndIndexBLH_init&pzxh="+pzxh);
	openMaxWindow("qysdsndIndexCtrl/init?pzxh="+pzxh, 800, 700);
}

function openQysdsndCx(pzxh){
	siMenu(pzxh,"lm1","企业所得税申报表","sjjgcxCtrl/qysdsinit&pzxh="+pzxh);
}

function modify(rowData){
	var url=rowData.getValue("URL");
	var DG_DM=rowData.getValue("DG_DM");
	var DJXH=$("#DJXH").val();
	var LSH=$("#LSH").val();
	var LCSLH=$("#LCSLH").val();
	if(url!=undefined){
		openMaxWindow(url+"?LCSLH="+LCSLH+"&LSH="+LSH+"&DG_DM="+DG_DM+"&DJXH="+DJXH, 800, 700);
	}
}
function modifyTydg(rowData){
	var DG_DM=rowData.getValue("DG_DM");
	var DJXH=$("#DJXH").val();
	var LSH=$("#LSH").val();
	var LCSLH=$("#LCSLH").val();
	openMaxWindow(getRootPath()+"/tydgdyCtrl/initMytydgmain?LCSLH="+LCSLH+"&LSH="+LSH+"&DG_DM="+DG_DM+"&DJXH="+DJXH, 800, 700);
}
function openzdbg(rowData){
	var DG_DM=rowData.getValue("DG_DM");
	var DJXH=$("#DJXH").val();
	var LSH=$("#LSH").val();
	openMaxWindow(getRootPath()+"/ywdgCtrl/init?LSH="+LSH+"&DG_DM="+DG_DM+"&DJXH="+DJXH, 800, 700);	
}
function ckNstzbgqy(){
	var LSH=$("#LSH").val();
	//siMenu(LSH+"1","nstzbg_001","纳税调整报告","nstzbgCtrl/init&LSH="+LSH);
	openMaxWindow(getRootPath()+"/nstzbgCtrl/viewBgnr?LSH="+LSH) ;	
}
function ckNstzbg(){
	var LSH=$("#LSH").val();
	//siMenu(LSH+"1","nstzbg_001","纳税调整报告","nstzbgCtrl/init&LSH="+LSH);
	openMaxWindow(getRootPath()+"/nstzbgCtrl/init?LSH="+LSH, 800, 700);	
}
function onRefreshgzdg(){
	Modal.sysConfirm("将按照新调整的标准账套生成工作底稿，原来的底稿数据将被覆盖，确认继续操作", onGzdgOk);
}
function onGzdgOk(result){
	if(result){
	    var $w1=new  $w("Windking");
	    var LSH=$("#LSH").val();
	    var DJXH=$("#DJXH").val();
	    $w1.pushData("LSH", LSH);
	    $w1.pushData("DJXH", DJXH);
	    //Modal.proShow();
	    $w1.ajax("/zbjgCtrl/jgGzdg");			
	}
}
var PZXH="";
function onRefreshsbb(pzxh){
	PZXH=pzxh;
	Modal.sysConfirm("将按照工作底稿生成申报表，原来的申报表数据将被覆盖，确认继续操作", onSbbOk);
}
function onSbbOk(result){
	if(result){
	    var $w1=new  $w("Windking");
	    var DJXH=$("#DJXH").val();
	    $w1.pushData("PZXH", PZXH);
	    $w1.pushData("DJXH", DJXH);
	    //Modal.proShow();
	    $w1.ajax("/zbjgCtrl/jgSbb");			
	}
}
function ckYssj(){
	var CWBBDLDM=$("#cwbbdlselect").find("option:selected").val();
	var LSH=$("#LSH").val();
	var SSSQ=$("#SSSQ").val();
	openMaxWindow(getRootPath()+"/SjycxCtrl?LSH="+LSH+"&CWBBDL_DM="+CWBBDLDM+"&SSSQ="+SSSQ, 800, 700);	
}
$(document).ready(function(){
   var BJBJ=$("#BJBJ").val();
   if(BJBJ=="1"){
	   $("button").attr({"disabled":"disabled"});
   }
}) 