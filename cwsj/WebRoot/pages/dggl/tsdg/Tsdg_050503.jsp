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

	<title>软件、集成电路企业优惠情况审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">软件、集成电路企业优惠情况审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          <form class="form-horizontal" role="form" id="Tsdg_050503form">          
  <table id="tab1" align="center" width="1120" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000">
  
            <tr height="33">
                <td colspan="7" height="33"  align="right">索引号：5-5-3</td>
            </tr>
            <tr height="33">
                <td colspan="6" width="960">被审核单位名称：${QYMC}</td>
                <td width="160" >金额单位：元</td>
            </tr>
 
            <tr height="33">
                <td rowspan="2" colspan="2" width="320">会计期间或会计截止日：</td>
                <td rowspan="2" width="160">　${KJQJ}</td>
                <td width="160">编制人</td>
                <td width="160">${BZR}　</td>
                <td width="160">日期</td>
                <td width="160">${BZRQ}　</td>
            </tr>
            <tr height="33">
                <td width="160">复核人</td>
                <td width="160">${FHR}</td>
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
                <td width="160">企业成立日期</td>
                <td colspan="2" width="320"><input type="text"  class="form-control date" format="yyyy-mm-dd" readonly="readonly" id="COL1"/></td>
                <td width="160">软件企业证书取得日期</td>
                <td colspan="2" width="320"><input type="text" class="form-control date" format="yyyy-mm-dd" readonly="readonly" id="COL2"/></td>                
            </tr>
            <tr height="25">
                <td width="160" align="center">2</td>
                <td width="160">软件企业认定证书编号</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL3"/></td>
                <td width="160">软件产品登记证书编号</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL4"/></td>
            </tr>
             <tr height="25">
                <td width="160" align="center">3</td>
                <td width="160">计算机信息系统集成资质等级认定证书编号</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL5"/></td>
                <td width="160">集成电路生产企业认定文号</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL6"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">4</td>
                <td colspan="2" width="320">集成电路设计企业认定证书编号</td>
                <td colspan="4" width="640"><input type="text" style="width:99%" id="COL7"/></td>
            </tr>
             <tr height="25">
                <td width="160" align="center">5</td>
                <td colspan="6" width="960" align="center">关键指标情况（2011年1月1日以后成立企业填报）</td>
            </tr>		
            <tr height="25">
                <td width="160" align="center">6</td>
                <td rowspan="5" width="160" align="center">人员指标</td>
                <td colspan="3" width="480">一、企业本年月平均职工总人数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL8"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">7</td>
                <td colspan="3" width="480">其中:签订劳动合同关系且具有大学专科以上学历的职工人数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL9"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">8</td>
                <td colspan="3" width="480">二、研究开发人员人数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL10"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">9</td>
                <td colspan="3" width="480">三、签订劳动合同关系且具有大学专科以上学历的职工人数占企业当年月平均职工总人数的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL11"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">10</td>
                <td colspan="3" width="480">四、研究开发人员占企业本年月平均职工总数的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL12"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">11</td>
                <td rowspan="15" width="160" align="center">收入指标</td>
                <td colspan="3" width="480">五、企业收入总额</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL13"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">12</td>
                <td colspan="3" width="480">六、集成电路制造销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL14"/></td>
            </tr> 		
                <tr height="25">
                <td width="160" align="center">13</td>
                <td colspan="3" width="480">七、集成电路制造销售（营业）收入占企业收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL15"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">14</td>
                <td colspan="3" width="480">八、集成电路设计销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL16"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">15</td>
                <td colspan="3" width="480">其中：集成电路自主设计销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL17"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">16</td>
                <td colspan="3" width="480">九、集成电路设计企业的集成电路设计销售（营业）收入占企业收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL18"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">17</td>
                <td colspan="3" width="480">十、集成电路自主设计销售（营业）收入占企业收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL19"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">18</td>
                <td colspan="3" width="480">十一、软件产品开发销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL20"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">19</td>
                <td colspan="3" width="480">其中：嵌入式软件产品和信息系统集成产品开发销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL21"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">20</td>
                <td colspan="3" width="480">十二、软件产品自主开发销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL22"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">21</td>
                <td colspan="3" width="480">其中：嵌入式软件产品和信息系统集成产品自主开发销售（营业）收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL23"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">22</td>
                <td colspan="3" width="480">十三、软件企业的软件产品开发销售（营业）收入占企业收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL24"/></td>
            </tr>            
            <tr height="25">
                <td width="160" align="center">23</td>
                <td colspan="3" width="480">十四、嵌入式软件产品和信息系统集成产品开发销售（营业）收入占企业收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL25"/></td>
            </tr>                        
            <tr height="25">
                <td width="160" align="center">24</td>
                <td colspan="3" width="480">十五、软件产品自主开发销售（营业）收入占企业收入总额的比例（20÷11）</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL26"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">25</td>
                <td colspan="3" width="480">十六、嵌入式软件产品和信息系统集成产品自主开发销售（营业）收入占企业收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL27"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">26</td>
                <td rowspan="4" width="160" align="center">研究开发费用指标</td>
                <td colspan="3" width="480">十七、研究开发费用总额</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL28"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">27</td>
                <td colspan="3" width="480">其中：企业在中国境内发生的研究开发费用金额</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL29"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">28</td>
                <td colspan="3" width="480">十八、研究开发费用总额占企业销售（营业）收入总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL30"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">29</td>
                <td colspan="3" width="480">十九、企业在中国境内发生的研究开发费用金额占研究开发费用总额的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL31"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">30</td>
                <td colspan="6" width="960" align="center">关键指标情况（2011年1月1日以前成立企业填报）</td>
            </tr>
            <tr height="25">
                <td width="160" align="center">31</td>
                <td rowspan=3 width="160" align="center">人员指标</td>
                <td colspan="3" width="480">二十、企业职工总数</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL32"/></td>
             </tr>
            <tr height="25">
                <td width="160" align="center">32</td>
                <td colspan="3" width="480">二十一、从事软件产品开发和技术服务的技术人员</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL33"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">33</td>
                <td colspan="3" width="480">二十二、从事软件产品开发和技术服务的技术人员占企业职工总数的比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL34"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">34</td>
                <td rowspan="5" width="160" align="center">收入指标</td>
                <td colspan="3" width="480">二十三、企业年总收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL35"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">35</td>
                <td colspan="3" width="480">其中：企业年软件销售收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL36"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">36</td>
                <td colspan="3" width="480">其中：自产软件销售收入</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL37"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">37</td>
                <td colspan="3" width="480">二十四、软件销售收入占企业年总收入比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL38"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">38</td>
                <td colspan="3" width="480">二十五、自产软件收入占软件销售收入比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL39"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">39</td>
                <td rowspan="2" width="160" align="center">研究开发经费指标</td>
                <td colspan="3" width="480">二十六、软件技术及产品的研究开发经费</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL40"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">40</td>
                <td colspan="3" width="480">二十七、软件技术及产品的研究开发经费占企业年软件收入比例</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL41"/></td>
            </tr> 
            <tr height="25">
                <td width="160" align="center">41</td>
                <td colspan="4" width="640" align="center">减免税金额</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL42"/></td>
            </tr>
            <tr height="25">
                <td width="160" align="center">42</td>
                <td colspan="4" width="640" align="center">备注</td>
                <td colspan="2" width="320"><input type="text" style="width:99%" id="COL43"/></td>
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
           $w1.pushForm("Tsdg_050503form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg050503Ctrl/save",callback);		
        }
         
        function closeAbPage(){
           window.close();
        }          
    </script>    
  </body>
</html>       
  