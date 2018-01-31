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
	 
	<title>境外所得纳税调整后所得明细表</title>
</head>
<body>

  <div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">境外所得纳税调整后所得明细表</strong>
  				<div class="btn-menu noprint"> 
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

       <table width="100%" style="border-collapse: collapse" align="center" id="listA108010_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
             <thead>
					<tr align="center">					
						<td rowspan="3" width="4%">
							行&nbsp;&nbsp;次
						</td>
						<td rowspan="2" width="4%">
							国家
							<br />
							（地区）
						</td>
						<td colspan="8">
							境外税后所得
						</td>
						<td colspan="4">
							境外所得可抵免的所得税额
						</td>
						<td rowspan="2">
							境外税前所得
						</td>
						<td rowspan="2">
							境外分支机构收入与支出纳税调整额
						</td>
						<td rowspan="2">
							境外分支机构调整分摊扣除的有关成本费用
						</td>
						<td rowspan="2">
							境外所得对应调整的相关成本费用支出
						</td>

						<td rowspan="2">
							境外所得纳税调整后所得
						</td>
					</tr>
					<tr align="center">
						<td>
							分支机构机构营业利润所得
						</td>
						<td>
							股息、红利等权益性投资所得
						</td>
						<td>
							利息所得
						</td>
						<td>
							租金所得
						</td>
						<td>
							特许权使用费所得
						</td>
						<td>
							财产转让所得
						</td>
						<td>
							其他所得
						</td>
						<td>
							小计
						</td>
						<td>
							直接缴纳的所得税额
						</td>
						<td>
							间接负担的所得税额
						</td>
						<td>
							享受税收饶让抵免税额
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
						</td>
						<td>
							8
						</td>
						<td>
							9(2+3+4+5+6+7+8)
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
							13(10+11+12)
						</td>
						<td>
							14(9+10+11)
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
							18(14+15-16-17)
						</td>
					</tr>
                </thead>
                
              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
	   </table> 
	                   
       <div class="row-fluid">
         <div class="span">        
	       <div id="listA108010" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>	          
	          <div name="SBMX_XH" caption="000000"></div>
	          <div name="GJ_DQ" type="select" caption="000000"></div>
	          <div name="JWSHSD_FZJGYYLR" caption="000000"></div>
	          <div name="JWSHSD_QYXTZ" caption="000000"></div>
	          <div name="JWSHSD_LX" caption="000000"></div>
	          <div name="JWSHSD_ZJ" caption="000000"></div>
	          <div name="JWSHSD_TXQSYF" caption="000000"></div>
	          <div name="JWSHSD_CCZR" caption="000000"></div>
	          <div name="JWSHSD_QT" caption="000000"></div>
	          <div name="JWSHSD_XJ" caption="000000"></div>
	          <div name="JWSDKDMSDSE_ZJJN" caption="000000"></div>
	          <div name="JWSDKDMSDSE_JJFD" caption="000000"></div>
	          <div name="JWSDKDMSDSE_XSSHRR" caption="000000"></div>
	          <div name="JWSDKDMSDSE_XJ" caption="000000"></div>
	          <div name="JWSQSD" caption="000000"></div>
	          <div name="JWFZJGSRZCNSTZE" caption="000000"></div>
	          <div name="JWFZJGTZFTKCCB" caption="000000"></div>
	          <div name="JWSDDYTZCBZC" caption="000000"></div>
	          <div name="JWSDNSTZHSD" caption="000000"></div>
	       </div>
  

         </div> 		   	       
       </div>                                

 </div>	   

</body>
</html>
