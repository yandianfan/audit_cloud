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

	<title>视同销售收入成本审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">视同销售收入成本审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

            <tr height="33">
                <td colspan="8" align="right">索引号：3-1-1</td>
            </tr>
            <tr height="33">
                <td colspan="7" width="70%">被审核单位名称：${QYMC}</td>
                <td width="160">金额单位：元</td>
            </tr>
            <tr height="33">
                <td colspan="3" width="30%" rowspan="2">会计期间或会计截止日：</td>
                <td width="160" rowspan="2">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td width="160">${BZR}　</td>
                <td width="160">日期</td>
                <td width="160">${BZRQ}　</td>
            </tr>
            <tr height="33">
                <td width="160">复核人</td>
                <td width="160">${FHR}　</td>
                <td width="160">日期</td>
                <td width="160">${FHRQ}　</td>
            </tr>
            <tr height="25">
                <td rowspan="3" width="50">行次</td>
                <td rowspan="3" colspan="2" width="320">项目</td>
                <td colspan="3" width="480">审核数</td>
                <td rowspan="2" colspan="2" width="320">备注</td>
            </tr>
            <tr height="25">
                <td width="160">视同销售收入</td>
                <td colspan="2" width="320">视同销售成本</td>
            </tr>

            <tr  height="25">
                <td width="160">1</td>
                <td colspan="2" width="320">2</td>
                <td colspan="2" width="320">3</td>
            </tr>
 
         </table>       
         
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" colspan="2" hbrows="true" rowspan="" caption="固定资产类别"></div>
					<div name="COL1" type="text" css="width:99%" caption="资产入账价值审核数"></div>
					<div name="COL2" colspan="2" type="text" css="width:99%" caption="计提折旧的起始日期"></div>
					<div name="COL3" colspan="2" type="text" css="width:99%" caption="00000000"></div>
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