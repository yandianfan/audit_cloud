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
	 
	<title>金融企业支出明细表</title>
</head>
<body>

         <form class="form-horizontal" role="form" id="A102020form">
         
   	<div class="page-content">
		<div class="col-xs-12">         		
		   <div class="row page-header text-center">
                <strong class="sb-title3">金融企业支出明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A102020')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
            </div>			
		
		<table width="70%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
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
					一、营业支出（2+15+25+31+32）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YYZC">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）银行业务支出（3+11）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YHYWZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.银行利息支出（4+5+6+7+8+9+10）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YHLXZC">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）同业存放
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="TYCF">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）向中央银行借款
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XZYYHJK">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）拆入资金
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZRJE">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）吸收存款
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XSCK">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）卖出回购金融资产
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="MSHGJRZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）发行债券
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="FXZQ">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）其他
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YHLXZC_QT">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.银行手续费及佣金支出（12+13+14）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YHSXFJYJZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）手续费支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="SXFZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）佣金支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）其他
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YHSXFJYJZC_QT">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					15
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）保险业务支出（16+17-18+19-20+21+22-23+24）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BXYWZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					16
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.退保金
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="TBJ">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.赔付支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="PFZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减：摊回赔付支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="THPFZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.提取保险责任准备金
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="TQBXZRZBJ">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减：摊回保险责任准备金
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="THBXZRZBJ">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					21
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.保单红利支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BDHLZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.分保费用
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="FBFY">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					23
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;减：摊回分保费用
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="THFBFY">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					24
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.保险业务手续费及佣金支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BXYWSXFJYJZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					25
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）证券业务支出（26+30）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQYWZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					26
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.证券业务手续费及佣金支出（27+28+29）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQYWSXFJYJZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					27
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）证券经纪业务手续费支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJJYWSXFZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					28
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）佣金支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQYWSXFJYJZC_YJZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					29
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）其他
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQYWSXFJYJZC_QT">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					30
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.其他证券业务支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QTZQYWZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					31
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他金融业务支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QTJRYWZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					32
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）其他业务成本
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QTYWCB">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					33
				</td>
				<td>
					二、营业外支出（34+35+36+37+38+39）
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YYWZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					34
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非流动资产处置损失
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="FLDZCCZSS">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					35
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）非货币性资产交换损失
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="FHBZCJHSS">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					36
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）债务重组损失
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZWCZSS">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					37
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）捐赠支出
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="JZZC">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					38
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）非常损失
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="FCSS">
                    </fieldset>				
				</td>
			</tr>
			<tr>
				<td align="center">
					39
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）其他
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YYWZC_QT">
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
	<input type="text" style="display:none" value="A102020" id="FBPZZLDM"/>
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A102020form");
          $w1.ajax("/wb395A102020Ctrl/update",callback);    
     }
     
    </script>	
	<script type="text/javascript" src="./nssb/wb395/wb395_A102020.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html:html>
