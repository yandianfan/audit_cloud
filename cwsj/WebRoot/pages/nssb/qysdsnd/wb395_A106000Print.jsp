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
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 
	 
	<title>企业所得税弥补亏损明细表</title>
</head>
<body>

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">企业所得税弥补亏损明细表</strong>
  				<div class="btn-menu noprint">
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
		       
			<table width="100%" style="border-collapse: collapse" align="center" id="listA106000_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
             <thead>				
				<tr align="center">
					<td width="80" rowspan="3" style="text-align: center;">
						行 次
					</td>
					<td width="320" rowspan="3" style="text-align: center;">
						项 目
					</td>
					<td width="160" rowspan="2" style="text-align: center;">
						年 度
					</td>
					<td width="160" rowspan="2" style="text-align: center;">
						纳税调整后所得
					</td>
					<td width="160" rowspan="2" style="text-align: center;">
						合并、分立转入（转出） 可弥补的亏损额
					</td>
					<td width="160" rowspan="2" style="text-align: center;">
						当年可弥补的亏损额
					</td>
					<td width="800" colspan="5" style="text-align: center;">
						以前年度亏损已弥补额
					</td>
					<td width="160" rowspan="2" style="text-align: center;">
						本年度实际弥补的以前年度亏损额
					</td>
					<td width="160" rowspan="2" style="text-align: center;">
						可结转以后
						<br />
						年度弥补的
						<br />
						亏损额
					</td>
				</tr>
				<tr align="center">
					<td width="160" style="text-align: center;">
						前四年度
					</td>
					<td width="160" style="text-align: center;">
						前三年度
					</td>
					<td width="160" style="text-align: center;">
						前二年度
					</td>
					<td width="160" style="text-align: center;">
						前一年度
					</td>
					<td width="160" style="text-align: center;">
						合计
					</td>
				</tr>
				<tr align="center">
					<td width="160" style="text-align: center;">
						1
					</td>
					<td width="160" style="text-align: center;">
						2
					</td>
					<td width="160" style="text-align: center;">
						3
					</td>
					<td width="160" style="text-align: center;">
						4
					</td>
					<td width="160" style="text-align: center;">
						5
					</td>
					<td width="160" style="text-align: center;">
						6
					</td>
					<td width="160" style="text-align: center;">
						7
					</td>
					<td width="160" style="text-align: center;">
						8
					</td>
					<td width="160" style="text-align: center;">
						9
					</td>
					<td width="160" style="text-align: center;">
						10
					</td>
					<td width="160" style="text-align: center;">
						11
					</td>
				</tr>
	           </thead>

            <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>			
       </table>				
       <div class="row-fluid">
         <div class="span">        
	       <div id="listA106000" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" css="width:99%" style="display:none"></div>          
	          <div name="SBMX_XH" css="width:99%"></div>
	          <div name="XM" css="width:99%"></div>
	          <div name="ND" css="width:99%"></div>
	          <div name="NSTZHSD_JE" css="width:99%"></div>
	          <div name="HBFLZRKS_JE" css="width:99%"></div>
	          <div name="DNKNBKS_JE" css="width:99%"></div>
	          <div name="YQNDKSNB4_JE" css="width:99%"></div>
	          <div name="YQNDKSNB3_JE" css="width:99%"></div>
	          <div name="YQNDKSNB2_JE" css="width:99%"></div>
	          <div name="YQNDKSNB1_JE" css="width:99%"></div>
	          <div name="YQNDKSNBHJ_JE" css="width:99%"></div>
	          <div name="SJNBYQNDKS_JE" css="width:99%"></div>
	          <div name="JZYHNDNBKS_JE" css="width:99%"></div>
	       </div>
         </div>		   	       
       </div>   				
	
		</div>
	</div>
		
</body>        		

</html>

