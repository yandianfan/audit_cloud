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

	<title>固定资产审核表</title>
	
  </head>

  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">固定资产审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">根据模块取数</a>
  				    <a class="btn btn-small btn-success" onclick="scdataByzt()">根据账套取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">
            <tr height="33">
                <td colspan="12" align="right">索引号：3-7-1-20</td>
            </tr>
            <tr height="33">
                <td colspan="11" width="1140">被审核单位名称：${QYMC}</td>
                <td width="160" align="center">金额单位：元</td>
            </tr>
            <tr height="33" align="center">
                <td colspan="4"  rowspan="2">会计期间或会计截止日：</td>
                <td colspan="2" rowspan="2">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td colspan="2" >${BZR}</td>
                <td width="160">日期</td>
                <td colspan="2" >${BZRQ}</td>
            </tr>
            <tr height="33" align="center">
                <td width="160">复核人</td>
                <td colspan="2" width="320">${FHR}</td>
                <td width="160">日期</td>
                <td colspan="2" width="320">${FHRQ}</td>
            </tr>

            <tr height="25" align="center">
                <td rowspan="2" >&nbsp;行&nbsp;&nbsp;次&nbsp;</td>
                <td rowspan="2" colspan="2">项目</td>
                <td >期初余额</td>
                <td>本年借方</td>
                <td>本年贷方</td>
                <td>期末余额</td>
                <td>会计调整数</td>
                <td>审核数</td>
                <td>期末净值</td>
                <td>纳税调整数</td>
                <td>备注</td>
            </tr>                
            <tr height="25" align="center">
                <td>1</td>            
                <td>2</td>
                <td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
            </tr> 
         </table>    

				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次" css="width:99%"></div>
					<div name="DGHMC" colspan="2" hbrows="true" rowspan="" caption="项目" css="width:99%"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>
					<div name="COL9" type="text" css="width:99%"></div>
				</div>

  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4"></textarea>
						</td>
					</tr>
					<tr height="66">
						<td height="66" width="1840">审核说明及结论：
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
        /**
 * 生成底稿数据
 */
  function scdataByzt(){
	Modal.sysConfirm("将按照模块数据生成底稿，原来的底稿数据将被覆盖，确认继续操作", onScdgOkByzt);
  }
  function onScdgOkByzt(result){
		if(result){
	           var $w1=new  $w("Windking");
	           var LSH=$("#LSH").val();
	           var DGDM=$("#DG_DM").val();
	           $w1.pushData("LSH", LSH);
	           $w1.pushData("DGDM", DGDM+"_zt");
	           $w1.ajax("/tsdgcommCtrl/scData",Refresh);			
		}
   }  
        
    </script>     
          
  </body>
</html>