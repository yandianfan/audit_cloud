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

	<title>内部控制调查表</title>
	
  </head>
  
  <body>
  
           
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">内部控制调查表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
              
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

 <tr height=16 style='height:12.0pt'>
  <td colspan=6 height=16 class=xl9612557 style='height:12.0pt' align="right">索引号：1-10</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=5 height=16 class=xl9312557 width=772 style='height:12.0pt;width:579pt'>被审核单位名称：${QYMC}</td>
  <td class=xl9612557 style='border-top:none;border-left:none'>金额单位：元</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td rowspan=2 height=32 class=xl9312557 width=155 style='height:24.0pt;
  border-top:none;width:116pt'>会计期间或会计截止日：</td>
  <td rowspan=2 class=xl9112557 width=155 style='border-top:none;width:116pt'>${KJQJ}</td>
  <td class=xl8212557 width=137 style='border-top:none;border-left:none;width:103pt'>编制人</td>
  <td class=xl8712557 style='border-top:none;border-left:none'>${BZR}</td>
  <td class=xl8312557 style='border-top:none;border-left:none'>日期</td>
  <td class=xl8712557 style='border-top:none;border-left:none'>${BZRQ}</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl8212557 width=137 style='height:12.0pt;border-top:none;border-left:none;width:103pt'>复核人</td>
  <td class=xl8712557 style='border-top:none;border-left:none'>${FHR}</td>
  <td class=xl8312557 style='border-top:none;border-left:none'>日期</td>
  <td class=xl8712557 style='border-top:none;border-left:none'>${FHRQ}</td>
 </tr>
 
 <tr height=48 style='height:36.0pt'>
  <td colspan=2 height=48 class=xl8212557 width=310 style='height:36.0pt;
  width:232pt'>与企业所得税有关的内部控制制度项目名称</td>
  <td class=xl8512557 width=137 style='border-top:none;border-left:none;
  width:103pt'>相应的内部控制制度是否已建立</td>
  <td class=xl8512557 width=146 style='border-top:none;border-left:none;
  width:110pt'>相应的内部控制制度是否适用</td>
  <td class=xl8512557 width=179 style='border-top:none;border-left:none;
  width:134pt'>对内部控制进行符合性测试是否发现得到有效执行</td>
  <td class=xl8512557 width=163 style='border-top:none;border-left:none;width:122pt'>现有内部控制制度导致企业所得税的纳税申报产生重大错报风险的评估</td>
 </tr>
   </table>
  
 				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" style="display:none" caption="行次"></div>
					<div name="DGHMC" colspan=2  caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>		
				</div>  
    
	         
   			<form class="form-horizontal" role="form" id="formmap">
   			    <input style="display:none" id="JDSMJL" />
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form>           
          
       </div>
    </div>      

    <script type="text/javascript"> 
       function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("formmap");
           $w1.pushGrid("gridlist");
           $w1.ajax("/tsdgcommCtrl/save");		
           }
           
        function closeAbPage(){
           window.close();
        }            
    </script>    
  </body>
</html>