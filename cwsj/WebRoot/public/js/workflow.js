/**
 * 工作流公共JS
 */

function workflow_submit(YWLC_DM){
    var LSH=$("#LSH").val();
    var djxh=$("#DJXH").val();
    var qymc=$("#QYMC").val();
    var LCSLH=$("#LCSLH").val();
    var $w1=new  $w("Windking");
    $w1.pushData("DJXH", djxh);
    $w1.pushData("LSH", LSH);
    $w1.pushData("LCSLH", LCSLH);
    $w1.pushData("YWLC_DM", YWLC_DM);
    $w1.ajax("/gzlCtrl/determineEnd",workflow_onSubmitAfter);	 
}
function workflow_onSubmitAfter(res){
	 var LSH=$("#LSH").val();
	 var djxh=$("#DJXH").val();
	 var qymc=$("#QYMC").val();
	 var LCSLH=$("#LCSLH").val();
	 window.location.href=getRootPath()+"/rwfpCtrl/selectTsry?LSH="+LSH+"&YWLC_DM=SJ_01&DJXH="+djxh+"&LCSLH="+LSH;
}
$(document).ready(function(){
    var LCSLH=$("#LCSLH").val();
    var $w1=new  $w("Windking");
    $w1.pushData("LCSLH", LCSLH);
    $w1.ajax("/gzlCtrl/viewLcxx",viewLcxxAfter);	
}) 
function viewLcxxAfter(res){
	if(res!=null){
		   var BJBJ=res.data.BJBJ;
		   if(BJBJ=="1"){
			   $("button").attr({"disabled":"disabled"});
		   }		
	}

}