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

	function openClose(SJXXH,LSH,curObj,trIndex,trcc){
		var txt = $(curObj).text();
		if(txt=="展开"){
			$(curObj).text("折叠");
			$("#tr"+SJXXH).after("<tr id='tempTr"+SJXXH+"'><td colspan='5'>数据载入中</td></tr>");
			//$("#tr"+SJXXH).after("<tr id='tempTr"+SJXXH+"'></tr>");
			if(trIndex%2==0){
				$("#tempTr"+SJXXH).addClass("main_table_even");
			}	
			var url = getRootPath()+"/SjycxCtrl/sub.do?SJX_XH="+SJXXH+"&LSH="+LSH+"&guid="+new Date().getTime();
			$.get(url,function(data){
				if(data.length>0){
					var html = "";
					$.each(data,function(i){
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
						html += "<span style='display:inline-block;'>"+this.KMCODE+"</span>";
						html += "</td>";					
						html += "<td><span style='text-align:left;display:inline-block;'><a title='查看凭证' onclick='ckPzmx(this,\""+this.LSH+"\",\""+this.KMCODE+"\")'>"+this.KMNAME+"</a></span></td>";
						html += "<td name=\"SJX_XH\">"+this.SJX_XH+"</td>";
						html += "<td name=\"SJX_MC\">"+this.SJX_MC+"</td>";
						//html += "<td><span style='text-align:left;display:inline-block;'>"+this.HZSJX_MC+"</span></td>";
						html += "<td><input type='text' style='width:85%'  value='"+this.s_jfye+"'/></td>";
						html += "<td><input type='text' style='width:85%'  value='"+this.s_dfye+"'/></td>";
						html += "<td><input type='text' style='width:85%'  value='"+this.b_jffs+"'/></td>";
						html += "<td><input type='text' style='width:85%'  value='"+this.b_dffs+"'/></td>";
						html += "<td><input type='text' style='width:85%'  value='"+this.e_jfye+"'/></td>";
						html += "<td><input type='text' style='width:85%'  value='"+this.e_dfye+"'/></td>";
						//html += "<td><input type='text' style='width:85%'  name='"+this.SJX_VALUE+"'/>&nbsp<a class='btn btn-mini btn-info' title='编辑' onclick='editsjxvalue(this,\""+this.LSH+"\",\""+this.SJX_XH+"\")'><i class='icon-edit'></i></a></td>";
						if(this.PARENT=="1"){
						  html +="<td><a class='btn btn-mini btn-info' title='匹配' onclick='ppBzsjx(this,\""+this.LSH+"\",\""+this.DJXH+"\",\""+this.KMCODE+"\",\""+this.KMNAME+"\",\""+this.KM_DEGREE+"\")'><i class='icon-edit'></i></a>";
						  html +="<a class='btn btn-mini btn-info' title='匹配' onclick='jcBzsjx(this,\""+this.LSH+"\",\""+this.DJXH+"\",\""+this.KMCODE+"\",\""+this.KMNAME+"\")'><i class='icon-edit'></i></a>";
						  html += "&nbsp<a class='btn btn-mini btn-warning' onclick='openClose(\""+this.SJX_XH+"\",\""+this.LSH+"\",this,"+trIndex+","+(trcc+1)+")' >展开</a></td>";
						}else{
						  html +="<td><a class='btn btn-mini btn-info' title='匹配' onclick='ppBzsjx(this,\""+this.LSH+"\",\""+this.DJXH+"\",\""+this.KMCODE+"\",\""+this.KMNAME+"\",\""+this.KM_DEGREE+"\")'><i class='icon-edit'></i></a>";
						  html +="<a class='btn btn-mini btn-info' title='匹配' onclick='jcBzsjx(this,\""+this.LSH+"\",\""+this.DJXH+"\",\""+this.KMCODE+"\",\""+this.KMNAME+"\")'><i class='icon-edit'></i></a>";
						  html += "</td>";
						}	
						html += "<td style='display:none'><input type='text'   value='"+this.KM_DEGREE+"'/></td>";
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
	
	function ckPzmx(e,lsh,sjxxh){
	   	 var diag = new top.Dialog();
	   	 var SSSQ=$("#SSSQ").val();
		 diag.Drag=true;
		 diag.Title ="查看凭证";
		 diag.URL = getRootPath()+"/SjycxCtrl/initPzdata.do?KMCODE="+sjxxh+"&LSH="+lsh+"&SSSQ="+SSSQ+"&guid="+new Date().getTime();
	     diag.Width = 1300;
	     diag.Height = 800;
		 diag.CancelEvent = function(){ //关闭事件
			    //setTimeout("location.reload()",100);
			/** if(diag.innerFrame.contentWindow.document.getElementById('s_jfyeZ').value!=""){
				 $(e).parent().parent().find("input[name='s_jfye']").val(diag.innerFrame.contentWindow.document.getElementById('s_jfyeZ').value);
				 $(e).parent().parent().find("input[name='s_dfye']").val(diag.innerFrame.contentWindow.document.getElementById('s_dfyeZ').value);
				 $(e).parent().parent().find("input[name='b_jffs']").val(diag.innerFrame.contentWindow.document.getElementById('b_jffsZ').value);
				 $(e).parent().parent().find("input[name='b_dffs']").val(diag.innerFrame.contentWindow.document.getElementById('b_dffsZ').value);
				 $(e).parent().parent().find("input[name='e_jfye']").val(diag.innerFrame.contentWindow.document.getElementById('e_jfyeZ').value);
				 $(e).parent().parent().find("input[name='e_dfye']").val(diag.innerFrame.contentWindow.document.getElementById('e_dfyeZ').value);
			 }		*/	    
			 diag.close();
		 };
		 diag.show();
	}
	
	function ppBzsjx(e,lsh,djxh,kmcode,kmname,km_degree){
		var SSSQ=$("#SSSQ").val();
	     var CWBBDL_DM=$("#CWBBDL_DM").val();
		//var someValue=window.showModalDialog(getRootPath()+"/TreeCtrl/treeInit.do?treeKey=YsjglMapper.treeQuerybzsjx&tj1="+CWBBDL_DM,"","dialogWidth=500px;dialogHeight=500px;status=no;help=no;scrollbars=no");
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="匹配";
		 //diag.URL = getRootPath()+"/TreeCtrl/treeInit.do?treeKey=YsjglMapper.treeQuerybzsjx&TJ1="+CWBBDL_DM;
		 diag.URL = getRootPath()+"/SjycxCtrl/ppselectInit.do?treeKey=YsjglMapper.treeQuerybzsjx&TJ1="+CWBBDL_DM+"&KMCODE="+kmcode+"&SSSQ="+SSSQ+"&LSH="+lsh+"&KM_DEGREE="+km_degree;
	     diag.Width = 800;
	     diag.Height = 500;
	     var SJX_XH="";
	     var SJX_MC="";
		 diag.CancelEvent = function(){ //关闭事件
			    //setTimeout("location.reload()",100);
			 var RETNAME=diag.innerFrame.contentWindow.document.getElementById('RETNAME').value;
			 if(RETNAME!=""){
				 SJX_XH=RETNAME.substring(RETNAME.indexOf("(")+1,RETNAME.indexOf(")"));
				 SJX_MC=RETNAME.substring(0,RETNAME.indexOf("("));
				 $(e).parent().parent().find("td[name='SJX_XH']").text(SJX_XH);
				 $(e).parent().parent().find("td[name='SJX_MC']").text(SJX_MC);
				 savaBzsjxgx(lsh,djxh,SJX_XH,SJX_MC,kmcode,kmname);
			 }			    
			 diag.close();
		 };
		 diag.show();	
	}
	function jcBzsjx(e,lsh,djxh,kmcode,kmname){
		var sjxxh=$(e).parent().parent().find("td[name='SJX_XH']").text();
		var DJXH=$("#DJXH").val();
		$.ajax({
			type: "POST",
			url: getRootPath()+'/sjywhCtrl/jcSjx.do',
	    	data: {SJX_XH:sjxxh,LSH:lsh,DJXH:DJXH,kmcode:kmcode,tm:new Date().getTime()},
			dataType:'json',
			cache: false,
			success: function(data){
/**				 $(e).parent().parent().find("input[name='s_jfye']").val("");
				 $(e).parent().parent().find("input[name='s_dfye']").val("");
				 $(e).parent().parent().find("input[name='b_jffs']").val("");
				 $(e).parent().parent().find("input[name='b_dffs']").val("");
				 $(e).parent().parent().find("input[name='e_jfye']").val("");
				 $(e).parent().parent().find("input[name='e_dfye']").val("");**/
				 $(e).parent().parent().find("td[name='SJX_XH']").text("");
				 $(e).parent().parent().find("td[name='SJX_MC']").text("");	
				 bootbox.alert({ message:data.result});
			}
		});		
	}	
	function savaBzsjxgx(LSH,DJXH,SJX_XH,SJX_MC,KMCODE,KMNAME){
		var SSSQ=$("#SSSQ").val();
		$.ajax({
			type: "POST",
			url: getRootPath()+'/sjywhCtrl/savaBzsjxgx.do',
	    	data: {LSH:LSH,DJXH:DJXH,SSSQ:SSSQ,SJX_XH:SJX_XH,SJX_MC:encodeURI(SJX_MC),kmcode:KMCODE,kmname:encodeURI(KMNAME),tm:new Date().getTime()},
			dataType:'json',
			cache: false,
			success: function(data){
				bootbox.alert({ message:data.result});
			}
		});			
	}
function cxPpqk(){
	var pplx=$("#pplxselect").val();
	var LSH=$("#LSH").val();
	var sssq=$("#SSSQ").val();
	var cwbbdl_dm=$("#CWBBDL_DM").val();
	var url = getRootPath()+"/SjycxCtrl?LSH="+LSH+"&CWBBDL_DM="+cwbbdl_dm+"&SSSQ="+sssq+"&PPLX="+pplx+"&"+new Date().getTime();
	window.location=url;
}	
$(document).ready(function(){
  var pplx=$("#PPLX").val();
  $("#pplxselect").val(pplx);
})
function autoPp(){
	bootbox.confirm({ 
	    //size: 'small',
		size: "",
	    message: "自动匹配将按照上次匹配的结果进行匹配，确认继续操作？", 
	    title : "",
	    callback: function(result){
	    	if(result){
	    		var DJXH=$("#DJXH").val();
	    		var LSH=$("#LSH").val();
	    		$.ajax({
	    			type: "POST",
	    			url: getRootPath()+'/sjywhCtrl/autoppBzsjx.do',
	    	    	data: {LSH:LSH,DJXH:DJXH,tm:new Date().getTime()},
	    			dataType:'json',
	    			cache: false,
	    			success: function(data){
	    				bootbox.alert({
	    					  message:data.result,
	    					    callback: function(){ 
	    					    	window.location.reload();			    	
	    						}
	    					 });
	    			}
	    		});		
	    	}					    	
	    }
	})
}