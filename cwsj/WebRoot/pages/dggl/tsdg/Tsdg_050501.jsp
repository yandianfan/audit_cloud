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

	<title>减免所得税优惠审核附表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">减免所得税优惠审核附表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

         <table id="gridlist_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1200">

            <tr height="33">
                <td colspan="10" align="right">索引号：5-5-1</td>
            </tr>
            <tr height="33">
                <td colspan="9" >被审核单位名称：${QYMC}</td>
                <td align="center">金额单位：元</td>
            </tr>
            <tr height="33" align="center">
                <td colspan="2" rowspan="2">会计期间或会计截止日：</td>
                <td colspan="2" rowspan="2">${KJQJ}　</td>
                <td width="120">编制人</td>
                <td colspan="2" >${BZR}</td>
                <td width="120">日期</td>
                <td colspan="2" >${BZRQ}</td>
            </tr>
            <tr height="33" align="center">
                <td width="120">复核人</td>
                <td colspan="2" >${FHR}</td>
                <td width="120">日期</td>
                <td colspan="2" >${FHRQ}</td>
            </tr>

            <tr height="25" align="center">
                <td rowspan="2">行次</td>
                <td rowspan="2" >项目</td>
                <td width="100">是否符合优惠条件</td>
                <td width="100">取得第一笔生产经营收入所属纳税年度</td>
                <td width="100">获利年度</td>
                <td width="100">经营期（年）</td>
                <td width="100">当年是否享受免税优惠</td>
                <td width="100">本年适用税率</td>
                <td width="100">减免企业所得税额</td>
                <td width="100">备注</td>
            </tr>
            <tr height="25" align="center">
                <td width="100">1</td>            
                <td width="100">2</td>
                <td width="100">3</td>
                <td width="100">4</td>
                <td width="100">5</td>
                <td width="100">6</td>
                <td width="100">7</td>
                <td width="100">8</td>
            </tr>
         </table>
         
				<div id="gridlist" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次" css="width:99%"></div>
					<div name="DGHMC" hbrows="true" rowspan="" caption="项目" css="width:99%"></div>
					<div name="COL1" type="select" css="width:99%" datasrc="0|否,1|是"></div>
					<div name="COL2" type="date" format="yyyy"  css="width:99%"></div>
					<div name="COL3" type="date" format="yyyy" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>
					<div name="COL7" type="text" css="width:99%"></div>
					<div name="COL8" type="text" css="width:99%"></div>
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
