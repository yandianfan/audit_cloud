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
	 
	 
	<title>企业重组纳税调整明细表</title>
</head>
<body>

	   <form class="form-horizontal" role="form" id="A105100form">
	
	   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">企业重组纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105100')">自动取数</a>
	                <!--<a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  -->
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

		<table width="98%" style="border-collapse: collapse" align="center"
			cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
			id="tab1">
			<tr align="center">
				<td rowspan="3">
					行 次
				</td>
				<td rowspan="3">
					项 目
				</td>
				<td colspan="3">
					一般性税务处理
				</td>
				<td colspan="3">
					特殊性税务处理
				</td>
				<td rowspan="2">
					纳税调整金额
				</td>
			</tr>
			<tr align="center">
				<td>
					账载金额
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
				<td>
					税收金额
				</td>
				<td>
					纳税调整金额
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
					3(2-1)
				</td>
				<td>
					4
				</td>
				<td>
					5
				</td>
				<td>
					6(5-4)
				</td>
				<td>
					7(3+6)
				</td>
			</tr>
			<tr>
				<td align="center" width="10%">
					1
				</td>
				<td width="20%">
					一、债务重组
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZ_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：以非货币性资产清偿债务
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCQCZW_NSTZJE">
                   </fieldset>
				</td>
			</tr>
            <tr>
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;债转股
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZZG_NSTZJE">
                   </fieldset>
				</td>
			</tr>			
			<tr>
				<td align="center">
					4
				</td>
				<td>
					二、股权收购
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：涉及跨境重组的股权收购
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="GQSG_SJKJCZGQSG_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					三、资产收购
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：涉及跨境重组的资产收购
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCSG_SJKJCZGQSG_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					四、企业合并（9+10）
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYHB_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：同一控制下企业合并
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="TIKZXQYHB_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非同一控制下企业合并
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="FTIKZXQYHB_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					五、企业分立
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QYFL_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					六、其他
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：以非货币性资产对外投资
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="YFBBZCDWTZ_NSTZJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					合计（1+4+6+8+11+12）
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_YBX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_YBX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_YBX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_TSX_ZZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_TSX_SSJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_TSX_NSTZJE">
                   </fieldset>
				</td>
				<td width="10%">
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_NSTZJE">
                   </fieldset>

                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" value="${PZXH}" style="display:none">
                   <fieldset>                    
				</td>
			</tr>

		</table>



	</div></div>
	</form>
    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105100form");
          $w1.ajax("/wb395A105100Ctrl/update");    
     }
     
    </script>	
	
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105100.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>
