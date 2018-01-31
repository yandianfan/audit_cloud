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
	 
	<title>一般企业收入明细表</title>
</head>
<body>
         
         <form class="form-horizontal" role="form" id="A101010form">
	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">一般企业收入明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A101010')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>        
          </div>			

		<table width="70%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr height="20px">
				<td width="10%" align="center">
					行次
				</td>
				<td width="55%" align="center">
					项 目
				</td>
				<td align="center">
					金 额
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					1
				</td>
				<td>
					一、营业收入（2+9）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YYSW">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（一）主营业务收入（3+5+6+7+8）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZYYWSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售商品收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="XSSPSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					4
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：非货币性资产交换收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FHBZCJHSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.提供劳务收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="TGNWSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建造合同收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="JZHTSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.让渡资产使用权收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="RDZCSYQSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					8
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZYYWQT">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					9
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（二）其他业务收入（10+12+13+14+15）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTYWSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					10
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售材料收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="XSCLSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					11
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：非货币性资产交换收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FHBXZCJHSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					12
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.出租固定资产收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CZGDZCSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					13
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.出租无形资产收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CZWXZCSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					14
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.出租包装物和商品收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CZBZWHSPSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					15
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTYWSRQT">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					16
				</td>
				<td>
					二、营业外收入（17+18+19+20+21+22+23+24+25+26）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YYWSR">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					17
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（一）非流动资产处置利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FLDZCCZLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					18
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FHBXZCHHLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（三）债务重组利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZWCZLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（四）政府补助利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZFBZLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					21
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（五）盘盈利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="PYLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					22
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（六）捐赠利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="JZLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					23
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（七）罚没利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FMLD">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					24
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（八）确实无法偿付的应付款项
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QSWFCFDYFKX">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					25
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（九）汇兑收益
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HZSY">
                   </fieldset>
				</td>
			</tr>
			<tr height="20px">
				<td align="center">
					26
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（十）其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YYWSRQT">
                   </fieldset>
                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" style="display:none">
                   <fieldset>
				</td>
			</tr>
		</table>

</div></div>
	</form>
	       <input type="text" style="display:none" value="A101010" id="FBPZZLDM"/>
	       
        <script type="text/javascript"> 
          function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A101010form");
          $w1.ajax("/wb395A101010Ctrl/update",callback);    
          }
     
        </script>

</body>


</html>

