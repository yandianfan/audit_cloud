function getRootPath(){  
    //获取当前网址，如： http://localhost:8083/uimcardprj/share/meun.jsp  
    var curWwwPath=window.document.location.href;  
    //获取主机地址之后的目录，如： uimcardprj/share/meun.jsp  
    var pathName=window.document.location.pathname;  
    var pos=curWwwPath.indexOf(pathName);  
    //获取主机地址，如： http://localhost:8083  
    var localhostPaht=curWwwPath.substring(0,pos);  
    //获取带"/"的项目名，如：/uimcardprj  
    var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
    return(localhostPaht+projectName);  
}  	
//新增
	function addmenu(){
		 top.jzts();
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="新增菜单";
		 diag.URL = '<%=basePath%>menu/toAdd.do';
		 diag.Width = 223;
		 diag.Height = 256;
		 diag.CancelEvent = function(){ //关闭事件
			if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
				top.jzts(); 
				setTimeout("location.reload()",100);
			}
			diag.close();
		 };
		 diag.show();
	}
	
	
	//编辑顶部菜单图标
	function editTb(menuId){
		 top.jzts();
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑图标";
		 diag.URL = '<%=basePath%>menu/toEditicon.do?MENU_ID='+menuId;
		 diag.Width = 530;
		 diag.Height = 150;
		 diag.CancelEvent = function(){ //关闭事件
			if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
				top.jzts(); 
				setTimeout("location.reload()",100);
			}
			diag.close();
		 };
		 diag.show();
	}
	
	function delmenu(menuId,isParent){
		var flag = false;
		if(isParent){
			if(confirm("确定要删除该菜单吗？其下子菜单将一并删除！")){
				flag = true;
			}
		}else{
			if(confirm("确定要删除该菜单吗？")){
				flag = true;
			}
		}
		if(flag){
			top.jzts();
			var url = "<%=basePath%>menu/del.do?MENU_ID="+menuId+"&guid="+new Date().getTime();
			$.get(url,function(data){
				top.jzts();
				document.location.reload();
			});
		}
	}
	
	function openClose(SJXXH,LSH,curObj,trIndex,trcc){
		var txt = $(curObj).text();
		if(txt=="展开"){
			$(curObj).text("折叠");
			$("#tr"+SJXXH).after("<tr id='tempTr"+SJXXH+"'><td colspan='5'>数据载入中</td></tr>");
			//$("#tr"+SJXXH).after("<tr id='tempTr"+SJXXH+"'></tr>");
			if(trIndex%2==0){
				$("#tempTr"+SJXXH).addClass("main_table_even");
			}
			var url = getRootPath()+"/sjywhCtrl/sub.do?SJX_XH="+SJXXH+"&LSH="+LSH+"&guid="+new Date().getTime();
			$.get(url,function(data){
				if(data.length>0){
					var html = "";
					$.each(data,function(i){
					//debugger;
						html = "<tr style='height:24px;line-height:24px;' id='tr"+this.SJX_XH+"'>";
						html += "<td></td>";
						html += "<td>";		
						if(trcc==1){
						  html +="&nbsp&nbsp&nbsp";
						}				
						if(i==data.length-1){
						  html += "<img src='static/images/joinbottom.gif' style='vertical-align: middle;'/>";
						}else{
						  html += "<img src='static/images/join.gif' style='vertical-align: middle;'/>";
						}	
						html += "<span style='display:inline-block;'>"+this.SJX_XH+"</span>";
						html += "</td>";					
						html += "<td><span style='text-align:left;display:inline-block;'>"+this.SJX_MC+"</span></td>";
						html += "<td>"+this.KMCODE+"</span></td>";				
						html += "<td>"+this.KMNAME+"</span></td>";
						html += "<td><span style='text-align:left;display:inline-block;'>"+this.HZSJX_MC+"</span></td>";
						html += "<td><input type='text' style='width:85%'  name='"+this.s_jfye+"'/></td>";
						html += "<td><input type='text' style='width:85%'  name='"+this.s_dfye+"'/></td>";
						html += "<td><input type='text' style='width:85%'  name='"+this.b_jffs+"'/></td>";
						html += "<td><input type='text' style='width:85%'  name='"+this.b_dffs+"'/></td>";
						html += "<td><input type='text' style='width:85%'  name='"+this.e_jfye+"'/></td>";
						html += "<td><input type='text' style='width:85%'  name='"+this.e_dfye+"'/></td>";
						//html += "<td><input type='text' style='width:85%'  name='"+this.SJX_VALUE+"'/>&nbsp<a class='btn btn-mini btn-info' title='编辑' onclick='editsjxvalue(this,\""+this.LSH+"\",\""+this.SJX_XH+"\")'><i class='icon-edit'></i></a></td>";
						if(this.PARENT=="1"){
						  html += "<td>";
						  //html +="<td><a class='btn btn-mini btn-info' title='匹配' onclick='editsjxvalue(this,\""+this.LSH+"\",\""+this.SJX_XH+"\")'>匹配</a>";
						  //html +="<a class='btn btn-mini btn-warning' title='解除' onclick='delesjxvalue(this,\""+this.LSH+"\",\""+this.SJX_XH+"\")'>解除</a>";
						  html += "<a class='btn btn-mini btn-warning' onclick='openClose(\""+this.SJX_XH+"\",\""+this.LSH+"\",this,"+trIndex+","+(trcc+1)+")' >展开</a></td>";
						}else{
						  html += "<td></td>";
						  //html +="<td><a class='btn btn-mini btn-info' title='匹配' onclick='editsjxvalue(this,\""+this.LSH+"\",\""+this.SJX_XH+"\")'>匹配</a> ";
						  //html +="<a class='btn btn-mini btn-warning' title='编辑' onclick='delesjxvalue(this,\""+this.LSH+"\",\""+this.SJX_XH+"\")'>解除</a></td>";
						}						
						//html += "<td class='center'><input type='text' name='"+this.YSSJX_MC+"'/><a class='btn btn-mini btn-info' title='编辑' onclick='editmenu(\""+this.SJX_XH+"\")'><i class='icon-edit'></i></a></td>";
						//html += "<td><a class='btn btn-mini btn-info' title='编辑' onclick='editmenu(\""+this.SJX_XH+"\")'><i class='icon-edit'></i></a> <a class='btn btn-mini btn-danger' title='删除' onclick='delmenu(\""+this.SJX_XH+"\",false)'><i class='icon-trash'></i></a></td>";
						html += "</tr>";
						$("#tempTr"+SJXXH).before(html);
					});
					$("#tempTr"+SJXXH).remove();
					if(trIndex%2==0){
						$("tr[name='tr"+SJXXH+"']").addClass("main_table_even");
					}
				}
			},"json");
		}else{
			$("#tempTr"+SJXXH).remove();
			$("tr[id^='tr"+SJXXH+"-']").remove();
			$(curObj).text("展开");
		}
	}
	
	function editsjxvalue(e,lsh,sjxxh){
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑菜单";
		 diag.URL = getRootPath()+'/BLH/sjywhBLH_initWpp&lsh='+lsh+'&sjxxh='+sjxxh;
	     diag.Width = 1300;
	     diag.Height = 800;
		 diag.CancelEvent = function(){ //关闭事件
			    //setTimeout("location.reload()",100);
			 if(diag.innerFrame.contentWindow.document.getElementById('s_jfyeZ').value!=""){
				 $(e).parent().parent().find("input[name='s_jfye']").val(diag.innerFrame.contentWindow.document.getElementById('s_jfyeZ').value);
				 $(e).parent().parent().find("input[name='s_dfye']").val(diag.innerFrame.contentWindow.document.getElementById('s_dfyeZ').value);
				 $(e).parent().parent().find("input[name='b_jffs']").val(diag.innerFrame.contentWindow.document.getElementById('b_jffsZ').value);
				 $(e).parent().parent().find("input[name='b_dffs']").val(diag.innerFrame.contentWindow.document.getElementById('b_dffsZ').value);
				 $(e).parent().parent().find("input[name='e_jfye']").val(diag.innerFrame.contentWindow.document.getElementById('e_jfyeZ').value);
				 $(e).parent().parent().find("input[name='e_dfye']").val(diag.innerFrame.contentWindow.document.getElementById('e_dfyeZ').value);
				 $(e).parent().parent().find("td[name='kmcode']").text(diag.innerFrame.contentWindow.document.getElementById('kmcodeZ').value);
				 $(e).parent().parent().find("td[name='kmname']").text(diag.innerFrame.contentWindow.document.getElementById('kmnameZ').value);
			 }			    
			 diag.close();
		 };
		 diag.show();
	}
	
	function delesjxvalue(e,lsh,sjxxh){
		var kmcode=$(e).parent().parent().find("td[name='kmcode']").text();
		//var url = getRootPath()+"/sjywhCtrl/jcSjx.do?SJX_XH="+sjxxh+"&LSH="+lsh+"&kmcode="+kmcode+"&guid="+new Date().getTime();
		$.ajax({
			type: "POST",
			url: getRootPath()+'/sjywhCtrl/jcSjx.do',
	    	data: {SJX_XH:sjxxh,LSH:lsh,kmcode:kmcode,tm:new Date().getTime()},
			dataType:'json',
			cache: false,
			success: function(data){
				 $(e).parent().parent().find("input[name='s_jfye']").val("");
				 $(e).parent().parent().find("input[name='s_dfye']").val("");
				 $(e).parent().parent().find("input[name='b_jffs']").val("");
				 $(e).parent().parent().find("input[name='b_dffs']").val("");
				 $(e).parent().parent().find("input[name='e_jfye']").val("");
				 $(e).parent().parent().find("input[name='e_dfye']").val("");
				 $(e).parent().parent().find("td[name='kmcode']").text("");
				 $(e).parent().parent().find("td[name='kmname']").text("");	
				 alert(data.result);
			}
		});		
	/**	$.get(url,function(data){
			alert();
			 debugger;
			 $(e).parent().parent().find("input[name='s_jfye']").val("");
			 $(e).parent().parent().find("input[name='s_dfye']").val("");
			 $(e).parent().parent().find("input[name='b_jffs']").val("");
			 $(e).parent().parent().find("input[name='b_dffs']").val("");
			 $(e).parent().parent().find("input[name='e_jfye']").val("");
			 $(e).parent().parent().find("input[name='e_dfye']").val("");
			 $(e).parent().parent().find("td[name='kmcode']").text("");
			 $(e).parent().parent().find("td[name='kmname']").text("");	
			 bootbox.alert(data);
		},"json");	*/
	}