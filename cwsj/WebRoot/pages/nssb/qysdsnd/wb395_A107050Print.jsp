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
<html>
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
	 
	<title>税额抵免优惠明细表</title>
</head>
<body>
    <form class="form-horizontal" role="form" id="A107050form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">税额抵免优惠明细表</strong>
  				<div class="btn-menu noprint">
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
          
		<table width="100%" style="border-collapse: collapse" align="center" id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
			<tr align="center" height="30px">
				<td width="40"  rowspan="3">
					行次
				</td>
				<td width="80" rowspan="3">
					项目
				</td>
				<td rowspan="2">
					年度
				</td>
				<td rowspan="2">
					本年抵免前应纳税额
				</td>
				<td rowspan="2">
					本年允许抵免的专用设备投资额
				</td>
				<td rowspan="2">
					本年可抵免税额
				</td>
				<td colspan="6">
					以前年度已抵免额
				</td>
				<td rowspan="2">
					本年实际抵免的各年度税额
				</td>
				<td rowspan="2">
					可结转以后年度抵免的税额
				</td>
			</tr>
			<tr align="center" height="30px">
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
					小计
				</td>
			</tr>
			<tr align="center" height="30px">
				<td width="90">
					1
				</td>
				<td width="90">
					2
				</td>
				<td width="90">
					3
				</td>
				<td width="90">
					4=3×10%
				</td>
				<td width="70">
					5
				</td>
				<td width="70">
					6
				</td>
				<td width="70">
					7
				</td>
				<td width="70">
					8
				</td>
				<td width="70">
					9
				</td>
				<td width="70">
					10(5+6+7+8+9)
				</td>
				<td width="90">
					11
				</td>
				<td width="90">
					12(4-10-11)
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					1
				</td>
				<td align="center">
					前五年度
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="ND11">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNDMQYNSE12">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE13">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNKDMSE14">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME15">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME16">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME17">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME18">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME19">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME1A">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMGNDSE1B">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					2
				</td>
				<td align="center">
					前四年度
				</td>
				<td>

			       <fieldset>
                       <input class="form-control" id="ND21">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNDMQYNSE22">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE23">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNKDMSE24">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME26">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME27">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME28">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME29">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME2A">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMGNDSE2B">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="KJZYHNDDMSE2C">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					3
				</td>
				<td align="center">
					前三年度
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="ND31">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNDMQYNSE32">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE33">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNKDMSE34">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME37">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME38">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME39">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME3A">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMGNDSE3B">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="KJZYHNDDMSE3C">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					4
				</td>
				<td align="center">
					前二年度
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="ND41">
                   </fieldset> 
				</td>
				<td>
				   <fieldset>
                       <input class="form-control" id="BNDMQYNSE42">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE43">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNKDMSE44">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME48">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME49">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME4A">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMGNDSE4B">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="KJZYHNDDMSE4C">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					5
				</td>
				<td align="center">
					前一年度
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="ND51">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNDMQYNSE52">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE53">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNKDMSE54">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME59">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="YQNDYDME5A">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMGNDSE5B">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="KJZYHNDDMSE5C">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					6
				</td>
				<td align="center">
					本年度
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="ND61">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNDMQYNSE62">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE63">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNKDMSE64">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMGNDSE6B">
                   </fieldset> 
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="KJZYHNDDMSE6C">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					7
				</td>
				<td colspan="11">
					本年实际抵免税额合计
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="BNSJDMSEHJ7B">
                   </fieldset> 
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					8
				</td>
				<td colspan="12">
					可结转以后年度抵免的税额合计
				</td>
				<td>
			       <fieldset>
                       <input class="form-control" id="KJZYHNDDMSE8C">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					9
				</td>
				<td rowspan="3" align="center">
					专用设备投资情况
				</td>
				<td colspan="10">
					本年允许抵免的环境保护专用设备投资额
				</td>
				<td colspan="4">
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE_HJBH">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					10
				</td>
				<td colspan="10">
					本年允许抵免节能节水的专用设备投资额
				</td>
				<td colspan="4">
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE_JNJS">
                   </fieldset> 
				</td>
			</tr>
			<tr height="30px">
				<td align="center">
					11
				</td>
				<td colspan="10">
					本年允许抵免的安全生产专用设备投资额
				</td>
				<td colspan="4">
			       <fieldset>
                       <input class="form-control" id="BNYXDMZYSBTZE_AQSC">
                   </fieldset> 
                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" style="display:none">
                   <fieldset>                   
				</td>
			</tr>
		</table>

		
	</div></div>
	</form>
	
	<input type="text" style="display:none" value="A107050" id="FBPZZLDM"/>
	
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A107050form");
          $w1.ajax("/wb395A107050Ctrl/update",callback);    
     }
     
    </script>	
</body>

<script type="text/javascript"
	src="./nssb/wb395/wb395_A104000.js?<%=System.currentTimeMillis()%>"></script>
</html>


