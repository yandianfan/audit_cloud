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
	 
	<title>跨年度结转抵免境外所得税明细表</title>
</head>
<body>

  <div class="page-content">	
		 <div class="row page-header text-center">
            <strong class="sb-title3">跨年度结转抵免境外所得税明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A108030')">自动取数</a>
	                <!--<a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  -->
	                <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
		
       <table width="230%" style="border-collapse: collapse" align="center" id="listA108030_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
             <thead>
					<tr align="center">
						<td rowspan="3" width="3%">
							请&nbsp;选&nbsp;择
						</td>					
						<td rowspan="3" width="3%">
							行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次
						</td>
						<td rowspan="2" width="4%">
							国家
							<br />
							（地区）
						</td>
						<td colspan="6">
							前五年境外所得已缴所得税未抵免余额
						</td>
						<td colspan="6">
							本年实际抵免以前年度未抵免的境外已缴所得税额
						</td>
						<td colspan="6">
							结转以后年度抵免的境外所得已缴所得税额
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
							5
						</td>
						<td>
							6
						</td>
						<td>
							7
							<br />
							(2+3+4+5+6)
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
							11
						</td>
						<td>
							12
						</td>
						<td>
							13(8+9+10+11+12)
						</td>
						<td>
							14(3-9)
						</td>
						<td>
							15(3-9)
						</td>
						<td>
							16(5-11)
						</td>
						<td>
							17(6-12)
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
	       <div id="listA108030" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>
	          <div name="XZ" type="checkbox" delete="true" caption="请选择"></div>	          
	          <div name="SBMX_XH" type="text" caption="000000"></div>
	          <div name="GJ_DQ" type="select" caption="000000"></div>
	          <div name="QWNJWSDWDM5" type="text" caption="000000"></div>
	          <div name="QWNJWSDWDM4" type="text" caption="000000"></div>
	          <div name="QWNJWSDWDM3" type="text" caption="000000"></div>
	          <div name="QWNJWSDWDM2" type="text" caption="000000"></div>
	          <div name="QWNJWSDWDM1" type="text" caption="000000"></div>
	          <div name="QWNJWSDWDM_XJ" type="text" caption="000000"></div>
	          <div name="BNSJDM5" type="text" caption="000000"></div>
	          <div name="BNSJDM4" type="text" caption="000000"></div>
	          <div name="BNSJDM3" type="text" caption="000000"></div>
	          <div name="BNSJDM2" type="text" caption="000000"></div>
	          <div name="BNSJDM1" type="text" caption="000000"></div>
	          <div name="BNSJDM_XJ" type="text" caption="000000"></div>
	          <div name="JZYHDM4" type="text" caption="000000"></div>
	          <div name="JZYHDM3" type="text" caption="000000"></div>
	          <div name="JZYHDM2" type="text" caption="000000"></div>
	          <div name="JZYHDM1" type="text" caption="000000"></div>
	          <div name="JZYHDM0" type="text" caption="000000"></div>
	          <div name="JZYHDM_XJ" type="text" caption="000000"></div>
	       </div>
	   <!-- 
	       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA108030')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA108030');">删除</button>
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
          $w1.pushGrid("listA108030");
          $w1.ajax("/wb395A108030Ctrl/update");    
     }
     
    </script> 	

	<script type="text/javascript" src="./nssb/wb395/wb395_A108030.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>
