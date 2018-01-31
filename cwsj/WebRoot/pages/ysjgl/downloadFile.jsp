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
</head>
<body>
	<div class="container-fluid">
		<div id="page-content"  class="clearfix">	
			<div class="page-header position-relative">
			    <h3>账套下载
			    </h3>			     
			</div>		


			<div class="row-fluid">
				<div id="listfile" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="审计账套文件下载">
					<div name="Index" caption="序号"></div>
					<div name="DJXH" caption="企业登记序号"></div>
					<div name="QYMC" caption="企业名称"></div>
					<div name="LR_SJ" caption="上传日期"></div>
					<div name="SSSQ" caption="所属时期"></div>
					<div name="FILE_PATH" caption="文件路径" style="display:none"></div>
					<div name="FILE_NAME" caption="文件名" onclick="download()" type="a"></div>
				</div>
			</div>


	</div>
	</div>
	<!--/#page-content-->
	<script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
       $(top.hangge());
        function download(rowData){
           var $w1=new  $w("Windking");
           $w1.Downfile("/fileCtrl/downloadEcpa",rowData.getValue("FILE_PATH")+rowData.getValue("FILE_NAME"));  
        }
	</script>	
</body>
</html>