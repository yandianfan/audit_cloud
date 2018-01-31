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
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>职工福利费支出审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">职工福利费支出审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
  <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

 <tr height=16 style='height:12.0pt'>
  <td colspan=14 height=16 style='height:12.0pt' align="right">索引号：3-2-1-2</td>
 </tr>
 <tr class=xl795145 height=16 style='height:12.0pt'>
  <td colspan=13 height=16 width=1054 style='height:12.0pt;width:791pt'>被审核单位名称：${QYMC}</td>
  <td class=xl945145>金额单位：<span style='display:none'>元</span></td>
 </tr>
 
 <tr height=16>
  <td colspan=4 rowspan=2 width="200">会计期间或会计截止日：</td>
  <td colspan=4 rowspan=2 width="50">${KJQJ}　</td>
  <td >编制人</td>
  <td colspan=2  width="50">${BZR}　</td>
  <td>日期</td>
  <td colspan=2  width="80">${BZRQ}　</td>
 </tr>
 
 <tr>
  <td height=16>复核人</td>
  <td colspan=2>${FHR}　</td>
  <td>日期</td>
  <td colspan=2>${FHRQ}　</td>
 </tr>
 
  <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200"> 
 <tr>
  <td width="10%" rowspan=2 align="center">&nbsp;行&nbsp;&nbsp;次&nbsp;</td>
  <td width="10%" align="center">&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;</td>
  <td width="10%" align="center">未审数</td>
  <td width="10%" align="center">调整数</td>
  <td width="10%" align="center">审核数</td>
  <td width="10%" align="center">税收规定的扣除率</td>
  <td width="10%" align="center">工资薪金总额</td>
  <td width="10%" align="center">税收金额</td>
  <td width="10%" align="center">调整金额</td>
  <td width="10%" align="center">备注</td>
 </tr>
 
 <tr>
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
					<div name="COL3" css="width:99%"></div>
					<div name="COL4" type="select" css="width:99%" datasrc="0.14|14%"></div>									
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>					
				</div>   


 
  <table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">	 
           <tr height=16 style='height:12.0pt'>
              <td colspan=8 height=16 class=xl1185145 style='height:12.0pt'>一、职工福利费计入成本费用的金额明细</td>
            </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl805145 style='height:12.0pt;border-top:none'>行次</td>
  <td style='border-top:none;border-left:none'>项目</td>
  <td style='border-left:none'><spanstyle='mso-spacerun:yes'>&nbsp; </span>管理费用</td>
  <td style='border-top:none;border-left:none'><spanstyle='mso-spacerun:yes'>&nbsp; </span>销售费用</td>
  <td style='border-left:none'>主营业务成本</td>
  <td style='border-left:none'>其他业务成本</td>
  <td style='border-left:none'>其他</td>
  <td style='border-left:none'>合计</td>
 </tr>
 </table>
 
   				<div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" ></div>
					<div name="COL2" type="text" ></div>
					<div name="COL3" type="text" ></div>
					<div name="COL4" type="text" ></div>
					<div name="COL5" type="text" ></div>
					<div name="COL6" type="text" ></div>						
				</div>
 
 	<form class="form-horizontal" role="form" id="formmap_3">
        <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">	 				
            <tr height=20 style='mso-height-source:userset;height:15.0pt'>
                <td colspan=12 height=20 width=927 style='border-right:.5pt solid black;height:15.0pt;width:696pt'>二、职工福利费实际支出情况检查</td>
                <td colspan=2>备注</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td>行次</td>
                <td>项目</td>
                <td colspan=6 >明细项目</td>
                <td colspan=4> 金额 </td>
                <td colspan=2>借方余额用负数表示</td>
            </tr>
            <tr height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>10</td>
                <td rowspan=5 class=xl885145 width=90 style='border-top:none;width:68pt'>通过应付福利费或应付职工薪酬-职工福利费科目支出的职工福利费</td>
                <td colspan=6>年初余额</td>
                <td colspan=4> <input type="text" style="width:100%" id="COL1"/>　</td>
                <td colspan=2>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>11</td>
                <td colspan=6>本年借方发生额</td>
                <td colspan=4>　<input type="text" style="width:100%" id="COL2"/> </td>
                <td colspan=2>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>12</td>
                <td colspan=6>本年贷方发生额</td>
                <td colspan=4>　<input type="text" style="width:100%" id="COL3"/> </td>
                <td colspan=2>借方余额用负数表示</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>13</td>
                <td colspan=6>年末余额</td>
                <td colspan=4>　<input type="text" style="width:100%" id="COL4"/>  </td>
                <td colspan=2>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>14</td>
                <td colspan=6>实际支出额小计</td>
                <td colspan=4> <input type="text" style="width:100%" id="COL5"/> </td>
                <td colspan=2>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>15</td>
                <td rowspan=5 class=xl885145 width=90 style='border-top:none;width:68pt'>未通过应付福利费或应付职工薪酬-职工福利费科目支出的职工福利费</td>
                <td colspan=6 class=xl805145 style='border-left:none'>　</td>
                <td colspan=4 class=xl1055145 style='border-left:none'>　</td>
                <td colspan=2 class=xl1025145 style='border-right:.5pt solid black;border-left:none'>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>16</td>
                <td colspan=6 class=xl805145 style='border-left:none'>　</td>
                <td colspan=4 class=xl1055145 style='border-left:none'>　</td>
                <td colspan=2 class=xl1025145 style='border-right:.5pt solid black;border-left:none'>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>17</td>
                <td colspan=6 class=xl805145 style='border-left:none'>　</td>
                <td colspan=4 class=xl1055145 style='border-left:none'>　</td>
                <td colspan=2 class=xl1025145 style='border-right:.5pt solid black;border-left:none'>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>18</td>
                <td colspan=6 class=xl805145 style='border-left:none'>　</td>
                <td colspan=4 class=xl1055145 style='border-left:none'>　</td>
                <td colspan=2 class=xl1025145 style='border-right:.5pt solid black;border-left:none'>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>19</td>
                <td colspan=6 class=xl805145 style='border-left:none'>实际支出额小计</td>
                <td colspan=4 class=xl1055145 style='border-left:none'><input type="text" style="width:100%" id="COL6"/> </td>
                <td colspan=2 class=xl1025145 style='border-right:.5pt solid black;border-left:none'>　</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>20</td>
                <td colspan=7 class=xl885145 width=513 style='border-left:none;width:385pt'>实际支出额合计</td>
                <td colspan=4 class=xl1055145 style='border-left:none'>　<input type="text" style="width:100%" id="COL7"/> </td>
                <td colspan=2 class=xl1025145 style='border-right:.5pt solid black;border-left:none'>与审核确认额进行比对确认</td>
            </tr>
            <tr class=xl875145 height=20 style='mso-height-source:userset;height:15.0pt'>
                <td height=20 class=xl885145 width=38 style='height:15.0pt;border-top:none;width:29pt'>21</td>
                <td colspan=7 class=xl885145 width=513 style='border-left:none;width:385pt'>未实际支出的职工福利费金额</td>
                <td colspan=4 class=xl1055145 style='border-left:none'> <input type="text" style="width:100%" id="COL8"/>　</td>
                <td colspan=2>　</td>
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