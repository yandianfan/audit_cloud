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

	<title>所得减免优惠审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">所得减免优惠审核表</strong>
  				<div class="btn-menu noprint">
                    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

            <tr height="33">
                <td colspan="14" align="right">索引号：5-3</td>
            </tr>
            <tr height="33">
                <td colspan="12" >被审核单位名称：${QYMC}</td>
                <td  align="center" colspan="2" >金额单位：元</td>
            </tr>
            <tr height="33" align="center">
                <td colspan="3"  rowspan="2">会计期间或会计截止日：</td>
                <td colspan="5" rowspan="2">${KJQJ}　</td>
                <td>编制人</td>
                <td colspan="2" >${BZR}</td>
                <td>日期</td>
                <td colspan="2">${BZRQ}</td>
            </tr>
            <tr height="33" align="center">
                <td>复核人</td>
                <td colspan="2">${FHR}</td>
                <td>日期</td>
                <td colspan="2">${FHRQ}</td>
            </tr>
            <tr height="25" align="center">
                <td rowspan="3" width="20">请选择</td>
                <td rowspan="3" width="10">行次</td>
                <td width="180" rowspan="3">减免项目</td>
                <td rowspan="2" width="90">项目名称</td>
                <td rowspan="2" width="90">优惠事项名称</td>
                <td rowspan="2" width="90">优惠方式</td>
                <td rowspan="2" width="90">项目收入</td>
                <td rowspan="2" width="90">项目成本</td>
                <td rowspan="2" width="90">相关税费</td>
                <td rowspan="2" width="90">应分摊期间费用</td>
                <td rowspan="2" width="90">纳税调整额</td>
                <td colspan="2" width="180">项目所得额</td>
                <td rowspan="2" width="90">减免所得额</td>
            </tr> 
            <tr height="25" align="center">
             <td width="90">免税项目</td>
             <td width="90">减半项目</td>
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
                <td>10</td>
                <td>11(9+10×50%)</td>
            </tr> 
 
         </table>            

				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" css="width:99%;text-align:center" caption="请选择"></div>
					<div name="DGHC" caption="行次" css="width:99%"></div>
					<!--<div name="DGHMC"  colspan="2" hbrows="true" rowspan="" caption="项目" css="width:99%"></div>  -->
					<div name="DGHMC"  type="select" datasrc="1|一、农、林、牧、渔业项目,2|二、国家重点扶持的公共基础设施项目,3|三、符合条件的环境保护、节能节水项目,
					4|四、符合条件的技术转让项目,5|五、实施清洁机制发展项目,6|六、符合条件的节能服务公司实施合同能源管理项目,7|七、其他"
					datafill="8|合计"  caption="项目" css="width:99%"></div>
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
				</div>
       	        <div class="btn-group btn-group-xs">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist');">删除</button>
		        </div>
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=1100 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4"></textarea>
						</td>
					</tr>
					<tr height="66">
						<td height="66" width="1100">审核说明及结论：
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
