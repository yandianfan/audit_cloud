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
	<meta charset="utf-8" />

		<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
     <style media=print type="text/css"> 
     .noprint{visibility:hidden}
     </style>      
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 

	<title>所得减免优惠明细表</title>
</head>
<body>
 
   	<div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">所得减免优惠明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107020')">自动取数</a>
	                <!--<a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  -->
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	         
           
		<table width="1200" style="border-collapse: collapse" align="center" id="listA107020_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
          <thead>			
			<tr align="center">				
				<td rowspan="2" width="80">
					行 次
				</td>
				<td rowspan="2" width="160">
					项 目
				</td>
				<td width="160">
					项目收入
				</td>
				<td width="160">
					项目成本
				</td>
				<td width="160">
					相关税费
				</td>
				<td width="160">
					应分摊期间费用
				</td>
				<td width="160">
					纳税调整额
				</td>
				<td width="160">
					项目所得额
				</td>
				<td width="160">
					减免所得额
				</td>
			</tr>
			<tr align="center">
				<td width="160">
					1
				</td>
				<td width="160">
					2
				</td>
				<td width="160">
					3
				</td>
				<td width="160">
					4
				</td>
				<td width="160">
					5
				</td>
				<td width="160">
					6(1-2-3-4+5)
				</td>
				<td width="160">
					7
				</td>
			</tr>

                 </thead>
              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>  	 
		</table>

       <div class="row-fluid">
         <div class="span">
	           <div id="listA107020" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">               
					<div name="PZXH" style="display:none" caption="凭证序号"></div>					
					<div name="SBMX_XH" caption="行次"  css="width:99%"></div>
					<div name="XMMC" caption="项目"  css="width:99%;text-align:left"></div>
					<div name="XMSR" css="width:99%"></div>
					<div name="XMCB" css="width:99%"></div>
					<div name="XGSF" css="width:99%"></div>
					<div name="YFTQJFY" css="width:99%"></div>
					<div name="NSTZE" css="width:99%"></div>
					<div name="XMSDE" css="width:99%"></div>
					<div name="JMSDE" css="width:99%"></div>
                </div>
         </div> 		   	       
       </div> 
	
	</div>

</body>
</html>
