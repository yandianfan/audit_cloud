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

	<title>未按权责发生制原则确认的收入审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">未按权责发生制原则确认的收入审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

 <tr height=16 style='height:12.0pt'>
  <td colspan=15 height=16 class=xl9331725 width=1182 style='height:12.0pt;width:890pt' align="right">索引号：3-1-2</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=14 height=16 class=xl10131725 width=1073 style='height:12.0pt;
  width:808pt'>被审核单位名称：${QYMC}</td>
  <td class=xl9331725 width=109 style='width:82pt'>金额单位：元</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 rowspan=2 height=32 class=xl7831725 width=143 style='height:
  24.0pt;width:108pt'>会计期间或会计截止日：</td>
  <td colspan=4 rowspan=2 class=xl8531725 width=272 style='width:204pt'>${KJQJ}　</td>
  <td class=xl7831725 width=78 style='border-left:none;width:59pt'>编制人</td>
  <td colspan=3 class=xl8531725 width=253 style='border-left:none;width:191pt'>${BZR}　</td>
  <td class=xl7831725 width=97 style='border-left:none;width:73pt'>日期</td>
  <td colspan=4 class=xl8531725 width=339 style='border-left:none;width:255pt'>${BZRQ}　</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl7831725 width=78 style='height:12.0pt;border-top:none;
  border-left:none;width:59pt'>复核人</td>
  <td colspan=3 class=xl8531725 width=253 style='border-left:none;width:191pt'>${FHR}　</td>
  <td class=xl7831725 width=97 style='border-top:none;border-left:none;
  width:73pt'>日期</td>
  <td colspan=4 class=xl8531725 width=339 style='border-left:none;width:255pt'>${FHRQ}　</td>
 </tr>
 <tr class=xl8331725 height=16 style='height:12.0pt'>
  <td rowspan=4 height=64 width=80>行&nbsp;次</td>
  <td rowspan=4 width=250>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  <td rowspan=3 class=xl7831725 width=250'>具体内容</td>
  <td rowspan=3 width=50>起始日期</td>
  <td rowspan=3 class=xl7831725 width=80 style='border-top:none;width:60pt'>合同金额（交易金额）</td>
  <td colspan=5 class=xl7831725 width=395 style='border-left:none;width:298pt'>账载金额</td>
  <td colspan=3 class=xl7831725 width=241 style='border-left:none;width:181pt'>税收金额</td>
  <td rowspan=3 class=xl7831725 width=86 style='border-top:none;width:65pt'>纳税调整金额</td>
  <td rowspan=3 class=xl7831725 width=130 style='border-top:none;width:82pt'>备注</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td rowspan=2 height=32 width=64>期初累计</td>
  <td colspan=3 width=234>本年</td>
  <td rowspan=2 class=xl7831725 width=97 style='border-top:none;width:73pt'>期末累计</td>
  <td rowspan=2 class=xl7831725 width=97 style='border-top:none;width:73pt'>期初累计</td>
  <td rowspan=2 class=xl7831725 width=72 style='border-top:none;width:54pt'>本年</td>
  <td rowspan=2 class=xl7831725 width=72 style='border-top:none;width:54pt'>期末累计</td>
 </tr>
 <tr class=xl8331725 height=16 style='height:12.0pt'>
  <td height=16 class=xl7831725 width=78 style='height:12.0pt;border-top:none;
  border-left:none;width:59pt'>未审数</td>
  <td class=xl7831725 width=78 style='border-top:none;border-left:none;
  width:59pt'>调整数</td>
  <td class=xl7831725 width=78 style='border-top:none;border-left:none;
  width:59pt'>审核数</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td width=64>1</td>
  <td width=64>2</td>
  <td width=80>3</td>
  <td width=64>4</td>
  <td width=78>5</td>
  <td width=78>6</td>
  <td width=78>7</td>
  <td width=97>8</td>
  <td width=97>9</td>
  <td width=72>10</td>
  <td width=72>11</td>
  <td width=86>12</td>
  <td width=109>13</td>
 </tr>

         </table>       
          
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" hbrows="true" rowspan="" caption="项目"></div>
					<div name="COL1"  css="width:99%" caption="具体内容"></div>
					<div name="COL2"  css="width:80px" caption="起始日期"></div>
					<div name="COL3"  css="width:99%" caption="合同金额（交易金额"></div>
					<div name="COL4"  css="width:99%" caption="账载金额"></div>
					<div name="COL5"  css="width:99%" caption="00000000"></div>
					<div name="COL6"  css="width:99%" caption="00000000"></div>
					<div name="COL7"  css="width:99%" caption="00000000"></div>
					<div name="COL8"  css="width:99%" caption="00000000"></div>
					<div name="COL9"  css="width:99%" caption="00000000"></div>
					<div name="COL10"  css="width:99%" caption="00000000"></div>
					<div name="COL11"  css="width:99%" caption="00000000"></div>
					<div name="COL12"  css="width:99%" caption="00000000"></div>
					<div name="COL13"  css="width:99%" caption="00000000"></div>
				</div>
		
			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
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
    $w1.pushForm("formmap");
    $w1.pushGrid("gridlist");
    $w1.ajax("/tsdgcommCtrl/save",callback);
    } 
    
    function closeAbPage(){
       window.close();
    }     
    </script>       
  </body>
</html>