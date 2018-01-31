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
	



		
<div class="container-fluid" id="main-container">			
			<div id="page-content">
			
			<div class="page-header position-relative">
			    <h3>数据维护 <small><i class="icon-double-angle-right"></i> 通用底稿配置</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="query();">查询</button>
							    <button type="button" class="btn  btn-primary" onclick="add();">新增</button>
							    <button type="button" class="btn  btn-primary" onclick="deleteDg();">删除</button>
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
									<label class="col-sm-1 control-label" for="ds_host">底稿类型</label>
									<div class="col-sm-3">
										<select id="dglxselect"  class="form-control" title="底稿类型">
										</select>
									</div>
									<label for="disabledSelect" class="col-sm-1 control-label">底稿名称</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="DG_MC"
											placeholder="底稿名称">
									</div>
								</div>
							</fieldset>
			    	</form>				   
				   </div>
				 
				</div>
			  </div>					
				
					
			<div class="row-fluid">
				<div id="listdg" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
					<div name="Index" caption="序号"></div>
					<div name="checkbox" type="checkbox" delete=true caption="选择"></div>
					<div name="DG_DM" caption="底稿代码" style="display:none"></div>
					<div name="DG_MC" caption="底稿名称" type="a" onclick="modify()"></div>
					<div name="DGLX_DM" caption="底稿类型" style="display:none"></div>
					<div name="DGLX_MC" caption="底稿类型"></div>
				</div>
			</div>			
 
<!-- PAGE CONTENT ENDS HERE -->
						 </div><!--/row-->
	
					</div><!--/#page-content-->
					  
	



		
		<!-- 引入 -->
		<script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
		top.hangge();
		function add(){
			//openMaxWindow("BLH/qysdsndIndexBLH_init&pzxh="+pzxh, 800, 700);
			//siMenu("602_1","602","通用底稿配置","tydgdyCtrl/initDgdy");
			siMenu("602_1","602","通用底稿配置","tydgdyCtrl/initTydgmain");
		}
		function deleteDg(){
			 var $w1=new  $w("Windking");
             $w1.pushForm("cxtjform");
             $w1.pushAllcheckedGrid("listdg");
             $w1.ajax("/tydgdyCtrl/deleteDg",deleteRow);		
		}		
		function  deleteRow(){
		   deleteGridRow("listdg");	
		}            
		function query(){
		     var $w1=new  $w("Windking");
             $w1.pushForm("cxtjform");
             $w1.ajax("/tydgdyCtrl/querryDg");	
		}
		function modify(rowData){
		  //siMenu("602_1","602","底稿配置","tydgdyCtrl/initDgdy?DG_DM="+rowData.getValue("DG_DM"));
		  siMenu("602_1","602","底稿配置","tydgdyCtrl/initTydgmain?DG_DM="+rowData.getValue("DG_DM"));
		}		
	</script>		
	</body>
</html>
