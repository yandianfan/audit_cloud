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
	 
	<title>视同销售和房地产开发企业特定业务纳税调整明细表</title>
</head>
<body>
         <form class="form-horizontal" role="form" id="A105010form">


   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">视同销售和房地产开发企业特定业务纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105010')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>
          
          </div>
        
	<table width="80%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
		<tr>
			<td rowspan="2" align="center" width="10%">
				行次
			</td>
			<td rowspan="2" align="center">
				项 目
			</td>
			<td align="center" width="15%">
				税收金额
			</td>
			<td align="center" width="15%">
				纳税调整金额
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td align="center">
				2
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、视同销售（营业）收入（2+3+4+5+6+7+8+9+10）
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSSR_SSJE">
                       </fieldset>   
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSSR_NSTZJE">
                       </fieldset>    
                   </td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非货币性资产交换视同销售收入
			</td>
			       <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FHBXZCJH_SSJE">
                       </fieldset>                        
                   </td>

				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FHBXZCJH_NSTZJE">
                       </fieldset>                        
                   </td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）用于市场推广或销售视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="SCTGHXS_SSJE">
                       </fieldset>     
                   </td>
                   

				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="SCTGHXS_NSTZJE">
                       </fieldset>  
                   </td>

		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）用于交际应酬视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="JJYC_SSJE">
                       </fieldset>                         
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="JJYC_NSTZJE">
                       </fieldset>                         
                   </td>

		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）用于职工奖励或福利视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZGJLHFL_SSJE">
                       </fieldset>                         
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZGJLHFL_NSTZJE">
                       </fieldset>                         
                   </td>
 
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）用于股息分配视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="GXFP_SSJE">
                       </fieldset>                         
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="GXFP_NSTZJE">
                       </fieldset>                         
                   </td>

		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）用于对外捐赠视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWJZ_SSJE">
                       </fieldset>                         
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWJZ_NSTZJE">
                       </fieldset>                         
                   </td>

		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）用于对外投资项目视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWTZ_SSJE">
                       </fieldset>                         
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWTZ_NSTZJE">
                       </fieldset>                         
                   </td>

		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）提供劳务视同销售收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="TGLW_SSJE">
                       </fieldset>                         
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="TGLW_NSTZJE">
                       </fieldset>                          
                   </td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）其他
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSSRQT_SSJE">
                       </fieldset>                       
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSSRQT_NSTZJE">
                       </fieldset>                       
                   </td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				二、视同销售（营业）成本（12+13+14+15+16+17+18+19+20）
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSCB_SSJE">
                       </fieldset>                        
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSCB_NSTZJE">
                       </fieldset>                        
                   </td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）非货币性资产交换视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FHBXZCXSCB_SSJE">
                       </fieldset>                       
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FHBXZCXSCB_NSTZJE">
                       </fieldset>                       
                   </td>

		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）用于市场推广或销售视同销售成本
			</td>

				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="SCTGHXSXSCB_SSJE">
                       </fieldset> 
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="SCTGHXSXSCB_NSTZJE">
                       </fieldset> 
                   </td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）用于交际应酬视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="JJYCXSCB_SSJE">
                       </fieldset> 
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="JJYCXSCB_NSTZJE">
                       </fieldset> 
                   </td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）用于职工奖励或福利视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZGJLHFLXSCB_SSJE">
                       </fieldset> 
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZGJLHFLXSCB_NSTZJE">
                       </fieldset> 
                   </td>
		</tr>
		<tr>
			<td align="center">
				16
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）用于股息分配视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="GXFPXSCB_SSJE">
                       </fieldset>
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="GXFPXSCB_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				17
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）用于对外捐赠视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWJZXSCB_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWJZXSCB_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				18
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）用于对外投资项目视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWTZXSCB_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="DWTZXSCB_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）提供劳务视同销售成本
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="TGLWXSCB_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="TGLWXSCB_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）其他
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSCBQT_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="STXSCBQT_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				21
			</td>
			<td>
				三、房地产开发企业特定业务计算的纳税调整额（22-26）
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FDCQYTDYW_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FDCQYTDYW_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）房地产企业销售未完工开发产品特定业务计算的纳税调整额（24-25）
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FDCQYWWGCP_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FDCQYWWGCP_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售未完工产品的收入
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="XSWWGCPSR_SSJE">
                       </fieldset>
                   </td>

			
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				24
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.销售未完工产品预计毛利额
			</td>
                   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="XSWWGCPYJML_SSJE">
                       </fieldset>
                   </td>

                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="XSWWGCPYJML_NSTZJE">
                       </fieldset>
                   </td>      
		</tr>
		<tr>
			<td align="center">
				25
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.实际发生的营业税金及附加、土地增值税
			</td>
			   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="SJYYSJ_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="SJYYSJ_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）房地产企业销售的未完工产品转完工产品特定业务计算的纳税调整额（28-29）
			</td>

				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FDCQYWWGZWGCP_SSJE">
                       </fieldset>
                   </td>

				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="FDCQYWWGZWGCP_NSTZJE">
                       </fieldset>
                   </td>				
		</tr>
		<tr>
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.销售未完工产品转完工产品确认的销售收入
			</td>
		           <td>
				       <fieldset> 
                           <input type="text"  class="form-control" id="XSWWGZWGCPQR_SSJE">
                       </fieldset>
                   </td>
                   
			<td align="center">
				       <fieldset>
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				28
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.转回的销售未完工产品预计毛利额
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZHXSWWGCPYJML_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZHXSWWGCPYJML_NSTZJE">
                       </fieldset>
                   </td>
		</tr>
		<tr>
			<td align="center">
				29
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.转回实际发生的营业税金及附加、土地增值税
			</td>
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZHSJYYSJ_SSJE">
                       </fieldset>
                   </td>
                   
				   <td>
				       <fieldset>
                           <input type="text"  class="form-control" id="ZHSJYYSJ_NSTZJE">
                       </fieldset>
                       
                       <fieldset>
                           <input type="text" class="form-control" id="PZXH" style="display:none">
                       <fieldset>                        
                   </td>
		</tr>
	</table>

		</div></div>
	</form> 
	<input type="text" style="display:none" value="A105010" id="FBPZZLDM"/>
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105010form");
          $w1.ajax("/wb395A105010Ctrl/update",callback);    
     }
     
    </script>		
</body>

</html>
