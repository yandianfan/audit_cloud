<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />

		<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
     <style media=print type="text/css"> 
	.noprint{visibility:hidden}
	</style>
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>交换意见记录</title>
	
  </head>
  
  <body>
  
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">交换意见记录</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div> 			        
          </div>
   				<div class="btn-menu_qy noprint">
  				    <a class="btn btn-small btn-success" onclick="submitYj()">提交意见</a>
				</div> 	         
          
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

 <tr height=19>
  <td colspan=6 height=19 align="right">索引号：1-5</td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td colspan=5 height=16 width=661>被审核单位名称：${QYMC}</td>
  <td>金额单位：元</td>
 </tr>
 
 <tr>
  <td rowspan=2 width="160">会计期间或会计截止日：</td>
  <td rowspan=2 width="160">${KJQJ}</td>
  <td width="160">编制人</td>
  <td width="160">${BZR}</td>
  <td width="160">日期</td>
  <td width="160">${BZRQ}</td>
 </tr>
 
 <tr>
  <td width="160">复核人</td>
  <td width="160">${FHR}</td>
  <td width="160">日期</td>
  <td width="160">${FHRQ}</td>
 </tr>
</table>   

  <form class="form-horizontal" role="form" id="Tsdg_0105form">
    <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">	 
 <tr>
  <td colspan=3>发现问题及处理意见</td>
  <td colspan=3>交换意见后的处理结果</td>
 </tr>
 
 <tr>
  <td colspan="3">　 
    <textarea class="form-control" id="COL1" rows=10"></textarea>
  </td>
  <td colspan="3">
    <textarea class="form-control" id="COL2" rows="10"></textarea>
  </td>
 </tr>
    </table>
	</form> 
	        
   <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">  
 <tr>
  <td colspan=3 width="480">被审核单位参加人员</td>
  <td colspan=3 width="480">审核单位（所）参加人员</td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td width="50">请&nbsp;选&nbsp;择</td>
  <td>姓名</td>
  <td>职务</td>
  <td>姓名</td>
  <td colspan=2>职务</td>
 </tr>
   </table> 
   
       <div class="row-fluid">
         <div class="span">     
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>				
				</div>              
       	   <div class="btn-group btn-group-xs noprint">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_1')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist_1');">删除</button>
		   </div>				
         </div> 		   	       
       </div>     
         
   			<form class="form-horizontal" role="form" id="formmap">
   			    <input style="display:none" id="JDSMJL" />
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form>           
         
       </div>
    </div>      
        
    <script type="text/javascript"> 
        function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0105form");
           $w1.pushGrid("gridlist_1"); 
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0105Ctrl/save");		
        }
		  function submitYj(){
             var LSH=$("#LSH").val();
   		     var $w1=new  $w("Windking");
             $w1.pushData("LSH", LSH);
             $w1.ajax("/zbxxylCtrl/qyyjth");  
		  }       
        function closeAbPage(){
           window.close();
        }        
    </script>    
  </body>
</html>