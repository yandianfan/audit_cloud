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

	<title>关联方及其交易声明书</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">关联方及其交易声明书</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
<table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

 <tr class=xl8111562 height=19 style='mso-height-source:userset;height:14.25pt'>
  <td colspan=8 height=19 align="right">索引号：1-3</td>
 </tr>
 <tr class=xl8111562 height=16 style='height:12.0pt'>
  <td colspan=7 height=16 class=xl10011562 width=888 style='height:12.0pt;
  width:665pt'>被审核单位名称：${QYMC}</td>
  <td class=xl8611562>金额单位：元</td>
  
 </tr>
 <tr class=xl8111562 height=16 style='mso-height-source:userset;height:12.0pt'>
  <td colspan=2 rowspan=2 height=32 class=xl9811562 width=253 style='height:
  24.0pt;width:190pt'>会计期间或会计截止日：</td>
  <td colspan=2 rowspan=2 class=xl8211562 width=254 style='width:190pt'>${KJQJ}</td>
  <td class=xl8011562 width=127 style='border-left:none;width:95pt'>编制人</td>
  <td class=xl8211562 width=127 style='border-left:none;width:95pt'>${BZR}</td>
  <td class=xl8011562 width=127 style='border-left:none;width:95pt'>日期</td>
  <td class=xl8211562 width=127 style='border-left:none;width:95pt'>${BZRQ}</td>
  
 </tr>
 <tr class=xl8111562 height=16 style='height:12.0pt'>
  <td height=16 class=xl8011562 width=127 style='height:12.0pt;border-top:none;
  border-left:none;width:95pt'>复核人</td>
  <td class=xl8211562 width=127 style='border-top:none;border-left:none;
  width:95pt'>${FHR}</td>
  <td class=xl8011562 width=127 style='border-top:none;border-left:none;
  width:95pt'>日期</td>
  <td class=xl8311562 width=127 style='border-top:none;border-left:none;
  width:95pt'>${FHRQ}</td>
 </tr>
 </table> 
 
 
  <form class="form-horizontal" role="form" id="Tsdg_0103_1form">
    <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">	
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl8711562 style='height:12.0pt;border-top:none'><input type="text"  id="COL1">有限公司：</td>
  <td colspan=7 class=xl8811562 style='border-left:none'>截至<span
  style='mso-spacerun:yes'>&nbsp;&nbsp; </span><input type="text"  id="COL2">年<span
  style='mso-spacerun:yes'>&nbsp; </span><input type="text"  id="COL3">月<span style='mso-spacerun:yes'>&nbsp;
  </span><input type="text" id="COL4">日止,与本公司有关联关系的人员和单位名单及其关联交易情况如下：</td>
 </tr>
   </table> 
   	</form> 
 
   <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200"> 	
 <tr height=16 style='height:12.0pt'>
  <td colspan=9 height=16 class=xl10111562 style='height:12.0pt'>一、关联方关系汇总</td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td width="50">请&nbsp;选&nbsp;择</td>
  <td height=20 class=xl8911562 width=126 style='height:15.0pt;border-top:none;
  width:95pt'>关联方名称(全称)</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>注册地点</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>主营业务</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>与本单位关系</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>经济性质或 类 型</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>法定代表人</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>是否存在控制关系</td>
  <td class=xl8911562 width=127 style='border-top:none;border-left:none;
  width:95pt'>持股比例</td>
 </tr>
    </table> 
    
       <div class="row-fluid">
         <div class="span">     
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="COL1" style="width:20%" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>	
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>			
				</div>              
       	   <div class="btn-group btn-group-xs noprint">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_1')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist_1');">删除</button>
		   </div>				
         </div> 		   	       
       </div>  
 
    <table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200"> 
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=9 height=20 class=xl10111562 style='height:15.0pt'>二、关联交易及关联往来汇总</td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
    <td rowspan=2 width="50">请&nbsp;选&nbsp;择</td>
  <td rowspan=2 height=40 width="200">关联方名称</td>
  <td colspan=2 width="350">关联交易情况</td>
  <td colspan=2 width="350">关联往来情况</td>
  <td rowspan=2 width="150">备注</td>
 </tr>
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td>交易内容</td>
  <td>交易金额</td>
  <td>会计科目</td>
  <td>期末余额</td>
 </tr>
  </table> 
  
       <div class="row-fluid">
         <div class="span">     
 				<div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="COL1"  style="width:20%" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>		
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>							
				</div>              
       	   <div class="btn-group btn-group-xs noprint">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_2')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist_2');">删除</button>
		   </div>				
         </div> 		   	       
       </div>  
 
 
     <table id="gridlist_3_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">
 <tr height=20 style='mso-height-source:userset;height:15.0pt'>
  <td colspan=9 height=20 class=xl10111562 style='height:15.0pt'>三、存在控制关系的关联方的注册资本、所持股份（权益）及其变化</td>
 </tr>
 <tr height=19 style='mso-height-source:userset;height:14.25pt'>
  <td rowspan=2 width="50">请&nbsp;选&nbsp;择</td>
  <td rowspan=2 height=35 class=xl8911562 width=126 style='height:26.25pt;
  border-top:none;width:95pt'>企业名称</td>
  <td colspan=3 class=xl8911562 width=381 style='border-left:none;width:285pt'>注册资本及其变化</td>
  <td colspan=4 class=xl8911562 width=508 style='border-left:none;width:380pt'>所持股份或权益及其变化</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16>期初数</td>
  <td width=127>本期增减金额</td>
  <td width=127>期末数</td>
  <td width=127>金额</td>
  <td width=127>股份比例%</td>
  <td width=127>金额</td>
  <td width=127>股份比例%</td>
 </tr>
   </table> 
   
       <div class="row-fluid">
         <div class="span">     
 				<div id="gridlist_3" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="COL1" style="width:20%" type="text" css="width:99%"></div>
					<div name="COL2" type="text"></div>
					<div name="COL3" type="text"></div>
					<div name="COL4" type="text"></div>			
					<div name="COL5" type="text"></div>
					<div name="COL6" type="text"></div>
					<div name="COL7" type="text"></div>
					<div name="COL8" type="text"></div>							
				</div>              
       	   <div class="btn-group btn-group-xs noprint">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_3')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist_3');">删除</button>
		   </div>				
         </div> 		   	       
       </div> 

  <form class="form-horizontal" role="form" id="Tsdg_0103_2form">
    <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">	
 <tr class=xl8411562 height=16 style='height:12.0pt'>
  <td colspan=8 height=16 class=xl10211562 style='height:12.0pt'><span
  style='mso-spacerun:yes'>&nbsp;</span>${QYMC}<span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span>公司负责人：<input type="text"  id="COL6"><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></td>
 </tr>

 <tr class=xl8411562 height=16 style='height:12.0pt'>
  <td colspan=8 height=16 class=xl10211562 style='height:12.0pt'><span
  style='mso-spacerun:yes'>&nbsp;&nbsp; </span><input type="text"  id="COL7">年<span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span><input type="text"  id="COL8">月<span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span><input type="text"  id="COL9">日<span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span>财务负责人：<input type="text"  id="COL10"></td>
 </tr>
</table>
	</form> 
 
   			<form class="form-horizontal" role="form" id="formmap">
   			    <input style="display:none" id="JDSMJL" />
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form>    
  			         
</div></div>     
     
    <script type="text/javascript"> 
        function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0103_1form");
           $w1.pushForm("Tsdg_0103_2form");
           $w1.pushGrid("gridlist_1"); 
           $w1.pushGrid("gridlist_2"); 
           $w1.pushGrid("gridlist_3"); 
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0103Ctrl/save");		
        }
         
        function closeAbPage(){
           window.close();
        }        
    </script>  
    
  </body>
</html>