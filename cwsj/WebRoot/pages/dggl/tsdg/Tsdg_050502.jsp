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


	<title>高新技术企业优惠情况审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">高新技术企业优惠情况审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
 	  <form class="form-horizontal" role="form" id="Tsdg_050502form">          
  <table id="tab1" align="center" width="1120" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">
  
            <tr height="33">
                <td colspan="7" height="33"  align="right">索引号：5-5-2</td>
            </tr>
            <tr height="33">
                <td colspan="6" width="960">被审核单位名称：${QYMC}</td>
                <td width="160" >金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="2" width="320">会计期间或会计截止日：</td>
                <td rowspan="2" width="160">${KJQJ}　</td>
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
              
				
         <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1120">	 				
            <tr height="25">
                <td width="160" align="center">行次</td>
                <td colspan="6" width="960" align="center">基本信息</td>
            </tr>
            <tr height="25">
                <td width="160" align="center">1</td>
                <td colspan="2" width="320">高新技术企业证书编号</td>
                <td width="160"><input type="text" style="width:99%" id="COL1"/></td>
                <td width="160">高新技术企业证书取得时间</td>
                <td colspan="2" width="320"><input type="text" class="form-control date" format="yyyy-mm-dd" readonly="readonly" id="COL2"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">2</td>
                <td colspan="2" width="320">产品（服务）属于《国家重点支持的高新技术领域》规定的范围（填写具体范围名称）</td>
                <td c width="160"><input type="text" style="width:99%" id="COL3"/></td>
                <td colspan="2" width="320">是否发生重大安全、质量事故</td>
                <td width="160"><select id="COL4"  class="form-control"></select></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">3</td>
                <td colspan="2" width="320">是否有环境等违法、违规行为，受到有关部门处罚的</td>
                <td width="160"><select id="COL5"  class="form-control"></select></td>
                <td colspan="2" width="320">是否发生偷骗税行为</td>
                <td width="160"><select id="COL6"  class="form-control"></select></td>
            </tr>			
            <tr height="25">
                <td width="160" align="center">4</td>
                <td colspan="6" width="960" align="center">关键指标情况</td>
            </tr>
            <tr height="25">
                <td width="160" align="center">5</td>
                <td rowspan="5" width="160" align="center">收入指标</td>
                <td colspan="3" width="480">一、本年高新技术产品（服务）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL7"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">6</td>
                <td colspan="3" width="480">其中：产品（服务）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL8"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">7</td>
                <td colspan="3" width="480">技术性收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL9"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">8</td>
                <td colspan="3" width="480">二、本年企业总收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL10"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">9</td>
                <td colspan="3" width="480">三、本年高新技术产品（服务）收入占企业总收入的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL11"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">10</td>
                <td rowspan="5" width="160" align="center">人员指标</td>
                <td colspan="3" width="480">四、本年具有大学专科以上学历的科技人员数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL12"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">11</td>
                <td colspan="3" width="480">五、本年研发人员数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL13"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">12</td>
                <td colspan="3" width="480">六、本年职工总数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL14"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">13</td>
                <td colspan="3" width="480">七、本年具有大学专科以上学历的科技人员占企业当年职工总数的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL15"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">14</td>
                <td colspan="3" width="480">八、本年研发人员占企业当年职工总数的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL16"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">15</td>
                <td rowspan="14" width="160" align="center">研究开发费用指标</td>
                <td colspan="3" width="480">九、本年归集的高新研发费用金额</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL17"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">16</td>
                <td colspan="3" width="480">（一）内部研究开发投入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL18"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">17</td>
                <td colspan="3" width="480">1.人员人工</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL19"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">18</td>
                <td colspan="3" width="480">2.直接投入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL20"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">19</td>
                <td colspan="3" width="480">3.折旧费用与长期费用摊销</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL21"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">20</td>
                <td colspan="3" width="480">4.设计费用</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL22"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">21</td>
                <td colspan="3" width="480">5.装备调试费</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL23"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">22</td>
                <td colspan="3" width="480">6.无形资产摊销</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL24"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">23</td>
                <td colspan="3" width="480">7.其他费用</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL25"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">24</td>
                <td colspan="3" width="480">其中：可计入研发费用的其他费用</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL26"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">25</td>
                <td colspan="3" width="480">（二）委托外部研究开发费用</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL27"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">26</td>
                <td colspan="3" width="480">1.境内的外部研发费</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL28"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">27</td>
                <td colspan="3" width="480">2.境外的外部研发费</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL29"/></td>
            </tr>
                <tr height="25">
                <td width="160" align="center">28</td>
                <td colspan="3" width="480">十、本年研发费用占销售（营业）收入比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL30"/></td>
            </tr>
                <tr height="25">
                <td width="160" align="center">29</td>
                <td colspan="4" width="640" align="center">减免税金额</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL31"/></td>
            </tr> 	
         </table>			   
     
  </table>  
 	  </form>	
 	     
  			<form class="form-horizontal" role="form" id="formmap">
				<table align="center" style="border-collapse: collapse" ; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="1120">
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
           $w1.pushForm("Tsdg_050502form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg050502Ctrl/save",callback);		
        }
                          
        function closeAbPage(){
           window.close();
        }          
    </script>    
  </body>
</html>       
  