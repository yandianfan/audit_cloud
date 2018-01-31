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

	<title>捐赠支出纳税调整明细表</title>
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">捐赠支出纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
  <table  border="1" cellspacing="1"  align="center"  cellpadding="1" bordercolor="#000000" width="1200" >

		 <tr height=28 style='height:21.0pt'>
		  <td colspan=12 height=28 width=768 style='height:21.0pt;
		  width:576pt'>捐赠支出审核表</td>
		 </tr>
		 <tr height=19 style='height:14.0pt'>
		  <td colspan=12 height=19 style='height:14.0pt'>索引号：3-2-4</td>
		 </tr>
		 <tr height=19 style='height:14.0pt'>
		  <td colspan=9 height=19 width=576 style='height:14.0pt;
		  width:432pt'>被审核单位名称：${QYMC}</td>
		  <td colspan=2 ></td>
		  <td>金额单位：元</td>
		 </tr>
		 <tr height=19 style='height:14.0pt'>
		  <td colspan=2 rowspan=2 height=38  style='height:28.0pt'>会计期间或会计截止日：</td>
		  <td colspan=4 rowspan=2 >${KJQJ}　</td>
		  <td  style='border-left:none'>编制人</td>
		  <td colspan=2  style='border-left:none'>${BZR}　　</td>
		  <td  style='border-left:none'>日期</td>
		  <td colspan=2  style='border-left:none'>${BZRQ}　　</td>
		 </tr>
		 <tr height=19 style='height:14.0pt'>
		  <td height=19  style='height:14.0pt;border-top:none;
		  border-left:none'>复核人</td>
		  <td colspan=2 style='border-left:none'>${FHR}　　</td>
		  <td class=xl6518320 style='border-top:none;border-left:none'>日期</td>
		  <td colspan=2 style='border-left:none'>${FHRQ}　</td>
		 </tr>
	</table> 
	<table  id="gridlist_1_table" border="1" align="center"  cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200" >   	 
		 <tr height=19 style='height:14.0pt'>
		  <td colspan=12 height=19  style='height:14.0pt'>一、捐赠支出明细及调整</td>
		 </tr>
		 <tr height=19 style='mso-height-source:userset;height:14.0pt'>
		  <td rowspan=2 height=38 width=64 style='height:28.0pt;
		  width:48pt'>行次</td>
		  <td  rowspan=2 width=128 style='width:96pt'>受赠单位统一社会信用代码证</td>
		  <td  rowspan=2 width=192 style='width:144pt'>受赠单位名称</td>
		  <td  colspan="2" width=128 style='border-right:.5pt solid black;
		  border-left:none;width:96pt'>公益性捐赠支出金额</td>
		  <td rowspan=2 width=64 style='border-bottom:.5pt solid black;
		  width:48pt'>非公益性捐赠支出金额</td>
		  <td rowspan=2 width=64 style='width:48pt'>非公益性捐赠支出纳税调整金额</td>
		  <td rowspan=2 width=64 style='width:48pt'>是否取得<br>
		    捐赠收据</td>
		  <td rowspan=2 width=64 style='width:48pt'>备注</td>
		 </tr>
		 <tr height=19 style='height:14.0pt'>
		  <td height=19  width=64 style='height:14.0pt;border-top:none;
		  border-left:none;width:48pt'>全额扣除</td>
		  <td  width=64 style='border-top:none;border-left:none;
		  width:48pt'>限额扣除</td>
		 </tr>	 
		</table>
       <div class="row-fluid">
         <div class="span">           
                <div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="DGHC" type="text" css="width:99%;text-align:center" style="display:none" caption="行次"></div>
					<div name="DGHMC" style="display:none"  caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="select" datasrc="1|是,0|否" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>


                </div>
                
       	        <div class="btn-group btn-group-xs">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_1')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist_1');">删除</button>
		        </div>				
         </div> 		   	       
       </div>   		
		
		
		<table id="gridlist_2_table" border="1" align="center"  cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200" >
				 <tr height=19 style='height:14.0pt'>
		  <td colspan=12 height=19 class=xl7118320 style='height:14.0pt'>二、捐赠支出限额税前扣除纳税调整情况</td>
		 </tr>
		 <tr height=19 style='height:14.0pt'>
		  <td rowspan=3 height=57 class=xl7018320 width=64 style='height:42.0pt;
		  width:48pt'>行次</td>
		  <td rowspan=3 class=xl6718320 width=64 style='width:48pt'>项目</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'>年度</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'>限额扣除的公益性捐赠支出帐载金额</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'>利润总额</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'>税前扣除限额</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'>税收金额</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'>纳税调增金额<br>
		    （可结转以后年度扣除的捐赠额）</td>
		  <td colspan=3 class=xl6918320 width=192 style='border-left:none;width:144pt'>以前年度已扣除的公益性捐赠支出</td>
		  <td rowspan=2 class=xl6718320 width=64 style='width:48pt'><span
		  style='mso-spacerun:yes'>&nbsp;</span>本年实际扣除以前年度未扣除的公益性捐赠支出（纳税调整减少额）</td>
		 </tr>	
			 <tr height=19 style='height:14.0pt'>
			  <td height=19 width=64 style='height:14.0pt;border-top:none;
			  border-left:none;width:48pt'>前二年度</td>
			  <td width=64 style='border-top:none;border-left:none;
			  width:48pt'>前一年度</td>
			  <td width=64 style='border-top:none;border-left:none;
			  width:48pt'>小计</td>
			 </tr>
			 <tr height=19 style='height:14.0pt'>
			  <td height=19  style='height:14.0pt;border-top:none;
			  border-left:none'>1</td>
			  <td  style='border-top:none;border-left:none'>2</td>
			  <td  style='border-top:none;border-left:none'>3</td>
			  <td  style='border-top:none;border-left:none'>4=3*12%</td>
			  <td  style='border-top:none;border-left:none'>5</td>
			  <td  style='border-top:none;border-left:none'>6=2-5</td>
			  <td  style='border-top:none;border-left:none'>7</td>
			  <td  style='border-top:none;border-left:none'>8</td>
			  <td  style='border-top:none;border-left:none'>9=7+8</td>
			  <td  style='border-top:none;border-left:none'>10</td>
			 </tr>
         </table>     
  
      <div class="row-fluid">
         <div class="span">           
                <div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="DGHC" type="text" css="width:99%;text-align:center" style="display:none" caption="行次"></div>
					<div name="DGHMC" type="text" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>
					<div name="COL9" type="text" css="width:99%"></div>
					<div name="COL10" type="text" css="width:99%"></div>
                </div>
				
         </div> 		   	       
       </div>               

  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4"></textarea>
						</td>
					</tr>	
					<tr height="66">
						<td height="66" width="960">审核说明及结论：
							    <textarea class="form-control" id="JDSMJL" rows="4"></textarea>
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
         
         
         
         
         	