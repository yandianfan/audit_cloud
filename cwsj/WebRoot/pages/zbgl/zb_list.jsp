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
			    <h3>指标管理 <small><i class="icon-double-angle-right"></i> 指标定义</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="query();">查询</button>
							    <button type="button" class="btn  btn-primary" onclick="add();">新增</button>
							    <button type="button" class="btn  btn-primary " onclick="reload();">重置</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>
			 <div class="row-fluid">
				  <div class="widget-header widget-header-small">
					<h5 class="lighter">查询条件</h5>
						<span class="widget-toolbar">
							<a href="javascript:void(0)" data-action="collapse"><i class="icon-chevron-up"></i></a>
						</span>
				  </div>
				  <div class="widget-body">
				   <div class="widget-main">
					<form class="form-horizontal" role="form" id="cxtjform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-1 control-label" for="ds_host">指标类型</label>
											<div class="col-sm-2">
												<select id="zblxselect"  class="form-control"  data-placeholder="请选择指标类型"
													title="指标类型">
												</select>
											</div>
											<label class="col-sm-1 control-label" for="ds_name">税种</label>
											<div class="col-sm-2">
												<select id="zsxm"   class="form-control"data-placeholder="请选择对应税种"
													title="对应税种">
													<option value="51">企业所得税</option>
												</select>
											</div>
							                <label class="col-sm-1 control-label" for="ds_host">申报表</label> 
							                <div class="col-sm-2">
												<select id="jslsjbselect"  class="form-control"  data-placeholder="请选择申报表"
													title="申报表">
												</select>	
										     </div>	
											<label for="disabledSelect" class="col-sm-1 control-label">指标名称</label>
											<div class="col-sm-2">
												<input type="text" class="form-control" id="fxzbmc"	placeholder="请选输入指标名称">
											</div>										     											
										</div>
										 <!-- 
										<div class="form-group">
										  <div class="col-sm-15">
											<label><input type="checkbox" name="bcd" value="1"><i>✓</i>复选框</label>
											<label><input type="checkbox" name="bcd" value="2"><i>✓</i>复选框</label>
											<label><input type="checkbox" name="bcd" value="3"><i>✓</i>复选框禁用</label>
											<label><input type="checkbox" name="bcd" value="4"><i>✓</i>复选框禁用已选</label>
											<label><input type="radio" name="abc" value="1"><i>✓</i>单选框</label>
											<label><input type="radio" name="abc"  value="2"><i>✓</i>单选框</label>
											<label><input type="radio" name="abc"   value="3"><i>✓</i>单选框禁用</label>
											<label><input type="radio" name="def"  value="3"><i>✓</i>单选框禁用已选</label>
				                    	  </div>	 		
										</div>									
										 -->
									<!-- 
										<div class="form-group">
										  <div class="col-sm-10">
											<label class="checkbox-inline"><input type="checkbox" name="bcd" value="1"/>复选框</label>
											<label class="checkbox-inline"><input type="checkbox" name="bcd" value="2"/>复选框</label>
											<label class="checkbox-inline"><input type="checkbox" name="bcd" value="3"/>复选框</label>
											<label class="checkbox-inline"><input type="checkbox" name="bcd" value="4"/>复选框禁用已选</label>
											<label class="radio-inline"><input type="radio" name="abc" value="1"/>单选框</label>
											<label class="radio-inline"><input type="radio" name="abc" value="2"/>单选框</label>
											<label class="radio-inline"><input type="radio" name="abc"  value="3"/>单选框禁用</label>
											<label class="radio-inline"><input type="radio" name="def" value="4"/>单选框禁用已选</label>
				                    	  </div>	 		
										</div>									
									 -->	

										
									</fieldset>
					</form>
				   </div>
				  </div>
				</div>
							
					
			

<div class="row-fluid">
	<div id="listzb" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
	   <!-- <div name="Index"  caption="序号"></div> -->
	   <div name="checkbox" type="checkbox" isAll="true" caption="选择"></div> 
	   <div name="FXZB_DM" caption="指标代码"></div>
	   <div name="FXZB_MC" caption="指标名称"  onclick="modify()" type="a"></div>
	   <div name="FXZBLX_MC" caption="指标类型"></div>
	</div>
</div>

<!-- PAGE CONTENT ENDS HERE -->
						 </div><!--/row-->
	
					</div><!--/#page-content-->



		
		<!-- 引入 -->
       <script type="text/javascript" src="pages/login/head.js"></script>
		<script type="text/javascript">
       $(top.hangge());
		function add(){
			//openMaxWindow("BLH/qysdsndIndexBLH_init&pzxh="+pzxh, 800, 700);
			siMenu("201_1","201","指标配置","BLH/zbdyBLH_zbinit");
		}
		function query(){
		     var $w1=new  $w("Windking");
             $w1.pushForm("cxtjform");
             $w1.pushGrid("listzb");
             $w1.ajax("/BLH/zbdyBLH_querryZb");	
		}
		function modify(rowData){
		  siMenu("201_1","201","指标配置","BLH/zbdyBLH_zbdyinit&zbdm="+rowData.getValue("FXZB_DM"));
		}
		//$("#bcd").checked="1";
		$("input:checkbox[name='bcd'][value='2']").attr('checked','true');
		//$("input:radio[name='abc'][value='2']").attr('checked','true');


		</script>
	</body>
</html>
