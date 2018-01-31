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
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>工会经费支出审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">工会经费支出审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150">

 <tr class=xl798122 height=16 style='height:12.0pt'>
  <td colspan=10 height=16 class=xl808122 style='height:12.0pt' align="right">索引号：3-2-1-4</td>
 </tr>
 <tr class=xl798122 height=16 style='height:12.0pt'>
  <td colspan=9 height=16 class=xl998122 width=738 style='height:12.0pt;width:555pt'>被审核单位名称：${QYMC}</td>
  <td>金额单位：元</td>
 </tr>
 <tr class=xl798122 height=16 style='height:12.0pt'>
  <td colspan=3 rowspan=2 height=32 style='height:24.0pt'>会计期间或会计截止日：</td>
  <td colspan=2 rowspan=2 width="200">${KJQJ}</td>
  <td width="91">编制人</td>
  <td width="100">${BZR}</td>
  <td class=xl818122 style='border-top:none;border-left:none'>日期</td>
  <td colspan=2 class=xl1008122 style='border-left:none'>${BZRQ}</td>
 </tr>
 <tr class=xl788122 height=16 style='height:12.0pt'>
  <td height=16 class=xl838122 width=91 style='height:12.0pt;border-top:none;
  border-left:none;width:68pt'>复核人</td>
  <td class=xl848122 style='border-top:none;border-left:none'>${FHR}</td>
  <td class=xl818122 style='border-top:none;border-left:none'>日期</td>
  <td colspan=2 class=xl1008122 style='border-left:none'>${FHRQ}</td>
 </tr>
 
  <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150"> 
 <tr>
  <td rowspan="2" width="10%" align="center">&nbsp;行&nbsp;&nbsp;次&nbsp;</td>
  <td width="10%" align="center">&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;</td>
  <td width="10%" align="center">未审数</td>
  <td width="10%" align="center">调整数</td>
  <td width="10%" align="center">审核数</td>
  <td width="10%" align="center">税收规定的扣除率2%</td>
  <td width="10%" align="center">工资薪金总额</td>
  <td width="10%" align="center">税收金额</td>
  <td width="10%" align="center">纳税调整金额</td>
  <td width="10%" align="center">备注</td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td align="center">1</td>
  <td align="center">2</td>
  <td align="center">3</td>
  <td align="center">4</td>
  <td align="center">5</td>
  <td align="center">6</td>
  <td align="center">7</td>
  <td align="center">8</td>
  <td align="center">9</td>
 </tr>
 
    </table>    
    
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>				
				</div>   

<table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150">	

 <tr height=16 style='height:12.0pt'>
  <td colspan=10 height=16 class=xl888122 style='height:12.0pt'>工会经费计入成本费用的金额明细</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 style='height:12.0pt;border-top:none'>行次</td>
  <td style='border-top:none;border-left:none'>项目</td>
  <td style='border-top:none;border-left:none'>管理费用</td>
  <td style='border-top:none;border-left:none'>销售费用</td>
  <td style='border-right:.5pt solid black;border-left:none'>主营业务成本</td>
  <td width=166 style='border-left:none;width:125pt'>其他</td>
  <td width=177 style='border-left:none;width:133pt'>合计</td>
 </tr>
 
 </table> 
 
   				<div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>						
				</div>
			
 	<form class="form-horizontal" role="form" id="formmap_3">
        <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150">			
				
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td colspan=10 height=23 class=xl1058122 width=825 style='border-right:.5pt solid black;
  height:17.25pt;width:620pt'>二、实际支付情况检查</td>
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>行次</td>
  <td class=xl978122 style='border-top:none;border-left:none'>项目</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>明细项目</td>
  <td colspan=3 class=xl1218122 style='border-right:.5pt solid black;border-left:none'>金额</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;border-left:none;width:133pt'>备注</td>
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>10</td>
  <td rowspan=5 class=xl968122 width=97 style='border-top:none;width:73pt'>通过其他应付款-工会经费或应付职工薪酬-工会经费科目支出的工会经费</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>年初余额</td>
  <td colspan=3 style='border-right:.5pt solid black;border-left:none'><input type="text" style="width:100%" id="COL1"/>　</td>
  <td colspan=2 width=177 style='border-right:.5pt solid black;border-left:none;width:133pt'>借方余额用负数表示</td>
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>11</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>本年借方发生额</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　<input type="text" style="width:100%" id="COL2"/></td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>12</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>本年贷方发生额</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　<input type="text" style="width:100%" id="COL3"/></td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>13</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>年末余额</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'><input type="text" style="width:100%" id="COL4"/>　</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>借方余额用负数表示</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>14</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>实际支付小计</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　<input type="text" style="width:100%" id="COL5"/></td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>15</td>
  <td rowspan=5 class=xl968122 width=97 style='border-top:none;width:73pt'>未通过其他应付款-工会经费或应付职工薪酬-工会经费科目支出的工会经费</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;border-left:none;width:133pt'>　</td>
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>16</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>17</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>18</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>19</td>
  <td colspan=3 class=xl1038122 style='border-right:.5pt solid black;
  border-left:none'>实际支付小计</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'>　<input type="text" style="width:100%" id="COL6"/></td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;
  width:29pt'>20</td>
  <td colspan=4 class=xl1098122 style='border-right:.5pt solid black;
  border-left:none'>实际支付合计</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;
  border-left:none'><input type="text" style="width:100%" id="COL7"/>　</td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;
  border-left:none;width:133pt'>　</td>
  
  
  
 </tr>
 <tr class=xl938122 height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 class=xl968122 width=38 style='height:17.25pt;border-top:none;width:29pt'>21</td>
  <td colspan=4 class=xl1098122 style='border-right:.5pt solid black;border-left:none'>未实际支付的职工工会经费金额</td>
  <td colspan=3 class=xl1138122 style='border-right:.5pt solid black;border-left:none'>　<input type="text" style="width:100%" id="COL8"/></td>
  <td colspan=2 class=xl1168122 width=177 style='border-right:.5pt solid black;border-left:none;width:133pt'>　</td>
 </tr>
 
        </table>
 	</form>
  </table>  
   
   			<form class="form-horizontal" role="form" id="formmap">
				<table  align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000"  width="1150">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4"></textarea>
						</td>
					</tr>
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>审核说明及结论：
							    <textarea  class="form-control" id="JDSMJL" rows="4"></textarea>
								<input type="text" style="display:none" class="form-control" id="LSH" />
								<input type="text" style="display:none" class="form-control" id="DG_DM" />
								<input type="text" style="display:none" class="form-control" id="DJXH" />
						</td>
					</tr>						
				</table>
  			</form>       
       </div>
    </div>      
        
    <script type="text/javascript"> 
        function save(callback){
           var $w1=new  $w("Windking");
           $w1.pushGrid("gridlist_1");
           $w1.pushGrid("gridlist_2");
           $w1.pushForm("formmap_3");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdgcommCtrl/prosave",callback);		
         }
         
         function closeAbPage(){
           window.close();
         }
    </script>    
  </body>
</html>