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
			    <h3>企业数据推送<small><i class="icon-double-angle-right"></i>人工审核</small>
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
								<!-- 
									<label class="col-sm-1 control-label" for="ds_host">标准大类</label>
									<div class="col-sm-3">
										<select id="sjxdlSelect"  class="form-control" title="标准数据大类">
										</select>
									</div>
									<label for="disabledSelect" class="col-sm-1 control-label">标准小类</label>
									<div class="col-sm-3">
										<select id="sjxxlSelect" pid="sjxdlSelect" class="form-control" title="标准数据小类">
										</select>
									</div>								
								 -->

									<label for="disabledSelect" class="col-sm-1 control-label">企业名称</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="qymc"
											placeholder="企业名称">
									</div>
									<!-- 
														<label class="col-sm-1 control-label" for="ds_host">审计状态</label>
									<div class="col-sm-3">
										<select id="sjztSelect"  class="form-control" title="审计状态">
										</select>
									</div>					
									 -->
								
								</div>
							</fieldset>
				</form>
             </div>
</div></div>


			<div class="row-fluid">
				<div id="listysj" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
					<div name="Index" caption="序号"></div>
					<div name="LSH" caption="流水号"></div>
					<div name="DJXH" caption="企业登记序号"></div>
					<div name="CWBBDL_DM" caption="财务报表大类" style="display:none"></div>
					<div name="QYMC" caption="企业名称" onclick="modify()" type="a"></div>
					<div name="SQRQ" caption="申请日期"></div>
					<div name="SSSQ" caption="所属时期"></div>
					<div name="SJZT" caption="审计状态"></div>
					<div name="TH_SJ" caption="退回时间"></div>
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
		  siMenu(rowData.getValue("LSH"),'lm1','数据审核',"zbxxylCtrl/initZbsjtz?LSH="+rowData.getValue("LSH")+"&DJXH="+rowData.getValue("DJXH")+"&SSSQ="+rowData.getValue("SSSQ"));
		}
	</script>	
</body>
</html>