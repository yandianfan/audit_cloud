/**
 * ydf的JS公共部分，此部分用来处理后台Json对象的解析并显示到前台，并且里面还包含相应的公共方法
 * add by 2016-09-11
 */
/**var locat = (window.location+'').split('/'); 
$(function(){if('main'== locat[3]){locat =  locat[0]+'//'+locat[2];}else{locat =  locat[0]+'//'+locat[2]+'/'+locat[3];};});
*/
//js获取项目根路径，如： http://localhost:8083/uimcardprj  
var context=1;
function getRootPath(){ 
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp  
    var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht=curWwwPath.substring(0,pos);  	
	if(context==1){
	    //获取带"/"的项目名，如：/uimcardprj  
	    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
	    return(localhostPaht+projectName);		
	}else{
		return localhostPaht;
	} 
} 
function getFileURI(){ 
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp  
    return "http://180.101.185.61:8080";
	//return "http://localhost:8080/cwsj";
}  
var progressbar_dialog="";
var sys_timeout = 600000;
var tree_Datas_json={};
var form_Datas_json={};
var grid_Datas_json={};
var submit_Datas_json={};//表单提交的数据
var bean_Datas_json={};
var curgriddata={};
var curindex="";
var seltreename="";//定义下拉树变量
function showIconForTree(treeId, treeNode) {
	return !treeNode.isParent;
}
$(document).ready(function(){
	initGridTable();
	initDate();//日期控件初始化
	if($("#jsonData").html()!=null&&$("#jsonData").html()!=""){		
		var jsonData = $.parseJSON($("#jsonData").html()); 
		initPage(jsonData);
		//initCheck();		
	}

})
/**
 * 初始化表格表头
 */
function initGridTable(){
	$("div.DataGrid").each(function(objindex,objitem) {
		var tabclass="";
		var tdstyle="";
		var gridname=$(objitem).attr("id");
	    var userdefine=$(objitem).attr("userdefine");
	    if(userdefine=="true"||userdefine==true){
	    	//$("#"+gridname+"_table").append("<tbody id='"+gridname+"_tbody'></tbody>");//后改TBODY初始化的时候就产生,觉得不改了
	    	return true;
	    }
		if($("#"+gridname+"").attr("css")){
			tabclass="class='"+$("#"+gridname+"").attr("css")+"'";
		}
		if($("#"+gridname+"").attr("caption")){
			$("#"+gridname+"").after("<div class='table-header'>"+$("#"+gridname+"").attr("caption")+"</div>");
			$("#"+gridname+"").next('div').after("<table id='"+gridname+"_table' "+tabclass+"><thead><tr id='"+gridname+"_thead_tr'></tr></thead></table>");
		}else{
			$("#"+gridname+"").after("<table id='"+gridname+"_table' "+tabclass+"><thead><tr id='"+gridname+"_thead_tr'></tr></thead></table>");
		}		
		var divs=$("#"+gridname+"").find("div");
		//var col = new Array();
		for(var i=0;i<divs.length;i++){
			if($($("#"+gridname+"").find("div").get(i)).attr("style")){
				tdstyle=$($("#"+gridname+"").find("div").get(i)).attr("style");
			}				
			//获取的是jquerry对象，attr是Jquerry对象属性，需要转化为jquerry对象才行
			//$("div[name="+gridname+"]").append("<th>"+$($("#"+gridname+"").find("div").get(i)).attr("caption")+"</th>");
			if($($("#"+gridname+"").find("div").get(i)).attr("isAll")=="true"){//当全选按钮时，表头增加按钮全选
				var checkname=$($("#"+gridname+"").find("div").get(i)).attr("name");
				/**$("#"+gridname+"_thead_tr").append("<th "+tdstyle+"><label><input onclick=\"checkAll(this,'"+gridname+"','"+checkname+"')\" type=\"checkbox\"/><i>?</i></label>"+
				$($("#"+gridname+"").find("div").get(i)).attr("caption")+"</th>");*/
				$("#"+gridname+"_thead_tr").append("<th style='"+tdstyle+"'><input onclick=\"checkAll(this,'"+gridname+"','"+checkname+"')\" type=\"checkbox\"/>"+					
				$($("#"+gridname+"").find("div").get(i)).attr("caption")+"</th>");
			}else{
				$("#"+gridname+"_thead_tr").append("<th style='"+tdstyle+"'><nobr>"+$($("#"+gridname+"").find("div").get(i)).attr("caption")+"</nobr></th>");
			}
			/**col[i]=$($("#"+gridname+"").find("div").get(i)).attr("name");
			//获取select的options
			if($(divs.get(i)).attr("type")=="select"){
				select[col[i]]=getGridSelect(col[i],selectNodes);
			}		*/	
			tdstyle="";
		}	
		//$("#"+gridname+"_table").append("<tbody id='"+gridname+"_tbody'></tbody>");//后改TBODY初始化的时候就产生,决定不改了
	})
}
function initPage(jsonData){
	/**
	 * ztree初始化加载，需要按照顺序动态加载
	 */
	var treeNodes=jsonData.tree;
	treeInit(treeNodes);
	/**
	 * 初始化下拉框
	 */
	var selectNodes=jsonData.select;
	selectInit(selectNodes);
	/**
	 * 初始化表单
	 */
	var formNodes=jsonData.form;
	formInit(formNodes);
	/**
	 * 初始化表格
	 */
	var gridNodes=jsonData.grid;
	gridInit(gridNodes,selectNodes);
}
function treeInit(treeNodes){
	//for(var item in treeNodes){
	for(var item=0;item<treeNodes.length;item++){
		var callback={};
		var check={};
		var setting={};
		var treename=treeNodes[item].TreeName;
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
				if($("#"+treename+"").attr("chkboxType")){
					check["chkboxType"]=JSON.parse($("#"+treename+"").attr("chkboxType"));
				}else{
					check["chkboxType"]={ "Y" : "s", "N" : "ps" };
				}	
				var checkArray = $("#"+treename+"").attr("check").split(',');  
				for(var i=0;i<checkArray.length;i++){
					//check[checkArray[i].split(':')[0]]=checkArray[i].split(':')[1];
					if(checkArray[i].split(',')=="enable:true"){
						check["enable"]=true;
					}else if(checkArray[i].split(',')=="chkStyle:'radio'"){
						check["chkStyle"]="radio";
					}else if(checkArray[i].split(',')=="radioType:'level'"){
						check["radioType"]="level";
					}else if(checkArray[i].split(',')=="radioType:'all'"){
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
			if($("#"+treename+"").attr("class")=="select_ztree"){//下拉树单独处理
				$("#"+treename+"").after("<input id=\""+treename+"_id\" type=\"text\" style=\"display:none\"/>");
				$("#"+treename+"").after("<a id=\""+treename+"Btn\" onclick=\"showSelectTree(this)\">选择</a>");
		        $("#ztreedrop").append("<div id=\""+treename+"Content\" class=\""+treename+"Content\" style=\"display:none; position: absolute;z-index:999\"></div>");
		        $("#"+treename+"Content").append("<ul id=\""+treename+"_ul\" class=\"ztree ztree2\" style=\"margin-top:0; width:200px;\"></ul>");
		        callback["onClick"]=onClickselTree;
		        callback["onCheck"]=onCheckTree;
		        setting["callback"]=callback;
		        $.fn.zTree.init($("#"+treename+"_ul"), setting, treeNodes[item].TreeData);
		        continue;
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
			$.fn.zTree.init($("#"+treename+""), setting, treeNodes[item].TreeData);	
		}
	}	
}
function selectInit(selectNodes){
	//for(var item in selectNodes){
	for(var item=0;item<selectNodes.length;item++){
		var selectname=selectNodes[item].SelectName;
		//先清空当前节点元素
		emptyObj(selectname,"select");
		var optionNodes=selectNodes[item].SelectData;
		if($("#"+selectname+"").attr("pid")){
			var parentSelectid=$("#"+selectname+"").attr("pid");
			$("#"+parentSelectid+"").attr("onclick","getChildSelect('"+selectname+"','"+JSON.stringify(selectNodes)+"')");	
			for(var item2=0;item2<optionNodes.length;item2++){
				$("#"+selectname+"").append("<option value='"+optionNodes[item2].code+"'>"+optionNodes[item2].caption+"</option>"); 		
			}				
		}else{
			//for(var item2 in optionNodes){
			for(var item2=0;item2<optionNodes.length;item2++){
				$("#"+selectname+"").append("<option value='"+optionNodes[item2].code+"'>"+optionNodes[item2].caption+"</option>"); 		
			}		
		}
	}		
}
function getChildSelect(childSelectId,selectNodesStr){
	var parentSelectid=$("#"+childSelectId+"").attr("pid");
	//先获取父节点被选中项
	var Selectedvalue=$("#"+parentSelectid+" option:selected").val();
	selectNodes=JSON.parse(selectNodesStr);
	for(var item=0;item<selectNodes.length;item++){
		var optionNodes=selectNodes[item].SelectData;
		if(childSelectId==selectNodes[item].SelectName){
			//先清空当子节点元素
			emptyObj(childSelectId,"select");
			for(var item2=0;item2<optionNodes.length;item2++){
				if(optionNodes[item2].pcode==Selectedvalue){
					$("#"+childSelectId+"").append("<option value='"+optionNodes[item2].code+"'>"+optionNodes[item2].caption+"</option>"); 
				}
			}		
		}
	}
}
function formInit(formNodes){
	//for(var item in formNodes){
	for(var item=0;item<formNodes.length;item++){
		var formname=formNodes[item].FormName;
		if($("#"+formname+"").length>0){
			//先清空当前节点元素
			emptyObj(formname,"form");			
			var formdata=formNodes[item].FormData;
			for(var key in formdata){
			//for(var key=0;key<formdata.length;key++){
				if($("#"+key+"")&&$("#"+key+"")[0]!=null){
					if($("#"+key+"")[0].type=="text"){
						if($("#"+key+"").attr("class")=="select_ztree"){//下拉树时只有查询代码即可，会自动转名称
							$("#"+formname+" input[id="+key+"]").val(findTreeNode(key+"_ul",formdata[key],"id","name"));
							$("#"+formname+" input[id="+key+"_id]").val(formdata[key]);
						}else{
							$("#"+formname+" input[id="+key+"]").val(formdata[key]);
						}						
						//$("#"+key+"").val(formdata[key]);
					}else if($("#"+key+"")[0].type=="textarea"){
						$("#"+formname+" textarea[id="+key+"]").val(formdata[key]);
						//$("#"+key+"").val(formdata[key]);
					}else if($("#"+key+"")[0].type=="select-one"){//下拉框选择初始化						
						$("#"+key+" option[value='"+formdata[key]+"']").attr("selected", "selected");
					}else{
						$("#"+key+"").html(formdata[key]);
					}					
				}else if($("input:checkbox[name='"+key+"']")&&$("input[name='"+key+"']")[0]!=null){
					if($("input[name='"+key+"']")[0].type=="checkbox"){//checkbox控件初始化
						checkvalueInit(key,formdata[key]);//checkbox数据初始化
					}else if($("input[name='"+key+"']")[0].type=="radio"){//radio控件初始化
						radiovalueInit(key,formdata[key]);//radio数据初始化
					}					
				}
			}	
		}		
	}	
}
/**
 * checkbox数据初始化
 * @param name
 * @param valuestr
 */
function checkvalueInit(name,valuestr){     
	  var str= new Array();	  
	  str=valuestr.split(",");      
	  for (i=0;i<str.length ;i++ ){   
		 $("input:checkbox[name='"+name+"'][value='"+str[i]+"']").attr('checked','true');
	  }   
}  
/**
 * radio数据初始化
 * @param name
 * @param valuestr
 */
function radiovalueInit(name,valuestr){        
	  var str= new Array();	  
	  str=valuestr.split(",");      
	  for (i=0;i<str.length ;i++ ){   
		 $("input:radio[name='"+name+"'][value='"+str[i]+"']").attr('checked','true');
	  }   
}  
function gridInit(gridNodes,selectNodes){
	var num="";
	//for(var item in gridNodes){
	for(var item=0;item<gridNodes.length;item++){
		var gridname=gridNodes[item].GridName;
		var linedata="";
		var onclick="";//点击事件
		var input="";//文本框内容
		var textarea="";//文本域
		var button="";//按钮
		var select={};//下拉框
		var tabclass="";
		var tdstyle="";//表格td样式
		var rows="";//textarea rows
		var cols="";//textarea cols
		var css="";//td内部元素的style
		var buttontype="";//按钮类型
		var colspan="";
		var rowspan=1;
		var objvalue="";
		var hbrows="";
		var checked="";
		if($("#"+gridname+"").length>0){
			//先清空当前节点元素
			emptyObj(gridname,"grid");
/**			if($("#"+gridname+"").attr("css")){
				tabclass="class='"+$("#"+gridname+"").attr("css")+"'";
			}
			if($("#"+gridname+"").attr("caption")){
				$("#"+gridname+"").after("<div class='table-header'>"+$("#"+gridname+"").attr("caption")+"</div>");
				$("#"+gridname+"").next('div').after("<table id='"+gridname+"_table' "+tabclass+"><thead><tr id='"+gridname+"_thead_tr'></tr></thead></table>");
			}else{
				$("#"+gridname+"").after("<table id='"+gridname+"_table' "+tabclass+"><thead><tr id='"+gridname+"_thead_tr'></tr></thead></table>");
			}	*/
			var griddatas=gridNodes[item].GridData;
			var divs=$("#"+gridname+"").find("div");
			var col = new Array();
			for(var i=0;i<divs.length;i++){
/**				if($($("#"+gridname+"").find("div").get(i)).attr("style")){
					tdstyle="style='"+$($("#"+gridname+"").find("div").get(i)).attr("style")+"'";
				}				
				if($($("#"+gridname+"").find("div").get(i)).attr("isAll")=="true"){//当全选按钮时，表头增加按钮全选
					var checkname=$($("#"+gridname+"").find("div").get(i)).attr("name");
					$("#"+gridname+"_thead_tr").append("<th "+tdstyle+"><input onclick=\"checkAll(this,'"+gridname+"','"+checkname+"')\" type=\"checkbox\"/>"+					
					$($("#"+gridname+"").find("div").get(i)).attr("caption")+"</th>");
				}else{
					$("#"+gridname+"_thead_tr").append("<th "+tdstyle+">"+$($("#"+gridname+"").find("div").get(i)).attr("caption")+"</th>");
				}*/
				col[i]=$($("#"+gridname+"").find("div").get(i)).attr("name");
				//获取select的options
				if($(divs.get(i)).attr("type")=="select"){
					if($(divs.get(i)).attr("datasrc")){
						select[col[i]]=getGridSelect2(col[i],$(divs.get(i)).attr("datasrc"));
					}else{
						select[col[i]]=getGridSelect(col[i],selectNodes);
					}					
				}				
			}
			$("#"+gridname+"_table").append("<tbody id='"+gridname+"_tbody'></tbody>");//后改TBODY初始化的时候就产生，决定不改了
			$.each(griddatas, function (index, griddata){
				//linedata="<tr><td style='display:none'>"+index+"</td>";
				linedata="<tr>";
				//for(var key in griddata){
				for(var i=0;i<divs.length;i++){
					if($(divs.get(i)).attr("style")){
						tdstyle=$(divs.get(i)).attr("style");
					}
					if($(divs.get(i)).attr("css")){
						css=$(divs.get(i)).attr("css");
					}	
					if($(divs.get(i)).attr("colspan")){
						colspan="colspan="+$(divs.get(i)).attr("colspan");
					}	
					if($(divs.get(i)).attr("hbrows")){
						hbrows=$(divs.get(i)).attr("hbrows");
						if(hbrows=="true"){
							if(griddata[col[i]]==objvalue){
								rowspan=rowspan+1;
								tdstyle="display:none;"+tdstyle;
							}else{
								objvalue=griddata[col[i]];
								if(rowspan>1){
									num=$("#"+gridname+"_tbody").find("td[name='"+col[i]+"']").size();
									$($("#"+gridname+"_tbody").find("td[name='"+col[i]+"']").get(num-rowspan)).attr("rowspan",rowspan);
									rowspan=1;
								}								
							}
						}
					}					
                    if($(divs.get(i)).attr("name")=="Index"){
                    	if($(divs.get(i)).attr("type")=="checkbox"||$(divs.get(i)).attr("type")=="radio"){
                    		if($(divs.get(i)).attr("delete")=="true"){
        						input="<input type='"+$(divs.get(i)).attr("type")+"' class=\""+gridname+"_check\" name='"+col[i]+
        						"' value='"+emptyUndefined(griddata[col[i]])+"' style='width:99%'/>";                    			
                    		}else{
        						input="<input type='"+$(divs.get(i)).attr("type")+"' name='"+col[i]+
        						"' value='"+emptyUndefined(griddata[col[i]])+"' style='width:99%'/>";	                    			
                    		}
                    		linedata=linedata+"<td style='"+tdstyle+";padding-left: 0px;padding-right: 10px;text-align:left'><nobr>"+input+index+"</nobr></td>";
                    	}else{
                    		linedata=linedata+"<td style='"+tdstyle+"'>"+index+"</td>";
                    	}                   	
                    	continue;
                    }
					if($(divs.get(i)).attr("onclick")){
						onclick=$(divs.get(i)).attr("onclick").replace("()", "(rowData)");
					}
					if($(divs.get(i)).attr("type")=="text"){
						input="<input type='text' value='"+emptyUndefined(griddata[col[i]])+"' name='"+col[i]+"' style=\"width:99%;"+css+"\" onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"'/>";
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+">"+input+"</td>";
					}else if($(divs.get(i)).attr("type")=="date"){
						input="<input type='text' value='"+emptyUndefined(griddata[col[i]])+"' name='"+col[i]+"' style=\"width:99%;"+css+"\" onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"'/>";
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+">"+initGridDateKj(gridname,col[i],input)+"</td>";						
					}else if($(divs.get(i)).attr("type")=="a"){
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+" onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"'><a name='"+col[i]+"'>"+emptyUndefined(griddata[col[i]])+"</a></td>";
					}else if($(divs.get(i)).attr("type")=="checkbox"||$(divs.get(i)).attr("type")=="radio"){//表格内的选择框采用自定义的，icheck不兼容
						/**input="<label><input type='"+$(divs.get(i)).attr("type")+"' name='"+$(divs.get(i)).attr("name")+
						"' value='"+griddata[col[i]]+"' style='width:100%'/><i>?</i></label>";*/
						if($(divs.get(i)).attr("autocheck")){
							if(emptyUndefined(griddata[col[i]])=="1"||emptyUndefined(griddata[col[i]])==1){
								checked="checked=true";
							}else{
								checked="";
							}							
						}
						if($(divs.get(i)).attr("delete")=="true"){
							input="<input type='"+$(divs.get(i)).attr("type")+"' class=\""+gridname+"_check\" name='"+col[i]+
							"' value='"+emptyUndefined(griddata[col[i]])+"'  "+checked+"/>";								
						}else{
							input="<input type='"+$(divs.get(i)).attr("type")+"' name='"+col[i]+
							"' value='"+emptyUndefined(griddata[col[i]])+"'  "+checked+"/>";								
						}					
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+">"+input+"</td>";
					}else if($(divs.get(i)).attr("type")=="select"){//表格内的下拉框
						var curselect=select[col[i]];
						curselect=curselect.replace("value='"+emptyUndefined(griddata[col[i]])+"'","value='"+emptyUndefined(griddata[col[i]])+"' selected");
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+" onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"'>"+curselect+"</td>";
					}else if($(divs.get(i)).attr("type")=="textarea"){//表格内的文本域
						if($(divs.get(i)).attr("rows")){
							rows=$(divs.get(i)).attr("rows");
						}	
						if($(divs.get(i)).attr("cols")){
							cols=$(divs.get(i)).attr("cols");
						}						
						textarea="<textarea  name='"+col[i]+"' rows=\""+rows+"\" cols=\""+cols+"\" onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"' style=\""+css+"\">"+emptyUndefined(griddata[col[i]])+"</textarea>";
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+">"+textarea+"</td>";						
					}else if($(divs.get(i)).attr("type")=="button"){//表格内的按钮	
						if($(divs.get(i)).attr("buttontype")){
							buttontype=$(divs.get(i)).attr("buttontype");
						}	
						button="<a class='btn btn-mini btn-info' onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"'><i class='"+buttontype+"'>"+$(divs.get(i)).attr("value")+"</i></a>";
						linedata=linedata+"<td style='"+tdstyle+"'>"+button+"</td>";	
					}else{
						linedata=linedata+"<td style='"+tdstyle+"' "+colspan+" name='"+col[i]+"'  onclick='selectIndex("+JSON.stringify(griddata)+","+index+");"+onclick+"'>"+emptyUndefined(griddata[col[i]])+"</td>";
					}	
					onclick="";//点击事件
					input="";//文本框内容
					textarea="";//文本域
					button="";//按钮
					tdstyle="";//表格td样式
					rows="";//textarea rows
					cols="";//textarea cols
					css="";//td内部元素的style
					buttontype="";//按钮类型
					colspan="";
				}
				//$("#"+gridname+"_tbody").append("</tr>");	
				linedata=linedata+"</tr>";
				$("#"+gridname+"_tbody").append(linedata);
			})
			/**
			if($("#"+gridname+"").attr("scroll")){				
				$("#"+gridname+"_tbody").wrap("<div style=\""+$("#"+gridname+"").attr("scroll")+"\"></div>");
			}*/
			//初始化日期控件
			var format="";
			for(var i=0;i<divs.length;i++){
				if($(divs.get(i)).attr("type")=="date"){
					if($(divs.get(i)).attr("format")){
						format=$(divs.get(i)).attr("format");
					}
					initGridDate(gridname,col[i],format);
				}				
			}			
		}
	}	
}
function getGridSelect(selectName,selectNodes){
	var select="<select name=\""+selectName+"\" >";
	for(var item=0;item<selectNodes.length;item++){
		if(selectNodes[item].SelectName==selectName){
			var optionNodes=selectNodes[item].SelectData;
			for(var item2=0;item2<optionNodes.length;item2++){
				select=select+"<option value='"+optionNodes[item2].code+"'>"+optionNodes[item2].caption+"</option>";	
			}		
		}
	}	
	select=select+"</select>";
	return select;
}
function getGridSelect2(selectName,datasrc){
	if(datasrc!=""&&datasrc!=null&&datasrc.indexOf("|")<0){
		var select="<select name=\""+selectName+"\" >";
		$.ajax({
			type: "post",
			url: getRootPath()+datasrc,
			async:false,
			data : "",		    	
			dataType:'json',
			success : function(responseText, textStatus, XMLHttpRequest) {				
				for(var item2=0;item2<responseText.length;item2++){
					select=select+"<option value='"+responseText[item2].code+"'>"+responseText[item2].caption+"</option>";	
				}								
			}
		});	
		select=select+"</select>";
		return select;
	}else{
		var select="<select name=\""+selectName+"\" >";
		for(var item=0;item<datasrc.split(",").length;item++){
			var optionNodes=datasrc.split(",")[item];
			select=select+"<option value='"+optionNodes.split("|")[0]+"'>"+optionNodes.split("|")[1]+"</option>";	
		}	
		select=select+"</select>";
		return select;		
	}
}
function ajaxInit(jsonData){
	/**
	 * ztree初始化加载，需要按照顺序动态加载
	 */
	var treeNodes=jsonData.tree;
	treeInit(treeNodes);
	/**
	 * 初始化下拉框
	 */
	var selectNodes=jsonData.select;
	selectInit(selectNodes);
	/**
	 * 初始化表单
	 */
	var formNodes=jsonData.form;
	formInit(formNodes);
	/**
	 * 初始化表格
	 */
	var gridNodes=jsonData.grid;
	gridInit(gridNodes,selectNodes);

}
function checkResponse(responseText) {
	try {
		if ("1" == responseText.code||"" == responseText.code) {
			return true;
		}
	} catch (e) {
		return false;
	}
	return false;
}
function $w(name){
	form_Datas_json={};
	grid_Datas_json={};
	submit_Datas_json={};
	tree_Datas_json={};
	bean_Datas_json={};
	this.name=name;
}
$w.prototype={
	   //三个参数，第一个调用的BLH名，第二个是调用后再次调用的方法
	   ajax:function(BLH,callback){
		    var dialog = bootbox.dialog({
			       message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
			       closeButton: false});		   
			$.ajax({
				type: "post",
				url: getRootPath()+BLH+'?tm='+new Date().getTime(),
				async : true,
//		    	data: submitData,
				data : {
					jsonData : $.toJSON({
								sessionId : "",
								form : form_Datas_json,
								grid : grid_Datas_json,
								data : submit_Datas_json,
								tree : tree_Datas_json,
								bean : bean_Datas_json
							})
				},		    	
				dataType:'json',
				//beforeSend: validateData,
				cache: false,
				timeout : sys_timeout,
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if (XMLHttpRequest.responseText.indexOf("script") != -1) {
						document.write(XMLHttpRequest.responseText);
					} else {
						if(XMLHttpRequest.responseText.msg!=""&&XMLHttpRequest.responseText.msg!=undefined&&XMLHttpRequest.responseText.msg!=null){
							Modal.sysAlert(responseText.msg);
						}						
					}
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					dialog.modal('hide');
					if (checkResponse(responseText)) {
						ajaxInit(responseText);
						if(responseText.msg!=null&&responseText.msg!=""){
							Modal.sysAlert(responseText.msg);
						}
				        if (typeof callback == "function"){
				            callback(responseText); 
				        }
					} else {
						Modal.sysAlert(responseText.msg);
					}
				}
			});		   
	   },
	   ajaxUpfile:function(BLH,formdate){
		    var dialog = bootbox.dialog({
			       message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
			       closeButton: false});		   
			$.ajax({
				type: "post",
				url: getFileURI()+BLH+'?tm='+new Date().getTime(),
				async : true,
//		    	data: submitData,
				data : formdate,	
				dataType: "json",
		        processData: false,
		        contentType: false,
		        enctype: 'multipart/form-data',
				//beforeSend: validateData,
				cache: false,
				timeout : sys_timeout,
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if (XMLHttpRequest.responseText.indexOf("script") != -1) {
						document.write(XMLHttpRequest.responseText);
					} else {
						if(XMLHttpRequest.responseText.msg!=""&&XMLHttpRequest.responseText.msg!=undefined&&XMLHttpRequest.responseText.msg!=null){
							Modal.sysAlert(responseText.msg);
						}						
					}
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					dialog.modal('hide');
					Modal.sysAlert("上传成功!");
				}				
			})		   
	   },	
	   uploadFile:function(BLH,formdate,callback){
		    var dialog = bootbox.dialog({
			       message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
			       closeButton: false});		   
			$.ajax({
				type: "post",
				url: getFileURI()+BLH+'?tm='+new Date().getTime(),
				async : true,
//		    	data: submitData,
				data : formdate,	
				dataType: "json",
		        processData: false,
		        contentType: false,
		        enctype: 'multipart/form-data',
				//beforeSend: validateData,
				cache: false,
				timeout : sys_timeout,
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if (XMLHttpRequest.responseText.indexOf("script") != -1) {
						document.write(XMLHttpRequest.responseText);
					} else {
						if(XMLHttpRequest.responseText.msg!=""&&XMLHttpRequest.responseText.msg!=undefined&&XMLHttpRequest.responseText.msg!=null){
							Modal.sysAlert(responseText.msg);
						}						
					}
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					dialog.modal('hide');
					Modal.sysAlert("上传成功!");
			        if (typeof callback == "function"){
			            callback(responseText); 
			        }
				}				
			})		   
	   },		   
	   Downfile:function(BLH,filePath){		   
           var iframe = document.createElement("iframe");
           iframe.src = getFileURI()+BLH+"?filePath="+encodeURIComponent(filePath);
           iframe.style.display = "none";
           document.body.appendChild(iframe);   
	   },
	   pushData:function(param,value){
		   if(typeof value=="undefined"){
			   delete submit_Datas_json[param];
		   }else{
			   submit_Datas_json[param]=value;
		   }   
	   },
	   pushForm:function(formName){
		   var formData={};
		   var beanKey=[];
		   if(typeof formName=="undefined"){
			   delete form_Datas_json[formName];
		   }else{
			   //获取表格的所有数据,遍历每一个可能的form元素
			   $("#"+formName+"").find("input").each(function(objindex,objitem){//获取input元素的值
				   if(objitem.type=="text"){
					   if($(objitem).attr("id").indexOf("tree_id")>0&&
						 ($("#"+$(objitem).attr("id").replace("_id","")).val()==""||$("#"+$(objitem).attr("id").replace("_id","")).val()==null)){
						   $(objitem).val("");
					   }
					   beanKey.push($(objitem).attr("id"));
					   formData[$(objitem).attr("id")]= $(objitem).val();		   
				   }else if(objitem.type=="checkbox"||objitem.type=="radio"){	
					   //alert(formData[$(objitem).attr("name")]);
					   if(objitem.checked==true){
						   if(typeof formData[$(objitem).attr("name")]!="undefined"){
							   formData[$(objitem).attr("name")]=formData[$(objitem).attr("name")]+","+$(objitem).val();
						   }else{
							  beanKey.push($(objitem).attr("name"));
							  formData[$(objitem).attr("name")]=$(objitem).val();
						   }						   
					   }					   
				   }
			   });
			   //unique2(beanKey);//去掉重复项，针对checkbox和radio的处理			   
			   $("#"+formName+"").find("select").each(function(objindex,objitem){//获取select元素选中的值
				   beanKey.push($(objitem).attr("id"));
				   var selectedvalue=$("#"+$(objitem).attr("id")+" option:selected").val();
				   if(selectedvalue==undefined||selectedvalue==null||selectedvalue=="undefined"){
					   selectedvalue="";
				   }
				   formData[$(objitem).attr("id")]= selectedvalue;
			   });
			   $("#"+formName+"").find("textarea").each(function(objindex,objitem){//获取textarea元素的值
				   beanKey.push($(objitem).attr("id"));
				   formData[$(objitem).attr("id")]= $(objitem).val();
			   });			   
			   formData["beanKey"]=beanKey;
			   form_Datas_json[formName]=formData;
		   }		   
	   },
	   pushGrid:function(gridName){
		   var beanKey=[];
		   var gridData=[];
		   if(typeof gridName=="undefined"){
			   delete grid_Datas_json[gridName];
		   }else{
			   //获取表格列
			   $("#"+gridName).find("div").each(function(objindex,objitem) {
				   beanKey.push($(objitem).attr("name"));
			   });
			   bean_Datas_json[gridName]=beanKey;
			   //获取表格的所有数据
			   $("#"+gridName+"_tbody").find("tr").each(function(trindex,tritem){//遍历每一行
			       var linedata=getLineData(tritem,gridName);
			       gridData.push(linedata);
			   });	
			   grid_Datas_json[gridName]=gridData;
		   } 
	   },	
	   pushAllcheckedGrid:function(gridName){
		   var checkname=getCheckName(gridName);
		   var beanKey=[];
		   var gridData=[];
		   if(typeof gridName=="undefined"){
			   delete grid_Datas_json[gridName];
		   }else{
			   //获取表格列
			   $("#"+gridName).find("div").each(function(objindex,objitem) {
				   beanKey.push($(objitem).attr("name"));
			   });
			   bean_Datas_json[gridName]=beanKey;			   
			   //获取表格的所有数据
			   $("#"+gridName+"_tbody").find("tr").each(function(trindex,tritem){//遍历每一行
				   if($("input:checkbox[name='"+checkname+"']")[trindex].checked){
				       var linedata=getLineData(tritem,gridName);
				       gridData.push(linedata);					   
				   }
			   });	
			   grid_Datas_json[gridName]=gridData;
		   } 
	   },
	   pushAllcheckedTree:function(treeName){
		   var treenodes=getCheckedNodes(treeName);
		   if(typeof treeName=="undefined"){
			   delete tree_Datas_json[treeName];
		   }else{	
			   tree_Datas_json[treeName]=treenodes;
		   } 
	   }	   
}
function getCheckName(gridName){
	var checkname="";
	 $("#"+gridName+"").find("div").each(function(divindex,divitem){
		 if($(divitem).attr("type")=="checkbox"){
			 checkname= $(divitem).attr("name");
		 }
	 })
	 return checkname;
}
/**
 * 根据行对象，和表格名获取当前行的每一列数据，其中td里面的元素不确定，需要手工判断
 */
function getLineData(tritem,gridName){
	var linedata={};
	var col = new Array();
	col=getColName(gridName);
    $(tritem).find("td").each(function(tdindex,tditem){//遍历每一列
    	if(tditem.hasChildNodes()){  		
    		if($(tditem).find("a").size()>0){
    			linedata[col[tdindex]]=$(tditem).find("a").text();
    		}else if($(tditem).find("input:checkbox").size()>0){
    			if($(tditem).find("input:checkbox[name='"+col[tdindex]+"']").get(0).checked){
    				linedata[col[tdindex]]="1";
    			}else{
    				linedata[col[tdindex]]="0";
    			}
    		}else if($(tditem).find("input").size()>0){
    			linedata[col[tdindex]]=$(tditem).find("input").val();
    		}else if($(tditem).find("select").size()>0){
    			linedata[col[tdindex]]=$(tditem).find("select option:selected").val();
    		}else if($(tditem).find("textarea").size()>0){
    			linedata[col[tdindex]]=$(tditem).find("textarea").val();
    		}else{
    			linedata[col[tdindex]]=$(tditem).html();
    		}
    	}else{
    		linedata[col[tdindex]]=$(tditem).text();
    	}	   
    });
    return linedata;
}
function getColName(gridName){
	var divs=$("#"+gridName+"").find("div");
	var col = new Array();
	//col[0]="index";
	for(var i=0;i<divs.length;i++){
		col[i]=$($("#"+gridName+"").find("div").get(i)).attr("name");
	}
	return col;
}
function getJson(){
	//submitData=$("jsonData").html();
	return submitData;	
}

var Modal={
		sysDialog:function(mes,title,size){
/**			   bootbox.dialog(mes, 
						[
						  {
							"label" : label,
							"class" : "btn-small btn-success",
							"callback": function() {
									if (typeof callback == "function"){
										callback(); 
									}								   
								}
							}
						 ]
					);	**/
					bootbox.dialog({
						size:size,
						message : mes,
						title : title
/**						buttons : {
							Cancel : {
								label : "取消",
								className : "btn-default",
								callback : function(result) {
									if (typeof callback == "function") {
										callback(result);
									}
								}
							},
							OK : {
								label : "确定",
								className : "btn-primary",
								callback : function(result) {
									if (typeof callback == "function") {
										callback(result);
									}
								}
							}
						}**/
					});	
		},
		sysAlert:function(mes,callback,title,size){
/**			   bootbox.alert(mes, function() {
				   if (typeof callback == "function"){
					   callback();
				   }			   
			   });	**/
			   bootbox.alert({ 
				    size: size,
				    message:mes, 
				    title:title,
				    callback: function(){ 
					   if (typeof callback == "function"){
						   callback();
					   }				    	
				    }
			   });			   
		},
		sysConfirm:function(mes,callback,title,size){
/**			   bootbox.confirm(mes, function (result) {
				   if (typeof callback == "function"){
					   callback(result);
				   }				   
		        });	**/
			bootbox.confirm({ 
			    //size: 'small',
				size: size,
			    message: mes, 
			    title : title,
			    callback: function(result){
					   if (typeof callback == "function"){
						   callback(result);
					   }				    	
			    }
			})			
		},
		sysPrompt:function(mes,callback){
		   bootbox.prompt(mes, function(result) {
				   if (typeof callback == "function"){
					   callback(result);
				   }				     
			  });		
		},
		proShow:function(){
		    progressbar_dialog = bootbox.dialog({
		    	message: "<div class=\"progress progress-striped active\">"+
		    		"<div class=\"progress-bar progress-bar-success\" role=\"progressbar\" aria-valuenow=\"60\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 100%;\">"
		   		    +"</div></div>"+
		   		 "<p class=\"text-center\">执行中...</p>",
		    	closeButton: false
		    });		
		},
		proHide:function(){
			progressbar_dialog.modal('hide');	
		}		
}
function Modal(mes){
	
	   bootbox.dialog("您没有选择任何内容!", 
				[
				  {
					"label" : "关闭",
					"class" : "btn-small btn-success",
					"callback": function() {
						//Example.show("great success");
						}
					}
				 ]
			);	
	   bootbox.alert("Hello world!", function() {
		   Example.show("Hello world callback");
		   });
	   
	   bootbox.confirm("您确认删除选定的记录吗？", function (result) {
           if (result) {
               //最后去掉最后的逗号,
               ids = ids.substring(0, ids.length - 1);

               //然后发送异步请求的信息到后台删除数据
               var postData = { Ids: ids };
               $.get("/Province/DeletebyIds", postData, function (json) {
                   var data = $.parseJSON(json);
                   if (data.Success) {
                       showTips("删除选定的记录成功");
                       Refresh();//刷新页面数据
                   }
                   else {
                       showTips(data.ErrorMessage);
                   }
               });
           }
        });
	   
	   bootbox.prompt("What is your name?", function(result) {
		   if (result === null) {
		      Example.show("Prompt dismissed");
		   } else {
		      Example.show("Hi <b>"+result+"</b>");
		   }
		   });	   
}
function selectIndex(griddata,index){
    //alert(e.type);
	curgriddata=griddata;
	curindex=index;
	//alert($(e).parentsUntil("tr").html());
}
var rowData={
		getValue:function(divName){	
			return curgriddata[divName];		
		},
		getVal:function(divName){	
			return document.getElementsByName(divName)[curindex+1].value;		
		},		
		setValue:function(divName,divValue){
			
		}
}
function openMaxWindow(url) {
	var winheight = screen.availHeight - 55;
	var winwidth = screen.availWidth - 10;
	var param = "height="
			+ winheight
			+ ",width="
			+ winwidth
			+ ",top=0,left=0,toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no,titlebar=no";
	window.open(url, "", param);
}
function openDialog(title,url,width,height){
	 var diag = new top.Dialog();
	 diag.Drag = true;
	 diag.Title =title;
	 diag.URL = url;
	 diag.Width = width;
	 diag.Height = height;
	 diag.show();
}
/**************************************下拉树的封装**************************************************************/
function onClickselTree(e, treeId, treeNode) {
	var zTree = $.fn.zTree.getZTreeObj(seltreename+"_ul"),
	nodes = zTree.getSelectedNodes(),
	v = "";
	c="";
	nodes.sort(function compare(a,b){return a.id-b.id;});
	for (var i=0, l=nodes.length; i<l; i++) {
		v += nodes[i].name + ",";
		c +=nodes[i].id + ",";
	}
	if (v.length > 0 ) v = v.substring(0, v.length-1);
	if (c.length > 0 ) c = c.substring(0, c.length-1);
	/**
	var selObj = $("#"+seltreename+"");
	selObj.attr("value", v);
	var selObjId = $("#"+seltreename+"_id");
	selObjId.attr("value", c);*/
	var checkstr="";
	if($("#"+seltreename+"").attr("check")){
		checkstr=$("#"+seltreename+"").attr("check");
	}
	if(checkstr.indexOf("enable:true")>=0){
	  null;
	}else{
		$("#"+seltreename).val(v);
		$("#"+seltreename+"_id").val(c);
	}
	if($("#"+seltreename+"").attr("onclick")){
		var clickfunction=eval($.trim($("#"+seltreename+"").attr("onclick").replace(/[()]/g, "")));
		clickfunction(e, treeId, treeNode);		
	}
}
function onCheckTree(e, treeId, treeNode){
	var zTree = $.fn.zTree.getZTreeObj(seltreename+"_ul"),
	nodes = zTree.getCheckedNodes(true),
	v = "";
	c="";
	for (var i=0, l=nodes.length; i<l; i++) {
		v += nodes[i].name + ",";
		c +=nodes[i].id + ",";
	}
	if (v.length > 0 ) v = v.substring(0, v.length-1);
	if (c.length > 0 ) c = c.substring(0, c.length-1);
	var treeObj = $("#"+seltreename);
	treeObj.attr("value", v);	
	$("#"+seltreename+"_id").val(c);
}
function showSelectTree(e) {
	seltreename=e.id.replace("Btn","");
	var selObj = $("#"+seltreename+"");
	var cityOffset = $("#"+seltreename+"").offset();
	$("#"+seltreename+"Content").css({left:cityOffset.left + "px", top:cityOffset.top + selObj.outerHeight() + "px"}).slideDown("fast");
	$("body").bind("mousedown", onBodyDown);
	//$("document").bind("mousedown", onBodyDown);
	selObj.bind("onchange", clearValue);
}
function hideSelectTree() {
	$("#"+seltreename+"Content").fadeOut("fast");
	$("body").unbind("mousedown", onBodyDown);
	//$("document").unbind("mousedown", onBodyDown);
}
function onBodyDown(event) {
	if (!(event.target.id == ""+seltreename+"Btn" || event.target.id == ""+seltreename+"Content" || $(event.target).parents("#"+seltreename+"Content").length>0)) {
		hideSelectTree();
	}
}
function clearValue(){
	if($("#"+seltreename+"").val()==""|| $("#"+seltreename+"")==null){
		$("#"+seltreename+"_id").val("");
	}
}
//--获取选择的树节点----------------------
function getCheckedNodes(treename){
	var zTree = $.fn.zTree.getZTreeObj(treename);
	nodes = zTree.getCheckedNodes();
	return nodes;
}
function getSelectedNodes(treename){
	var zTree = $.fn.zTree.getZTreeObj(treename);
	nodes = zTree.getSelectedNodes();
	return nodes;
}
//----树过滤器--------------
function treefilter(treeId, parentNode, childNodes) {
	if (!childNodes) return null;
	for (var i=0, l=childNodes.length; i<l; i++) {
		childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
	}
	return childNodes;
}
//--根据属性key1的key1value获取key2的value----------------------
function findTreeNode(treename,key1value,key1,key2){
	var zTreeinit = $.fn.zTree.getZTreeObj(treename);
	var treenodeinit = zTreeinit.getNodeByParam(key1, key1value);	
	if(treenodeinit!=null){
		if(key2=="name"){
			return treenodeinit.name;
		}else{
			return treenodeinit;
		}		
	}else{
		return "";
	}
	
}
/**************************************下拉树的封装结束***************************************************************/
/****************************日期控件初始化*****************************/
function initDate(){
	var v_startView=2;
	var v_minView=2;
	var dateformat="yyyy-mm-dd";
	$("input.date").each(function(objindex,objitem) {
		//$(objitem).wrap("<div class=\"input-group date form_date \" data-date-format=\""+$(objitem).attr("data-date-format")+"\" data-link-format=\""+$(objitem).attr("data-link-format")+"\"></div>");
		$(objitem).wrap("<div class=\"input-group date form_date \"></div>");
		$(objitem).after("<span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-calendar icon-calendar\"></span></span>");
		$(objitem).after("<span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-remove icon-remove\"></span></span>");	
		if($(objitem).attr("format")){
			dateformat=$(objitem).attr("format");
		}	
		if(dateformat.replace("-","")=="yyyy"){
			v_startView=4;
			v_minView=4;			
		}else if(dateformat.replace("-","")=="yyyymm"){
			v_startView=3;
			v_minView=3;			
		}else{
			v_startView=2;
			v_minView=2;
		}
		$(objitem).parent().datetimepicker({
			format:dateformat,  
	        language: 'zh-CN',
	        weekStart: 1,
	        todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: v_startView,
			minView: v_minView,
			forceParse: 0
	    });			
	})
}
function initGridDateKj(gridname,divname,input){
	//$(objitem).wrap("<div class=\"input-group date form_date \" data-date-format=\""+$(objitem).attr("data-date-format")+"\" data-link-format=\""+$(objitem).attr("data-link-format")+"\"></div>");
	input=input+"<span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-calendar icon-calendar\"></span></span>";
	input=input+"<span class=\"input-group-addon\"><span class=\"glyphicon glyphicon-remove icon-remove\"></span></span>";	
	input="<div name=\""+gridname+"_"+divname+"_date\" class=\"input-group date form_date \">"+input+"</div>";	
	return input;
}
function initGridDate(gridname,divname,format){
	var v_startView=2;
	var v_minView=2;
	var dateformat="yyyy-mm-dd";
	if(format!=null&&format!=""&&format!=undefined){
		dateformat=format;
	}
	if(dateformat.replace("-","")=="yyyy"){
		v_startView=4;
		v_minView=4;			
	}else if(dateformat.replace("-","")=="yyyymm"){
		v_startView=3;
		v_minView=3;			
	}else{
		v_startView=2;
		v_minView=2;
	}	
	$("div[name='"+gridname+"_"+divname+"_date']").datetimepicker({
		format:dateformat,  
        language: 'zh-CN',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: v_startView,
		minView: v_minView,
		forceParse: 0
    });		
}
/***************************日期控件初始化结束***************************************/
/******************表格新增删除开始*******************************/
function addGridRow(gridname){
		var onclick="";//点击事件
		var input="";//文本框内容
		var textarea="";//文本域
		var button="";//按钮
		var select={};//下拉框
		var tabclass="";
		var tdstyle="";//表格td样式
		var rows="";//textarea rows
		var cols="";//textarea cols
		var css="";//td内部元素的style
		var buttontype="";//按钮类型	
		var jsonData = $.parseJSON($("#jsonData").html());
		var selectNodes=jsonData.select;
	    var divs=$("#"+gridname+"").find("div");
	    var col = new Array();
		for(var i=0;i<divs.length;i++){
			col[i]=$($("#"+gridname+"").find("div").get(i)).attr("name");
							//获取select的options
			if($(divs.get(i)).attr("type")=="select"){
				//select[col[i]]=getGridSelect(col[i],selectNodes);
				if($(divs.get(i)).attr("datasrc")){
					select[col[i]]=getGridSelect2(col[i],$(divs.get(i)).attr("datasrc"));
				}else{
					select[col[i]]=getGridSelect(col[i],selectNodes);
				}				
			}				
		}	
		if($("#"+gridname+"_tbody").html()==undefined){
			$("#"+gridname+"_table").append("<tbody id='"+gridname+"_tbody'></tbody>");//后改TBODY初始化的时候就产生，觉得不改了
		}		
		var linedata="<tr>";
		for(var i=0;i<divs.length;i++){
			if($(divs.get(i)).attr("style")){
				tdstyle=$(divs.get(i)).attr("style");
			}
			if($(divs.get(i)).attr("css")){
				css=$(divs.get(i)).attr("css");
			}				
          /**  if($(divs.get(i)).attr("name")=="Index"){
            	linedata=linedata+"<td style='"+tdstyle+"'>"+index+"</td>";
            	continue;
            }
			if($(divs.get(i)).attr("onclick")){
				onclick=$(divs.get(i)).attr("onclick").replace("()", "(rowData)");
			}*/
			if($(divs.get(i)).attr("onclick")){
				onclick=$(divs.get(i)).attr("onclick").replace("()", "(rowData)");
			}			
			if($(divs.get(i)).attr("type")=="text"){
				input="<input type='text'  name='"+col[i]+"' style=\""+css+"\" onclick='"+onclick+"'/>";
				linedata=linedata+"<td style='"+tdstyle+"'>"+input+"</td>";
			}else if($(divs.get(i)).attr("type")=="date"){
				input="<input type='text'  name='"+col[i]+"' style=\""+css+"\" onclick='"+onclick+"'/>";
				linedata=linedata+"<td style='"+tdstyle+"'>"+initGridDateKj(gridname,col[i],input)+"</td>";						
			}else if($(divs.get(i)).attr("type")=="a"){
				linedata=linedata+"<td style='"+tdstyle+"' onclick='"+onclick+"'><a name='"+col[i]+"'></a></td>";
			}else if($(divs.get(i)).attr("type")=="checkbox"||$(divs.get(i)).attr("type")=="radio"){//表格内的选择框采用自定义的，icheck不兼容
				/**input="<label><input type='"+$(divs.get(i)).attr("type")+"' name='"+$(divs.get(i)).attr("name")+
				"' value='"+griddata[col[i]]+"' style='width:100%'/><i>?</i></label>";*/
				if($(divs.get(i)).attr("delete")=="true"){
					input="<input type='"+$(divs.get(i)).attr("type")+"' class=\""+gridname+"_check\" name='"+col[i]+"'  />";
				}else{
					input="<input type='"+$(divs.get(i)).attr("type")+"' name='"+col[i]+"'  />";						
				}					
				linedata=linedata+"<td style='"+tdstyle+"'>"+input+"</td>";
			}else if($(divs.get(i)).attr("type")=="select"){//表格内的下拉框
				var curselect=select[col[i]];
				linedata=linedata+"<td style='"+tdstyle+"' onclick='"+onclick+"'>"+curselect+"</td>";
			}else if($(divs.get(i)).attr("type")=="textarea"){//表格内的文本域
				if($(divs.get(i)).attr("rows")){
					rows=$(divs.get(i)).attr("rows");
				}	
				if($(divs.get(i)).attr("cols")){
					cols=$(divs.get(i)).attr("cols");
				}						
				textarea="<textarea  name='"+col[i]+"' rows=\""+rows+"\" cols=\""+cols+"\" onclick='"+onclick+"' style=\""+css+"\"></textarea>";
				linedata=linedata+"<td style='"+tdstyle+"'>"+textarea+"</td>";						
			}else if($(divs.get(i)).attr("type")=="button"){//表格内的按钮	
				if($(divs.get(i)).attr("buttontype")){
					buttontype=$(divs.get(i)).attr("buttontype");
				}	
				button="<a class='btn btn-mini btn-info' onclick='"+onclick+"'><i class='"+buttontype+"'>"+$(divs.get(i)).attr("value")+"</i></a>";
				linedata=linedata+"<td style='"+tdstyle+"'>"+button+"</td>";	
			}else{
				linedata=linedata+"<td style='"+tdstyle+"' name='"+col[i]+"'  onclick='"+onclick+"'></td>";
			}
			onclick="";//点击事件
			input="";//文本框内容
			textarea="";//文本域
			button="";//按钮
			tdstyle="";//表格td样式
			rows="";//textarea rows
			cols="";//textarea cols
			css="";//td内部元素的style
			buttontype="";//按钮类型			
		}
		//$("#"+gridname+"_tbody").append("</tr>");	
		linedata=linedata+"</tr>";
		$("#"+gridname+"_tbody").append(linedata);
		//初始化日期控件
		var format="";
		for(var i=0;i<divs.length;i++){
			if($(divs.get(i)).attr("type")=="date"){
				if($(divs.get(i)).attr("format")){
					format=$(divs.get(i)).attr("format");
				}
				initGridDate(gridname,col[i],format);
			}				
		}		
}
function deleteGridRow(gridname){
	var deleterow=0;
	$("#"+gridname+"_tbody").find("tr").each(function(objindex,objitem) {
	  //if($("."+gridname+"_check").get(objindex)!=null&&$("."+gridname+"_check").get(objindex).checked){
	  if($(objitem).find("."+gridname+"_check").get(0).checked){
		  $(objitem).remove();
		  deleterow=1;
	  }		
	})
	if(deleterow==0){
		Modal.sysAlert("请选择要删除的数据!");
	}
}
/*******************表格新增删除结束*********************************/

function Refresh(){
	//location.reload();	
	window.location.reload();
}