/**
 * 企业基础信息采集JS
 */
function saveJcxx(){
    var $w1=new  $w("Windking");
    $w1.pushForm("jcsxform");
    $w1.pushGrid("listgdtzxx");
    $w1.pushGrid("listjnfz");
    $w1.pushGrid("listjwfz");
    $w1.pushGrid("listdwtz");
    $w1.pushGrid("listqshbg");
    $w1.pushGrid("listzsxm");
    $w1.pushGrid("listssyh");
    $w1.pushForm("kjzcgjForm");
    $w1.ajax("/qyjcxxCtrl/saveJcxx");
}

function ckJdxz(e, treeId, treeNode){
	var flag = treeNode.isParent; 
    if(!flag){
    	$("#xzqhtree").val(treeNode.name);
    	$("#xzqhtree_id").val(treeNode.id);
    	var xzqh=$("#xzqhtree_id").val();
    	var $w1=new  $w("Windking");
    	$w1.pushData("XZQHSZ_DM", xzqh);
    	$w1.ajax("/dmbCtrl/ckJdxz");	    	
    }else{
    	$("#xzqhtree_id").val("");
    	$("#xzqhtree").val("");
    	Modal.sysAlert("请选择子节点");
    }
}