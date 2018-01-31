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
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 
	<title>非货币性资产投资递延纳税调整明细表</title>
</head>
<body>


<div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">非货币性资产投资递延纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105100_1')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
         
		<table width="150%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td width="45%">

				</td>
				<td align="left" width="20%">
					所属年度：
				
				</td>
				<td width="35%">

				</td>
			</tr>
			<tr>
				<td align="left">
					纳税人名称（盖章）：
			
				</td>
				<td align="left">
					纳税人识别号：
			
				</td>
				<td align="right">
					金额单位：元（列至角分）
				</td>
			</tr>
		</table>
       <table width="265%" style="border-collapse: collapse" align="center" id="listA105100a1_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
          <thead>
			<tr height="20px" align="center">
				<td rowspan="3" width="3%">
					请选择
				</td>				
				<td rowspan="3" width="2%">
					行 &nbsp; &nbsp;次
				</td>				
				<td colspan="4">
					被投资企业情况
				</td>
				<td colspan="3">
					非货币性资产情况
				</td>
				<td colspan="5">
					非货币性资产投资基本信息
				</td>
				<td rowspan="2">
					本年税收金额
				</td>
				<td colspan="5">
					递延纳税差异调整额
				</td>
				<td rowspan="2">
					结转以后年度递延确认所得税收金额
				</td>
			</tr>
			<tr height="20px" align="center">
				<td>
					企业名称
				</td>
				<td>
					纳税人识别号
				</td>
				<td>
					主管税务机关
				</td>
				<td>
					（投资前）与投资方是否为关联企业
				</td>
				<td>
					公允价值
				</td>
				<td>
					账面价值
				</td>
				<td>
					计税基础
				</td>
				<td>
					非货币性资产转让收入实现年度
				</td>
				<td>
					本年账载金额
				</td>
				<td>
					非货币性资产转让所得（税收金额）
				</td>
				<td>
					分期确认税收所得年限
				</td>
				<td>
					分期均匀确认税收所得额
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
					本年
				</td>
			</tr>
			<tr height="20px" align="center">							
				<td width="5%">
					1
				</td>
				<td width="5%">
					2
				</td>
				<td width="8%">
					3
				</td>
				<td width="4.5%">
					4
				</td>
				<td width="4.5%">
					5
				</td>
				<td width="4.5%">
					6
				</td> 
				<td width="4.5%">
					7
				</td>
				<td width="3%">
					8
				</td>
				<td width="4.5%">
					9
				</td>
				<td width="4.5%">
					10=5-7
				</td>
				<td width="3%">
					11
				</td>
				<td width="4.5%">
					12
				</td>
				<td width="4.5%">
					13
				</td>
				<td width="4.5%">
					14
				</td>
				<td width="4.5%">
					15
				</td>
				<td width="4.5%">
					16
				</td>
				<td width="4.5%">
					17
				</td>
				<td width="4.5%">
					18=13-9
				</td>
				<td width="10%">
					19=[本表第10列-第13列(第1年该项目填报时)]或=[上年度明细表的相应行次第19列-本表第13列(以后递延期间该项目填报时)]
				</td>
			</tr>
		</thead>	
		
              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
   </table>             
       <div class="row-fluid">
         <div class="span">
         
        
	       <div id="listA105100a1" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>
	          <div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
	          <div name="SBMX_XH" type="text" css="width:99%;text-align:center" caption="序号"></div>
	          <div name="QY_MC" type="text" css="width:99%;text-align:left" caption="000000"></div>
	          <div name="NSRSBM" type="text" caption="000000"></div>
	          <div name="ZGSWJG_MC" type="text" caption="000000"></div>	          
	          <div name="SFGLQY" type="select" caption="000000"></div>
	          <div name="GYJZ_JE" type="text" caption="000000"></div>
	          <div name="ZMJZ_JE" type="text" caption="000000"></div>
	          <div name="JSJC_JE" type="text" caption="000000"></div>
	          <div name="FHBXZRSRND"  type="text" caption="000000"></div>	          
	          <div name="BNZZ_JE" type="text" caption="000000"></div>
	          <div name="FHBXZRSD_JE" type="text" caption="000000"></div>
	          <div name="FQQRNX"  type="text" caption="000000"></div>
	          <div name="FQJJQR_JE" type="text" caption="000000"></div>
	          <div name="BNSS_JE" type="text" caption="000000"></div>	          
	          <div name="DYNS_FOUR_JE" type="text" caption="000000"></div>
	          <div name="DYNS_THREE_JE" type="text" caption="000000"></div>
	          <div name="DYNS_TWO_JE" type="text" caption="000000"></div>
	          <div name="DYNS_ONE_JE" type="text" caption="000000"></div>
	          <div name="DYNS_BN_JE" type="text" caption="000000"></div>
	          <div name="ZJYHNDDY_JE" type="text" caption="000000"></div>
	       </div>
        
          		
					<table width="265%" border="1" cellpadding="1" cellspacing="1"  style="border-collapse: collapse" align="center" bordercolor="#000000">
						<tr>
							<td>
								&nbsp;&nbsp;谨声明：本人知悉并保证本表填报内容及所附证明材料真实、完整，并承担因资料虚假而产生的法律和行政责任。
							</td>
						</tr>
						<tr>
							<td align="right">
								法定代表人签章：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td align="right">
								年&nbsp;&nbsp;月&nbsp;&nbsp;日&nbsp;&nbsp;
							</td>
						</tr>
					</table>
	
		

		<table width="180%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td align="left">
					&nbsp;&nbsp;&nbsp;&nbsp;填表人：
				</td>
				<td align="right">
					填表日期：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
		
       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA105100a1')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA105100a1');">删除</button>
		   </div>
		 	
         </div> 
       </div>		
		
</div>	

     <input type="text" style="display:none" value="A105100_1" id="FBPZZLDM"/>

</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105100_1.js?<%=System.currentTimeMillis()%>"></script>
	    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH",PZXH);
          $w1.pushGrid("listA105100a1");
          $w1.ajax("/wb395A105100a1Ctrl/update",callback);    
     }
     
    </script>	
</html>
