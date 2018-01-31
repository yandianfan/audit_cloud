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

	<title>金融、保险等机构取得的涉农利息、保费收入优惠明细表</title>
</head>
<body>
    <form class="form-horizontal" role="form" id="A107013form">
    
      	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">金融、保险等机构取得的涉农利息、保费收入优惠明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107013')">自动取数</a>
	          <!--  <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  -->    
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
	
		<table id="tab1" width="80%" style="border-collapse: collapse"
			align="center" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr align="center">
				<td width="10%">
					行   次
				</td>
				<td width="65%">项   目</td>
				<td width="25%">
					金   额
				</td>
			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td>
					一、金融机构农户小额贷款的利息收入
				</td>
				<td align="center" height="18px">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）金融机构取得农户小额贷款利息收入总额
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="JRJGLXSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）金融机构取得农户小额贷款利息减计收入（2×10%）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="JRJGJJSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					二、保险公司为种植业、养殖业提供保险业务取得的保费收入
				</td>
				<td align="center" height="18px">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）保险公司为种植业、养殖业提供保险业务取得的保费收入总额（6+7-8）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BXGSBFSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.原保费收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BXGSYBFSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.分保费收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BXGSFBFSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.分出保费收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BXGSFCBFSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）保险公司为种植业、养殖业提供保险业务取得的保费减计收入（5×10%）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BXGSJJSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					三、其他符合条件的机构农户小额贷款的利息收入
				</td>
				<td align="center" height="18px">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）其他符合条件的机构取得农户小额贷款利息收入总额
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTLXSRZ_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）其他符合条件的机构取得农户小额贷款利息减计收入（11×10%）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTLXJJSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					合计（3+9+12）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_JE">
                   </fieldset>
                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" value="${PZXH}"  style="display:none">
                   <fieldset>                     
				</td>
			</tr>
		</table>

	</div></div>
	</form>
    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A107013form");
          $w1.ajax("/wb395A107013Ctrl/update");    
     }
     
    </script>	
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107013.js?<%=System.currentTimeMillis()%>"></script>
	</html>