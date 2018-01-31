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
	 
	 
	<title>捐赠支出纳税调整明细表</title>
</head>
<body>
  <div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">捐赠支出纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105070')">自动取数</a>
	                <!-- <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> -->
	                <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	 
     
     <table width="100%" style="border-collapse: collapse" align="center" id="listA105070_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
        <thead>
		   <tr height="20px" align="center">
				<td rowspan="3">
					请&nbsp;选&nbsp;择
				</td>		   
				<td rowspan="3">
						行次
				</td>
				<td rowspan="2">
						受赠单位名称
				</td>
				<td colspan="4">
						公益性捐赠
				</td>
				<td>
						非公益性捐赠
				</td>
				<td rowspan="2">
						纳税调整金额
				</td>
			</tr>
			<tr height="20px" align="center">
				<td>
						账载金额
				</td>
				<td>
						按税收规定计算的扣除限额
				</td>
				<td>
						税收金额
				</td>
				<td>
						纳税调整金额
				</td>
				<td>
						账载金额
				</td>
			</tr>
			<tr height="20px" align="center">
				<td>
						1
				</td>
				<td>
						2
				</td>
				<td>
						3
				</td>
				<td>
						4
				</td>
				<td>
						5（2-4）
				</td>
				<td>
						6
				</td>
				<td>
						7（5+6）
				</td>
			</tr>
		</thead>
		
              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
     </table>
                   
       <div class="row-fluid">
         <div class="span">       
	       <div id="listA105070" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>
	          <div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
	          <div name="SBMX_XH" type="text" css="width:99%;text-align:center" caption="行次"></div>
	          <div name="DWMC" type="text" css="width:99%;text-align:left" caption="受赠单位名称"></div>
	          <div name="GYZZ_JE" type="text" caption="公益性捐赠账载金额"></div>
	          <div name="GYKCXE_JE" type="text" caption="公益性捐赠按税收规定计算的扣除限额"></div>
	          <div name="GYSSJE_JE" type="text" caption="公益性捐赠税收金额"></div>
	          <div name="GYNSTZJE_JE" type="text" caption="公益性捐赠纳税调整金额"></div>
	          <div name="FGYZZ_JE" type="text" caption="非公益性捐赠账载金额"></div>
	          <div name="NSTZJE_JE" type="text" caption="纳税调整金额"></div>
	       </div>
	 <!-- 
       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA105070')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA105070');">删除</button>
		   </div>	   	 
	  -->      
    
	       
         </div> 	       
       </div>

  </div>	
  
    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH",PZXH);
          $w1.pushGrid("listA105070");
          $w1.ajax("/wb395A105070Ctrl/update");    
     }
     
    </script>     

</body>
</html>
