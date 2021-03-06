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

	<title>房地产项目明细审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">房地产项目明细审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" width="100%" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">

            <tr height="33">
                <td colspan="17" align="right">索引号：3-4-4</td>
            </tr>
            <tr height="33">
                <td colspan="15" width="2560">被审核单位名称：${QYMC}</td>
                 <td colspan="2" width="320">金额单位：元</td>
            </tr>
            <tr height="33">
                <td colspan="3" rowspan="2" width="480">会计期间或会计截止日：</td>
                <td colspan="6" rowspan="2" width="960">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td colspan="3" width="480">${BZR}　</td>
                <td width="160">日期</td>
                <td colspan="3" width="480">${BZRQ}　</td>
            </tr>
            <tr height="33">
                <td width="160">复核人</td>
                <td colspan="3" width="480">${FHR}　</td>
                <td width="160">日期</td>
                <td colspan="3" width="480">${FHRQ}　</td>
            </tr>
 
            <tr height="25">
                <td rowspan="3" width="160" align="center">行次</td>
                <td rowspan="2" width="160" align="center">项目名称</td>
                <td rowspan="2" width="160" align="center">项目性质</td>
                <td colspan="5" width="800" align="center">房地产企业销售未完工开发产品特定业务计算的纳税调整额</td>
                <td colspan="5" width="800" align="center">房地产企业销售的未完工产品转完工产品特定业务计算的纳税调整额</td>
                <td rowspan="2" width="160" align="center">以前年度累计结转至本年的预计利润</td>
                <td rowspan="2" width="160" align="center">累计结转以后年度扣除的预计利润</td>
                <td rowspan="2" width="160" align="center">备注</td>
                <td rowspan="2" width="160" align="center">备注</td>
            </tr>
            <tr height="25">
                <td width="160">销售未完工产品的收入</td>
                <td width="160">计税毛利率%</td>
                <td width="160">销售未完工产品预计毛利额</td>
                <td width="160">实际发生的营业税金及附加、土地增值税</td>
                <td width="160">纳税调增</td>
                <td width="160">销售未完工产品转完工产品确认的销售收入</td>
                <td width="160">计税毛利率%</td>
                <td width="160">转回的销售未完工产品预计毛利额</td>
                <td width="160">转回实际发生的营业税金及附加、土地增值税</td>
                <td width="160">纳税调减</td>
            </tr>
            <tr height="25">
                <td width="160" align="center">1</td>
                <td width="160" align="center">2</td>
                <td width="160" align="center">3</td>
                <td width="160" align="center">4</td>
                <td width="160" align="center">5</td>
                <td width="160" align="center">6</td>
                <td width="160" align="center">7</td>
                <td width="160" align="center">8</td>
                <td width="160" align="center">9</td>
                <td width="160" align="center">10</td>
                <td width="160" align="center">11</td>
                <td width="160" align="center">12</td>
                <td width="160" align="center">13</td>
                <td width="160" align="center">14</td>
                <td width="160" align="center">15</td>
                <td width="160" align="center">16</td>
            </tr>
         </table> 
         
       <div class="row-fluid">
         <div class="span">     
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" type="text" css="width:99%;text-align:center" caption="行次"></div>
					<div name="DGHMC" type="text" css="width:99%" caption="项目"></div>
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
					<div name="COL11" type="text" css="width:99%"></div>
					<div name="COL12" type="text" css="width:99%"></div>
					<div name="COL13" type="text" css="width:99%"></div>
					<div name="COL14" type="text" css="width:99%"></div>
					<div name="COL15" type="text" css="width:99%"></div>										
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