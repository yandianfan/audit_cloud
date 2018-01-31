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
			    <h4>任务分配 <small><i class="icon-double-angle-right"></i> 人员选择</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-xs">
							    <button type="button" class="btn  btn-primary"  onclick="queding();">确定</button>
							    <button type="button" class="btn  btn-primary" onclick="winclose();">关闭</button>
						</div>			     
			     </ul>			    
			    </h4>			     
			</div>
			<input id="lsh" value="${lsh}" style="display:none">
			 <div class="row-fluid">
				  <div class="widget-body">
				   <div class="widget-main">
					<form class="form-horizontal" role="form" id="jggwryform">
									<fieldset>
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">部门</label>
											<div class="col-sm-10">
												<select id="zzjgselect" onchange="selectRy(this)" class="form-control"  data-placeholder="请选择部门"
													title="申报表">
												</select>
											</div>
										</div>
								 
										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">岗位</label>
											<div class="col-sm-10">
												<select id="gwselect" onchange="selectRy(this)" class="form-control"  data-placeholder="请选择岗位"
													title="申报表">
												</select>
											</div>
										</div>						
								

										<div class="form-group">
											<label class="col-sm-2 control-label" for="ds_host">人员</label>
											<div class="col-sm-10">
												<select id="ryselect"  class="form-control"  data-placeholder="请选择人员"
													title="申报表">
												</select>
											</div>
										</div>																				
									</fieldset>
					</form>
				   </div>
				  </div>
				</div>

<!-- PAGE CONTENT ENDS HERE -->
						 </div><!--/row-->
	
					</div><!--/#page-content-->



		
		<!-- 引入 -->
       <script type="text/javascript" src="pages/login/head.js"></script>
		<script type="text/javascript">
       $(top.hangge());
       function selectRy(){
          var jsonData = $.parseJSON($("#jsonData").html()); 
          var selectNodes=jsonData.select;
			//先获取父节点被选中项
		  var gwSelectedvalue=$("#gwselect option:selected").val();
		  var jgSelectedvalue=$("#zzjgselect option:selected").val();
	      var $w1=new  $w("Windking");
          $w1.pushData("gwSelectedvalue", gwSelectedvalue);
          $w1.pushData("jgSelectedvalue", jgSelectedvalue);
          $w1.ajax("/rwfpCtrl/ryinit");       
       }
       function queding(){
          if($("#ryselect").find("option:selected").val()==undefined){
             Modal.sysAlert("请选择人员");
          }else{
             var lsh=$("#lsh").val();
             var rydm=$("#ryselect").find("option:selected").val();
             var zzjgdm=$("#zzjgselect").find("option:selected").val();
   		     var $w1=new  $w("Windking");
             $w1.pushData("lsh", lsh);
             $w1.pushData("rydm", rydm);
             $w1.pushData("zzjgdm", zzjgdm);
             $w1.ajax("/rwfpCtrl/rwfp");       
          }
       }
       function winclose(){
          Dialog.close();
       }
		</script>
	</body>
</html>
