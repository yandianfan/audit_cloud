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

	<title>主营业务成本率审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">主营业务成本率审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

 <tr class=xl8011073 height=26 style='mso-height-source:userset;height:20.1pt'>
  <td colspan=20 height=26 class=xl8111073 style='height:20.1pt' align="right">索引号：2-6-1-1</td>
 </tr>
 <tr class=xl8011073 height=26 style='mso-height-source:userset;height:20.1pt'>
  <td colspan=19 height=26 class=xl9911073 width=1307 style='height:20.1pt;
  width:981pt'>被审核单位名称：${QYMC}</td>
  <td class=xl8111073>金额单位：元</td>
  
 </tr>
 <tr class=xl8011073 height=26 style='mso-height-source:userset;height:20.1pt'>
  <td colspan=2 rowspan=2 height=52 class=xl9711073 style='height:40.2pt'>会计期间或会计截止日：</td>
  <td colspan=6 rowspan=2 class=xl9411073 width=423 style='width:318pt'>${KJQJ}　</td>
  <td colspan=3 class=xl9611073 width=204 style='border-left:none;width:153pt'>编制人</td>
  <td colspan=3 class=xl9511073 style='border-left:none'>${BZR}　</td>
  <td colspan=3 class=xl10311073 style='border-left:none'>日期</td>
  <td colspan=3 class=xl9511073 style='border-left:none'>${BZRQ}　</td>
  
 </tr>
 <tr class=xl8011073 height=26 style='mso-height-source:userset;height:20.1pt'>
  <td colspan=3 height=26 class=xl9611073 width=204 style='height:20.1pt; border-left:none;width:153pt'>复核人</td>
  <td colspan=3 class=xl9511073 style='border-left:none'>${FHR}　</td>
  <td colspan=3 class=xl10311073 style='border-left:none'>日期</td>
  <td colspan=3 class=xl9511073 style='border-left:none'>${FHRQ}　</td>
  
 </tr>
 
 <tr class=xl8311073 height=26 style='mso-height-source:userset;height:20.1pt'>
  <td height=26 style='height:20.1pt' align=left valign=top>
      <table cellpadding=0 cellspacing=0>
         <tr>
            <td height=26 class=xl8611073 width=68 style='height:20.1pt;border-top: none;width:51pt'>项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目</td>
         </tr>
       </table>
  </td>
  <td colspan=3 class=xl8711073>合&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计</td>
  <td colspan=4 class=xl8811073 style='border-left:none'>销售商品</td>
  <td colspan=3 class=xl8811073 style='border-left:none'>提供劳务</td>
  <td colspan=3 class=xl8811073 style='border-left:none'>让渡资产使用权</td>
  <td colspan=3 class=xl8811073 style='border-left:none'>建造合同</td>
  <td colspan=3 class=xl8811073 style='border-left:none'>其他</td>
 </tr>
 
 <tr class=xl8311073 height=32 style='height:24.0pt'>
  <td height=32 class=xl8911073 style='height:24.0pt'>月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;份</td>
  <td class=xl8711073 style='border-top:none'>收<font class="font511073"><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">入</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">本</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成本率</td>
  <td class=xl8811073 style='border-top:none;border-left:none'>收<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">入</font></td>
  <td class=xl9011073 width=97 style='border-top:none;border-left:none;
  width:73pt'>其中：非货币资产交换收入</td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">本</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成本率</td>
  <td class=xl8811073 style='border-top:none;border-left:none'>收<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">入</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">本</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成本率</td>
  <td class=xl8811073 style='border-top:none;border-left:none'>收<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">入</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">本</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成本率</td>
  <td class=xl8811073 style='border-top:none;border-left:none'>收<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">入</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">本</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成本率</td>
  <td class=xl8811073 style='border-top:none;border-left:none'>收<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">入</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成<font
  class="font511073"><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></font><font
  class="font611073">本</font></td>
  <td class=xl8811073 style='border-top:none;border-left:none'>成本率</td>
 </tr>
         </table>        
 
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC"style="display:none"  caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" css="width:99%"></div>
					<div name="COL2" css="width:99%"></div>
					<div name="COL3"  css="width:99%"></div>
					<div name="COL4"  css="width:99%"></div>
					<div name="COL5"  css="width:99%"></div>
					<div name="COL6" css="width:99%"></div>
					<div name="COL7" css="width:99%"></div>
					<div name="COL8" css="width:99%"></div>
					<div name="COL9" css="width:99%"></div>
					<div name="COL10" css="width:99%"></div>
					<div name="COL11" css="width:99%"></div>
					<div name="COL12"  css="width:99%"></div>
					<div name="COL13" css="width:99%"></div>
					<div name="COL14" css="width:99%"></div>
					<div name="COL15"  css="width:99%"></div>
					<div name="COL16"  css="width:99%"></div>
					<div name="COL17" css="width:99%"></div>
					<div name="COL18"  css="width:99%"></div>
					<div name="COL19" css="width:99%"></div>
				</div>

  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">
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