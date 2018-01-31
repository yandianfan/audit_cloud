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

	<title>以前年度税额抵免优惠审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">以前年度税额抵免优惠审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

            <tr height="33">
                <td colspan="17" align="right">索引号：5-6-1</td>
            </tr>
            <tr height="33">
                <td colspan="16" width="2480">被审核单位名称：${QYMC}</td>
                <td width="160" align="center">金额单位：元</td>
            </tr>
            <tr height="33" align="center">
                <td colspan="3" width="400" rowspan="2">会计期间或会计截止日：</td>
                <td colspan="6" width="960" rowspan="2">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td colspan="3" width="480">${BZR}</td>
                <td width="160">日期</td>
                <td colspan="3" width="480">${BZRQ}</td>
            </tr>
            <tr height="33" align="center">
                <td width="160">复核人</td>
                <td colspan="3" width="480">${FHR}</td>
                <td width="160">日期</td>
                <td colspan="3" width="480">${FHRQ}</td>
            </tr>

            <tr height="25" align="center">
                <td rowspan="3" width="80">行次</td>
                <td rowspan="3" width="160">项目</td>
                <td rowspan="2" width="160">年度</td>
                <td colspan="2" width="320">《企业所得税年度纳税申报表（A类）》</td>
                <td rowspan="2" width="160">本年抵免前应纳税额</td>
                <td colspan="3" width="480">本年允许抵免的专用设备投资额  </td>               
                <td rowspan="2" width="160">本年允许抵免的专用设备投资额合计</td>       
                <td rowspan="2" width="160">本年可抵免 税额</td>      
                <td colspan="6" width="960">以前年度已抵免额</td>
            </tr>
            <tr height="25" align="center">            
                <td width="160">应纳所得税额</td>
                <td width="160">减免所得税额</td>
                <td width="160">企业购置用于环境保护专用设备的投资额</td>
                <td width="160">企业购置用于节能节水专用设备的投资额</td>
                <td width="160">企业购置用于安全生产专用设备的投资额</td>
                <td width="160">前五年度</td>
                <td width="160">前四年度</td>
                <td width="160">前三年度</td>
                <td width="160">前二年度</td>
                <td width="160">前一年度</td>
                <td width="160">小计</td>
            </tr>
             <tr height="25" align="center">
                <td width="160">1</td>            
                <td width="160">2</td>
                <td width="160">3</td>
                <td width="160">4</td>
                <td width="160">5</td>
                <td width="160">6</td>
                <td width="160">7</td>
                <td width="160">8</td>
                <td width="160">9</td>
                <td width="160">10</td>
                <td width="160">11</td>
                <td width="160">12</td>
                <td width="160">13</td>
                <td width="160">14</td>
                <td width="160">15</td>
            </tr>                           
         </table>            

				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次" css="width:99%"></div>
					<div name="DGHMC" hbrows="true" rowspan="" caption="项目" css="width:99%"></div>
					<div name="COL1" css="width:99%"></div>
					<div name="COL2" css="width:99%"></div>
					<div name="COL3" css="width:99%"></div>
					<div name="COL4" css="width:99%"></div>
					<div name="COL5" css="width:99%"></div>
					<div name="COL6" css="width:99%"></div>
					<div name="COL7" css="width:99%"></div>
					<div name="COL8" css="width:99%"></div>
					<div name="COL9" css="width:99%"></div>
					<div name="COL10" css="width:99%"></div>
					<div name="COL11" css="width:99%"></div>
					<div name="COL12" css="width:99%"></div>
					<div name="COL13" css="width:99%"></div>
					<div name="COL14" css="width:99%"></div>
					<div name="COL15" css="width:99%"></div>					
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
