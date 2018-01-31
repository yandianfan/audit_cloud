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

	<title>本年允许抵免的专用设备投资额审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">本年允许抵免的专用设备投资额审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
    				<a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

            <tr height="33">
                <td colspan="9" align="right">索引号：5-6-2</td>
            </tr>
            <tr height="33">
                <td colspan="8" width="1200">被审核单位名称：${QYMC}</td>
                <td width="160" align="center">金额单位：元</td>
            </tr>
            <tr height="33" align="center">
                <td colspan="3" width="400" rowspan="2">会计期间或会计截止日：</td>
                <td colspan="2" width="320" rowspan="2">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td width="160">${BZR}</td>
                <td width="160">日期</td>
                <td width="160">${BZRQ}</td>
            </tr>
            <tr height="33" align="center">
                <td width="160">复核人</td>
                <td width="160">${FHR}</td>
                <td width="160">日期</td>
                <td width="160">${FHRQ}</td>
            </tr>                          
            <tr height="25" align="center">
                <td rowspan="2" width="80">请选择</td>
                <td rowspan="2" width="160" style="display:none">行次</td>
                <td rowspan="2" width="160">项目</td>
                <td width="240">项目明细</td>
                <td width="160">发票价税合计金额</td>
                <td width="160">允许抵扣的增值税进项税额</td>               
                <td width="160">按有关规定退还的增值税税款</td>
                <td width="160">其他</td>
                <td width="160">本年允许抵免的设备投资额</td>
                <td width="160">备注</td>
            </tr>                
            <tr height="25" align="center">
                <td width="160">1</td>            
                <td width="160">2</td>
                <td width="160">3</td>
                <td width="160">4</td>
                <td width="160">5</td>
                <td width="160">6</td>
                <td width="160">7</td>
            </tr> 
 
         </table>            

				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" css="width:99%;text-align:center" caption="请选择"></div>
					<div name="DGHC" caption="行次" type="text" style="display:none" css="width:99%;text-align:center"></div>
					<div name="DGHMC"  type="select" datasrc="1|一、环境保护专用设备,2|二、节能节水的专用设备,3|三、安全生产专用设备,11|小计(环境保护专用设备),21|小计(节能节水的专用设备),31|小计(安全生产专用设备),4|合计" caption="项目" css="width:99%"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
				</div>
       	        <div class="btn-group btn-group-xs">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist');">删除</button>
		        </div>	
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">
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
