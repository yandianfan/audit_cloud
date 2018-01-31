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
			    <h3>任务管理 <small><i class="icon-double-angle-right"></i> 审计任务分配</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="query();">查询</button>
							    <button type="button" class="btn  btn-primary" onclick="rgfp();">人工分配</button>
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
									<label class="col-sm-1 control-label" for="ds_host">所属期起</label>
									<div class="col-sm-3">
					                   <input class="date-picker"  id="Startrq" type="text" data-date-format="yyyy-mm-dd"  placeholder="开始日期"/>
									</div>
									<label for="disabledSelect" class="col-sm-1 control-label">所属期止</label>
									<div class="col-sm-3">
					                    <input class="date-picker" id="Endrq" type="text" data-date-format="yyyy-mm-dd"  placeholder="结束日期"/>
									</div>
									<label for="disabledSelect" class="col-sm-1 control-label">企业名称</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="qymc" placeholder="企业名称">
									</div>
								</div>
							</fieldset>
				</form>
             </div>
</div></div>


			<div class="row-fluid">
				<div id="fpList" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
				   <div name="check" type="radio" caption="选择"></div>
					<div name="Index" caption="序号"></div>
					<div name="LSH" caption="流水号"></div>
					<div name="DJXH" caption="企业登记序号"></div>
					<div name="QYMC" caption="企业名称"></div>
					<div name="SQRQ" caption="申请日期"></div>
					<div name="SSSQ" caption="所属时期"></div>
					<div name="XM" caption="指定审计人员"></div>
				</div>
			</div>


	</div>
	</div>
	<!--/#page-content-->
	<script type="text/javascript" src="pages/login/head.js"></script>       
	<script type="text/javascript">
        $(top.hangge());
        			//日期框
	    $('.date-picker').datepicker();
		function query(){
		     var $w1=new  $w("Windking");
             $w1.pushForm("cxtjform");
             $w1.ajax("/rwfpCtrl/querry");	
		}
		//菜单权限
		function editRights(){
			 top.jzts();
			 var diag = new top.Dialog();
			 diag.Drag = true;
			 diag.Title = "菜单权限";
			 diag.URL = '<%=basePath%>role/auth.do?ROLE_ID=';
			 diag.Width = 280;
			 diag.Height = 370;
			 diag.CancelEvent = function(){ //关闭事件
				diag.close();
			 };
			 diag.show();
		}
	function rgfp(){
	   var LSH="";
	   $("input:radio[name='check']").each(function(checkindex,checkitem){//遍历每一行
		   if(checkitem.checked){
              LSH=$("td[name='LSH']")[checkindex].innerText;			   
		   }
	   });	
	   if(LSH==""||LSH==null){
	      Modal.sysAlert("请选择待分配任务");
	     return false;
	   }
       var diag = new top.Dialog();
	   diag.Drag = true;
	   diag.Title ="任务分配";
	   diag.URL = '<%=basePath%>rwfpCtrl/fpryinit?LSH='+LSH;
	   diag.Width = 280;
	   diag.Height = 370;
	   diag.show();
	}	
	function fprw(){
	   alert(1);
	}		
	</script>	
</body>
</html>