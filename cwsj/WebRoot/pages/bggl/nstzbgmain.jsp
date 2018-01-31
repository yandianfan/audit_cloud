<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>
	
<body>		
<div class="container-fluid" id="main-container">
<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
		          <h3>数据审核 <small><i class="icon-double-angle-right"></i>纳税调整报告</small>
		           <ul class="nav ace-nav pull-right">
		            <div class="btn-group btn-group-small">
		                  <button type="button" class="btn btn-small btn-primary" onclick="onSave()">确认</button>
		                  <button type="button" class="btn btn-small btn-primary" onclick="onDefalut()">重置</button>
		                  <button type="button" class="btn btn-small btn-primary" onclick="onView()">预览</button>
		                  <button type="button" class="btn btn-small btn-primary" onclick="onPrint()">导出</button>
		                  <button type="button" id="tsshbutton" class="btn btn-small btn-primary" onclick="tsBgtoQy()">推送至企业</button>
		            </div>           
		           </ul>
		          </h3>			     
			</div>	
		<table style="width:100%;" border="0">
		<input type="hidden" name="LSH" id="LSH" value="${LSH}"/>
		<input type="text" style="display:none" class="form-control" value="${tsshbj}" id="tsshbj" />	
			<tr>
				<td style="width:15%;" valign="top" bgcolor="#F9F9F9">
					<div style="overflow:scroll; width:400px; height:350px;">
						<div style="width:15%;">
							<ul id="bglxtree" class="ztree" onclick="opentree()"></ul>
						</div>
					</div>
				</td>
				<td style="width:85%;" valign="top" >
					<iframe name="treeFrame" id="treeFrame" frameborder="0" src="<%=basePath%>/nstzbgCtrl/initBgnr.do&BGLX_DM=${BGLX_DM}" style="margin:0 auto;width:100%;height:100%;"></iframe>
				</td>
			</tr>
		</table>
		</div>
</div>
	<script type="text/javascript">
		function treeFrameT(){
			var hmainT = document.getElementById("treeFrame");
			var bheightT = document.documentElement.clientHeight;
			hmainT.style.width = "100%";
			hmainT.style.height = (bheightT-7) + "px";
		}
		treeFrameT();
		window.onresize=function(){  
			treeFrameT();
		};
		/**
 * 
 */
function opentree(e, treeId, treeNode){
    try{
     var LSH=$("#LSH").val();
     document.getElementsByTagName("iframe")[0].src=getRootPath()+"/nstzbgCtrl/initBgnr?BGLX_DM="+treeNode.id+"&LSH="+LSH;
    }catch(e){
      
    }
	
	//$("#ysjtree").insertContent(treeId.name);	
}
function onView(){
    var LSH=$("#LSH").val();
    openMaxWindow(getRootPath()+"/nstzbgCtrl/viewBgnr.do?LSH="+LSH) ;
}
function onPrint(){
    var LSH=$("#LSH").val();
    openMaxWindow(getRootPath()+"/fileCtrl/word.do?LSH="+LSH) ;
}
function onSave(){
    document.getElementById('treeFrame').contentWindow.save();
}
function onDefalut(){
    document.getElementById('treeFrame').contentWindow.onDefalut();
}
function tsBgtoQy(){
	var $w1=new  $w("Windking");
	var LSH=$("#LSH").val();
	$w1.pushData("LSH", LSH);
	$w1.ajax("/nstzbgCtrl/tsshBg",viewTsshbutton);	
}
$(document).ready(function(){
   var tsshbj=$("#tsshbj").val();
   if(tsshbj=="1"){
	   $("#tsshbutton").text("收回报告");
   }else{
       $("#tsshbutton").text("推送报告");
   }
}) 
function viewTsshbutton(res){
	if(res!=null){
		   var tsshbj=res.data.tsshbj;
		   if(tsshbj=="1"){
			   $("#tsshbutton").text("推送报告");
		   }else{
		       $("#tsshbutton").text("收回报告");
		   }		
	}
}
$(document).ready(function(){
   var BJBJ=$("#BJBJ").val();
   if(BJBJ=="1"){
	   $("button").attr({"disabled":"disabled"});
   }
}) 
	</script>
	</body>

</html>

