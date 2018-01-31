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
		#dialog-add,#dialog-add2,#dialog-message,#dialog-comment{width:100%; height:100%; position:fixed; top:0px; z-index:99999999; display:none;}
		.commitopacity{position:absolute; width:100%; height:700px; background:#7f7f7f; filter:alpha(opacity=50); -moz-opacity:0.5; -khtml-opacity: 0.5; opacity: 0.5; top:0px; z-index:99999;}
		.commitbox{width:100%; margin:0px auto; position:absolute; top:120px; z-index:99999;}
		.commitbox_inner{width:96%; height:255px;  margin:6px auto; background:#efefef; border-radius:5px;}
		.commitbox_top{width:100%; height:250px; margin-bottom:10px; padding-top:10px; background:#FFF; border-radius:5px; box-shadow:1px 1px 3px #e8e8e8;}
		.commitbox_top textarea{width:95%; height:195px; display:block; margin:0px auto; border:0px;}
		.commitbox_cen{width:95%; height:40px; padding-top:10px;}
		.commitbox_cen div.left{float:left;background-size:15px; background-position:0px 3px; padding-left:18px; color:#f77500; font-size:16px; line-height:27px;}
		.commitbox_cen div.left img{width:30px;}
		.commitbox_cen div.right{float:right; margin-top:7px;}
		.commitbox_cen div.right span{cursor:pointer;}
		.commitbox_cen div.right span.save{border:solid 1px #c7c7c7; background:#6FB3E0; border-radius:3px; color:#FFF; padding:5px 10px;}
		.commitbox_cen div.right span.quxiao{border:solid 1px #f77400; background:#f77400; border-radius:3px; color:#FFF; padding:4px 9px;}
		</style>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>


</head>
<body>
	<div class="container-fluid" id="main-container">



		<div id="page-content" class="clearfix">
			<div class="page-header position-relative">
			    <h3>选择树 <small><i class="icon-double-angle-right"></i>选择</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="queding()">确定</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>			
			<div class="row-fluid">

		
						<div class="tab-content">

									<table style="width:100%;" border="0">
										<tr>
											<td style="width:98%;" valign="top" bgcolor="#F9F9F9">
									         <input type="text" class="empty" id="serchekey"/>
									         <input type="text" style="display:none" id="RETCODE" value="${RETCODE}"/> 
									         <input type="text" style="display:none" id="RETNAME" value="${RETNAME}"/> 
									         <input type="text" style="display:none" id="multiSelect" value="${pd.multiSelect}"/>
									         <input type="text" style="display:none" id="isParent" value="${pd.isParent}"/>
									         <button  onclick="searchNode();" class="btn btn-purple btn-small">搜索 <i class="icon-search icon-on-right"></i></button>
												<div style="overflow:scroll; width:100%; height:350px;">
													<div style="width:15%;">
														<ul id="tyztree" check="${pd.checkStyle}" class="ztree"></ul>
													</div>
												</div>
											</td>
	
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
	<div style="display:none"><xmp id="treeNode">${treeNode}</xmp></div> 
	<script type="text/javascript" src="public/js/ztree.js"></script>
</body>
</html>

