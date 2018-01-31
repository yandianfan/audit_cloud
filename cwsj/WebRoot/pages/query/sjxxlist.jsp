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
			    <h3>我的审计信息

			    </h3>			     
			</div>		


			<div class="row-fluid">
				<div id="listysj" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="我的审计信息">
					<div name="Index" caption="序号"></div>
					<div name="LSH" caption="流水号"></div>
					<div name="DJXH" caption="企业登记序号"></div>
					<div name="CWBBDL_DM" caption="财务报表大类" style="display:none"></div>
					<div name="QYMC" caption="企业名称" onclick="modify()" type="a"></div>
					<div name="SQRQ" caption="申请日期"></div>
					<div name="SSSQ" caption="所属时期"></div>
				</div>
			</div>


	</div>
	</div>
	<!--/#page-content-->
	<script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
       $(top.hangge());
		function query(){
		     var $w1=new  $w("Windking");
             $w1.pushForm("cxtjform");
             $w1.pushGrid("listzb");
             $w1.ajax("/BLH/zbdyBLH_querryZb");	
		}
		function modify(rowData){
		  //openMaxWindow("zbxxylCtrl/initZbsjsh&LSH="+rowData.getValue("LSH"), 800, 700);
		  siMenu(rowData.getValue("LSH"),'lm1','数据审核',"sjjgcxCtrl/initQyZbsjsh?LSH="+rowData.getValue("LSH")+"&DJXH="+rowData.getValue("DJXH")+"&SSSQ="+rowData.getValue("SSSQ"));
		}
	</script>	
</body>
</html>