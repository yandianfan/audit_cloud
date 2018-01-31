/**
 * 
 */

       function selectRy(){
          var jsonData = $.parseJSON($("#jsonData").html()); 
          var selectNodes=jsonData.select;
			//先获取父节点被选中项
		  var gwSelectedvalue="4";
		  var jgSelectedvalue=$("#zzjgselect option:selected").val();
	      var $w1=new  $w("Windking");
          $w1.pushData("gwSelectedvalue", gwSelectedvalue);
          $w1.pushData("jgSelectedvalue", jgSelectedvalue);
          $w1.ajax("/rwfpCtrl/ryinit");       
       }
       
       function upLoadFile(){
    	   var $w1=new  $w("Windking");
    	   var SSSQ=$("#SSSQ").val();
    	   if(SSSQ==null||SSSQ==""){
    		   Modal.sysAlert("所属时期不能为空");
    		   return false;
    	   }
           var formData = new FormData();
           formData.append('file', $('#file')[0].files[0]);
           formData.append('SSSQ', $("#SSSQ").val());
           formData.append('USERID', $("#userId").val());
           if($('#file')[0].files[0]!=undefined){
               $w1.uploadFile("/fileCtrl/uploadEcpa",formData,save);    	   
           }else{
    		   Modal.sysAlert("请选择文件");
    		   return false;
           }
           //$w1.ajaxUpfile("/fileCtrl/uploadEcpa",formData); 
 
       }
       
     //保存
       function save(responseText){
    	   var jgSelectedvalue=$("#zzjgselect").val();
    	   var rySelectedvalue=$("#ryselect").val();
    	   var SSSQ=$("#SSSQ").val();
	       	var $w1=new  $w("Windking");
	       	$w1.pushData("jgSelectedvalue",jgSelectedvalue);
	       	$w1.pushData("rySelectedvalue",rySelectedvalue);
	       	$w1.pushData("SSSQ",SSSQ);
	       	if(responseText==""||responseText==null||responseText==undefined){
	       		$w1.pushData("filePath","");
	       		$w1.pushData("fileName","");
	       	}else{
	       		$w1.pushData("filePath",responseText.filePath);
	       		$w1.pushData("fileName",responseText.fileName);		
	       	}
           $w1.ajax("/fileSqdCtrl/saveSqd");  		
       }