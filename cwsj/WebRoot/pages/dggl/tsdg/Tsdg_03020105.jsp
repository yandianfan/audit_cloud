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

	<title>基本社会保障性缴款审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">基本社会保障性缴款审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150">

 <tr height=16 style='height:12.0pt'>
  <td colspan=10 height=16 align="right">索引号：3-2-1-5</td>
 </tr>
 <tr class=xl7910049 height=16 style='height:12.0pt'>
  <td colspan=9 height=16 class=xl10010049 width=739 style='height:12.0pt;width:555pt'>被审核单位名称：${QYMC}</td>
  <td class=xl8010049>金额单位：元</td>
 </tr>
 <tr class=xl7910049 height=16 style='height:12.0pt'>
  <td colspan=3 rowspan=2 height=32 class=xl8110049 style='height:24.0pt'>会计期间或会计截止日：</td>
  <td colspan=2 rowspan=2 width=100>${KJQJ}</td>
  <td class=xl8410049 width=91 style='border-top:none;border-left:none;width:68pt'>编制人</td>
  <td width=100  style='border-top:none;border-left:none'>${BZR}　</td>
  <td class=xl8110049 style='border-top:none;border-left:none'>日期</td>
  <td colspan=2 width=100  style='border-left:none'>${BZRQ}　</td>
 </tr>
 <tr class=xl7810049 height=16 style='height:12.0pt'>
  <td height=16 class=xl8410049 width=91 style='height:12.0pt;border-top:none;border-left:none;width:68pt'>复核人</td>
  <td class=xl8510049 style='border-top:none;border-left:none'>${FHR}　</td>
  <td class=xl8110049 style='border-top:none;border-left:none'>日期</td>
  <td colspan=2 class=xl10110049 style='border-left:none'>${FHRQ}　</td>
 </tr>
 
  <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150"> 
 <tr height=32 style='height:24.0pt'>
  <td width="9%" rowspan=2>&nbsp;行&nbsp;&nbsp;次&nbsp;</td>
  <td width="9%">&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;</td>
  <td width="9%">未审数</td>
  <td width="9%">调整数</td>
  <td width="9%">审核数</td>
  <td width="9%">税&nbsp;收&nbsp;规&nbsp;定&nbsp;扣&nbsp;除&nbsp;率</td>
  <td width="9%">工资薪金总额</td>
  <td width="9%">税收金额</td>
  <td width="9%">纳税调整金额</td>
  <td width="9%">备注</td>
 </tr>
 
 <tr>
  <td>1</td>
  <td>2</td>
  <td>3</td>
  <td>4</td>
  <td>7</td>
  <td>8</td>
  <td>9</td>
  <td>10</td>
  <td>11</td>
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
					<div name="COL4"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>				
				</div>    


<table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1150">


 <tr height=16 style='height:12.0pt'>
  <td colspan=10 height=16 class=xl8810049 style='height:12.0pt'>各类社会保障性缴款计入成本费用的金额明细</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl8110049 style='height:12.0pt;border-top:none'>行次</td>
  <td class=xl8910049 style='border-top:none;border-left:none'>项目</td>
  <td class=xl8110049 style='border-top:none;border-left:none'>管理费用</td>
  <td class=xl8110049 style='border-top:none;border-left:none'>销售费用</td>
  <td class=xl8910049 style='border-top:none;border-left:none'>主营业务成本</td>
  <td class=xl9010049 width=91 style='border-top:none;border-left:none;width:68pt'>其他业务成本</td>
  <td width=166 style='border-left:none;width:125pt'>其他</td>
  <td width=182 style='border-left:none;width:136pt'>合计</td>
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
           $w1.pushForm("formmap");
           $w1.ajax("/tsdgcommCtrl/prosave",callback);		
         }
         
         function closeAbPage(){
           window.close();
         }
    </script>   
  </body>
</html>