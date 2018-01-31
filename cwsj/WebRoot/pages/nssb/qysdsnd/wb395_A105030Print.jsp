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
     <style>
.form-control {
    display: block;
    width: 100%;
    height: 34px;!important; 
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.4285;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    box-shadow: inset 0px 1px 1px rgba(0,0,0,0.075);
    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
     </style>
     <style media=print type="text/css"> 
     .noprint{visibility:hidden}
     </style>      
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 
	<title>投资收益纳税调整明细表</title>
</head>
<body>

         <form class="form-horizontal" role="form" id="A105030form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">投资收益纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <!-- 
    				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>				    
  				     -->
                    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
	<table id="listA105030Grid_table" width="98%" style="border-collapse: collapse" align="center"
		id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
		<tr align="center">
			<td rowspan="3" nowrap> 
				&nbsp;&nbsp;行次&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			<td rowspan="3">
				项 目
			</td>
			<td colspan="3">
				持有收益
			</td>
			<td colspan="7">
				处置收益
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
				会计确认的处置收入
			</td>
			<td>
				税收计算的处置收入
			</td>
			<td>
				处置投资的账面价值
			</td>
			<td>
				处置投资的计税基础
			</td>
			<td>
				会计确认的处置所得或损失
			</td>
			<td>
				税收计算的处置所得
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
				3
				<br />
				（2-1）
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
				<br />
				（4-6）
			</td>
			<td>
				9
				<br />
				（5-7）
			</td>
			<td>
				10
				<br />
				（9-8）
			</td>
			<td>
				11
				<br />
				（3+10）
			</td>
		</tr>
	       <div id="listA105030Grid" type="DataGrid" class="DataGrid" userdefine="true">       
	          <div name="SBMX_XH"  css="height: 34px;width:50px"  caption="申报明细序号"></div>	   	       
	          <div name="SBMX_MC"  css="height: 34px;width:80px"  caption="申报明细名称"></div>
	          <div name="CYSY_ZZJE" css="height: 34px;"  caption="持有收益-账载金额"></div>
	          <div name="CYSY_SSJE" css="height: 34px;"  caption="持有收益-税收金额"></div>
	          <div name="CYSY_NSTZJE" css="height: 34px;"  caption="持有收益-纳税调整金额"></div>
	          <div name="CZSY_KJQRCZSR" css="height: 34px;"  caption="处置收益-会计确认的处置收入 "></div>	          
	          <div name="CZSY_SSJSCZSR" css="height: 34px;"  caption="处置收益-税收计算的处置收入"></div>
	          <div name="CZSY_CZTZZMJZ" css="height: 34px;"  caption="处置收益-处置投资的账面价值 "></div>
	          <div name="CZSY_CZTZJSJC" css="height: 34px;"  caption="处置收益-处置投资的计税基础 "></div>
	          <div name="CZSY_KJQRCZSD" css="height: 34px;"  caption="处置收益-会计确认的处置所得或损失"></div>
	          <div name="CZSY_SSJSCZSD" css="height: 34px;"  caption="处置收益-税收计算的处置所得 "></div>
	          <div name="CZSY_NSTZJE" css="height: 34px;"  caption="处置收益 -纳税调整金额 "></div>
	          <div name="NSTZJEHJ" css="height: 34px;"  caption="纳税调整金额 "></div>
	       </div>	
	       <!-- 
			<c:forEach items="${sbmxList}" var="sbmx" varStatus="vs">
		<tr>
			<td align="center" width="9%">
				1
			</td>
			<td width="14%">
				${sbmxList.sbmx_mc}
			</td>
				<td>
				   <fieldset>
                       <input type="text" value="" class="form-control" id="ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CYSY_NSTZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="KJQRCZSR">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="SSJSCZSR">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CZTZZMJZ">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CZTZJSJC">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="KJQRCZSD">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="SSJSCZSD">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="CZSY_NSTZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="NSTZJEHJ">
                   </fieldset>
				</td>
		</tr>
		</c:forEach>       
	        -->		

		           <fieldset>
                       <input type="text" class="form-control" id="PZXH" value="${PZXH} " style="display:none">
                   <fieldset> 
	</table>

	  	</div></div>
	</form> 
	<input type="text" style="display:none" value="A105030" id="FBPZZLDM"/>
	
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105030.js?<%=System.currentTimeMillis()%>"></script>
</html>
