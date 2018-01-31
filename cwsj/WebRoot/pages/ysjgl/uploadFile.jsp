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
<script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>	
	     <style media=print type="text/css"> 
	.noprint{visibility:hidden}
	</style>
	<title>文件上传</title>
</head>
<body>

	<div class="container-fluid" id="main-container">

		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>账套审计 <small><i class="icon-double-angle-right"></i>文件上传</small>
			     <ul class="nav ace-nav pull-right noprint">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="upLoadFile()">上传</button>	
						</div>			     
			     </ul>
			    </h3>			     
			</div>			
			<div class="row-fluid">
			
				<div class="span">


								<form class="form-horizontal" role="form" id="jcsxform" enctype='multipart/form-data'>
									<fieldset>
									
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">账套文件</label>
											<div class="col-sm-4">
                                               <input type="file"  class="form-control"  id="file"/>                                               
											</div>	
										   <label for="ds_host" class="col-sm-2 control-label">所属期</label>
											<div class="col-sm-4">
											    <input class="form-control date" format="yyyy" size="16" id="SSSQ" type="text"  readonly>
											</div>										
										</div>
                                   
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">审计单位</label>
											<div class="col-sm-4"> 
                                              <select id="zzjgselect" onchange="selectRy(this)" class="form-control"  data-placeholder="请选择部门"
													title="机构">
												</select>                                             
											</div>
											<label for="ds_host" class="col-sm-2 control-label">审计人员</label>
											<div class="col-sm-4">   
                                              <select id="ryselect"  class="form-control"  data-placeholder="请选择部门"
													title="人员">
												</select>                                                                                              
											</div>											
										</div>
                                   <div class="form-group">
                                         <div>属地审计部门:${defaultZzjgmc}</div> 
                                   </div>
<input type="hidden" id="userId" value="${userId}">
									</fieldset>																																																																																
								</form>
								<font color="red">注：可以选择审计部门和人员，未选择则按照系统指定的企业所在街道进行分配</font>

					</div>
				</div>
				<!--/span-->
			<!--/row-->

		</div>
		<!--/#page-content-->
	</div>
  	<script type="text/javascript" src="pages/ysjgl/uploadFile.js"></script> 
 <script type="text/javascript"> 


</script>	
</body>

</html>
