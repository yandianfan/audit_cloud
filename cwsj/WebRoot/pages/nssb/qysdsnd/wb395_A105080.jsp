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
	 
	<title>资产折旧、摊销情况及纳税调整明细表</title>
</head>
<body>


   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">资产折旧、摊销情况及纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105080')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
             
		
		<table width="1200" style="border-collapse: collapse" align="center" id="listA105080_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
          <thead>			
			<tr height="20px" align="center">
				<td rowspan="3">
					行&nbsp;&nbsp;次
				</td>
				<td rowspan="3">
					项 目
				</td>
				<td colspan="3">
					账载金额
				</td>
				<td colspan="5">
					税收金额
				</td>
				<td colspan="2">
					纳税调整
				</td>
			</tr>
			<tr height="20px" align="center">
				<td width="100">
					资产账载金额
				</td>
				<td width="100">
					本年折旧、摊销额
				</td>
				<td width="100">
					累计折旧、摊销额
				</td>
				<td width="100">
					资产计税基础
				</td>
				<td width="100">
					按税收一般规定计算的本年折旧、摊销额
				</td>
				<td width="100">
					本年加速折旧额
				</td>
				<td width="100">
					其中：2014年及以后年度新增固定资产加速折旧额
				</td>
				<td width="100">
					累计折旧、摊销额
				</td>
				<td width="100">
					金额
				</td>
				<td width="100">
					调整原因
				</td>
			</tr>
			<tr height="20px" align="center">
				<td width="100">
					1
				</td>
				<td width="100">
					2
				</td>
				<td width="100">
					3
				</td>
				<td width="100">
					4
				</td>
				<td width="100">
					5
				</td>
				<td width="100">
					6
				</td>
				<td width="100">
					7
				</td>
				<td width="100">
					8
				</td>
				<td width="100">
					9(2-5-6)
				</td>
				<td width="100">
					10
				</td>
			</tr>
	           </thead>
	              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>	
		</table>		
       <div class="row-fluid">
         <div class="span">        
	       <div id="listA105080" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" css="width:99%" style="display:none"></div>          
	          <div name="SBMX_XH" css="width:99%"></div>
	          <div name="XM" css="width:99%"></div>
	          <div name="ZZ_ZZJE_JE" type="text" css="width:99%"></div>
	          <div name="ZZ_BNZJTX_JE" type="text" css="width:99%"></div>
	          <div name="ZZ_LJZJTX_JE" type="text" css="width:99%"></div>
	          <div name="SS_ZCJSJC_JE" type="text" css="width:99%"></div>
	          <div name="SS_ASSBNZJTX_JE" type="text" css="width:99%"></div>
	          <div name="SS_BNJSZJ_JE" type="text" css="width:99%"></div>
	          <div name="SS_XZZCZJ_JE" type="text" css="width:99%"></div>
	          <div name="SS_LJZJTX_JE" type="text" css="width:99%"></div>
	          <div name="NS_JE" type="text" css="width:99%"></div>
	          <div name="NS_YY" type="text" css="width:99%"></div>
	       </div>
         </div>		   	       
       </div> 			
		
		</div>
	</div>
	

	
    <input type="text" style="display:none" value="A105080" id="FBPZZLDM"/>
        <script type="text/javascript"> 
       function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH", PZXH);
          $w1.pushGrid("listA105080");
          $w1.ajax("/wb395A105080Ctrl/update",callback);    
       }  
        </script>
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105080.js?<%=System.currentTimeMillis()%>"></script>
</html>
