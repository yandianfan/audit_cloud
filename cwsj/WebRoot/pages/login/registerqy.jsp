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
			    <h3>用户注册 <small><i class="icon-double-angle-right">企业用户</i></small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="flip-link btn btn-info" onclick="saveZcnr()">保存</button>			    
							    <button type="button" class="flip-link btn btn-info" onclick="reload();">重置</button>
							    <button type="button" class="flip-link btn btn-info" onclick="login()">登录</button>	
						</div>			     
			     </ul>
			    </h3>			     
			</div>			
			<div class="row-fluid">		
				<div class="span">


								<form class="form-horizontal" role="form" id="jcsxform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">企业名称</label>
											<div class="col-sm-4">
												<input type="text"  class="form-control" id="QYMC">
											</div>
											<label class="col-sm-2 control-label" for="ds_name">企业代码</label>
											<div class="col-sm-4">
												<input type="text" readonly class="form-control" id="DJXH"/>
											</div>
										</div>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">用户名</label>
											<div class="col-sm-4">
                                              <input type="text"  class="form-control" id="username" placeholder="至少6位字符" />                                             
											</div>
											<label for="ds_host" class="col-sm-2 control-label">密码</label>
											<div class="col-sm-4">
                                              <input type="password" name="password" id="password"class="form-control"  placeholder="密码必须为6-18位字母、数字" value="" />                                      
											</div>											
										</div>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">确认密码</label>
											<div class="col-sm-4">
                                              <input type="password" name="password2" id="password2"class="form-control"  placeholder="请再次输入密码" value="" />                                                                              
											</div>
											<label for="ds_host" class="col-sm-2 control-label">行政区划</label>
											<div class="col-sm-4">
											  <input type="hidden"  class="select_ztree"  style="width:80%" id="xzqhdm"/>  
                                              <input type="text"   onclick="selectXzqh()"  style="width:80%" id="xzqhmc"/>   
                                               <span style="text-decoration:underline;cursor:pointer"onclick="selectXzqh()">选择</span>                                           
											</div>								
										</div>
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">街道乡镇</label>
											<div class="col-sm-4">
                                               <select id="jdxz"></select>                                              
											</div>	
											<label for="ds_host" class="col-sm-2 control-label">具体地址</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="JTDZ"/>                                               
											</div>																					
										</div>										
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">财务报表类型</label>
											<div class="col-sm-4">
												<select id="cwbbdlselect"  class="form-control"  
													title="财务报表类型">
													<option value="S">企业会计准则</option>
													<option value="A">小企业会计准则</option>
													<option value="B">企业会计制度</option>
													<option value="C">小企业会计制度</option>
													<option value="D">民非营制度</option>
													<option value="E">事业制度</option>
												</select>
											</div>
											<label for="ds_host" class="col-sm-2 control-label">社会信用代码</label>
											<div class="col-sm-4">
                                                <input type="text"  class="form-control" id="ZZJGDM"/>                                                
											</div>		
									   </div>										
                                  

										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">联系电话</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="LXDH"/>                                               
											</div>
											<label for="ds_host" class="col-sm-2 control-label">邮箱</label>
											<div class="col-sm-4">
                                               <input type="text"  class="form-control" id="EMAIL"/>                                               
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
          var QYMC=$("#QYMC").val();
          var cwbbdlselect=$("#cwbbdlselect").find("option:selected").val();
          var ZZJGDM=$("#ZZJGDM").val();
          var LXDH=$("#LXDH").val();
          var EMAIL=$("#EMAIL").val();
          var username=$("#username").val();
          var password=$("#password").val();
          var password2=$("#password2").val();          
          var xzqhdm=$("#xzqhdm").val();
          var jdxz=$("#jdxz").val();
          var JTDZ=$("#JTDZ").val();
          if(QYMC==""){
             //sysAlert("请填写企业名称");
             //$("#QYMC").focus();
             	$("#QYMC").tips({
						side:3,
			            msg:'请填写企业名称',
			            bg:'#AE81FF',
			            time:3
			     });
             return false;
          }
          if(cwbbdlselect==""){
             sysAlert("请选择财务报表类型");
             $("#cwbbdlselect").focus();
             return false;
          } 
          if(username==""){
             	$("#username").tips({
						side:3,
			            msg:'请输入用户名',
			            bg:'#AE81FF',
			            time:3
			     }); 
             return false;
          }   
         if(checkChinese(username)){
             	$("#username").tips({
						side:3,
			            msg:'不能包含汉字',
			            bg:'#AE81FF',
			            time:3
			     }); 
             return false;
          }  
          if(username.length<6){
             	$("#username").tips({
						side:3,
			            msg:'至少6个字符',
			            bg:'#AE81FF',
			            time:3
			     }); 
             return false;
          }             
          if(password==""){
              	$("#password").tips({
						side:3,
			            msg:'请输入密码',
			            bg:'#AE81FF',
			            time:3
			     });             
             return false;
          }   
          if(!checkPassword(password)){
               	$("#password").tips({
						side:3,
			            msg:'密码必须为6-18位字母、数字',
			            bg:'#AE81FF',
			            time:3
			     });             
             return false;         
          }               
          if(password!=password2){
             	$("#password2").tips({
						side:3,
			            msg:'密码不一致',
			            bg:'#AE81FF',
			            time:3
			     }); 
             return false;
          }
          if(xzqhdm==""){
             sysAlert("请选择行政区划");
             $("#xzqhdm").focus();
             return false;
          }  
          if(jdxz==""){
             sysAlert("请选择街道乡镇");
             $("#jdxz").focus();
             return false;
          } 
          if(JTDZ==""){
             sysAlert("请填写具体地址");
             $("#JTDZ").focus();
             return false;
          }           
          if(ZZJGDM==""){
             	$("#ZZJGDM").tips({
						side:3,
			            msg:'请填写组织机构代码',
			            bg:'#AE81FF',
			            time:3
			     });             
             return false;
          }
          if(LXDH==""){
              	$("#LXDH").tips({
						side:3,
			            msg:'请填写联系电话',
			            bg:'#AE81FF',
			            time:3
			     });                 
             return false;
          }  
          if(EMAIL==""){
             	$("#EMAIL").tips({
						side:3,
			            msg:'请填写邮箱',
			            bg:'#AE81FF',
			            time:3
			     });   
             return false;
          }  
          if(!checkEmail(EMAIL)){
             	$("#EMAIL").tips({
						side:3,
			            msg:'邮箱格式不正确',
			            bg:'#AE81FF',
			            time:3
			     }); 
             return false;
          }                                            
			$.ajax({
					type: "POST",
					url: '<%=basePath%>RegisterCtrl/saveRegister',
			    	data: {QYMC:QYMC,CWBBDLSELECT:cwbbdlselect,ZZJGDM:ZZJGDM,LXDH:LXDH,EMAIL:EMAIL,USERNAME:username,PASSWORD:password,XZQHDM:xzqhdm,JDXZDM:jdxz,JTDZ:JTDZ},
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
