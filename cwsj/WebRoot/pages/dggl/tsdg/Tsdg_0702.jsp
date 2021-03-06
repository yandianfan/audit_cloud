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

	<title>企业所得税汇总纳税分支机构所得税分配审核表</title>
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">企业所得税汇总纳税分支机构所得税分配审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
   	<form class="form-horizontal" role="form" id="formmap_1">
        <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
            <tr height="33">
                <td colspan="9" height="33"  align="right">索引号：7-02</td>
            </tr>
            <tr height="33">
                <td colspan="8" width="1280">被审核单位名称：${QYMC}</td>
                <td width="160">金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="2" width="320">会计期间或会计截止日：</td>
                <td rowspan="2" width="160">${KJQJ}　</td>
                <td width="160">编制人</td>
                <td colspan="2" width="320">${BZR}　</td>
                <td width="160">日期</td>
                <td colspan="2" width="320">${BZRQ}　</td>
            </tr>
            <tr height="33">
                <td width="160">复核人</td>
                <td colspan="2" width="320">${FHR}　</td>
                <td width="160">日期</td>
                <td colspan="2" width="320">${FHRQ}　</td>
            </tr>

            <tr height="25">
                <td colspan="2" width="320" align="center">总机构纳税人识别号</td>
                <td width="160" align="center">应纳所得税额</td>
                <td colspan="2" width="160" align="center">总机构分摊所得税额</td>
                <td colspan="2" width="320" align="center">总机构财政集中分配所得税额</td>
                <td colspan="2" width="320" align="center">分支机构分摊所得税额</td>
            </tr>

             <tr height="25">
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL1"/></td>
                <td width="160"><input type="text" style="width:99%" id="COL2"/></td>
                <td colspan="2" width="160"><input type="text" style="width:99%" id="COL3"/></td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL4"/></td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL5"/></td>
            </tr> 
        </table>
   	</form>  

         <table id="gridlist_2_table" width="100%" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">
            <tr height="25">
                <td rowspan="2" width="50" align="center">请选择</td>
                <td rowspan="2" width="160" align="center" style="display:none" >行次（分支机构情况）</td>
                <td rowspan="2" width="160" align="center">分支机构纳税人识别号</td>
                <td rowspan="2" width="160" align="center">分支机构名称</td>
                <td colspan="3" width="480" align="center">三项因素</td>
                <td rowspan="2" width="160" align="center">分配 比例</td>
                <td rowspan="2" width="160" align="center">分配所得税额</td>
            </tr>
            <tr height="25">
                <td width="160" align="center">营业收入</td>
                <td width="160" align="center">职工薪酬</td>
                <td width="160" align="center">资产总额</td>
            </tr>           
         </table>         
 
       <div class="row-fluid">
         <div class="span">         
                <div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="DGHC" caption="行次" style="display:none" type="text" css="width:99%"></div>
					<div name="DGHMC" caption="项目" style="display:none"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
                </div>
       	        <div class="btn-group btn-group-xs">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_2')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist_2');">删除</button>
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
           $w1.pushForm("formmap_1");
           $w1.pushGrid("gridlist_2");
           $w1.ajax("/tsdgcommCtrl/prosave",callback);		
           }
                      
        function closeAbPage(){
           window.close();
        }            
    </script>   
     
  </body>
</html>        
         
         
         
         
         	