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

	<title>境外所得税收抵免明细表</title>
</head>
<body>

  <div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">境外所得税收抵免明细表</strong>
  				<div class="btn-menu noprint">             
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a> 
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
         
       <table width="100%" style="border-collapse: collapse" align="center" id="listA108000_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
             <thead>	
					<tr align="center">				
						<td rowspan="3" width="4%">
							行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次
						</td>
						<td rowspan="2" width="4%">
							国家（地区）
						</td>
						<td rowspan="2">
							境外税前所得
						</td>
						<td rowspan="2">
							境外所得纳税调整后所得
						</td>
						<td rowspan="2">
							弥补境外以前年度亏损
						</td>
						<td rowspan="2">
							境外应纳税所得额
						</td>
						<td rowspan="2">
							抵减境内亏损
						</td>
						<td rowspan="2">
							抵减境内亏损后的境外应纳税所得额
						</td>
						<td rowspan="2">
							税&nbsp;&nbsp;&nbsp;率
						</td>
						<td rowspan="2">
							境外所得应纳税额
						</td>
						<td rowspan="2">
							境外所得可抵免税额
						</td>
						<td rowspan="2">
							境外所得抵免限额
						</td>
						<td rowspan="2">
							本年可抵免境外所得税额
						</td>
						<td rowspan="2">
							未超过境外所得税抵免限额的余额
						</td>
						<td rowspan="2">
							本年可抵免以前年度未抵免境外所得税额
						</td>
						<td colspan="4">
							按简易办法计算
						</td>
						<td rowspan="2">
							境外所得抵免所得税额合计
						</td>
					</tr>
					<tr align="center">
						<td>
							按低于12.5%的实际税率计算的抵免额
						</td>
						<td>
							按12.5%计算的抵免额
						</td>
						<td>
							按25%计算的抵免额
						</td>
						<td>
							小计
						</td>
					</tr>
					<tr align="center">
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
							5(3-4)
						</td>
						<td>
							6
						</td>
						<td>
							7(5-6)
						</td>
						<td>
							8
						</td>
						<td>
							9(7×8)
						</td>
						<td>
							10
						</td>
						<td>
							11
						</td>
						<td>
							12(10、11孰小)
						</td>
						<td>
							13(11-12)
						</td>
						<td>
							14
						</td>
						<td>
							15
						</td>
						<td>
							16
						</td>
						<td>
							17
						</td>
						<td>
							18(15+16+17)
						</td>
						<td>
							19(12+14+18)
						</td>
					</tr>
				</thead>
				
			  <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
	</table> 			  
       <div class="row-fluid">
         <div class="span">        
	       <div id="listA108000" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>         
	          <div name="SBMX_XH" caption="000000"></div>
	          <div name="GJ_DQ" type="select" caption="000000"></div>
	          <div name="JWSQSD" caption="000000"></div>
	          <div name="JWSDNSTZHSD" caption="000000"></div>
	          <div name="MBJWYQNDKS" caption="000000"></div>
	          <div name="JWYNSSDE" caption="000000"></div>
	          <div name="DJJNKS" caption="000000"></div>
	          <div name="DJJNKS_JWYNSSDE" caption="000000"></div>
	          <div name="SL" caption="000000"></div>
	          <div name="JWSDYNSE" caption="000000"></div>
	          <div name="JWSDKDMSE" caption="000000"></div>
	          <div name="JWSDDMXE" caption="000000"></div>
	          <div name="BNKDMJWSDSE" caption="000000"></div>
	          <div name="WCGJWSDSDMXE_YE" caption="000000"></div>
	          <div name="BNKDMYQNDWDMJWSDSE" caption="000000"></div>
	          <div name="JYJS_DME15" caption="000000"></div>
	          <div name="JYJS_DME16" caption="000000"></div>
	          <div name="JYJS_DME17" caption="000000"></div>
	          <div name="JYJS_XJ" caption="000000"></div>
	          <div name="JWSDDMSDSE_HJ" caption="000000"></div>
	       </div>
      

         </div> 		   	       
       </div>	
       				

  </div>
  		
</body>
</html>
