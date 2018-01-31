/**
 * 
 */
var FBPZZLDM="";
  function dgScsbb(pzzldm){
	FBPZZLDM=pzzldm;
	Modal.sysConfirm("将按照标准账套生成底稿，原来的底稿数据将被覆盖，确认继续操作", dgScsbbOk);
  }
  function dgScsbbOk(result){
		if(result){
	           var $w1=new  $w("Windking");
	           var PZXH=$("#PZXH").val();
	           $w1.pushData("PZXH", PZXH);
	           $w1.pushData("FBPZZLDM", FBPZZLDM);
	           $w1.ajax("/qysdsndIndexCtrl/jgSbb",Refresh);			
		}
   }
  
  function jsSbb(){
	  saveGlgx(jsSbb2);
	}  
  
  function jsSbb2(){
	           var $w1=new  $w("Windking");
	           var PZXH=$("#PZXH").val();
	           var FBPZZLDM=$("#FBPZZLDM").val();
	           $w1.pushData("PZXH", PZXH);
               $w1.pushData("FBPZZLDM", FBPZZLDM);
	           $w1.ajax("/qysdsndIndexCtrl/jsSbb",Refresh);			
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
	    var $w1=new  $w("Windking");
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
	
    function closeAbPage(){
        window.close();
     }    