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
     <style media=print type="text/css"> 
     .noprint{visibility:hidden}
     </style>         
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 
	<title>企业所得税汇总纳税分支机构所得税分配表</title>
</head>
<body>

	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">企业所得税汇总纳税分支机构所得税分配表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A109010')">自动取数</a>
	                <!--<a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  --> 
	                <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>        
          </div>	         

         <form class="form-horizontal" role="form" id="A109010form">         
			<table width="150%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td align="left" width="20%">
						总机构名称（盖章）:
					</td>
					<td align="left"  width="35%">
					    <input type="text"  class="form-control" id="ZJGMC">
					</td>
					<td colspan="2" width="45%" align="right">
						金额单位: 元（列至角分）
					</td>
				</tr>
			</table>
					
			<table width="150%" style="border-collapse: collapse" align="center" id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr align="center" height="33">
					<td width="20%">
						总机构纳税人识别号
					</td>
					<td width="20%">
						应纳所得税额
					</td>
					<td width="20%">
						总机构分摊所得税额
					</td>
					<td width="20%">
						总机构财政集中分配所得税额
					</td>
					<td width="20%">
						分支机构分摊所得税额
					</td>
				</tr>

				<tr align="center" height="33">
					<td width="20%">
					    <input type="text"  class="form-control" id="ZJGNSRSBM">
					</td>
					<td width="20%">
					    <input type="text"  class="form-control" id="ZJGYNSDSE_JE">
					</td>
					<td width="20%">
					    <input type="text"  class="form-control" id="ZJGFTSDSE_JE">
					</td>
					<td width="20%">
					    <input type="text"  class="form-control" id="ZJGCZJZFBSDSE_JE">
					</td>
					<td width="20%">
					    <input type="text"  class="form-control" id="FZJGFTSDSE_JE">
					    <input type="text" class="form-control" id="PZXH" value="${PZXH}" style="display:none">
					</td>
				</tr>
			</table> 
         </form>
	
			<table width="150%" style="border-collapse: collapse" align="center" id="listA109010_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
              <thead>			
                <tr align="center" height="33">
                	<td colspan="9" width="100%">
						分支机构情况
					</td>		  	
                </tr>				
				<tr align="center" height="33">
				    <td rowspan="2" width="8%">
						请&nbsp;选&nbsp;择
					</td>
					<td rowspan="2" width="8%">
						行&nbsp;&nbsp;次
					</td>					

					<td rowspan="2" width="12%">
						分支机构统一社会信用代码
					</td>
					<td rowspan="2" width="12%">
						分支机构名称
					</td>
					<td colspan="3" width="36%">
						三项因素
					</td>
					<td rowspan="2" width="12%">
						分配比例
					</td>
					<td rowspan="2" width="12%">
						分配所得税额
					</td>
				</tr>
				<tr align="center" height="33">
					<td width="12%">
						营业收入
					</td>
					<td width="12%">
						职工薪酬
					</td>
					<td width="12%">
						资产总额
					</td>
				</tr>
              </thead>
					
			</table>	
			
       <div class="row-fluid">
         <div class="span">         
	       <div id="listA109010" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>
	          <div name="XZ" type="checkbox" delete="true"  caption="请选择"></div>	          
	          <div name="SBMX_XH" type="text" css="width:99%" caption="000000"></div>
	          <div name="FZJGNSRSBM" type="text" css="width:99%" caption="000000"></div>
	          <div name="FZJGMC" type="text" css="width:99%" caption="000000"></div>
	          <div name="YYZE_JE" type="text" css="width:99%" caption="000000"></div>
	          <div name="ZGXC_JE" type="text" css="width:99%" caption="000000"></div>
	          <div name="ZCZE_JE" type="text" css="width:99%" caption="000000"></div>
	          <div name="FP_BL" type="text" css="width:99%" caption="000000"></div>
	          <div name="FPSDSE_JE" type="text" css="width:99%" caption="000000"></div>
	       </div>
	      <!-- 
       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA109010')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA109010');">删除</button>
		   </div>	      
	       --> 

         </div> 		   	       
       </div>
       						

		  
		</div>
	</div>
        <script type="text/javascript"> 
          function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A109010form"); 
          
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH",PZXH);
          $w1.pushGrid("listA109010");
          $w1.ajax("/wb395A109010Ctrl/update");          
          }
 
          function closeAbPage(){
          window.close();
          }     
        </script>	
	
</body>
</html>
