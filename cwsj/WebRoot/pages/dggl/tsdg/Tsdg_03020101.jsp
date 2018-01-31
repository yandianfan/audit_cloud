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

	<title>工资薪金支出审核表</title>
	
  </head>
  
  <body>
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">工资薪金支出审核表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="jsAuto()">自动计算</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

 <tr class=xl83140 height=16 style='height:12.0pt'>
  <td colspan=8 height=16 class=xl106140 style='height:12.0pt' align="right">索引号：3-2-1-1</td>
 </tr>
 <tr class=xl83140 height=16 style='height:12.0pt'>
  <td colspan=7 height=16 class=xl104140 width=958 style='height:12.0pt;
  width:720pt'>被审核单位名称：${QYMC}</td>
  <td class=xl85140>金额单位：元</td>
 </tr>
 <tr class=xl83140 height=16 style='height:12.0pt'>
  <td colspan=2 rowspan=2 height=32 class=xl110140 style='height:24.0pt'>会计期间或会计截止日：</td>
  <td colspan=2 rowspan=2 class=xl86140 width=418 style='width:314pt'>${KJQJ}　</td>
  <td class=xl79140 style='border-top:none;border-left:none'>编制人</td>
  <td class=xl86140 width=130 style='border-top:none;border-left:none;
  width:98pt'>${BZR}　</td>
  <td class=xl79140 style='border-top:none;border-left:none'>日期</td>
  <td class=xl86140 width=134 style='border-top:none;border-left:none;
  width:101pt'>${BZRQ}　</td>
 </tr>
 <tr class=xl83140 height=16 style='height:12.0pt'>
  <td height=16 class=xl79140 style='height:12.0pt;border-top:none;border-left:none'>复核人</td>
  <td class=xl78140 style='border-top:none;border-left:none'>${FHR}　</td>
  <td class=xl79140 style='border-top:none;border-left:none'>日期</td>
  <td class=xl87140 width=134 style='border-top:none;border-left:none;width:101pt'>${FHRQ}　</td>
 </tr>
 
 <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
 <tr class=xl83140 height=16 style='height:12.0pt'>
  <td rowspan=2 height=32 class=xl79140 style='height:24.0pt;border-top:none'>行次</td>
  <td class=xl79140 style='border-top:none;border-left:none'>项目</td>
  <td class=xl79140 style='border-top:none;border-left:none'>未审数</td>
  <td class=xl79140 style='border-top:none;border-left:none'>调整数</td>
  <td class=xl79140 style='border-top:none;border-left:none'>审核数</td>
  <td class=xl79140 style='border-top:none;border-left:none'>税收金额</td>
  <td class=xl79140 style='border-top:none;border-left:none'>调整金额</td>
  <td class=xl79140 style='border-top:none;border-left:none'>备注</td>
 </tr>
 
 <tr class=xl83140 height=16 style='height:12.0pt'>
  <td height=16 class=xl79140 style='height:12.0pt;border-top:none;border-left:none'>1</td>
  <td class=xl79140 style='border-top:none;border-left:none'>2</td>
  <td class=xl79140 style='border-top:none;border-left:none'>3</td>
  <td class=xl79140 style='border-top:none;border-left:none'>4</td>
  <td class=xl79140 style='border-top:none;border-left:none'>5</td>
  <td class=xl79140 style='border-top:none;border-left:none'>6</td>
  <td class=xl79140 style='border-top:none;border-left:none'>7</td>  
 </tr>
 
   </table>  
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
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
				</div>
         <table id="gridlist_2_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">				
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=8 height=24 class=xl124140 style='height:18.0pt'>一、工资薪金支出计入成本费用的金额明细</td>
 </tr>
 
 <tr class=xl84140 height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl79140 style='height:18.0pt;border-top:none'>行次</td>
  <td  class=xl79140 style='border-left:none'>项目</td>
  <td class=xl79140 style='border-top:none;border-left:none'>未审数</td>
  <td  class=xl79140 style='border-left:none'>调整数</td>
  <td class=xl79140 style='border-top:none;border-left:none'>审核数</td>
  <td class=xl79140 style='border-top:none;border-left:none'>备注</td> 
  <td class=xl79140 style='border-top:none;border-left:none'></td> 
  <td class=xl79140 style='border-top:none;border-left:none'></td> 
 </tr>
 </table>
  				<div id="gridlist_2" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="DGHC" caption="行次"></div>
					<div name="DGHMC" type="text" css="width:99%;text-align:left" caption="项目"></div>
					<div name="COL1" type="text" css="width:99%"></div>
					<div name="COL2" type="text" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="text" css="width:99%"></div>
					<div name="COL5" type="text" css="width:99%"></div>
					<div name="COL6" type="text" css="width:99%"></div>					
				</div>
				<form class="form-horizontal" role="form" id="formmap_3">
 <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">	
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=7 height=24 class=xl114140 width=958 style='height:18.0pt;
  width:720pt'>二、实际发放工资检查</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>行次</td>
  <td class=xl81140 width=135 style='border-top:none;border-left:none;
  width:101pt'>项目</td>
  <td class=xl81140 width=182 style='border-top:none;border-left:none;
  width:137pt'>明细项目</td>
  <td colspan=2 class=xl121140 width=350 style='border-left:none;width:263pt'>　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>备注</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>11</td>
  <td rowspan=7 class=xl81140 width=135 style='border-top:none;width:101pt'>通过应付工资或应付职工薪酬-工资科目发放的工资薪金</td>
  <td class=xl98140 style='border-top:none;border-left:none'>年初余额</td>
  <td colspan=2 class=xl119140 style='border-left:none'>  <input type="text" style="width:100%"  id="COL1"/>  　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>借方余额用负数表示</td>
  <td class=xl80140 style='border-top:none;border-left:none'>  </td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>12</td>
  <td class=xl98140 style='border-top:none;border-left:none'>本年借方发生额</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text" style="width:100%"    id="COL2"/>  　　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>13</td>
  <td class=xl98140 style='border-top:none;border-left:none'>其中：本年发放上年额</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text" style="width:100%"    id="COL3"/>  　　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>14</td>
  <td class=xl98140 style='border-top:none;border-left:none'>本年贷方发生额</td>
  <td colspan=2 class=xl119140 style='border-left:none'>　<input type="text" style="width:100%"   id="COL4"/>  　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>15</td>
  <td class=xl98140 style='border-top:none;border-left:none'>年末余额</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text" style="width:100%"    id="COL5"/>  　　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>借方余额用负数表示</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
</tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>16</td>
  <td class=xl98140 style='border-top:none;border-left:none'>汇算清缴期间发放额</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text"style="width:100%"    id="COL6"/>  　　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>17</td>
  <td class=xl82140 style='border-top:none;border-left:none'>实际发放额小计</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text" style="width:100%"    id="COL7"/>  　　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>18</td>
  <td rowspan=5 class=xl81140 width=135 style='border-top:none;width:101pt'>未通过应付工资或应付职工薪酬-工资科目直接发放的工资薪金</td>
  <td class=xl99140 width=182 style='border-top:none;border-left:none;
  width:137pt'>　</td>
  <td colspan=2 class=xl119140 style='border-left:none'>　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>19</td>
  <td class=xl99140 width=182 style='border-top:none;border-left:none;
  width:137pt'>　</td>
  <td colspan=2 class=xl119140 style='border-left:none'>　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>20</td>
  <td class=xl99140 width=182 style='border-top:none;border-left:none;
  width:137pt'>　</td>
  <td colspan=2 class=xl119140 style='border-left:none'>　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>21</td>
  <td class=xl99140 width=182 style='border-top:none;border-left:none;
  width:137pt'>　</td>
  <td colspan=2 class=xl119140 style='border-left:none'>　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>22</td>
  <td class=xl82140 style='border-top:none;border-left:none'>实际发放额小计</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text" style="width:100%"    id="COL8"/>  　　　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>23</td>
  <td colspan=2 class=xl81140 width=317 style='border-left:none;width:238pt'>实际发放额合计</td>
  <td colspan=2 class=xl119140 style='border-left:none'>　<input type="text" style="width:100%"    id="COL9"/>  　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>24</td>
  <td colspan=2 class=xl81140 width=317 style='border-left:none;width:238pt'>国有企业经核定的工资总额</td>
  <td colspan=2 class=xl115140 width=350 style='border-right:.5pt solid black;
  border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL10"/>  　　</td>
  <td colspan=2 class=xl117140 style='border-right:.5pt solid black;border-left:
  none'>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>25</td>
  <td colspan=2 class=xl81140 width=317 style='border-left:none;width:238pt'>未实际发放金额</td>
  <td colspan=2 class=xl119140 style='border-left:none'><input type="text" style="width:100%"    id="COL11"/>  　</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>与审核确认额进行比对确认</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 </table>
 </form>
 
 				<form class="form-horizontal" role="form" id="formmap_4">	
  <table  align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=7 height=24 class=xl114140 width=958 style='height:18.0pt;
  width:720pt'>三、工资合理性检查</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>行次</td>
  <td colspan=2 class=xl81140 width=317 style='border-left:none;width:238pt'>检查项目</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'>检查情况（检查/未检查）</td>
  <td colspan=2 class=xl81140 width=250 style='border-left:none;width:188pt'>备注</td>
  <td class=xl80140 style='border-top:none;border-left:none'></td>  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>26</td>
  <td colspan=2 class=xl99140 width=317 style='border-left:none;width:238pt'>企业制订了较为规范的员工工资薪金制度；</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL1"/>  　</td>
  <td colspan=2 rowspan=6 class=xl81140 width=250 style='width:188pt'><input style="width:100%" type="textarea"  id="COL7" rows="10">432　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>27</td>
  <td colspan=2 class=xl99140 width=317 style='border-left:none;width:238pt'>企业所制订的工资薪金制度符合行业及地区水平；</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL2"/>  <span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
</tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>28</td>
  <td colspan=2 class=xl99140 width=317 style='border-left:none;width:238pt'>企业在一定时期所发放的工资薪金相对固定，工资薪金的调整是否有序进行的；</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL3"/>  <span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>29</td>
  <td colspan=2 class=xl99140 width=317 style='border-left:none;width:238pt'>企业对实际发放的工资薪金，已依法履行了代扣代缴个人所得税义务；</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL4"/>  <span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>30</td>
  <td colspan=2 class=xl99140 width=317 style='border-left:none;width:238pt'>有关工资薪金的安排，不以减少或逃避税款为目的；</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL5"/>  <span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
  
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>31</td>
  <td colspan=2 class=xl99140 width=317 style='border-left:none;width:238pt'>国有企业经核定的工资总额相关文件。</td>
  <td colspan=2 class=xl81140 width=350 style='border-left:none;width:263pt'><input type="text" style="width:100%"    id="COL6"/>  <span
  style='mso-spacerun:yes'>&nbsp;</span></td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td> 
 </tr>
 </table></form>
 <form class="form-horizontal" role="form" id="formmap_5">	
  <table  align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td colspan=7 height=24 class=xl112140 style='height:18.0pt'>四、代扣代缴个人所得税和申报工资总额执行情况</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>32</td>
  <td class=xl79140 style='border-top:none;border-left:none'>人数</td>
  <td class=xl79140 style='border-top:none;border-left:none'>申报工资总额</td>
  <td colspan=2 class=xl79140 style='border-left:none'>代扣代缴个人所得税税款</td>
  <td colspan=2 class=xl79140 style='border-left:none'>备注</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr>
 <tr height=24 style='mso-height-source:userset;height:18.0pt'>
  <td height=24 class=xl81140 width=41 style='height:18.0pt;border-top:none;
  width:31pt'>33</td>
  <td class=xl100140 width=135 style='border-top:none;border-left:none;
  width:101pt'><input type="text" style="width:100%"    id="COL1"/>　</td>
  <td class=xl101140 width=182 style='border-top:none;border-left:none;
  width:137pt'><input type="text" style="width:100%"    id="COL2"/>　</td>
  <td colspan=2 class=xl101140 width=350 style='border-left:none;width:263pt'>　<input type="text" style="width:100%"    id="COL3"/></td>
  <td colspan=2 class=xl99140 width=250 style='border-left:none;width:188pt'><input type="text" style="width:100%"    id="COL4"/>　</td>
  <td class=xl80140 style='border-top:none;border-left:none'>　</td>
 </tr></table></form>
         </table>   
 
   			<form class="form-horizontal" role="form" id="formmap">
				<table  align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000"  width="102%">
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>系统诊断的审核结论：
							    <textarea  readonly class="form-control" id="JDSMJLFX" rows="4" ></textarea>
						</td>
					</tr>	
					<tr height=66 style='mso-height-source:userset;height:50.1pt'>
						<td colspan=7 height=66 width=806 style='height:50.1pt;width:606pt'>审核说明及结论：
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
           $w1.pushGrid("gridlist_1");
           $w1.pushGrid("gridlist_2");
           $w1.pushForm("formmap_3");
           $w1.pushForm("formmap_4");
           $w1.pushForm("formmap_5");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdgcommCtrl/prosave",callback);		
         }
                   
        function closeAbPage(){
           window.close();
        }           
    </script>    
  </body>
</html>