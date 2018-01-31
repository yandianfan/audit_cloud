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
	 
	<title>境外分支机构弥补亏损明细表</title>
</head>
<body>

  <div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">境外分支机构弥补亏损明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A108020')">自动取数</a>
	               <!--<a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  --> 
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
	
       <table width="100%" style="border-collapse: collapse" align="center" id="listA108020_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
             <thead>
					<tr align="center">					
						<td rowspan="4" width="3%">
							行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次
						</td>
						<td rowspan="3" width="4%">
							国家
							<br />
							（地区）
						</td>
						<td colspan="4">
							非实际亏损额的弥补
						</td>
						<td colspan="14">
							实际亏损额的弥补
						</td>
					</tr>
					<tr align="center">
						<td rowspan="2">
							以前年度结转尚未弥补的非实际亏损额
						</td>
						<td rowspan="2">
							本年发生的非实际亏损额
						</td>
						<td rowspan="2">
							本年弥补的非实际亏损额
						</td>
						<td rowspan="2">
							结转以后年度弥补的非实际亏损额
						</td>
						<td colspan="6">
							以前年度结转尚未弥补的实际亏损额
						</td>
						<td rowspan="2">
							本年发生的实际亏损额
						</td>
						<td rowspan="2">
							本年弥补的以前年度实际亏损额
						</td>
						<td colspan="6">
							结转以后年度弥补的实际亏损额
						</td>
					</tr>
					<tr align="center">
						<td>
							前五年
						</td>
						<td>
							前四年
						</td>
						<td>
							前三年
						</td>
						<td>
							前二年
						</td>
						<td>
							前一年
						</td>
						<td>
							小计
						</td>
						<td>
							前四年
						</td>
						<td>
							前三年
						</td>
						<td>
							前二年
						</td>
						<td>
							前一年
						</td>
						<td>
							本年
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
							5(2+3-4)
						</td>
						<td>
							6
						</td>
						<td>
							7
						</td>
						<td>
							8
						</td>
						<td>
							9
						</td>
						<td>
							10
						</td>
						<td>
							11(6+7+8+9+10)
						</td>
						<td>
							12
						</td>
						<td>
							13
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
							18
						</td>
						<td>
							19(14+15+16+17+18)
						</td>
					</tr>
	            </thead>

              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
	</table>
       <div class="row-fluid">
         <div class="span">        
	       <div id="listA108020" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>         
	          <div name="SBMX_XH" caption="000000"></div>
	          <div name="GJ_DQ" type="select" caption="000000"></div>
	          <div name="FSJKS_YQJZWMB" caption="000000"></div>
	          <div name="FSJKS_BNFSKS" caption="000000"></div>
	          <div name="FSJKS_BNMBYQKS" caption="000000"></div>
	          <div name="FSJKS_JZYHMBKS" caption="000000"></div>
	          <div name="SJKS_YQJZSJKS5" caption="000000"></div>
	          <div name="SJKS_YQJZSJKS4" caption="000000"></div>
	          <div name="SJKS_YQJZSJKS3" caption="000000"></div>
	          <div name="SJKS_YQJZSJKS2" caption="000000"></div>
	          <div name="SJKS_YQJZSJKS1" caption="000000"></div>
	          <div name="SJKS_YQJZSJKS_XJ" caption="000000"></div>
	          <div name="SJKS_BNFS" caption="000000"></div>
	          <div name="SJKS_BNMBYQ" caption="000000"></div>
	          <div name="SJKS_JZYHMBSJKS4" caption="000000"></div>
	          <div name="SJKS_JZYHMBSJKS3" caption="000000"></div>
	          <div name="SJKS_JZYHMBSJKS2" caption="000000"></div>
	          <div name="SJKS_JZYHMBSJKS1" caption="000000"></div>
	          <div name="SJKS_JZYHMBSJKS0" caption="000000"></div>
	          <div name="SJKS_JZYHMBSJKS_XJ" caption="000000"></div>
	       </div>


         </div>		   	       
       </div>   
       	        
 
  </div>	  	

	<script type="text/javascript" 	src="./nssb/wb395/wb395_A108020.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>

