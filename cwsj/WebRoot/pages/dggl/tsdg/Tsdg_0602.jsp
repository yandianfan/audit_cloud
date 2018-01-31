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

	<title>境外所得纳税调整后所得审核表</title>
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">境外所得纳税调整后所得审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="gridlist_table" width="3360" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">  
            <tr height="33">
                <td colspan="20" height="33"  align="right">索引号：6-2</td>
            </tr>
            <tr height="33">
                <td colspan="19" width="320">被审核单位名称：${QYMC}</td>
                <td width="160">金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="2" width="320">会计期间或会计截止日：</td>
                <td rowspan="2" colspan="12" width="2080">${KJQJ}　</td>
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
                <td rowspan="3" width="160">请选择</td>
                <td rowspan="3" width="160" style="display:none">行次</td>
                <td rowspan="2" width="160">国家（地区）</td>
                <td colspan="8" width="1280">境外税后所得</td>
                <td colspan="4" width="640"'>境外所得可抵免的所得税额</td>
                <td rowspan="2" width="160">境外税前所得</td>
                <td rowspan="2" width="160">境外分支机构收入与支出纳税调整额</td>
                <td rowspan="2" width="160">境外分支机构调整分摊扣除的有关成本费用</td>
                <td rowspan="2" width="160">境外所得对应调整的相关成本费用支出</td>
                <td rowspan="2" width="160">境外所得纳税调整后所得</td>
                <td rowspan="2" width="160">备注</td>
            </tr>
            <tr height="25">
                <td width="160">分支机构机构营业利润所得</td>
                <td width="160">股息、红利等权益性投资所得</td>
                <td width="160">利息所得</td>
                <td width="160">租金所得</td>
                <td width="160">特许权使用费所得</td>
                <td width="160">财产转让所得</td>
                <td width="160">其他所得</td>
                <td width="160">小计</td>
                <td width="160">直接缴纳的所得税额</td>
                <td width="160">间接负担的所得税额</td>
                <td width="160">享受税收饶让抵免税额</td>
                <td width="160">小计</td>
            </tr>
            <tr height="25">
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
                <td width="160">16</td>
                <td width="160">17</td>
                <td width="160">18</td>
                <td width="160">19</td>
            </tr>           
         </table>         

       <div class="row-fluid">
         <div class="span">         
                <div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" delete="true" caption="请选择"></div>
					<div name="DGHC" caption="行次" type="text" style="display:none" css="width:99%;text-align:center"></div>
					<div name="DGHMC" caption="项目" style="display:none"></div>
					<div name="COL1"  type="select"  css="width:99%" datasrc="/SelectCtrl/selectInit.do?selectKey=CommMapper.selectQuerryGj"css="width:99%"></div>
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
					<div name="COL16" type="text" css="width:99%"></div>	
					<div name="COL17" type="text" css="width:99%"></div>
					<div name="COL18" type="text" css="width:99%"></div>
					<div name="COL19" type="text" css="width:99%"></div>						
                </div>
       	        <div class="btn-group btn-group-xs">
					<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist')">新增</button>			    
					<button type="button" class="btn  btn-primary " onclick="deleteGridRow('gridlist');">删除</button>
		        </div>				
         </div> 		   	       
       </div> 
       
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="3370">
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
         
         
         
         
         	