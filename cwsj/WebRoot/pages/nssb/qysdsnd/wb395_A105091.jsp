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
	 
	<title>资产损失（专项申报）税前扣除及纳税调整明细表</title>
</head>
<body>

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">资产损失（专项申报）税前扣除及纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105091')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
       
			<table width="1280" style="border-collapse: collapse" align="center" id="listA105091_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr align="center">
					<td rowspan="2" width="80">
						行 次
					</td>
					<td width="240">
						项 目
					</td>
					<td width="160">
						账载金额
					</td>
					<td width="160">
						处置收入
					</td>
					<td width="160">
						赔偿收入
					</td>
					<td width="160">
						计税基础
					</td>
					<td width="160">
						税收金额
					</td>
					<td width="160">
						纳税调整金额
					</td>
				</tr>
				<tr align="center">
					<td width="240">
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
						6（5-3-4）
					</td>
					<td width="160">
						7（2-6）
					</td>
				</tr>
	           </thead>				
	               <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>							
			</table> 
			
       <div class="row-fluid">
         <div class="span">        
	       <div id="listA105091" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" css="width:99%" style="display:none"></div>          
	          <div name="SBMX_XH" css="width:99%;text-align:center"></div>
	          <div name="XM" type="text" css="width:99%;text-align:left"></div>
	          <div name="ZZJE" type="text" css="width:99%"></div>
	          <div name="CZSR_JE" type="text" css="width:99%"></div>
	          <div name="PCSR_JE" type="text" css="width:99%"></div>
	          <div name="JSJC_JE" type="text" css="width:99%"></div>
	          <div name="SSJE" type="text" css="width:99%"></div>
	          <div name="NSTZJE" type="text" css="width:99%"></div>
	       </div>
         </div>		   	       
       </div> 		
	
		</div>
	</div>	
	
      <input type="text" style="display:none" value="A105091" id="FBPZZLDM"/>
       <script type="text/javascript"> 
       function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH", PZXH);
          $w1.pushGrid("listA105091");
          $w1.ajax("/wb395A105091Ctrl/update",callback);    
       }          
        </script>	
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105091.js?<%=System.currentTimeMillis()%>"></script>
</html>
