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

	<title>其他收入类调整项目审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">其他收入类调整项目审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1080">

 <tr height="16">
  <td colspan="9" height="16" align="right">索引号：3-1-9</td>
 </tr>
 <tr height="16">
  <td colspan="8" height="16">被审核单位名称：${QYMC}</td>
  <td>金额单位：元</td>
 </tr>
 <tr height="16">
  <td colspan="2" rowspan="2" height="32">会计期间或会计截止日：</td>
  <td colspan="2" rowspan="2">${KJQJ}　</td>
  <td width="119">编制人</td>
  <td colspan="2">${BZR}　</td>
  <td>日期</td>
  <td>${BZRQ}　</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl7518881 width=119 style='height:12.0pt;border-top:none;border-left:none;width:89pt'>复核人</td>
  <td colspan=2 class=xl7718881 style='border-left:none'>${FHR}　</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>日期</td>
  <td class=xl8418881 style='border-top:none;border-left:none'>${FHRQ}</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td rowspan=2 height=32 class=xl7618881 style='height:24.0pt;border-top:none'>&nbsp;选&nbsp;&nbsp;择&nbsp;</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>项&nbsp;目</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>未审数</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>调整数</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>审核数</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>税收金额</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>调增金额</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>调减金额</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>备注</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 style='height:12.0pt;border-top:none;border-left:none'>1</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>2</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>3</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>4</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>5</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>6</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>7</td>
  <td class=xl7618881 style='border-top:none;border-left:none'>8</td>
 </tr>
         </table>    
         
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" css="width:20px" caption="请选择"></div>
					<div name="DGHC" style="display:none"  caption="行次"></div>
					<div name="DGHMC" type="text" css="width:99%" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%" caption="未审数"></div>
					<div name="COL2" type="text" css="width:99%" caption="调整数"></div>
					<div name="COL3" type="text" css="width:99%" caption="审核数"></div>
					<div name="COL4" type="text" css="width:99%" caption="税收金额"></div>
					<div name="COL5" type="text" css="width:99%" caption="调增金额"></div>
					<div name="COL6" type="text" css="width:99%" caption="调减金额"></div>
					<div name="COL7" type="text" css="width:99%" caption="备注"></div>
				</div>
       	        <div class="btn-group btn-group-xs noprint">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist');">删除</button>
		        </div>			
			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1080">
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