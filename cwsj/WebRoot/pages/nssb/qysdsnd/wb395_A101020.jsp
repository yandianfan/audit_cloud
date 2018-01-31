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
	 
	<title>金融企业收入明细表</title>
</head>
<body>
    <form class="form-horizontal" role="form" id="A101020form">
    
	<div class="page-content">
		<div class="col-xs-12">	
     	 <div class="row page-header text-center">
            <strong class="sb-title3">金融企业收入明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A101020')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>
          
          </div>	
          		
		<table width="70%" style="border-collapse: collapse" align="center" id="tab1" cellpadding="1" cellspacing="1" border="1">
			<tr>
				<td width="10%" align="center">
					行次
				</td>
				<td width="60%" align="center">
					项 目
				</td>
				<td align="center">
					金 额
				</td>
			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td>
					一、营业收入（2+18+27+32+33+34）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YYSR">
                   </fieldset>						
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（一）银行业务收入（3+10）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YHYWSR">
                   </fieldset>					
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.利息收入（4+5+6+7+8+9）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="LXSR">
                   </fieldset>					
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）存放同业
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CFYW">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）存放中央银行
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CFZYYH">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）拆出资金
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CCZJ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）发放贷款及垫资
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FFDKJDZ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）买入返售金融资产
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="MRFSJRZC">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="LXSRQT">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.手续费及佣金收入（11+12+13+14+15+16+17）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="SXFJYJSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）结算与清算手续费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="JSYQSSXF">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）代理业务手续费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="DLYWSXF">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）信用承诺手续费及佣金
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="XYCLSXFJYJ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）银行卡手续费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YHKSXF">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					15
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）顾问和咨询费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GWHZXF">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					16
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）托管及其他受托业务佣金
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="TGJQTSTYWYJ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="SXFJYJSRQT">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（二）证券业务收入（19+26）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZJYWSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1.证券业务手续费及佣金收入（20+21+22+23+24+25）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZJYWSXFJYJSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）证券承销业务
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZQCXYW">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					21
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）证券经纪业务
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZQJJYW">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）受托客户资产管理业务
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="STKHZCGLYW">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					23
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）代理兑付证券
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="DLDFZQ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					24
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）代理保管证券
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="DLBGZQ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					25
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZQYWQT">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					26
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.其他证券业务收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTZQYWSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					27
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（三）已赚保费（28-30-31）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YZBF">
                   </fieldset>		
				</td>
			</tr>
			<tr>
				<td align="center">
					28
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.保险业务收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BXYWSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					29
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：分保费收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FBFSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					30
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.分出保费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FCBF">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					31
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.提取未到期责任准备金
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="TQWDQZRZBJ">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					32
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（四）其他金融业务收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTJRYWSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					33
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（五）汇兑收益（损失以“-”号填列）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HDSY">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					34
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（六）其他业务收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTYWSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					35
				</td>
				<td>
					二、营业外收入（36+37+38+39+40+41+42）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YYWSR">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					36
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
			<tr>
				<td align="center">
					37
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换利得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FHBXZCJHLD">
                   </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					38
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
			<tr>
				<td align="center">
					39
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
			<tr>
				<td align="center">
					40
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
			<tr>
				<td align="center">
					41
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
			<tr>
				<td align="center">
					42
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（七）其他
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
		
		</div>
	</div>
		</form>
		<input type="text" style="display:none" value="A101020" id="FBPZZLDM"/>
        <script type="text/javascript"> 
          function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A101020form");
          $w1.ajax("/wb395A101020Ctrl/update",callback);    
          }
     
        </script>

</body>

<script type="text/javascript"
	src="./nssb/wb395/wb395_A101020.js?<%=System.currentTimeMillis()%>"></script>

</html:html>
