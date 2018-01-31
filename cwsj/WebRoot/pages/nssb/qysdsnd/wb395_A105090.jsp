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
	 
	<title>资产损失税前扣除及纳税调整明细表</title>
</head>
<body>



   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">资产损失税前扣除及纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105090')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
		  
    <form class="form-horizontal" role="form" id="A105090form1">        
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
			<tr align="center">
				<td rowspan="2" width="80">
					行 次
				</td>
				<td rowspan="2" width="320">
					项 目
				</td>
				<td width="160">
					账载金额
				</td>
				<td width="160">
					税收金额
				</td>
				<td width="160">
					纳税调整金额
				</td>
			</tr>
			<tr align="center">
				<td width="160">
					1
				</td>
				<td width="160">
					2
				</td>
				<td width="160">
					3（1-2）
				</td>
			</tr>
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="1" />
					1
				</td>
				<td width="320">
					一、清单申报资产损失（2+3+4+5+6+7+8）
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE1">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE1">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE1">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form2">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="2" />
					2
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;（一）正常经营管理活动中，按照公允价格销售、转让、变卖非货币资产的损失
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE2">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE2">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE2">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form3">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="3" />
					3
				</td>
				<td width="320"> 
					&nbsp;&nbsp;&nbsp;&nbsp;（二）存货发生的正常损耗
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE3">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE3">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE3">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form4">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="4" />
					4
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;（三）固定资产达到或超过使用年限而正常报废清理的损失
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE4">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE4">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE4">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form5">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="5" />
					5
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;（四）生产性生物资产达到或超过使用年限而正常死亡发生的资产损失
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE5">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE5">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE5">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form6">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="6" />
					6
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;（五）按照市场公平交易原则，通过各种交易场所、市场等买卖债券、股票、期货、基金以及金融衍生产品等发生的损失
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE6">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE6">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE6">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form7">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="7" />
					7
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;（六）分支机构上报的资产损失
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE7">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE7">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE7">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form8">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="8" />
					8
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;（七）其他
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE8">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE8">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE8">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form9">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="9" />
					9
				</td>
				<td width="320">

					<a tabindex="-1" onclick="openFB('A105091')">二、专项申报资产损失（填写A105091）</a>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE9">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE9">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE9">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form10">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="10" />
					10
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a tabindex="-1" onclick="openFB('A105091')">（一）货币资产损失（填写A105091）</a>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE10">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE10">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE10">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form11">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="11" />
					11
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a  tabindex="-1" onclick="openFB('A105091')">（二）非货币资产损失（填写A105091）</a>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE11">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE11">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE11">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form12">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="12" />
					12
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a tabindex="-1" onclick="openFB('A105091')">（三）投资损失（填写A105091）</a>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE12">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE12">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE12">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form13">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="13" />
					13
				</td>
				<td width="320">
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a tabindex="-1" onclick="openFB('A105091')">（四）其他（填写A105091）</a>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE13">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE13">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE13">
                    </fieldset>
				</td>
			</tr>
		</table>
    </form>			
		
    <form class="form-horizontal" role="form" id="A105090form14">		
		<table width="880" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr>
				<td align="center" width="80">
					<input type="hidden" name="sbmxxh" value="14" />
					14
				</td>
				<td width="320">
					合计（1+9）
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="ZZJE14">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="SSJE14">
                    </fieldset>
				</td>
				<td width="160">
			        <fieldset>
                        <input type="text"  class="form-control" id="NSTZJE14">
                    </fieldset>
				</td>
			</tr>
		</table>
   </form>			
		<font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提示信息：资产损失金额以正数填报</font>
 	
	 	
		</div>
	</div>
	<input type="text" style="display:none" value="A105090" id="FBPZZLDM"/>
	<input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
       <script type="text/javascript"> 
          function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH",PZXH);
          $w1.pushForm("A105090form1");
          $w1.pushForm("A105090form2");
          $w1.pushForm("A105090form3");
          $w1.pushForm("A105090form4");
          $w1.pushForm("A105090form5");
          $w1.pushForm("A105090form6");
          $w1.pushForm("A105090form7");
          $w1.pushForm("A105090form8");
          $w1.pushForm("A105090form9");
          $w1.pushForm("A105090form10");
          $w1.pushForm("A105090form11");
          $w1.pushForm("A105090form12");
          $w1.pushForm("A105090form13");
          $w1.pushForm("A105090form14");                 
          $w1.ajax("/wb395A105090Ctrl/update",callback);    
          }
     
        </script>		
</body>

</html>
