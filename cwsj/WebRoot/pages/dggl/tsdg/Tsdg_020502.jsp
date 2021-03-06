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

	<title>金融企业营业外收入审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">金融企业营业外收入审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
         </div>
          
          
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="818">

 <tr class=xl787024 height=33 style='mso-height-source:userset;height:24.95pt'>
  <td colspan=7 height=33 class=xl797024 style='height:24.95pt' align="right">索引号：2-5-2</td>
  
 </tr>
 <tr class=xl787024 height=33 style='mso-height-source:userset;height:24.95pt'>
  <td colspan=6 height=33 class=xl937024 width=635 style='height:24.95pt;
  width:477pt'>被审核单位名称：${QYMC}</td>
  <td class=xl837024>金额单位：元</td>
 </tr>
 <tr class=xl787024 height=33 style='mso-height-source:userset;height:24.95pt'>
  <td colspan=2 rowspan=2 height=66 class=xl847024 width=222 style='height:
  49.9pt;width:167pt'>会计期间或会计截止日：</td>
  <td rowspan=2 class=xl927024 style='border-top:none'>${KJQJ}　</td>
  <td class=xl847024 width=51 style='border-top:none;border-left:none;
  width:38pt'>编制人</td>
  <td class=xl907024 style='border-top:none;border-left:none;width:66pt'>${BZR}　</td>
  <td class=xl857024 style='border-top:none;border-left:none'>日期</td>
  <td class=xl807024 width=111 style='border-top:none;border-left:none;width:83pt'>${BZRQ}　</td>
 </tr>
 <tr class=xl787024 height=33 style='mso-height-source:userset;height:24.95pt'>
  <td height=33 class=xl847024 width=51 style='height:24.95pt;border-top:none;
  border-left:none;width:38pt'>复核人</td>
  <td class=xl907024 style='border-top:none;border-left:none;width:66pt'>${FHR}　</td>
  <td class=xl857024 style='border-top:none;border-left:none'>日期</td>
  <td class=xl807024 width=111 style='border-top:none;border-left:none;width:83pt'>${FHRQ}　</td>
 </tr>
 <tr class=xl827024 height=33 style='mso-height-source:userset;height:24.95pt'>
  <td rowspan=2 height=66 class=xl867024 style='height:49.9pt;border-top:none'>行次</td>
  <td rowspan=2 class=xl867024 style='border-top:none'>项目</td>
  <td class=xl847024 width=154 style='border-top:none;border-left:none;
  width:116pt'>未审数</td>
  <td colspan=2 class=xl847024 width=164 style='border-left:none;width:123pt'>会计调整数</td>
  <td class=xl867024 style='border-top:none;border-left:none'>审核数</td>
  <td class=xl867024 style='border-top:none;border-left:none'>纳税调整数</td>
  
 </tr>
 <tr class=xl827024 height=33 style='mso-height-source:userset;height:24.95pt'>
  <td height=33 class=xl847024 width=154 style='height:24.95pt;border-top:none;
  border-left:none;width:116pt'>1</td>
  <td colspan=2 class=xl847024 width=164 style='border-left:none;width:123pt'>2</td>
  <td class=xl867024 style='border-top:none;border-left:none'>3</td>
  <td class=xl867024 style='border-top:none;border-left:none'>4</td>
  
 </tr>

         </table>      
         
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%" colspan="2"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
				</div>

 
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="818">
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