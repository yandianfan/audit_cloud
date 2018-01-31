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

	<title>长期股权投资初始投资成本损益调整审核表</title>
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">长期股权投资初始投资成本损益调整审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" width="100%" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">  
            <tr height="33">
                <td colspan="13" height="33"  align="right">索引号：3-1-4</td>
            </tr>
            <tr height="33">
                <td colspan="12" width="1625">被审核单位名称：${QYMC}</td>
                <td width="125" >金额单位：元</td>
            </tr>
 
            <tr height=33>
                <td rowspan="2" colspan="2" width="375">会计期间或会计截止日：</td>
                <td rowspan="2" colspan="3" width="375">${KJQJ}　</td>
                <td colspan="2" width="250">编制人</td>
                <td colspan="2" width="250">${BZR}　</td>
                <td colspan="2" width="250">日期</td>
                <td colspan="2" width="250">${BZRQ}　</td>
            </tr>
            <tr height=33>
                <td colspan="2">复核人</td>
                <td colspan="2">${FHR}　</td>
                <td colspan="2">日期</td>
                <td colspan="2">${FHRQ}　</td>
            </tr>

            <tr height=25>
                <td rowspan="3">请&nbsp;选&nbsp;择</td>
                <td rowspan="3" style="display:none"  width="125">行次</td>
                <td rowspan="2" width="125">被投资企业</td>
                <td rowspan="2" width="125">期初投资额</td>
                <td rowspan="2" width="125">期初占被投资企业股权比例</td>
                <td rowspan="2" width="125">本年度增加投资额</td>
                <td rowspan="2" width="125">本年度减少投资额</td>
                <td rowspan="2" width="125">期末投资额</td>
                <td rowspan="2" width="125">期末占被投资企业股权比例</td>
                <td colspan="5" width="625">投资成本</td>
            </tr>
            <tr height=61>
                <td width="125">初始投资成本</td>
                <td width="125">占被投资企业股权比例</td>
                <td width="125">被投资企业可辨认净资产公允价值</td>
                <td width="125">投资企业享有的净资产公允价值份额</td>
                <td width="125">权益法核算对初始投资成本调整产生的收益</td>
            </tr>
 
            <tr height=20>
                <td width="125">1</td>
                <td width="125">2</td>
                <td width="125">3</td>
                <td width="125">4</td>
                <td width="125">5</td>
                <td width="125">6=2+4-5</td>
                <td width="125">7</td>
                <td width="125">8</td>
                <td width="125">9</td>
                <td width="125">10</td>
                <td width="125">11=9×10</td>
                <td width="125">12=11-8>=0</td>
            </tr>           
         </table>          
   
       <div class="row-fluid">
         <div class="span">            
                <div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>	
					<div name="DGHC" style="display:none"  caption="行次" type="text" css="width:99%"></div>
					<div name="DGHMC" caption="项目" style="display:none"></div>
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
                </div>

       	        <div class="btn-group btn-group-xs noprint">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist');">删除</button>
		        </div>				
         </div> 		   	       
       </div> 
       
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4" ></textarea>
						</td>
					</tr>	
					<tr height="66">
						<td height="66" width="960">审核说明及结论：
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
         
         
         
         
         	