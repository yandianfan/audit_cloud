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

	<title>广告费和业务宣传费支出审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">广告费和业务宣传费支出审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
    <form class="form-horizontal" role="form" id="formmap_1">      
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="800">

 <tr>
  <td colspan=7 align="right">索引号：3-2-3</td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td colspan=6 height=16 width=778 style='height:12.0pt;width:583pt'>被审核单位名称：${QYMC}</td>
  <td>金额单位：元</td>
 </tr>
 
 <tr>
  <td colspan=2 rowspan=2 width="15%">会计期间或会计截止日：</td>
  <td rowspan=2 width="15%">${KJQJ}　</td>
  <td width="15%">编制人</td>
  <td width="15%">${BZR}　</td>
  <td width="15%">日期</td>
  <td width="15%">${BZRQ}　</td>
 </tr>
 
 <tr height=17 style='height:12.75pt'>
  <td height=17 style='height:12.75pt;border-top:none;border-left:none'>复核人</td>
  <td width=151 style='border-top:none;border-left:none;width:113pt'>${FHR}　</td>
  <td style='border-top:none;border-left:none'>日期</td>
  <td style='border-top:none;border-left:none'>${FHRQ}　</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 style='height:12.0pt;border-top:none'>行次</td>
  <td colspan="4" style='border-left:none'>项目</td>
  <td colspan="2" style='border-left:none'>金额</td>
 </tr>

		<tr align="center" style='height:12.0pt'>
				<td width="10%">
					行 次
				</td>
				<td colspan="4"  width="70%">
					项 目
				</td>
				<td colspan="2"  width="20%">
					金 额
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					1
				</td>
				<td  colspan="4" >
					一、本年广告费和业务宣传费支出
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL1">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					2
				</td>
				<td colspan="4" >
					减：不允许扣除的广告费和业务宣传费支出  
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL2">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					3
				</td>
				<td colspan="4"  >
					二、本年符合条件的广告费和业务宣传费支出（1-2）
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL3">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					4
				</td>
				<td colspan="4"  >
					三、本年计算广告费和业务宣传费扣除限额的销售（营业）收入
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL4">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					5
				</td>
				<td colspan="4"  >
					税收规定扣除率
				</td>
				<td colspan="2" >
				   <fieldset>
						 <select id="COL5"  class="form-control" title="税收规定扣除率">
						   <option value="0.3">30%</option>
						   <option value="0.15">15%</option>
						 </select>	
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					6
				</td>
				<td colspan="4"  >
					四、本企业计算的广告费和业务宣传费扣除限额（4×5）
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL6">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					7
				</td>
				<td colspan="4"  >
					五、本年结转以后年度扣除额（3＞6，本行=3-6；3≤6，本行=0）
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL7">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					8
				</td>
				<td colspan="4"  >
					加：以前年度累计结转扣除额
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL8">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					9
				</td>
				<td colspan="4"  >
					减：本年扣除的以前年度结转额 [3＞6，本行=0；3≤6，本行=8或（6-3）孰小值]
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL9">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					10
				</td>
				<td colspan="4"  >
					六、按照分摊协议归集至其他关联方的广告费和业务宣传费（10≤3或6孰小值）
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL10">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					11
				</td>
				<td colspan="4"  >
					按照分摊协议从其他关联方归集至本企业的广告费和业务宣传费
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL11">
                   </fieldset>
				</td>
			</tr>
			<tr style='height:12.0pt'>
				<td align="center">
					12
				</td>
				<td colspan="4"  >
					七、本年广告费和业务宣传费支出纳税调整金额（3＞6，本行=2+3-6+10-11；3≤6，本行=2+10-11-9）
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL12">
                   </fieldset>
				</td>
			</tr>
			<tr >
				<td align="center">
					13
				</td>
				<td colspan="4"  >
					八、累计结转以后年度扣除额（7+8-9）
				</td>
				<td colspan="2" >
				   <fieldset>
                       <input type="text"  class="form-control" id="COL13">
                   </fieldset>
                   
                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" value="${PZXH}" style="display:none">
                   <fieldset>                      
				</td>
			</tr>
         </table>    
   </form>      
		<!-- 
	 				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" colspan="4" caption="项目"></div>
					<div name="COL1" colspan="2" type="text" css="width:99%" caption="金额"></div>
				</div>	
		 --> 

		
			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="800">
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
    $w1.pushForm("formmap");
    $w1.pushForm("formmap_1");
    $w1.pushGrid("gridlist");
    $w1.ajax("/tsdgcommCtrl/prosave",callback);		
    }
    
    function closeAbPage(){
           window.close();
         }
    </script>      
  </body>
</html>