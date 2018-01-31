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
	
	
		<style type="text/css">
		#dialog-add,#dialog-message,#dialog-comment{width:100%; height:100%; position:fixed; top:0px; z-index:99999999; display:none;}
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
		.content{    padding-top: 10px; padding-bottom: 10px;}
	
		</style>
	
	
	</head> 
<body>
	
		
<div class="container-fluid" id="main-container">

<div id="page-content" >
				<div class="page-header position-relative">
			    <h3>人工审核 <small><i class="icon-double-angle-right"></i> 通用底稿</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn btn-small btn-primary" onclick="upLoadFile()">保存</button>
							    <button type="button" class="btn  btn-primary " onclick="reload();">重置</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>					
  <div class="row-fluid">
		<div class="widget-box">
			<div class="widget-header widget-header-blue widget-header-flat wi1dget-header-large">
				<h4 class="lighter">通用底稿</h4>
			</div>
			<div class="widget-body">			 
			 <div class="widget-main">
				<div id="zhongxin">
				<!-- 
				<input type="hidden" name="TYPE" id="TYPE" value="1"/>
				<input type="hidden" name="isAll" id="isAll" value="no"/>
				 -->
				
				<input type="hidden" name="filePath" id="filePath" value="${dgnr.FILE_PATH}"/>
				<input type="hidden" name="fileName" id="fileName" value="${dgnr.FILE_NAME}"/>
				<input type="hidden" name="LSH" id="LSH" value="${dgnr.LSH}"/>
			
				<table style="width:99%;" id="xtable">
					<tr>
						<td>
							 <input type="text" id="dgmc" class="form-control"  value="${dgnr.DG_MC}" style="width:90%"/>
						</td>
						<td>
							 <input type="text" id="dgdm" class="form-control"  value="${dgnr.DG_DM}"  style="width:90%"/>
						</td>
						<td>
								<input type="text" id="dglx"  value="${dgnr.DGLX_MC}"/>
						</td>						
					</tr>
					<tr>
						<td id="dgnr"class="content" colspan="4">
							 <script id="editor" type="text/plain" style="width:99%;height:299px;">${dgnr.DGNR}</script>
						</td>
					</tr>
				</table>
				
							<form class="form-horizontal" role="form" id="jcsxform" enctype='multipart/form-data'>
									<fieldset>
									
										<div class="form-group">
											<label for="ds_host" class="col-sm-2 control-label">附件上传</label>
											<div class="col-sm-4">
                                               <input type="file" style="display:inline-block;width:99%" class="form-control"  id="file"/>   
											</div>	
											<label for="ds_host" class="col-sm-2 control-label">已上传附件</label>
											<div  class="col-sm-4">
											    <span href="#" style="display:inline-block;margin-top: 5px;text-decoration:underline ;cursor:pointer;font-color:red" onClick="download()">${dgnr.FILE_NAME}</span>                                            
											</div>									
										</div>


									</fieldset>																																																																																
								</form>				
				</div>	
			 </div><!--/widget-main-->
			</div><!--/widget-body-->
		</div>

 
 
 
	<!-- PAGE CONTENT ENDS HERE -->
  </div><!--/row-->
	
</div><!--/#page-content-->
</div><!--/.fluid-container#main-container-->
		
		
		
		<!-- 编辑框-->
		<script type="text/javascript" charset="utf-8">window.UEDITOR_HOME_URL = "<%=path%>/plugins/ueditor/";</script>
		<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.js"></script>
		<!-- 编辑框-->

		<!--引入属于此页面的js -->
		<script type="text/javascript" src="pages/dggl/tydg/mytydgmain.js"></script>		
	</body>
</html>

