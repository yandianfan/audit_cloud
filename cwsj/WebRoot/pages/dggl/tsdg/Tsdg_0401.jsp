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

	<title>以前年度企业所得税弥补亏损审核表</title>
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">以前年度企业所得税弥补亏损审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" width="1200" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">  
            <tr height="33">
                <td colspan="13" height="33"  align="right">索引号：4-1</td>
            </tr>
            <tr height="33">
                <td colspan="11" width="1760">被审核单位名称：${QYMC}</td>
                <td colspan="2" width="320">金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="2" width="320">会计期间或会计截止日：</td>
                <td rowspan="2" colspan="3" width="480">${KJQJ}</td>
                <td width="160" align="center">编制人</td>
                <td colspan="2" width="320">${BZR}</td>
                <td width="160" align="center">日期</td>
                <td colspan="4" width="320">${BZRQ}</td>
            </tr>
            <tr height="33">
                <td width="160" align="center">复核人</td>
                <td colspan="2" width="320">${FHR}</td>
                <td width="160" align="center">日期</td>
                <td colspan="4" width="320">${FHRQ}</td>
            </tr>
    
            <tr height="25">
                <td rowspan="3" width="160" align="center">行次</td>
                <td rowspan="3" width="160" align="center">项目</td>
                <td rowspan="2" width="160" align="center">年度</td>
                <td rowspan="2" width="160" align="center">纳税调整后所得</td>
                <td rowspan="2" width="160" align="center">合并、分立转入（转出）可弥补的亏损额</td>
                <td rowspan="2" width="160" align="center">当年可弥补的亏损额</td>
                <td colspan="5" width="800" align="center">以前年度亏损已弥补额</td>
                <td rowspan="2" width="160" align="center">本年度实际弥补的以前年度亏损额</td>
                <td rowspan="2" width="160" align="center">可结转以后年度弥补的亏损额</td>
            </tr>
            <tr height="25">
                <td width="160" align="center">前四年度</td>
                <td width="160" align="center">前三年度</td>
                <td width="160" align="center">前二年度</td>
                <td width="160" align="center">前一年度</td>
                <td width="160" align="center">合计</td>
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
            </tr>           
         </table>         
         
                <div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
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
         
         
         
         
         	