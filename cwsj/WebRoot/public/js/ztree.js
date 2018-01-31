/**
 * ztree初始化加载，需要按照顺序动态加载
 */
/**var setting = {
		view: {
			//showIcon: showIconForTree
		},
		data: {
			simpleData: {
				enable: true
			}
		},
        callback: {
            onClick: opentree
        }
	};

function showIconForTree(treeId, treeNode) {
	return !treeNode.isParent;
}
$(document).ready(function(){
	$.fn.zTree.init($("#leftTree"), setting, zNodes);
})
*/
/**
$(document).ready(function(){
	var jsonData = $.parseJSON($("#jsonData").html()); 

	var treeNodes=jsonData.tree;

	//for(var item in treeNodes){
	for(var item=0;item<treeNodes.length;item++){
		var treename=treeNodes[item].TreeName;
		var setting = {
				view: {
					//showIcon: showIconForTree
				},
				data: {
					simpleData: {
						enable: true
					}
				},
		        callback: {
		            onClick:$("#"+treename+"").attr("onclick").replace(/[()]/g, "")
		        }
			};
		$.fn.zTree.init($("#"+treename+""), setting, treeNodes[item].TreeData);
	}
})**/
$(document).ready(function(){
	var treeNode = $.parseJSON($("#treeNode").html()); 
	treeInit(treeNode);
})
function treeInit(treeNodes){
	//for(var item in treeNodes){

		var callback={};
		var check={};
		var setting={};
		var treename="tyztree";
		if($("#"+treename+"")){
			//setting["view"]={showIcon: showIconForTree};
			setting["edit"]={
					enable: true,
					showRemoveBtn: false,
					showRenameBtn: false
				};
			setting["data"]={
					simpleData: {
						enable: true
					}
				};	
			if($("#"+treename+"").attr("check")){
				var checkArray = $("#"+treename+"").attr("check").split(',');  
				check["chkboxType"]={ "Y" : "s", "N" : "ps" };
				for(var i=0;i<checkArray.length;i++){
					//check[checkArray[i].split(':')[0]]=checkArray[i].split(':')[1];
					if(checkArray[i].split(',')=="enable:true"){
						check["enable"]=true;
					}else if(checkArray[i].split(',')=="chkStyle:radio"){
						check["chkStyle"]="radio";
						check["radioType"]="all";
					}else if(checkArray[i].split(',')=="radioType:level"){
						check["radioType"]="level";
					}else if(checkArray[i].split(',')=="radioType:all"){
						check["radioType"]="all";
					}
				}
				//check={enable:true,chkStyle:'radio',radioType:'level'};
				setting["check"]=check;
				//check=eval(JSON.stringify($("#"+treename+"").attr("check")));//$.parseJSON($("#"+treename+"").attr("check"));
			}
			if($("#"+treename+"").attr("async")){
                if($("#"+treename+"").attr("async")!=""){
                	setting["async"]={enable: true,url:$("#"+treename+"").attr("async"),autoParam:["id", "name", "level"],dataType: "text",dataFilter: treefilter};
                }				
			}			
			if($("#"+treename+"").attr("onclick")){
				callback["onClick"]=eval($.trim($("#"+treename+"").attr("onclick").replace(/[()]/g, "")));
				//setting["callback"]=eval($.trim($("#"+treename+"").attr("onclick").replace(/[()]/g, "")));
			}
			setting["callback"]=callback;
			/**var setting = {
					view: {
						//showIcon: showIconForTree
					},
					check:{enable:true,chkStyle:'radio',radioType:'level'},
					edit: {
						enable: true,
						showRemoveBtn: false,
						showRenameBtn: false
					},
					data: {
						simpleData: {
							enable: true
						}
					},
			        callback: callback
				};*/
			$.fn.zTree.init($("#"+treename+""), setting,treeNodes);	
		}
}
var hiddenNodes=[];	//用于存储被隐藏的结点
//过滤ztree显示数据
function searchNode(){
	var zTreeObj = $.fn.zTree.getZTreeObj("tyztree");
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
//--获取选择的树节点----------------------
function getCheckedNodes(treename){
	var zTree = $.fn.zTree.getZTreeObj(treename);
	nodes = zTree.getCheckedNodes();
	return nodes;
}
function queding(){
	var multiSelect=$("#multiSelect").val();
	var isParent=$("#isParent").val();
	var zTree = $.fn.zTree.getZTreeObj("tyztree");
	if(multiSelect=="1"){
		nodes = zTree.getCheckedNodes();
		v = "";
		c="";
		for (var i=0, l=nodes.length; i<l; i++) {
			v += nodes[i].name + ",";
			c +=nodes[i].id + ",";
		}
	}else{
		nodes =  zTree.getCheckedNodes(true);
	}	
	if(nodes.length==0){
		alert("请选择数据!");
		return;
	}
	if(multiSelect=="1"){
		$("#RETCODE").val(c);
		$("#RETNAME").val(v);		
	}else{
		if(isParent=="1"){
			if(nodes[0].isParent){
				Modal.sysAlert("请选择子节点");
				return;
			}
		}
		$("#RETCODE").val(nodes[0].id);
		$("#RETNAME").val(nodes[0].name);	
	}

	Dialog.close();	
}	 