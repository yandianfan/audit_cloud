
/**
 * 
 */
function opentree(e, treeId, treeNode){
	alert(treeNode.id);
	//$("#ysjtree").insertContent(treeId.name);	
}

$(window).load(function(){
	var zblx=$("#fxzblx").children('option:selected').val();
	var sjb=$("#jslsjbselect").children('option:selected').val();
	var zbdm=$("#ZB_DM").val();
	$("#disarea1").hide();
	$("#area3").show();
	$("#area5").show();
	$("#area6").show();
	$("#area7").show();
	$("#area4").hide();	
	$("#area8").show();
	/**
	if(zblx=="01"){
		
		$("#disarea1").show();
		$("#area3").hide();
		$("#area5").hide();
		$("#area6").hide();
		$("#area7").hide();
		$("#area4").show();	
		$("#area8").hide();
	}else{
		$("#disarea1").hide();
		$("#area3").show();
		$("#area5").show();
		$("#area6").show();
		$("#area7").show();
		$("#area4").hide();	
		$("#area8").show();
	}**/
})
function insertText(obj,str) {
    if (document.selection) {
        var sel = document.selection.createRange();
        sel.text = str;
    } else if (typeof obj.selectionStart === 'number' && typeof obj.selectionEnd === 'number') {
        var startPos = obj.selectionStart,
            endPos = obj.selectionEnd,
            cursorPos = startPos,
            tmpStr = obj.value;
        obj.value = tmpStr.substring(0, startPos) + str + tmpStr.substring(endPos, tmpStr.length);
        cursorPos += str.length;
        obj.selectionStart = obj.selectionEnd = cursorPos;
    } else {
        obj.value += str;
    }
}
function moveEnd(obj){
    obj.focus();
    var len = obj.value.length;
    if (document.selection) {
        var sel = obj.createTextRange();
        sel.moveStart('character',len);
        sel.collapse();
        sel.select();
    } else if (typeof obj.selectionStart == 'number' && typeof obj.selectionEnd == 'number') {
        obj.selectionStart = obj.selectionEnd = len;
    }

} 
function opentree(e, treeId, treeNode){
	alert(treeNode.name);
	//insertText(document.getElementsByName("ZHGS")[0],treeNode.name);
	//$("#ysjtree").insertContent(treeId.name);	
}
function insertAtCaret(myValue){
	
}
function saveZbxx(){
    var $w1=new  $w("Windking");
    var gsnr=$("#gsnr").val();
    var sbtj=$("#sbtj").val();
    var fxtxxx=$("#fxtxxx").val();
    var zblx=$("#fxzblx").children('option:selected').val();
 /**   if(zblx!="01"){
    	if(gsnr==""){
    		Modal.sysAlert("请输入指标公式");
    		return false;
    	}
    	if(sbtj==""){
    		Modal.sysAlert("请输入识别条件");
    		return false;
    	}
    	if(fxtxxx==""){
    		Modal.sysAlert("请输入风险提醒");
    		return false;
    	}    	
    	var zbmc=$("#FXZB_MC").val();
    	if(zbmc==""){
    		Modal.sysAlert("请输入指标名称");
    		return false;
    	}
    	var zbms=$("#FXZB_MS").val();
    	if(zbms==""){
    		Modal.sysAlert("请输入指标描述");
    		return false;
    	}
    }else{
    	var sbb=$("#jslsjbselect").children('option:selected').val();
    	if(sbb==""){
    		Modal.sysAlert("请选择指标对应申报表");
    		return false;
    	}
    }**/
	if(gsnr==""){
		Modal.sysAlert("请输入指标公式");
		return false;
	}
	if(sbtj==""){
		Modal.sysAlert("请输入识别条件");
		return false;
	}
	if(fxtxxx==""){
		Modal.sysAlert("请输入风险提醒");
		return false;
	}    	
	var zbmc=$("#FXZB_MC").val();
	if(zbmc==""){
		Modal.sysAlert("请输入指标名称");
		return false;
	}
	var zbms=$("#FXZB_MS").val();
	if(zbms==""){
		Modal.sysAlert("请输入指标描述");
		return false;
	}
    $w1.pushForm("jcsxform");
    $w1.pushGrid("listZhgs");
    $w1.pushGrid("listSjly");
    $w1.pushGrid("listSjly2");
    $w1.pushGrid("listKzz");
    $w1.pushData("gsnr", gsnr);
    $w1.pushData("sbtj", sbtj);
    $w1.pushData("fxtxxx", fxtxxx);
    $w1.ajax("/zbdyCtrl/saveZbxx",setFxzbdm);	
}
function setFxzbdm(res){
	$("#FXZB_DM").val(res.data.FXZB_DM);
}
function changeTj(){
	var zblx=$("#fxzblx").children('option:selected').val();
	$("#disarea1").hide();
	$("#area3").show();
	$("#area5").show();
	$("#area6").show();
	$("#area7").show();
	$("#area4").hide();
	$("#area8").show();
	/**
	if(zblx!="01"){
		$("#disarea1").hide();
		$("#area3").show();
		$("#area5").show();
		$("#area6").show();
		$("#area7").show();
		$("#area4").hide();
		$("#area8").show();
	}else{
		$("#disarea1").show();
		$("#area3").hide();
		$("#area5").hide();
		$("#area6").hide();
		$("#area7").hide();
		$("#area4").show();
		$("#area8").hide();
        var zbdm=$("#FXZB_DM").val();
        var sjb=$("#jslsjbselect").children('option:selected').val();
	    var $w1=new  $w("Windking");
	    $w1.pushData("zbdm", zbdm);
	    $w1.pushData("sjb", sjb);
	    $w1.ajax("/zbdyCtrl/initZhgs");			
	}**/
}
function ckSjx(res){
  alert();	
}
function selectSbb(e){
	var zblx=$("#fxzblx").children('option:selected').val();
	if(zblx=="01"){
	    var zbdm=$("#FXZB_DM").val();
	    var sjb=e.value;
	    var $w1=new  $w("Windking");
	    $w1.pushData("zbdm", zbdm);
	    $w1.pushData("sjb", sjb);
	    $w1.ajax("/zbdyCtrl/initZhgs");			
	}

}
var sjx="";
var index="";
//打开编辑邮箱
function dialog_open(rowData){
	sjx=rowData.getValue("SJXYWMC");
	index=rowData.getValue("Index");
	$("#ZHGSS").val(rowData.getVal("ZHGS"));
	$("#dialog-add").css("display","block");
}
//关闭编辑邮箱
function cancel_pl(){
	$("#dialog-add").css("display","none");
}
//保存编辑邮箱
function saveZhgs(){
	$("#listZhgs_tbody").find("td")[index].text($("#ZHGSS").val());
	$("#dialog-add").css("display","none");
}
var index1="";
//打开编辑邮箱
function dialog_open1(rowData){
	index1=rowData.getVal("Index1");
	$("#KZZGSS").val(rowData.getVal("KZZGS"));
	$("#dialog-add2").css("display","block");
}
//关闭编辑邮箱
function cancel_pl2(){
	$("#dialog-add2").css("display","none");
}
//保存编辑邮箱
function saveKzz(){
	$("#listKzz_tbody").find("td")[index1].text($("#KZZGSS").val());
	$("#dialog-add2").css("display","none");
}
//选择数据来源
function addsjly(){
    var $w1=new  $w("Windking");
    var zbdm=$("#FXZB_DM").val();
    $w1.pushData("zbdm", zbdm);
    $w1.pushAllcheckedTree("ysjtree");
    $w1.ajax("/zbdyCtrl/insertSjly");		
}
//删除数据来源
function delsjly(){
    var $w1=new  $w("Windking");
    var zbdm=$("#FXZB_DM").val();
    $w1.pushData("zbdm", zbdm);
    $w1.pushAllcheckedGrid("listSjly");
    $w1.pushAllcheckedGrid("listSjly2");
    $w1.ajax("/zbdyCtrl/deleteSjly");		
}

var hiddenNodes=[];	//用于存储被隐藏的结点
//过滤ztree显示数据
function searchNode(){
	var zTreeObj = $.fn.zTree.getZTreeObj("ysjtree");
	//显示上次搜索后背隐藏的结点
	zTreeObj.showNodes(hiddenNodes);

	//查找不符合条件的叶子节点
	function filterFunc(node){
		var _keywords=$("#serchekey").val();
		/**if(node.isParent||node.name.indexOf(_keywords)!=-1) {
			return false;
		}
		return true;	
		*/	
		if(node.isParent){
			var nodeList=node.children;
		    for(var n=0;n <nodeList.length;n++){
		        if(nodeList[n].name.indexOf(_keywords)!=-1){
		        	return false;
		        }
		    }
			if(node.name.indexOf(_keywords)!=-1) {
				return false;
			}	
		    return true;
		}else{
			if(node.name.indexOf(_keywords)!=-1) {
				return false;
			}	
		}
		return true;
	};

	//获取不符合条件的叶子结点
	hiddenNodes=zTreeObj.getNodesByFilter(filterFunc);
	
	//隐藏不符合条件的叶子结点
	zTreeObj.hideNodes(hiddenNodes);
};

/***********************************************
var log, className = "dark";
function beforeClick(treeId, treeNode, clickFlag) {
	className = (className === "dark" ? "":"dark");
	return (treeNode.click != false);
}

	function focusKey(e) {
    if (key.hasClass("empty")) {
        key.removeClass("empty");
    }
}
function blurKey(e) {
    if (key.get(0).value === "") {
        key.addClass("empty");
    }
}
var lastValue = "", nodeList = [], fontCss = {};
function clickRadio(e) {
    lastValue = "";
    searchNode(e);
}
function searchNode(e) {
    var zTree = $.fn.zTree.getZTreeObj("ysjtree");
    var value = $('#serchekey').val();
    var keyType = "name";
    if (value === "") {
        closeAll();
        return;
    }
    nodeList = zTree.getNodesByParamFuzzy(keyType, value);
    /**不查询父级
    for(var x = 0 ; x<nodeList.length ; x++){
        if(nodeList[x].isParent){
            nodeList.splice(x--,1);
        }
    }
    */
    //zTree.cancelSelectedNode(); 
  /**  nodeList = zTree.transformToArray(nodeList);
    updateNodes(true,value,keyType);
}
function updateNodes(highlight,value,keyType) {
    var zTree = $.fn.zTree.getZTreeObj("ysjtree");
    var allNode = zTree.transformToArray(zTree.getNodes());
    zTree.hideNodes(allNode);
    for(var n in nodeList){
        findParent(zTree,nodeList[n]);
    }
    zTree.showNodes(nodeList);
    closeAll();
    nodeList = zTree.getNodesByParamFuzzy(keyType, value);
	for( var i=0; i<nodeList.length; i++) { 
			//zTree.updateNode(nodes[i]);
		zTree.selectNode(nodeList[i],true);
		}
}

function findParent(zTree,node){
    zTree.expandNode(node,true,false,false);
    var pNode = node.getParentNode();
    if(pNode != null){
        nodeList.push(pNode);
        findParent(zTree,pNode);
    }
    
}

function getFontCss(treeId, treeNode) {
    return (!!treeNode.highlight) ? {color:"#ffffff", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
}

function closeAll(){
	var zTree = $.fn.zTree.getZTreeObj("ysjtree");
	zTree.expandAll(false); //关闭所有节点
	var nodes = zTree.getNodes();
	zTree.expandNode(nodes[0], true, false, true);  //打开根节点
}

var key;
**/
