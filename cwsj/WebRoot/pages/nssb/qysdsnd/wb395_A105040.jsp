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
	 
	<title>专项用途财政性资金纳税调整明细表</title>
</head>
<body>
         <form class="form-horizontal" role="form" id="A105040form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">专项用途财政性资金纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105040')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
        
	<table width="98%" style="border-collapse: collapse" id="listA105040_table" align="center" id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
      <thead>		
		<tr align="center">
			<td rowspan="3">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;次&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			<td rowspan="3">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			<td rowspan="2">
				取得年度
			</td>
			<td rowspan="2">
				财政性资金
			</td>
			<td colspan="2">
				其中：符合不征税收入条件的财政性资金
			</td>
			<td colspan="5">
				以前年度支出情况
			</td>
			<td colspan="2">
				本年支出情况
			</td>
			<td colspan="3">
				本年结余情况
			</td>
		</tr>
		<tr align="center">
			<td>
				金额
			</td>
			<td>
				其中：计入本年损益的金额
			</td>
			<td>
				前五年度
			</td>
			<td>
				前四年度
			</td>
			<td>
				前三年度
			</td>
			<td>
				前二年度
			</td>
			<td>
				前一年度
			</td>
			<td>
				支出金额
			</td>
			<td>
				其中：费用化支出金额
			</td>
			<td>
				结余金额
			</td>
			<td>
				其中：上缴财政金额
			</td>
			<td>
				应计入本年应税收入金额
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
				13
			</td>
			<td>
				14
			</td>
		</tr>
	           </thead>
	              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>	
		</table>

       <div class="row-fluid">
         <div class="span">        
	       <div id="listA105040" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" css="width:99%" style="display:none"></div>          
	          <div name="SBMX_XH" css="width:99%" css="width:99%;text-align:center"></div>
	          <div name="XM" css="width:99%"></div>
	          <div name="QDND" type="text" css="width:99%"></div>
	          <div name="CZXZJ" type="text" css="width:99%"></div>
	          <div name="FHBZSJE" type="text" css="width:99%"></div>
	          <div name="BNSYJE" type="text" css="width:99%"></div>
	          <div name="QWNDZC" type="text" css="width:99%"></div>
	          <div name="QSINDZC" type="text" css="width:99%"></div>
	          <div name="QSNDZC" type="text" css="width:99%"></div>
	          <div name="QENDZC" type="text" css="width:99%"></div>
	          <div name="QYNDZC" type="text" css="width:99%"></div>
	          <div name="BNZCJE" type="text" css="width:99%"></div>
	          <div name="BNFYHZCJE" type="text" css="width:99%"></div>
	          <div name="BNJYJE" type="text" css="width:99%"></div>
	          <div name="BNSJJE" type="text" css="width:99%"></div>
	          <div name="BNYZSRJE" type="text" css="width:99%"></div>	          
	       </div>
         </div>		   	       
       </div> 			
		
		</div>
	</div>
	  	<input type="text" style="display:none" value="A105040" id="FBPZZLDM"/>
	</form> 
    <script type="text/javascript"> 
       function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH", PZXH);
          $w1.pushGrid("listA105040");
          $w1.ajax("/wb395A105040Ctrl/update",callback);    
       }  
     
    </script>	
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105040.js?<%=System.currentTimeMillis()%>"></script>
</html>
