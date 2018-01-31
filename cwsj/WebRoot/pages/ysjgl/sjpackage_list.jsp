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
			    <h3>源数据管理 <small><i class="icon-double-angle-right"></i> 基础信息采集</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="query();">查询</button>
							    <button type="button" class="btn  btn-primary " onclick="reload();">重置</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>		
			<div class="row-fluid">
				  <div class="widget-header widget-header-small">
					        <h5 class="lighter">查询条件</h5>				   
							<span class="widget-toolbar">				
								<a href="#" data-action="collapse"><i class="icon-chevron-up"></i></a>
							</span>
				  </div>
				  <div class="widget-body">
				   <div class="widget-main">				  
				   <form class="form-horizontal" role="form" id="cxtjform">
							<fieldset>
								<div class="form-group">
									<label for="disabledSelect" class="col-sm-1 control-label">企业名称</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="qymc"
											placeholder="企业名称">
									</div>
								</div>
							</fieldset>
				</form>
             </div>
</div></div>


			<div class="row-fluid">
				<div id="listysj" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
					<div name="Index" caption="序号"></div>
					<div name="LSH" caption="流水号" style="display:none"></div>
					<div name="DJXH" caption="企业登记序号"></div>
					<div name="CWBBDL_DM" caption="财务报表大类" style="display:none"></div>
					<div name="QYMC" caption="企业名称" onclick="modify()" type="a"></div>
					<div name="SQRQ" caption="申请日期"></div>
				</div>
			</div>


	</div>
	</div>
	<!--/#page-content-->
	       <script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
        $(top.hangge());
		function modify(rowData){
		  siMenu("104_1","104","审计包录入","sjpackageCtrl/initPackagenr?LSH="+rowData.getValue("LSH")+"&CWBBDL_DM="+rowData.getValue("CWBBDL_DM")+"&DJXH="+rowData.getValue("DJXH"));
		}
	</script>	
</body>
</html>