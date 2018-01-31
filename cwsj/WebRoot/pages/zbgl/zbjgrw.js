/**
 * 
 */
function opentree(e, treeId, treeNode){
	alert(treeNode.id);
}
function saveRwxx(){
    var $w1=new  $w("Windking");
    var lsh=$("#LSH").val();
    $w1.pushAllcheckedTree("zbTree");
    $w1.pushForm("jcsxform");
    $w1.pushData("LSH", lsh);
    $w1.ajax("/zbjgCtrl/saveRwxx");	
}
function ckJdxz(e, treeId, treeNode){
	var zTree = $.fn.zTree.getZTreeObj("xzqhtree_ul");
	var flag = treeNode.isParent; 
    if(!flag){
    	$("#xzqhtree").val(treeNode.name);
    	$("#xzqhtree_id").val(treeNode.id);
    	var xzqh=$("#xzqhtree_id").val();
    	var node = zTree.getNodeByParam("id", xzqh);
    	alert(node.name);
    	var $w1=new  $w("Windking");
    	$w1.pushData("XZQHSZ_DM", xzqh);
    	$w1.ajax("/dmbCtrl/ckJdxz");	    	
    }else{
    	$("#xzqhtree_id").val("");
    	$("#xzqhtree").val("");
    	Modal.sysAlert("请选择子节点");
    }
}
function doAction(){
    var $w1=new  $w("Windking");
    var lsh=$("#LSH").val();
    var DJXH=$("#DJXH").val();
    $w1.pushAllcheckedTree("zbTree");
    $w1.pushForm("jcsxform");
    $w1.pushData("LSH", lsh);
    $w1.pushData("DJXH", DJXH);
    //Modal.proShow();
    $w1.ajax("/zbjgCtrl/doAction",doActionAfter);		
}
function doActionAfter(res){
	//Modal.proHide();
}