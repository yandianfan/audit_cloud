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
	
<body>		
<div class="container-fluid" id="main-container">
		<table style="width:100%;" border="0">
			<tr>
				<td style="width:15%;" valign="top" bgcolor="#F9F9F9">
		         <input type="text" class="input-medium search-query"/>
		         <button  onclick="searchNode();" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>
					<div style="overflow:scroll; width:400px; height:350px;">
						<div style="width:15%;">
							<ul id="ysjtree" class="ztree" onclick="opentree()"></ul>
						</div>
					</div>
				</td>
				<td style="width:85%;" valign="top" >
					<iframe name="treeFrame" id="treeFrame" frameborder="0" src="<%=basePath%>/tydgdyCtrl/initTydgmain?DG_DM=${DG_DM}" style="margin:0 auto;width:100%;height:100%;"></iframe>
				</td>
			</tr>
		</table>
</div>
	<script type="text/javascript">
		function treeFrameT(){
			var hmainT = document.getElementById("treeFrame");
			var bheightT = document.documentElement.clientHeight;
			hmainT.style.width = "100%";
			hmainT.style.height = (bheightT-7) + "px";
		}
		treeFrameT();
		window.onresize=function(){  
			treeFrameT();
		};
	</script>
	<script type="text/javascript" src="pages/zbgl/tydgdy.js"></script>
	</body>

</html>

