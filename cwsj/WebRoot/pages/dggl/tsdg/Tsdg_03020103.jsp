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
	</style       
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>职工教育经费支出审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">职工教育经费支出审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

 <tr class=xl796544 height=16 style='height:12.0pt'>
  <td colspan=13 height=16 class=xl806544 style='height:12.0pt' align="right">索引号：3-2-1-3</td>
 </tr>
 <tr class=xl796544 height=16 style='height:12.0pt'>
  <td colspan=12 height=16 class=xl1016544 width=989 style='height:12.0pt;
  width:741pt'>被审核单位名称：${QYMC}</td>
  <td class=xl806544>金额单位：元</td>
 </tr>
 <tr class=xl796544 height=17 style='height:12.75pt'>
  <td colspan=2 rowspan=2 height=34 class=xl816544 style='height:25.5pt'>会计期间或会计截止日：</td>
  <td colspan=5 rowspan=2 class=xl876544 width=297 style='width:223pt'>${KJQJ}</td>
  <td class=xl816544 style='border-top:none;border-left:none'>编制人</td>
  <td colspan=2 class=xl876544 width=158 style='border-left:none;width:118pt'>${BZR}</td>
  <td class=xl816544 style='border-top:none;border-left:none'>日期</td>
  <td colspan=2 class=xl876544 width=169 style='border-left:none;width:127pt'>${BZRQ}</td>
 </tr>
 <tr class=xl796544 height=17 style='height:12.75pt'>
  <td height=17 class=xl816544 style='height:12.75pt;border-top:none;border-left:none'>复核人</td>
  <td colspan=2 class=xl1006544 width=158 style='border-left:none;width:118pt'>${FHR}</td>
  <td class=xl816544 style='border-top:none;border-left:none'>日期</td>
  <td colspan=2 class=xl876544 width=169 style='border-left:none;width:127pt'>${FHRQ}</td>
 </tr>
 
  <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">  
 <tr height=48 style='height:36.0pt'>
  <td rowspan=2 width="60">&nbsp;行&nbsp;&nbsp;次&nbsp;</td>
  <td width="250">&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;</td>
  <td width="100">未审数</td>
  <td width="100">调整数</td>
  <td width="100">审核数</td>
  <td width="100">税收规定的扣除率</td>
  <td width="100">工资总额</td>
  <td width="100">以前年度累计结转扣除额</td>
  <td width="100">税收金额</td>
  <td width="100">本年扣除的以前年度结转额</td>
  <td width="100">累计结转以后年度扣除额</td>
  <td width="100">纳税调整数</td>
 </tr>
 <tr class=xl786544 height=16 style='height:12.0pt'>
  <td height=16 class=xl916544 width=263 style='height:12.0pt;border-top:none;
  border-left:none;width:197pt'>一、扣除类别</td>
  <td>1</td>
  <td>2</td>
  <td>3</td>
  <td>4</td>
  <td>5</td>
  <td>6</td>
  <td>7</td>
  <td>8</td>
  <td>9</td>
  <td>10</td>
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
					<div name="COL4" type="select" css="width:99%" datasrc="0.025|2.5%,0.08|8%,1|100%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>				
					<div name="COL9" type="text" css="width:99%"></div>
					<div name="COL10" type="text" css="width:99%"></div>
				</div>   


  <table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">	 
 <tr class=xl786544 height=16 style='height:12.0pt'>
  <td colspan=12 height=16 class=xl1076544 style='height:12.0pt'>二、职工教育经费计入成本费用的金额明细</td>
 </tr>
 <tr class=xl786544 height=16 style='height:12.0pt'>
  <td height=16 class=xl816544 style='height:12.0pt;border-top:none'>行次</td>
  <td class=xl816544 style='border-top:none;border-left:none'>项目</td>
  <td  class=xl816544 style='border-left:none'><span style='mso-spacerun:yes'>&nbsp; </span>管理费用</td>
  <td class=xl816544 style='border-top:none;border-left:none'><span
  style='mso-spacerun:yes'>&nbsp; </span>销售费用</td>
  <td class=xl816544 style='border-left:none'>主营业务成本</td>
  <td class=xl816544 style='border-left:none'>其他业务成本</td>
  <td class=xl816544 style='border-left:none'>其他</td>
  <td class=xl816544 style='border-top:none;border-left:none'>合计</td>
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
					<div name="COL6" type="text" css="width:99%"></div>				
				</div>

 	<form class="form-horizontal" role="form" id="formmap_3">
        <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">	 	
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=12 height=20 class=xl1046544 width=1158 style='border-right:.5pt solid black;
  height:15.0pt;width:868pt'>三、实际支出情况检查</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>行次</td>
  <td class=xl906544 width=263 style='border-top:none;border-left:none;
  width:197pt'>项目</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>明细项目</td>
  <td colspan=2 class=xl816544 style='border-left:none'>金额</td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>备注</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>11</td>
  <td rowspan=5 class=xl906544 width=263 style='border-top:none;width:197pt'>通过其他应付款-职工教育经费或应付职工薪酬-职工教育经费费科目支出的职工教育经费</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>年初余额</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL1"/> </td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>12</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>本年借方发生额</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL2"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>13</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>本年贷方发生额</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL3"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>14</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>年末余额</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL4"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>15</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>实际支出小计</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL5"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>16</td>
  <td rowspan=5 class=xl906544 width=263 style='border-top:none;width:197pt'>未通过其他应付款-职工教育经费或应付职工薪酬-职工教育经费费科目支出的职工教育经费</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1126544 style='border-left:none'>　</td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>17</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1126544 style='border-left:none'>　</td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>18</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1126544 style='border-left:none'>　</td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>19</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
  <td colspan=2 class=xl1126544 style='border-left:none'>　</td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>20</td>
  <td colspan=5 class=xl1176544 style='border-right:.5pt solid black;
  border-left:none'>实际支出小计</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL6"/>　</td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>21</td>
  <td colspan=6 class=xl1096544 width=689 style='border-right:.5pt solid black;
  border-left:none;width:517pt'>实际支出合计</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL7"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>22</td>
  <td colspan=6 class=xl1096544 width=689 style='border-right:.5pt solid black;
  border-left:none;width:517pt'>其中：按税收规定全额扣除的职工培训费用</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL8"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
 <tr class=xl886544 height=20 style='mso-height-source:userset;height:15.0pt'>
  <td height=20 class=xl906544 width=51 style='height:15.0pt;border-top:none;
  width:38pt'>23</td>
  <td colspan=6 class=xl1096544 width=689 style='border-right:.5pt solid black;
  border-left:none;width:517pt'>未实际支出的职工教育经费金额</td>
  <td colspan=2 class=xl1126544 style='border-left:none'><input type="text" style="width:100%" id="COL9"/></td>
  <td colspan=3 class=xl1146544 style='border-right:.5pt solid black;
  border-left:none'>　</td>
 </tr>
         </table>
 	</form>
  </table> 
 
 
   			<form class="form-horizontal" role="form" id="formmap">
				<table  align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000"  width="1200">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4" ></textarea>
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