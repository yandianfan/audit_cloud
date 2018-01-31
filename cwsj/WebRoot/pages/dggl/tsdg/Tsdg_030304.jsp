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
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>长期待摊费用审核表</title>
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">长期待摊费用审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" width="2200" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">  
            <tr height="33">
                <td colspan="20" height="33"  align="right">索引号：3-3-4</td>
            </tr>
            <tr height="33">
                <td colspan="18" width="2720">被审核单位名称：${QYMC}</td>
                <td colspan="2" width="320">金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="2" width="320">会计期间或会计截止日：</td>
                <td rowspan="2" colspan="10" width="1760">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td colspan="3" width="320">${BZR}　</td>
                <td width="160">日期</td>
                <td colspan="3" width="320">${BZRQ}　</td>
            </tr>
            <tr height="33">
                <td width="160">复核人</td>
                <td colspan="3" width="320">${FHR}　</td>
                <td width="160">日期</td>
                <td colspan="3" width="320">${FHRQ}　</td>
            </tr>

            <tr height="25">
                <td rowspan="3" width="160">选择</td>
                <td rowspan="3" width="160">项目</td>
                <td colspan="7" width="960">审核数</td>
                <td colspan="6" width="960">税收金额</td>
                <td colspan="4" width="640">纳税调整</td>
                <td rowspan="2" width="160">备注</td>
            </tr>
            <tr height="25">
                <td width="260">项目明细</td>
                <td width="160">资产入账价值审核数</td>
                <td width="280">计提摊销的起始日期</td>
                <td width="160">摊销年限（年）</td>
                <td width="160">期初累计摊销</td>
                <td width="160">本年摊销</td>
                <td width="160">期末累计摊销</td>
                <td width="160">资产计税基础</td>
                <td width="280">计提摊销的起始日期</td>
                <td width="160">摊销年限（年）</td>
                <td width="160">期初累计摊销</td>
                <td width="160">按税收一般规定计算的本年摊销额</td>
                <td width="160">期末累计摊销</td>
                <td width="160">期初累计纳税调整</td>
                <td width="160">本期纳税调整</td>
                <td width="160">调整原因</td>
                <td width="160">期末累计纳税调整</td>
            </tr>
            <tr height="25">
                <td width="260">1</td>
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
                <td width="160">16</td>
                <td width="160">17</td>
                <td width="160">18</td>
            </tr>           
         </table>         
         
                <div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" css="width:20px" caption="请选择"></div>
					<div name="DGHC" type="text" style="display:none"  css="width:99%" caption="行次"></div>
					<div name="DGHMC"  type="select" datasrc="1|一(1)、已足额提取折旧的固定资产的改建支出,2|一(2)、租入固定资产的改建支出,3|一(3)、固定资产的大修理支出,4|一(4)、开办费,5|一(5)、其他,6|二、油气勘探投资,7|三、油气开发投资,11|小计(已足额提取折旧的固定资产的改建支出),21|小计(租入固定资产的改建支出),31|小计(固定资产的大修理支出),41|小计(开办费),51|小计(其他),61|小计(油气勘探投资),71|小计(油气开发投资),8|合计" caption="项目" css="width:99%"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="date"  css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>
					<div name="COL9" type="date" css="width:99%"></div>
					<div name="COL10" type="text" css="width:99%"></div>
					<div name="COL11" type="text" css="width:99%"></div>
					<div name="COL12" type="text" css="width:99%"></div>
					<div name="COL13" type="text" css="width:99%"></div>
					<div name="COL14" type="text" css="width:99%"></div>
					<div name="COL15" type="text" css="width:99%"></div>
					<div name="COL16" type="text" css="width:99%"></div>
					<div name="COL17" type="text" css="width:99%"></div>	
					<div name="COL18" type="text" css="width:99%"></div>				
                </div>
       	        <div class="btn-group btn-group-xs">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist');">删除</button>
		        </div>	
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="2200">
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
         
         
         
         
         	