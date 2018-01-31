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

	<title>业务招待费支出审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">业务招待费支出审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
  
  
         <table id="gridlist_1_table" align="center" width="100%" style="border-collapse: collapse;table-layout:fixed"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">   
    
           <tr height="33">
                <td colspan="11" height="33"  align="right">索引号：3-2-2</td>
            </tr>
            <tr height="33">
                <td colspan="10" >被审核单位名称：${QYMC}</td>
                <td>金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="3">会计期间或会计截止日：</td>
                <td rowspan="2" colspan="2">${KJQJ}　</td>
                <td>编制人</td>
                <td colspan="2">${BZR}　</td>
                <td>日期</td>
                <td colspan="2">${BZRQ}　</td>
            </tr>
            <tr height="33">
                <td>复核人</td>
                <td colspan="2">${FHR}　</td>
                <td>日期</td>
                <td colspan="2">${FHRQ}　</td>
            </tr>
                 
            <tr height="25">
                <td rowspan="2" style="width:150px">行次</td>
                <td style="width:150px">项目名称</td>
                <td>未审数</td>
                <td>调整数</td>
                <td>审核数</td>
                <td>销售（营业）收入</td>
                <td>符合规定支出60%的金额</td>
                <td>扣除限额</td>
                <td>税收金额</td>
                <td>调增金额</td>
                <td>备注</td>
            </tr>
            <tr height="25" >
                <td>1</td>
                <td>2 </td>
                <td>3</td>
                <td>4 </td>
                <td>5</td>
                <td>6 </td>
                <td>7</td>
                <td>8 </td>
                <td>9</td>
                <td>10 </td>
            </tr>
  
         </table>    
      
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" ></div>
					<div name="COL2" type="text" ></div>
					<div name="COL3" type="text" ></div>
					<div name="COL4" type="text" ></div>
					<div name="COL5" type="text" ></div>
					<div name="COL6" type="text" ></div>
					<div name="COL7" type="text" ></div>
					<div name="COL8" type="text" ></div>
					<div name="COL9" type="text" ></div>				
				</div>        
  
  
         <table id="gridlist_2_table" align="center" width="100%" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">	 
            <tr height="25">
                <td colspan="11">一、业务招待费计入成本费用的金额明细</td>
            </tr>
            <tr height="25">
                <td width="160">行次</td>
                <td width="160">项目</td>
                <td colspan="2" width="320">管理费用</td>
                <td width="160">销售费用</td>
                <td width="160">主营业务成本</td>
                <td colspan="2" width="320">其他业务成本</td>
                <td colspan="2" width="320">其他</td>
                <td width="160">合计</td>
            </tr>  
         </table>
   
 				<div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%" colspan="2"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%" colspan="2"></div>
					<div name="COL5" type="text" css="width:99%" colspan="2"></div>
					<div name="COL6" type="text" css="width:99%"></div>						
				</div>
				
         <table id="gridlist_3_table" align="center" width="100%" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">	
            <tr height="25">
                <td colspan="11">二、业务招待费税收金额计算</td>
            </tr>
            <tr height="25">
                <td rowspan="2" width="160">行次</td>
                <td colspan="4" rowspan="2" width="640">收 入 项 目</td>
                <td colspan="2" rowspan="2" width="320">金额</td>
                <td width="160">按5‰计算 扣除限额</td>
                <td width="160">按业务招待费60%计算扣除限额</td>
                <td width="160">税收金额</td>
                <td width="160">备注</td>
            </tr>
 
            <tr height="25">
                <td width="160">①</td>
                <td width="160">②</td>
                <td width="160">=MIN(①,②)</td>
                <td width="160">　</td>
            </tr>         
         </table>         			   
         
  				<div id="gridlist_3" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" caption="项目" colspan="4"></div>
					<div name="COL1" type="text" css="width:99%" colspan="2"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>					
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
           $w1.pushGrid("gridlist_1");
           $w1.pushGrid("gridlist_2");
           $w1.pushGrid("gridlist_3");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdgcommCtrl/prosave",callback);		
         }
         
        function closeAbPage(){
           window.close();
        }          
    </script>    
  </body>
</html>       
  