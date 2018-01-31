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
	 
	<title>广告费和业务宣传费跨年度纳税调整明细表</title>
</head>
<body>

     <form class="form-horizontal" role="form" id="A105060form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">广告费和业务宣传费跨年度纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105060')">自动取数</a>
	                <!-- <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> --> 
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>          
          </div>	

		<table width="98%" style="border-collapse: collapse" align="center"
			cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
			id="tab1">
			<tr align="center" height="25px">
				<td width="10%">
					行 次
				</td>
				<td width="70%">
					项 目
				</td>
				<td width="20%">
					金 额
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					1
				</td>
				<td>
					一、本年广告费和业务宣传费支出
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BNZC_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					2
				</td>
				<td>
					减：不允许扣除的广告费和业务宣传费支出  
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BYXZC_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					3
				</td>
				<td>
					二、本年符合条件的广告费和业务宣传费支出（1-2）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BNFHZC_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					4
				</td>
				<td>
					三、本年计算广告费和业务宣传费扣除限额的销售（营业）收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BNJSSR_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					5
				</td>
				<td>
					税收规定扣除率
				</td>
				<td>
				   <fieldset>
						 <select id="KCL"  class="form-control" title="税收规定扣除率"></select>	
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					6
				</td>
				<td>
					四、本企业计算的广告费和业务宣传费扣除限额（4×5）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="KCXE_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					7
				</td>
				<td>
					五、本年结转以后年度扣除额（3＞6，本行=3-6；3≤6，本行=0）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BNKCE_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					8
				</td>
				<td>
					加：以前年度累计结转扣除额
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="NDLJKCE_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					9
				</td>
				<td>
					减：本年扣除的以前年度结转额 [3＞6，本行=0；3≤6，本行=8或（6-3）孰小值]
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YQNDJZE_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					10
				</td>
				<td>
					六、按照分摊协议归集至其他关联方的广告费和业务宣传费（10≤3或6孰小值）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="FTGJZQTFY_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					11
				</td>
				<td>
					按照分摊协议从其他关联方归集至本企业的广告费和业务宣传费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTGJZBQYFY_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					12
				</td>
				<td>
					七、本年广告费和业务宣传费支出纳税调整金额（3＞6，本行=2+3-6+10-11；3≤6，本行=2+10-11-9）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BNZCTZ_JE">
                   </fieldset>
				</td>
			</tr>
			<tr height="25px">
				<td align="center">
					13
				</td>
				<td>
					八、累计结转以后年度扣除额（7+8-9）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="LJKCE_JE">
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
          $w1.pushForm("A105060form");
          $w1.ajax("/wb395A105060Ctrl/update");    
     }
     
    </script>	
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105060.js?<%=System.currentTimeMillis()%>"></script>
</html>
