<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
#dialog-add,#dialog-add2,#dialog-message,#dialog-comment {
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0px;
	z-index: 99999999;
	display: none;
}

.commitopacity {
	position: absolute;
	width: 100%;
	height: 700px;
	background: #7f7f7f;
	filter: alpha(opacity = 50);
	-moz-opacity: 0.5;
	-khtml-opacity: 0.5;
	opacity: 0.5;
	top: 0px;
	z-index: 99999;
}

.commitbox {
	width: 100%;
	margin: 0px auto;
	position: absolute;
	top: 120px;
	z-index: 99999;
}

.commitbox_inner {
	width: 96%;
	height: 255px;
	margin: 6px auto;
	background: #efefef;
	border-radius: 5px;
}

.commitbox_top {
	width: 100%;
	height: 250px;
	margin-bottom: 10px;
	padding-top: 10px;
	background: #FFF;
	border-radius: 5px;
	box-shadow: 1px 1px 3px #e8e8e8;
}

.commitbox_top textarea {
	width: 95%;
	height: 195px;
	display: block;
	margin: 0px auto;
	border: 0px;
}

.commitbox_cen {
	width: 95%;
	height: 40px;
	padding-top: 10px;
}

.commitbox_cen div.left {
	float: left;
	background-size: 15px;
	background-position: 0px 3px;
	padding-left: 18px;
	color: #f77500;
	font-size: 16px;
	line-height: 27px;
}

.commitbox_cen div.left img {
	width: 30px;
}

.commitbox_cen div.right {
	float: right;
	margin-top: 7px;
}

.commitbox_cen div.right span {
	cursor: pointer;
}

.commitbox_cen div.right span.save {
	border: solid 1px #c7c7c7;
	background: #6FB3E0;
	border-radius: 3px;
	color: #FFF;
	padding: 5px 10px;
}

.commitbox_cen div.right span.quxiao {
	border: solid 1px #f77400;
	background: #f77400;
	border-radius: 3px;
	color: #FFF;
	padding: 4px 9px;
}
</style>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>

<style type="text/css">
* {
	font-size: 12px;
	margin: 0;
	padding: 0;
}

fieldset {
	padding: 10px;
	margin: 10px;
	width: 270px;
	color: #333;
	border: #06c dashed 1px;
}

legend {
	font-size: 15px;
	margin-bottom: 0px !important;
}

ul {
	list-style-type: none;
	margin: 8px 0 4px 0;
}

li {
	margin-top: 4px;
}

.tab-content {
	padding: 0px 0px;
}
</style>
</head>
	<script type="text/javascript">
/**
		$(document).ready(function() {
          var sjkmsjx=$("#serchekey").val();
          if(sjkmsjx!=null&&sjkmsjx!=""){
             searchNode();
          }
		})
**/
		function queding1() {
			var zTree = $.fn.zTree.getZTreeObj("tyztree");
			nodes = zTree.getSelectedNodes();
			var sfselect1 = false;
			var sfselect2 = false;
			var conditions = document.getElementsByName("check1");
			for (var i = 0; i < conditions.length; i++) {
				if (conditions[i].checked == true) {
					sfselect1 = true;
					$("#RETCODE")
							.val(
									conditions[i].parentNode.parentNode.children[1].innerText);
					$("#RETNAME")
							.val(
									conditions[i].parentNode.parentNode.children[2].innerText
											+ "("
											+ conditions[i].parentNode.parentNode.children[1].innerText
											+ ")");
					Dialog.close();
					return;
				}
			}
			/**  $("input[name='check1']").each(function(){
				 if(this.checked==true){
			        sfselect1=true;
					$("#RETCODE").val($(this).parent().next().text());
					$("#RETNAME").val($(this).parent().next().next().text());	
					console.log($(this).parent().next().text());
					console.log($(this).parent().next().next().text());
					Dialog.close();	
					return ;							       
			     }	    
			  });		**/
			var conditions = document.getElementsByName("check2");
			for (var i = 0; i < conditions.length; i++) {
				if (conditions[i].checked == true) {
					sfselect2 = true;
					$("#RETCODE")
							.val(
									conditions[i].parentNode.parentNode.children[1].innerText);
					$("#RETNAME")
							.val(
									conditions[i].parentNode.parentNode.children[2].innerText
											+ "("
											+ conditions[i].parentNode.parentNode.children[1].innerText
											+ ")");
					Dialog.close();
					return;
				}
			}
			if (nodes.length == 0 && sfselect1 == false && sfselect2 == false) {
				alert("请选择数据!");
				return;
			}
			$("#RETCODE").val(nodes[0].id);
			$("#RETNAME").val(nodes[0].name);
			Dialog.close();
		}
	</script>
<body>
	<div class="container-fluid" id="main-container">



		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
				<h3>
					匹配 <small><i class="icon-double-angle-right"></i>智能匹配</small>
					<ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							<button type="button" class="btn btn-small btn-primary"
								onclick="queding1()">确定</button>
						</div>
					</ul>
				</h3>
			</div>
			<div class="row-fluid">


				<div class="tab-content">

					<table style="width:99%;" border="0">
						<tr>
							<td style="width:50%;heigth:30%;padding:0px;margin-bottom:0px"
								bgcolor="#F9F9F9">
								<fieldset style="width:95%">
									<legend>上次匹配数据项</legend>
									<div class="row-fluid">
																				<div style="overflow:scroll; width:100%; height:150px;" >
										<table id="table_report"
											class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center" style="width: 20%;">选择</th>
													<th class='center' style="width: 30%;">科目代码</th>
													<th class='center' style="width: 50%;">科目名称</th>
												</tr>
											</thead>

<c:forEach items="${scbzsjxList}" var="sjx1" varStatus="vs">
											<tr>
												<td><input type="checkbox" value="" name="check1" /></td>
												<td>${sjx1.SJX_XH}</td>
												<td>${sjx1.SJX_MC}</td>
											</tr>
</c:forEach>
</div>
										</table>
									</div>
								</fieldset>
							</td>
							<td style="width:50%;" valign="top" bgcolor="#F9F9F9" rowspan="2">
								<fieldset>
									<legend>人工匹配</legend>
									<!-- 
	<input type="text" class="empty" value="${sjkmsjx}"  id="serchekey" /> <input
										type="text" style="display:none" id="RETCODE"
										value="${RETCODE}" /> <input type="text" style="display:none"
										id="RETNAME" value="${RETNAME}" />								
									 -->
									 	<input type="text" class="empty" value=""  id="serchekey" /> <input
										type="text" style="display:none" id="RETCODE"
										value="${RETCODE}" /> <input type="text" style="display:none"
										id="RETNAME" value="${RETNAME}" />	
									<button onclick="searchNode();"
										class="btn btn-purple btn-small">
										Search <i class="icon-search icon-on-right"></i>
									</button>
									<div style="overflow:scroll; width:100%; height:330px;">
										<div style="width:15%;">
											<ul id="tyztree" check="enable:true;chkStyle:radio"
												class="ztree"></ul>
										</div>
									</div>
								</fieldset>
							</td>
						</tr>
						<tr>
							<td style="width:50%;" valign="top" bgcolor="#F9F9F9">
								<fieldset  style="width:95%">
									<legend>建议匹配(匹配率最高)</legend>
									<div class="row-fluid">
																				<div style="overflow:scroll; width:100%; height:150px;" >
										<table id="table_report"
											class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th class="center" style="width: 10%;">选择</th>
													<th class='center' style="width: 20%;">科目代码</th>
													<th class='center' style="width: 50%;">科目名称</th>
													<th class='center' style="width: 20%;">匹配次数</th>
												</tr>
											</thead>
											
											<c:forEach items="${jybzsjxList}" var="sjx2" varStatus="vs">
												<tr>
												<td><input type="checkbox" value="" name="check2" /></td>
												<td>${sjx2.SJX_XH}</td>
												<td>${sjx2.SJX_MC}</td>
												<td>${sjx2.XH}</td>
											    </tr>										
											</c:forEach>
</div>
										</table>
									</div>
								</fieldset>
							</td>
							<td></td>
						</tr>
					</table>

				</div>



				<!-- PAGE CONTENT ENDS HERE -->
			</div>
			<!--/row-->

		</div>
		<!--/#page-content-->
	</div>
	<!--/.fluid-container#main-container-->
	<div style="display:none">
		<xmp id="treeNode">${treeNode}</xmp>
	</div>
	<script type="text/javascript" src="public/js/ztree.js"></script>
</body>
</html>

