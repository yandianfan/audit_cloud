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

	<title>企业注册</title>
</head>
<body>

	<div class="container-fluid" id="main-container">

		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>修改密码 
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="flip-link btn btn-info" onclick="saveZcnr()">保存</button>			    
						</div>			     
			     </ul>
			    </h3>			     
			</div>			
			<div class="row-fluid">		
				<div class="span">


								<form class="form-horizontal" role="form" id="passwordform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">输入密码</label>
											<div class="col-sm-4">
                                              <input type="password" name="password1" id="password1"class="form-control"  placeholder="6-18位字母、数字" value="" />                                                                              
											</div>
										</div>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">请再次确认密码</label>
											<div class="col-sm-4">
                                              <input type="password" name="password2" id="password2"class="form-control"  placeholder="6-18位字母、数字" value="" />                                                                              
											</div>										
										</div>
									</fieldset>																																																																																
								</form>

					</div>
				</div>
				<!--/span-->
			<!--/row-->


		</div>
		<!--/#page-content-->
	</div>

 <script type="text/javascript"> 
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
 
 function saveZcnr(){ 
          var password1=$("#password1").val();
          var password2=$("#password2").val();                  
          if(password1==""){
              	$("#password1").tips({
						side:3,
			            msg:'请输入密码',
			            bg:'#AE81FF',
			            time:3
			     });             
             return false;
          }   
          if(!checkPassword(password1)){
               	$("#password1").tips({
						side:3,
			            msg:'密码必须为6-18位字母、数字',
			            bg:'#AE81FF',
			            time:3
			     });             
             return false;         
          }   
           if(password2==""){
              	$("#password2").tips({
						side:3,
			            msg:'请确认密码',
			            bg:'#AE81FF',
			            time:3
			     });             
             return false;
          }                        
          if(password1!=password2){
             	$("#password2").tips({
						side:3,
			            msg:'密码不一致',
			            bg:'#AE81FF',
			            time:3
			     }); 
             return false;
          }                                     
			$.ajax({
					type: "POST",
					url: '<%=basePath%>RegisterCtrl/modifyPassword',
			    	data: {PASSWORD:password1},
					dataType:'json',
					cache: false,
					success: function(data){
                       if(data[0].SUCBJ=="0"){
                           sysAlert(data[0].MSG);
                       }else{
                           $("#DJXH").val(data[0].DJXH);
                           sysAlert(data[0].MSG);
                       }
					}
				});     
 }
function reload(){

}
	   function login(){
	      top.location.href = '<%=basePath%>';
	    //  top.location.href = "http://localhost:8080/cwsj/RegisterCtrl/register_toQy";
	   }
function sysAlert(mes){
			   bootbox.alert({ 
				    message:mes
			   });			   
		}	
					
	function selectXzqh(e){
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="查看凭证";
		 diag.URL ="<%=basePath%>/TreeCtrl/treeInit.do?treeKey=ZbglMapper.treeQuerrxzqh&isParent=1&"+new Date().getTime();
	     diag.Width = 350;
	     diag.Height = 600;
		 diag.CancelEvent = function(){ //关闭事件
			    //setTimeout("location.reload()",100);
			 if(diag.innerFrame.contentWindow.document.getElementById('RETCODE').value!=""){
				 $("#xzqhdm").val(diag.innerFrame.contentWindow.document.getElementById('RETCODE').value);
				 $("#xzqhmc").val(diag.innerFrame.contentWindow.document.getElementById('RETNAME').value);
		    	 var xzqh=$("#xzqhdm").val();
                 getJdxz(xzqh);   
			 }		    
			 diag.close();
		 };
		 diag.show();
	}		


function getJdxz(xzqh){
		var select="<option value=''>请选择</option>";
		$.ajax({
			type: "post",
			url: "<%=basePath%>/SelectCtrl/selectInit.do?selectKey=ZbglMapper.selectQuerrjdxz&XZQHSZ_DM="+xzqh,
			async:false,
			data : "",		    	
			dataType:'json',
			success : function(responseText, textStatus, XMLHttpRequest) {				
				for(var item2=0;item2<responseText.length;item2++){
					select=select+"<option value='"+responseText[item2].code+"'>"+responseText[item2].caption+"</option>";	
				}								
			}
		});	
		$("#jdxz").html(select);
}
</script>	
</body>
</html>
