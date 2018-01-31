$(document).ready(function(){
   var dglx=$("#dglx").val();
   $("#dglxselect option").each(function(objindex,objitem) {
	  // alert(objitem.value);
       if(dglx==objitem.value){  
    	   this.selected="selected";
    	   //$("#dglxselect option[value='"+objitem+"']").attr("selected", "selected"); 
       }
   })

})


//$(top.hangge());

//保存
function save(responseText){

	var DG_MC = $("#dgmc").val();
	var LSH = $("#LSH").val();
	var DGNR = getContent();
	console.log(DGNR);
	var DGLX_DM=$("#dglx").val();
	var DG_DM=$("#dgdm").val();
	if(DGLX_DM==""||DGLX_DM==null){
		DGLX_DM=$("#dglxselect").find("option:selected").val();
	}
	var $w1=new  $w("Windking");
	$w1.pushData("DG_DM",DG_DM);
	$w1.pushData("LSH",LSH);
	$w1.pushData("DG_MC",DG_MC);
	$w1.pushData("DGLX_DM",DGLX_DM);
	$w1.pushData("DGNR",DGNR);
	if(responseText==""||responseText==null||responseText==undefined){
		$w1.pushData("filePath","");
		$w1.pushData("fileName","");
	}else{
		$w1.pushData("filePath",responseText.filePath);
		$w1.pushData("fileName",responseText.fileName);		
	}
    $w1.ajax("/tydgdyCtrl/saveMyDg");  		
}
function setType(value){
	$("#TYPE").val(value);
}
function upLoadFile(){
	if($("#dgmc").val()==""){
		
		$("#dgmc").tips({
			side:1,
            msg:'请输入底稿名称',
            bg:'#AE81FF',
            time:3
        });
		return false;
	}
	if($("#dgdm").val()==""){
		
		$("#dgdm").tips({
			side:1,
            msg:'请输入底稿编码',
            bg:'#AE81FF',
            time:3
        });
		return false;
	}
	var dgdm=$("#dgdm").val();
	var LSH=$("#LSH").val();
    var formData = new FormData();
    if($('#file')[0].files[0]!=undefined){
        formData.append('file', $('#file')[0].files[0]);
        formData.append('LSH', LSH);
        formData.append('dgdm', dgdm);
        var $w1=new  $w("Windking");
        $w1.uploadFile("/fileCtrl/uploadMyTsdgMb",formData,save);    	
    }else{
    	save("");
    }

}

function download(filePath,fileName){
	var filePath = $("#filePath").val();
	var fileName=$("#fileName").val();
    var $w1=new  $w("Windking");
    $w1.Downfile("/fileCtrl/downloadTsdgMb",filePath+fileName);  
 }
//ueditor纯文本
function getContentTxt() {
    var arr = [];
    arr.push(UE.getEditor('editor').getContentTxt());
    return arr.join("");
}
//ueditor有标签文本
function getContent() {
    var arr = [];
    arr.push(UE.getEditor('editor').getContent());
    return arr.join("");
}

setTimeout("ueditor()",500);
function ueditor(){
	var ue = UE.getEditor('editor');
}
