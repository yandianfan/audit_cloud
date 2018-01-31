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
		
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/bootbox.min.js"></script><!-- 确认窗口 -->
		
<script type="text/javascript">
	
	$(top.hangge());
	
	//新增
	function add(){
		 top.jzts();
		 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="新增";
		 diag.URL = '<%=basePath%>pages/ysjgl/sjb_add.jsp';
		 diag.Width = 500;
		 diag.Height = 200;
		 diag.CancelEvent = function(){ //关闭事件
			 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
				var num = '${page.currentPage}';
			 	if(num == '0'){
			 		top.jzts();
			 		location.href = location.href;
			 	}else{
			 		nextPage(${page.currentPage});
			 	}
			}
			 diag.close();
		 };
		 diag.show();
	}
	
	//修改
	function edit(ZD_ID){
		 top.jzts();
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑";
		 diag.URL = '<%=basePath%>dictionaries/toEdit.do?ZD_ID='+ZD_ID;
		 diag.Width = 223;
		 diag.Height = 175;
		 diag.CancelEvent = function(){ //关闭事件
			 if(diag.innerFrame.contentWindow.document.getElementById('zhongxin').style.display == 'none'){
				 nextPage(${page.currentPage});
			}
			 diag.close();
		 };
		 diag.show();
	}
	
	//删除
	function del(ZD_ID){
		var flag = false;
		if(confirm("确定要删除该数据吗?")){
			flag = true;
		}
		if(flag){
			top.jzts();
			var url = "<%=basePath%>dictionaries/del.do?ZD_ID="+ZD_ID+"&guid="+new Date().getTime();
			$.get(url,function(data){
				if("success" == data.result){
					top.jzts();
					nextPage(${page.currentPage});
				}else{
					top.hangge();
					alert("删除失败，请先删除其下级数据!"); 
				}
			});
		}
	}
	
</script>
</head>

<body>
<div id="page-content" class="clearfix">
<div class="row-fluid">
	
	<!-- 检索  -->
	<form action="<%=basePath%>/dictionaries.do" method="post" name="userForm" id="userForm">
	<input name="PARENT_ID" id="PARENT_ID" type="hidden" value="" />
	<table>
		<tr>
			<td><font color="#808080">检索：</font></td>
			<td><input type="text" name="NAME" value="" placeholder="这里输入名称" style="width:130px;"/></td>
			<td style="vertical-align:top;"><button class="btn btn-mini btn-light" onclick="search();"><i id="nav-search-icon" class="icon-search"></i></button></td>

		</tr>
	</table>
	<!-- 检索  -->

	<table id="table_report" class="table table-striped table-bordered table-hover">
		<thead>
		<tr>
			<th class="center"  style="width: 50px;">序号</th>
			<th class='center'>名称</th>
			<th class='center'>编码</th>
			<th class='center'>级别</th>
			<th class='center'>操作</th>
		</tr>
		</thead>


				<tr>
				<td class="center">1</td>
				<td class='center'><a href="<%=basePath%>/dictionaries.do?PARENT_ID=" title="查看下级"><i class="icon-arrow-right  icon-on-right"></i>&nbsp;传票</a></td>
				<td class='center'>p1</td>
				<td class='center' style="width:35px;"><b class="green">1</b></td>
				<td style="width: 68px;">
				<a class='btn btn-mini btn-info' title="编辑" onclick="edit('')" ><i class='icon-edit'></i></a>
				<a class='btn btn-mini btn-danger' title="删除"  onclick="del('')"><i class='icon-trash'></i></a>
				</tr>
				<tr>
				<td class="center">2</td>
				<td class='center'><a href="<%=basePath%>/dictionaries.do?PARENT_ID=" title="查看下级"><i class="icon-arrow-right  icon-on-right"></i>&nbsp;用电</a></td>
				<td class='center'>p2</td>
				<td class='center' style="width:35px;"><b class="green">1</b></td>
				<td style="width: 68px;">
				<a class='btn btn-mini btn-info' title="编辑" onclick="edit('')" ><i class='icon-edit'></i></a>
				<a class='btn btn-mini btn-danger' title="删除"  onclick="del('')"><i class='icon-trash'></i></a>
				</tr>				

	</table>
	
		<div class="page-header position-relative">
		<table style="width:100%;">
			<tr>
				<td style="vertical-align:top;width:50px;"><a class="btn btn-small btn-success" onclick="add();">新增</a></td>

				<td style="vertical-align:top;"><div class="pagination" style="float: right;padding-top: 0px;margin-top: 0px;"></div></td>
			</tr>
		</table>
		</div>
	
	</form>
</div>
</div>

</body>
</html>