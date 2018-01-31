<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
	
	
	<title>系统诊断意见</title>
</head>
<body>

	<div class="container-fluid" id="main-container">
		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>诊断报告 <small><i class="icon-double-angle-right"></i>${DGMC}</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="saveZdbg()">保存</button>	
							    <button type="button" class="btn btn-small btn-primary" onclick="opendg()">打开对应底稿</button>
							    <button type="button" id="tsshbutton" class="btn btn-small btn-primary" onclick="tsshFxxx()"></button>		    
							    <button type="button" class="btn  btn-primary " onclick="reload();">打印</button>
							    <button type="button" class="btn  btn-primary " onclick="closeAbPage();">关闭</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>	
			
			<div class="row-fluid">
		
				 <div class="span">
								<form class="form-horizontal" role="form" id="zdbgform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">底稿代码</label>
											<div class="col-sm-4">
												<input type="text" readonly class="form-control" id="DG_DM">
                                                <input type="text" style="display:none" class="form-control" id="LSH" />
                                                <input type="text" style="display:none" class="form-control" id="DJXH" />	
                                                <input type="text" style="display:none" class="form-control" id="URL" />
                                                <input type="text" style="display:none" class="form-control" value="${tsshbj}" id="tsshbj" />										
											</div>
											<label class="col-sm-2 control-label" for="ds_host">会计期间或会计截止日</label>
											<div class="col-sm-4">
												<input class="form-control date" format="yyyy-mm-dd" size="16" id="KJQJ" type="text"  readonly>
											</div>											
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">被鉴定单位名称</label>
											<div class="col-sm-10">
												<input type="text" readonly class="form-control" id="QYMC">
											</div>
										</div>	
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">编制人</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="BZR"/>                                               
											</div>
											<label for="ds_host" class="col-sm-2 control-label">编制日期</label>
											<div class="col-sm-4">
                                               <input class="form-control date" format="yyyy-mm-dd" size="16" id="BZRQ" type="text"  readonly>                                            
											</div>											
										</div>	
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">复核人</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="FHR"/>                                               
											</div>
											<label for="ds_host" class="col-sm-2 control-label">复核日期</label>
											<div class="col-sm-4">
                                               <input class="form-control date" format="yyyy-mm-dd" size="16" id="FHRQ" type="text"  readonly>                                                  
											</div>											
										</div>																																																		
                                    </fieldset>                              
                                </form>
                                
                              <div style="overflow:scroll; width:100%; height:250px;" >
								<div id="listFxxx" type="DataGrid" class="DataGrid"  css="table table-striped table-bordered table-hover" caption="风险信息">
								   <div name="Index" caption="序号"></div>
								   <div name="FXZB_DM" caption="风险信息" style="display:none"></div>
								   <div name="FXZBLX" caption="风险类型"></div>
								   <div name="FXTSXX" caption="风险信息" style="width:50%; " onclick="dialog_open();"></div>
								   <div name="GZZD" caption="工作指导" style="width:50%; "  onclick="dialog_open();"></div>
								</div>
							</div>	
								
								<form class="form-horizontal" role="form" id="jdxxform">
									<fieldset>
										<div class="form-group">
											<label for="disabledSelect" class="col-sm-2 control-label">鉴定结论和说明</label>
											<div class="col-sm-10">
												<textarea class="form-control"  id="JDSMJL" rows="5"></textarea>
											</div>
										</div>
										<div class="form-group">
											<label for="disabledSelect" class="col-sm-2 control-label">审核意见</label>
											<div class="col-sm-10">
												<textarea class="form-control"  id="SHYJ" rows="5"></textarea>
											</div>
										</div>																																																		
                                    </fieldset>
                              
                                </form>								
                             
                 </div>
		</div>
		<!--/#page-content-->
		</div>
	</div>
	
 <script type="text/javascript"> 
function saveZdbg(){
	var $w1=new  $w("Windking");
	$w1.pushForm("zdbgform");
	$w1.pushForm("jdxxform");
	$w1.ajax("/ywdgCtrl/saveZdbg");	
}

function closeAbPage(){
    window.close();
 }  
 
 function opendg(){
	var url= $("#URL").val();
	var DG_DM= $("#DG_DM").val();
	var LSH=$("#LSH").val();
	var DJXH=$("#DJXH").val();	

	if(url!=undefined){
	openMaxWindow(url+"?LSH="+LSH+"&DG_DM="+DG_DM+"&DJXH="+DJXH, 800, 700);
	}
}
function tsshFxxx(){
	var $w1=new  $w("Windking");
	var LSH=$("#LSH").val();
	var DGDM=$("#DG_DM").val();
	$w1.pushData("LSH", LSH);
	$w1.pushData("DGDM", DGDM);
	$w1.ajax("/ywdgCtrl/tsshFxxx",viewTsshbutton);	
}
$(document).ready(function(){
   var tsshbj=$("#tsshbj").val();
   if(tsshbj=="1"){
	   $("#tsshbutton").text("收回风险信息");
   }else{
       $("#tsshbutton").text("推送风险信息");
   }
   var $w1=new  $w("Windking");
   $w1.ajax("/identityCtrl/confirmIdentity",confirmIdentityAfter);
}) 
function viewTsshbutton(res){
	if(res!=null){
		   var tsshbj=res.data.tsshbj;
		   if(tsshbj=="1"){
			   $("#tsshbutton").text("推送风险信息");
		   }else{
		       $("#tsshbutton").text("收回风险信息");
		   }		
	}
}
function confirmIdentityAfter(res){
	if(res!=null){
		   var identityBj=res.data.identityBj;
		   if(identityBj=="qyyh"){
			   $(".btn-small").css('visibility','hidden');//;
		   }		
	}

}
</script>	
</body>

</html>
