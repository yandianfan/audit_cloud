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
	 
	<title>一般企业成本支出明细表</title>
</head>
<body onkeydown="enterTab()">

         <form class="form-horizontal" role="form" id="A102010form">
	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">一般企业成本支出明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A102010')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>        
          </div>         
          			
	<table width="70%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
		<tr>
			<td width="10%" align="center">
				行次
			</td>
			<td width="60%" align="center">
				项 &nbsp;&nbsp;&nbsp;&nbsp;目
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
        一、营业成本（2+9）
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="YYCB">
         </fieldset>
      </td>
    </tr>
   <tr>
      <td align="center">
        2
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）主营业务成本（3+5+6+7+8）
      </td>
      <td> 
	     <fieldset>
             <input type="text"  class="form-control" id="ZYYWCB">
         </fieldset>
      </td>
    </tr>
    <tr>
      <td align="center">
        3
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售商品成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="XSSPCB">
         </fieldset>  
      </td>
    </tr>
    <tr>
      <td align="center">
        4
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:非货币性资产交换成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="ZYYWCB_FHBZCJHCB">
         </fieldset>
      </td>
    </tr>
    <tr>
      <td align="center">
        5
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.提供劳务成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="TGLWCB">
         </fieldset>        
      </td>
    </tr>
    <tr>
      <td align="center">
        6
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.建造合同成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="JZHTCB">
         </fieldset>    
      </td>
    </tr>
    <tr>
      <td align="center">
        7
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.让渡资产使用权成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="RDZCSYQCB">
         </fieldset>      
      </td>
    </tr>
    <tr>
      <td align="center">
        8
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="ZYYWCB_QT">
         </fieldset>     
      </td>
    </tr>
    <tr>
      <td align="center">
        9
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）其他业务成本（10+12+13+14+15）
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="QTYWCB">
         </fieldset>  
      </td>
    </tr>
    <tr>
      <td align="center">
        10
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.材料销售成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="CLXSCB">
         </fieldset>     
      </td>
    </tr>
    <tr>
      <td align="center">
        11
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:非货币性资产交换成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="QTYWCB_FHBZCJHCB">
         </fieldset>     
      </td>
    </tr>
    <tr>
      <td align="center">
        12
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.出租固定资产成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="CZGDZCCB">
         </fieldset>     
      </td>
    </tr>
    <tr>
      <td align="center">
        13
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.出租无形资产成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="CZWXZCCB">
         </fieldset>    
      </td>
    </tr>
    <tr>
      <td align="center">
        14
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.包装物出租成本
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="BZWCZCB">
         </fieldset>     
      </td>
    </tr>
    <tr>
      <td align="center">
        15
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="QTYWCB_QT">
         </fieldset>   
      </td>
    </tr>
    <tr>
      <td align="center">
        16
      </td>
      <td>
        二、营业外支出（17+18+19+20+21+22+23+24+25+26）
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="YYWZC">
         </fieldset>      
      </td>
    </tr>
    <tr>
      <td align="center">
        17
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
        18
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
        19
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
        20
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）非常损失
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="FCSS">
         </fieldset>  
      </td>
    </tr>
    <tr>
      <td align="center">
        21
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）捐赠支出
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="JZZC">
         </fieldset>   
      </td>
    </tr>
    <tr>
      <td align="center">
        22
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）赞助支出
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="ZZZC">
         </fieldset>   
      </td>
    </tr>
    <tr>
      <td align="center">
        23
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）罚没支出
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="FMZC">
         </fieldset>    
      </td>
    </tr>
    <tr>
      <td align="center">
        24
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）坏账损失
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="HZSS">
         </fieldset>    
      </td>
    </tr>
    <tr>
      <td align="center">
        25
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）无法收回的债券股权投资损失
      </td>
      <td>
	     <fieldset>
             <input type="text"  class="form-control" id="WFHSZQGQTZSS">
         </fieldset>   
      </td>
    </tr>
    <tr>
      <td align="center">
        26
      </td>
      <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十）其他
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
	</div></div>
</form>
<input type="text" style="display:none" value="A102010" id="FBPZZLDM"/>
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A102010form");
          $w1.ajax("/wb395A102010Ctrl/update",callback);    
     }
     
    </script>

</body>
</html>
