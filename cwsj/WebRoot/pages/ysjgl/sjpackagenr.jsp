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
			    <h3>源数据管理 <small><i class="icon-double-angle-right"></i> 审计包列表</small>
		           <ul class="nav ace-nav pull-right">
		            <div class="btn-group btn-group-small">
		                  <button type="button" class="btn btn-small btn-primary" onclick="onSubmit()">保存</button>
		            </div>           
		           </ul>			    
			    </h3>			     
			</div>		

            <input type="text" style="display:none" id="LSH" value="${LSH}">
            <input type="text" style="display:none" id="CWBBLX_DM" value="${CWBBLX_DM}">
            <input type="text" style="display:none" id="DJXH" value="${DJXH}">
			<div class="row-fluid">
				<div id="listsjb" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
					<div name="Index" caption="序号"></div>
					<div name="SJB_XH" style="display:none" caption="审计包代码"></div>
					<div name="SJB_MC" caption="审计包名称" onclick="modify()" type="a"></div>
					<div name="SFBT" caption="是否必填"></div>
					<div name="SJBLX_MC" caption="审计包类型"></div>
					<div name="SFCZ" type="checkbox" autocheck="true" caption="是否存在"></div>
					<div name="URL" caption="地址" style="display:none"></div>
				</div>
			</div>
        <font color="red">为保证审计沟通效果及审计工作质量，请您按照贵单位实际情况如实、完整填写审计包相关资料。</font>

	</div>
	</div>
	<!--/#page-content-->
	       <script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
        $(top.hangge());
		function modify(rowData){
		  var url=rowData.getValue("URL");
		  var LSH=$("#LSH").val();
		  var CWBBLX_DM=$("#CWBBLX_DM").val();
		  var DJXH=$("#DJXH").val();
		  //siMenu("101_1","101","标准数据维护","sjywhCtrl?LSH="+rowData.getValue("LSH"));
		  openMaxWindow(url+"&LSH="+LSH+"&CWBBLX_DM="+CWBBLX_DM+"&DJXH="+DJXH, 800, 700);
		}
		function onSubmit(){
		    var $w1=new  $w("Windking");
		    var DJXH=$("#DJXH").val();
		    $w1.pushGrid("listsjb");
		    $w1.ajax("/sjpackageCtrl/saveSjb?DJXH="+DJXH);		
		}
	</script>		       
</body>
</html>