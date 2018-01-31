/**
 * 生成底稿数据
 */
  function scdata(){
	Modal.sysConfirm("将按照标准账套生成底稿，原来的底稿数据将被覆盖，确认继续操作", onScdgOk);
  }
  function onScdgOk(result){
		if(result){
	           var $w1=new  $w("Windking");
	           var LSH=$("#LSH").val();
	           var DGDM=$("#DG_DM").val();
	           $w1.pushData("LSH", LSH);
	           $w1.pushData("DGDM", DGDM);
	           $w1.ajax("/tsdgcommCtrl/scData",Refresh);			
		}
   }  
  
  /**
   * 自动计算将原来已经计算的数据覆盖
   */
function jsAuto(){
	save(jsAuto2);
}
function jsAuto2(){
    var $w1=new  $w("Windking");
    var LSH=$("#LSH").val();
    var DGDM=$("#DG_DM").val();
    $w1.pushData("LSH", LSH);
    $w1.pushData("DGDM", DGDM);
    $w1.ajax("/tsdgcommCtrl/jsAuto",Refresh);
}

function printPage(){
	hideSelect();
	window.print(); 
}
function printPagePro(){
	openMaxWindow(window.location.href+"&printBj=1");
}
function hideSelect(){
	  $("select").each(function(){
		    $(this).parent().text($(this).find("option:selected").text());
			$(this).parent().empty();
	 });
}
$(document).ready(function(){
    var LCSLH=$("#LCSLH").val();
    var $w1=new  $w("Windking");
    $w1.pushData("LCSLH", LCSLH);
    $w1.ajax("/identityCtrl/confirmIdentity",confirmIdentityAfter);	
}) 
function confirmIdentityAfter(res){
	if(res!=null){
		   var identityBj=res.data.identityBj;
		   if(identityBj=="qyyh"){
			   $(".btn-menu").css('visibility','hidden');//;
		   }else{
			   $(".btn-menu_qy").css('visibility','hidden');
		   }		
	}

}
