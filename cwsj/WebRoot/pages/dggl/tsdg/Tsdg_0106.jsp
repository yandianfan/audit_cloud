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

	<title>企业提供资料清单</title>
	
  </head>
  
  <body>
  
 
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">企业提供资料清单</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
                     
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
 <tr height=19 style='mso-height-source:userset;height:14.25pt'>
  <td colspan=7 height=19 class=xl821384 style='height:14.25pt' align="right">索引号：1-6</td>
 </tr>
 <tr height=19 style='mso-height-source:userset;height:14.25pt'>
  <td colspan=6 height=19 class=xl891384 width=755 style='height:14.25pt;
  width:567pt'>被审核单位名称：${QYMC}</td>
  <td class=xl821384>金额单位：元</td>
  
 </tr>
 <tr height=16 style='mso-height-source:userset;height:12.0pt'>
  <td colspan=2 rowspan=2 height=35 class=xl921384 width=205 style='height:
  26.25pt;width:154pt'>会计期间或会计截止日：</td>
  <td rowspan=2 class=xl831384 width=275 style='border-top:none;width:206pt'>${KJQJ}</td>
  <td class=xl831384 width=90 style='border-top:none;border-left:none;
  width:68pt'>编制人</td>
  <td class=xl831384 width=106 style='border-top:none;border-left:none;
  width:80pt'>${BZR}</td>
  <td class=xl831384 width=79 style='border-top:none;border-left:none;
  width:59pt'>日期</td>
  <td class=xl831384 width=133 style='border-left:none;width:100pt'>${BZRQ}</td>
  
 </tr>
 <tr height=19 style='mso-height-source:userset;height:14.25pt'>
  <td height=19 class=xl831384 width=90>复核人</td>
  <td class=xl841384 width=106 style='border-top:none;border-left:none;
  width:80pt'>${FHR}</td>
  <td class=xl831384 width=79 style='border-top:none;border-left:none;
  width:59pt'>日期</td>
  <td class=xl861384 width=133 style='border-top:none;border-left:none;
  width:100pt'>${FHRQ}</td>
 </tr>
         </table>  
 
   <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%"> 	 
 <tr height=25>
  <td height=25 width=40>行次</td>
  <td colspan=2 width=440>资料名称</td>
  <td colspan=2 width=200>是否提供</td>
  <td colspan=2 width=220>索引号</td>
 </tr>
 <tr height=25 style='mso-height-source:userset;height:18.75pt'>
  <td colspan=7 height=25 width=888 style='height:18.75pt;width:667pt'>一、企业所得税汇算清缴审核需提供的资料</td>
 </tr>
     </table> 
     
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" colspan=3 caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>		
				</div>  
 

    <table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
 <tr height=16 style='height:12.0pt'>
  <td colspan=7 height=16 width=888 style='height:12.0pt;width:667pt'>二、技术开发费加计扣除审核需提供的资料（除提供企业所得税汇算清缴审核所需的资料外，还要提供如下资料：）</td>
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
				</div>   
 
    <table id="gridlist_3_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%"> 	 
 <tr height=16 style='height:12.0pt'>
  <td colspan=7 height=16 class=xl911384 width=888 style='height:12.0pt;width:667pt'>三、企业资产损失审核需提供的资料</td>
 </tr>
     </table> 
     
  				<div id="gridlist_3" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>		
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
           $w1.pushGrid("gridlist_1"); 
           $w1.pushGrid("gridlist_2"); 
           $w1.pushGrid("gridlist_3"); 
           $w1.pushForm("formmap");
           $w1.ajax("/tsdgcommCtrl/prosave");		
        }    
         
        function closeAbPage(){
           window.close();
        }        
    </script>   
  </body>
</html>