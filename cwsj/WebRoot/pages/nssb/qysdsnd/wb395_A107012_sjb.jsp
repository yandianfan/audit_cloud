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
<html lang="en">
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 

	<title>综合利用资源生产产品取得的收入优惠明细表</title>
</head>
<body>

  <div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">综合利用资源生产产品取得的收入优惠明细表</strong>
  				<div class="btn-menu2">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107012')">自动取数</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
       <table width="100%" style="border-collapse: collapse" align="center" id="listA107012_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
           <thead>
					<tr align="center">
						<td rowspan="3" width="3%">
					                请&nbsp;选&nbsp;择
				        </td>					
						<td rowspan="3" width="3%">
							行&nbsp;次
						</td>
						<td rowspan="2" width="4%">
							生产的产品名称
						</td>
						<td colspan="3">
							资源综合利用认定证书基本情况
						</td>
						<td rowspan="2">
							属于《资源综合利用企业所得税优惠目录》类别
						</td>
						<td rowspan="2">
							综合利用的资源
						</td>
						<td rowspan="2">
							综合利用的资源占生产产品材料的比例
						</td>
						<td rowspan="2">
							《资源综合利用企业所得税优惠目录》规定的标准
						</td>
						<td rowspan="2">
							符合条件的综合利用资源生产产品取得的收入总额
						</td>
						<td rowspan="2">
							综合利用资源减计收入
						</td>
					</tr>
					<tr align="center">
						<td>
							《资源综合利用认定证书》取得时间
						</td>
						<td>
							《资源综合利用认定证书》有效期
						</td>
						<td>
							《资源综合利用认定证书》编号
						</td>
					</tr>
					<tr align="center">
						<td width="14%">
							1
						</td>
						<td width="9%">
							2
						</td>
						<td width="9%">
							3
						</td>
						<td width="9%">
							4
						</td>
						<td width="9%">
							5
						</td>
						<td width="9%">
							6
						</td>
						<td width="9%">
							7
						</td>
						<td width="9%">
							8
						</td>
						<td width="9%">
							9
						</td>
						<td width="9%">
							10(9×10%)
						</td>
					</tr>
           	</thead>
           	  <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
           	  <input type="text" style="display:none" value="${DJXH}" id="DJXH"/>
	 </table>
	            	  
       <div class="row-fluid">
         <div class="span">       
	       <div id="listA107012" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>
	          <div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
	          <div name="SBMX_XH" type="text" caption="000000"></div>
	          <div name="CPMC" type="text" css="text-align:left" caption="000000"></div>
	          <div name="QDSJ" type="date" caption="000000"></div>
	          <div name="YXQQ" type="date" caption="000000"></div>
	          <div name="BH" type="text" caption="000000"></div>
	          <div name="LBDM" type="text" caption="000000"></div>
	          <div name="ZYDM" type="text" caption="000000"></div>
	          <div name="BL" type="text" caption="000000"></div>
	          <div name="BZDM" type="text" caption="000000"></div>	          
	          <div name="SRZE" type="text" caption="000000"></div>
	          <div name="JJSR" type="text" caption="000000"></div>
	       </div>

       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA107012')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA107012');">删除</button>
		   </div>
       

		   	       
         </div> 	       
       </div>
 </div>	

    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          var DJXH=$("#DJXH").val();
          $w1.pushData("PZXH",PZXH);
          $w1.pushData("DJXH",DJXH);
          $w1.pushGrid("listA107012");
          $w1.ajax("/wb395A107012Ctrl/update");    
     }

    function closeAbPage(){
          window.close();
          }                
    </script> 

	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107012.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>

