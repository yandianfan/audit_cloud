/**
 * 
 */

      $(top.hangge());
       function selectRy(){
          var jsonData = $.parseJSON($("#jsonData").html()); 
          var selectNodes=jsonData.select;
			//先获取父节点被选中项
		  var gwSelectedvalue=$("#gwselect option:selected").val();
		  var jgSelectedvalue=$("#zzjgselect option:selected").val();
	      var $w1=new  $w("Windking");
          $w1.pushData("gwSelectedvalue", gwSelectedvalue);
          $w1.pushData("jgSelectedvalue", jgSelectedvalue);
          $w1.ajax("/rwfpCtrl/ryinit");       
       }
       function queding(){
          if($("#ryselect").find("option:selected").val()==undefined){
             Modal.sysAlert("请选择人员");
          }else{
             var LSH=$("#LSH").val();
             var LCSLH=$("#LCSLH").val();
             var DJXH=$("#DJXH").val();
             var rydm=$("#ryselect").find("option:selected").val();
             var zzjgdm=$("#zzjgselect").find("option:selected").val();
   		     var $w1=new  $w("Windking");
             $w1.pushData("LSH", LSH);
             $w1.pushData("LCSLH", LCSLH);
             $w1.pushData("YWLC_DM", $("#YWLC_DM").val());
             $w1.pushData("YWHJ_DM", $("#YWHJ_DM").val());
             $w1.pushData("rydm", rydm);
             $w1.pushData("zzjgdm", zzjgdm);
             $w1.pushData("DJXH", DJXH);
             $w1.ajax("/rwfpCtrl/rwrgfp",winclose);    
             $("button").attr({"disabled":"disabled"});
          }
       }
       function winclose(){
    	   $("button").attr({"disabled":"disabled"});
    	/**   if(Dialog.close()){
    		   
    	   }else if(window.close()){
    		   
    	   }     **/ 
       }
$(function() {


	var $validation = false;
	$('#fuelux-wizard').ace_wizard().on('change' , function(e, info){
		if(info.step == 1 && $validation) {
			if(!$('#validation-form').valid()) return false;
		}
	}).on('finished', function(e) {
		bootbox.dialog("Thank you! Your information was successfully saved!", [{
			"label" : "OK",
			"class" : "btn-small btn-primary",
			}]
		);
	});
	
})      