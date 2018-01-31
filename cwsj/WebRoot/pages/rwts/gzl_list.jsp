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

		<div class="widget-header">
			<h4 class="lighter smaller"><i class="icon-rss orange"></i>任务中心</h4>
			<div class="widget-toolbar no-border">
				<ul class="nav nav-tabs" id="gzl-tab">
					<li class="active"><a data-toggle="tab" href="#taskdb-tab">待办任务</a></li>
					<li><a data-toggle="tab" href="#task-tab1">在办任务</a></li>
					<li><a data-toggle="tab" href="#task-tab2">退回任务</a></li>
					<!-- <li><a data-toggle="tab" href="#task-tab2">未完成任务</a></li> -->
					<li><a data-toggle="tab" href="#task-tab3">已办任务</a></li>
				</ul>
			</div>
		</div>
		
		<div class="widget-body">
		 <div class="widget-main padding-5">
			<div class="tab-content padding-8">
				<div id="taskdb-tab" class="tab-pane  active">
                  <table id="table_bug_report" class="table table-striped table-bordered table-hover">
						<c:forEach items="${dbList}" var="dbrw" varStatus="vs">				
								<tr>
								  <td>${dbrw.DJXH }</td>
								  <td><a  onClick="openGzlxx('${dbrw.LCSLH}','${dbrw.DJXH}','${dbrw.LSH}')">${dbrw.QYMC}</a></td>
								  <td>${dbrw.YWLC_MC}</td>			
								  <td>${dbrw.YWHJ_MC}</td>	
								  <td>推送人：${dbrw.XM}</td>
								  <td>推送时间:${dbrw.LR_SJ}</td>
								  <td>${dbrw.LCSLH}</td>					
								</tr>
					   	</c:forEach>
                 </table>
				</div>
				
				
				
				<div id="task-tab1" class="tab-pane">
					<table id="table_bug_report" class="table table-striped table-bordered table-hover">
						<c:forEach items="${zbList}" var="zbrw" varStatus="vs">						
								<tr>
								  <td>${zbrw.DJXH }</td>
								  <td><a  onClick="openGzlxx('${zbrw.LCSLH}','${zbrw.DJXH}','${zbrw.LSH}')">${zbrw.QYMC}</a></td>
								  <td>${zbrw.YWLC_MC}</td>			
								  <td>${zbrw.YWHJ_MC}</td>
								  <td>推送人：${zbrw.XM}</td>
								  <td>推送时间:${zbrw.LR_SJ}</td>	
								  <td>${zbrw.LCSLH}</td>					
								</tr>
					   	</c:forEach>
					</table>

				</div>
				
				

					<div id="task-tab2" class="tab-pane">
					<table id="table_bug_report" class="table table-striped table-bordered table-hover">
						<c:forEach items="${wwcList}" var="wwcrw" varStatus="vs">						
								<tr>
								  <td>${wwcrw.DJXH }</td>
								  <td><a  onClick="openGzlxx('${wwcrw.LCSLH}','${wwcrw.DJXH}','${wwcrw.LSH}')">${wwcrw.QYMC}</a></td>
								  <td>${wwcrw.YWLC_MC}</td>			
								  <td>${wwcrw.YWHJ_MC}</td>	
								  <td>退回人员：${wwcrw.XM}</td>
								  <td>退回时间:${wwcrw.LR_SJ}</td>
								  <td>${wwcrw.LCSLH}</td>					
								</tr>
					   	</c:forEach>
					</table>
					
					
				</div>		
			

				
				<div id="task-tab3" class="tab-pane">
					<table id="table_bug_report" class="table table-striped table-bordered table-hover">
						<c:forEach items="${ywcList}" var="ywcrw" varStatus="vs">						
								<tr>
								  <td>${ywcrw.DJXH }</td>
								  <td><a  onClick="openGzlxx('${ywcrw.LCSLH}','${ywcrw.DJXH}','${ywcrw.LSH}')">${ywcrw.QYMC}</a></td>
								  <td>${ywcrw.YWLC_MC}</td>			
								  <td>${ywcrw.YWHJ_MC}</td>	
								  <td>推送人：${ywcrw.XM}</td>
								  <td>推送时间:${ywcrw.LR_SJ}</td>
								  <td>${ywcrw.LCSLH}</td>					
								</tr>
					   	</c:forEach>
					</table>					
				</div>				
				
			</div>
		 </div><!--/widget-main-->
		</div><!--/widget-body-->

	<script type="text/javascript">
        $(top.hangge());
		function modify(rowData){
		  //siMenu("101_1","101","标准数据维护","sjywhCtrl?LSH="+rowData.getValue("LSH"));
		  openMaxWindow("sjywhCtrl?LSH="+rowData.getValue("LSH")+"&CWBBDL_DM="+rowData.getValue("CWBBDL_DM"), 800, 700);
		}
		function openGzlxx(lcslh,djxh,lsh,qymc){
		    var $w1=new  $w("Windking");
		    $w1.pushData("LCSLH", lcslh);
		    $w1.pushData("DJXH", djxh);
		    $w1.pushData("LSH", lsh);
		    $w1.ajax("/gzlCtrl/openGzl",openRwxx);			   
		}
		function openRwxx(responseText){
		   var lclj=responseText.data.LCLJ;
		   var lcslh=responseText.data.LCSLH;
		   var djxh=responseText.data.DJXH;
		   var lsh=responseText.data.LSH;
		   var bjbj=responseText.data.BJBJ;
		   openMaxWindow(getRootPath()+lclj+"?LCSLH="+lcslh+"&LSH="+lsh+"&DJXH"+djxh+"&BJBJ"+bjbj, 800, 700);
		}
	</script>	
</body>
</html>