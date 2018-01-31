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

	<title>主要会计政策与会计估计表</title>
	
  </head>
  
  <body>
  
       
          
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">主要会计政策与会计估计表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
             <form class="form-horizontal" role="form" id="Tsdg_0109form"> 
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">

 <tr height=16 style='height:12.0pt'>
  <td colspan=6 height=16 style='height:12.0pt' align="right">索引号：1-9</td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=6 height=16 width="1000" style='height:12.0pt;width:585pt'>被审核单位名称：${QYMC}</td> 
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td rowspan=2 width="180">会计期间或会计截止日：</td>
  <td rowspan=2 width="250">${KJQJ}</td>
  <td width="70">编制人</td>
  <td width="120">${BZR}</td>
  <td width="70">日期</td>
  <td width="300">${BZRQ}</td>
</tr>

 <tr height=16 style='height:12.0pt'>
  <td width="70">复核人</td>
  <td width="120">${FHR}</td>
  <td width="70">日期</td>
  <td width="300">${FHRQ}</td>
 </tr>
 
 <tr height=18 style='height:13.5pt'>
  <td height=18 style='height:13.5pt;border-top:none'>行次</td>
  <td colspan=2>项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目</td>
  <td colspan=3>内&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;容</td>
 </tr>
 
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td height=16 style='height:12.0pt;border-top:none'>1</td>
  <td colspan=2 width=150 style='border-left:none;width:187pt'>会计政策和估计是否与上年发生变化</td>
  <td colspan=3 style='border-left:none'>
 <select id="COL1"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select>
  </td>
 </tr>
 
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>2</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>目前执行的会计准则和会计制度</td>
  <td colspan=3 class=xl9611419 style='border-left:none'>
 <select id="COL2"  class="form-control">
	<option value="">请选择</option>
	<option value="1">企业会计准则(一般企业)</option>
	<option value="2">企业会计准则(银行)</option>
	<option value="3">企业会计准则(证券)</option>
	<option value="4">企业会计准则(保险)</option>
	<option value="5">企业会计准则(担保)</option>
	<option value="6">小企业会计准则</option>
	<option value="7">企业会计制度</option>
	<option value="8">事业单位会计准则</option>
	<option value="9">事业单位会计制度</option>
	<option value="10">科学事业单位会计制度</option>
	<option value="11">医院会计制度</option>
	<option value="12">高等学校会计制度</option>
	<option value="13">中小学校会计制度</option>
	<option value="14">彩票机构会计制度</option>
	<option value="15">民间非营利组织会计制度</option>
	<option value="16">村集体经济组织会计制度</option>
	<option value="17">农民专业合作社财务会计制度（试行)</option>
	<option value="99">其他</option>
</select>
  </td>
 </tr>
 
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>3</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>记账本位币</td>
  <td colspan=3 class=xl8811419 style='border-left:none'>
  												<select id="COL3"  class="form-control">
													<option value="">请选择</option>
													<option value="1">人民币</option>
													<option value="9">其他</option>
												</select>
</td>
 </tr>
 
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=4 height=64 class=xl8711419 style='height:48.0pt;border-top:none'>4</td>
  <td colspan=2 rowspan=4 class=xl9211419 width=248 style='width:187pt'>记账基础和计价原则</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>权责发生制</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
  												<select id="COL4"  class="form-control"  
													title="财务报表类型">
													<option value="">请选择</option>
													<option value="1">是</option>
													<option value="0">否</option>
												</select></td>
 </tr>
 
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:none'>收付实现制</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    												<select id="COL5"  class="form-control"  
													title="财务报表类型">
													<option value="">请选择</option>
													<option value="1">是</option>
													<option value="0">否</option>
												</select></td>
 </tr>
 
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:none'>历史成本</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
<select id="COL6"  class="form-control" ><option value="">请选择</option><option value="1">是</option><option value="0">否</option>
</select>
  </td>
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:none'>现行市价</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
<select id="COL7"  class="form-control">
													<option value="">请选择</option>
													<option value="1">是</option>
													<option value="0">否</option>
												</select>
  </td>
 </tr>
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>5</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>外币业务核算方法</td>
  <td colspan=3 class=xl8811419 style='border-left:none'>
 <select id="COL8"  class="form-control">
	<option value="">请选择</option>
	<option value="1">记账汇率(按当月月初汇率)</option>
	<option value="2">记账汇率(按业务发生当日汇率)</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>6</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>外币财务报表折算方法</td>
  <td colspan=3 class=xl8811419 style='border-left:none'>
 <select id="COL9"  class="form-control">
	<option value="">请选择</option>
	<option value="1">现行汇率法</option>
	<option value="2">时态法</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>7</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>坏账损失核算方法</td>
  <td colspan=3 class=xl8811419 style='border-left:none'>
 <select id="COL10"  class="form-control">
	<option value="">请选择</option>
	<option value="1">备抵法</option>
	<option value="2">直接核销法</option>
</select> 
  </td>
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=8 height=128 class=xl8711419 style='height:96.0pt;border-top:
  none'>8</td>
  <td colspan=2 rowspan=8 class=xl9211419 width=248 style='width:187pt'>坏账准备计提方法及提取比例　</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>1.余额百分比法，比例为</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL11"></td>  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>2.账龄分析法，比例：</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL12"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>其中：1年以内</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL13"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span>1―2年</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL14"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span>2―3年</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL15"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span>3―5年</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL16"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </span>5年以上</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL17"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>3.个别认定法，比例</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL18"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=8 height=128 class=xl8711419 style='height:96.0pt;border-top:
  none'>9</td>
  <td colspan=2 rowspan=8 class=xl9211419 width=248 style='width:187pt'>存货成本计价方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>先进先出法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
  <select id="COL19"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select>  
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>移动加权平均法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL20"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>月末一次加权平均法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL21"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:none'>个别计价法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL22"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>毛利率法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL23"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>零售价法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL24"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>计划成本法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL25"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>其他</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL26"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=6 height=96 class=xl8711419 style='height:72.0pt;border-top:none'>10</td>
  <td colspan=2 rowspan=6 class=xl9211419 width=248 style='width:187pt'>产品成本计算方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>品种法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL27"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>分类法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL28"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>定额比例法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL29"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>分批法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL30"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>分步法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL31"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>其他</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL32"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=3 height=48 class=xl8711419 style='height:36.0pt;border-top:none'>11</td>
  <td colspan=2 rowspan=3 class=xl9211419 width=248 style='width:187pt'>在产品计价方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>期末在产品成本</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL33"  class="form-control">
	<option value="">请选择</option>
	<option value="1">不保留</option>
	<option value="2">保留材料成本</option>
	<option value="3">料工费均保留</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>数量确定</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL34"  class="form-control">
	<option value="">请选择</option>
	<option value="1">约当产量</option>
	<option value="2">固定数量</option>
	<option value="3">盘存数量</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>成本确定</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
    <select id="COL35"  class="form-control">
	<option value="">请选择</option>
	<option value="1">实际成本</option>
	<option value="2">定额成本</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=3 height=48 class=xl8711419 style='height:36.0pt;border-top:none'>12</td>
  <td colspan=2 rowspan=3 class=xl9211419 width=248 style='width:187pt'>低值易耗品标准及摊销方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>金额标准</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL36"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>使用期限标准</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL37"></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>摊销方法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'>
      <select id="COL38"  class="form-control">
	<option value="">请选择</option>
	<option value="1">实际成本</option>
	<option value="2">定额成本</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>13</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>存货跌价准备计提方法</td>
  <td colspan=3 class=xl8811419 style='border-left:none'>
        <select id="COL39"  class="form-control">
	<option value="">请选择</option>
	<option value="1">单项计提</option>
	<option value="2">分类计提</option>
</select> 
  </td>
  
  
 </tr>
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>14</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>投资性房地产核算方法</td>
  <td colspan=3 class=xl8811419 style='border-left:none'>        <select id="COL40"  class="form-control">
	<option value="">请选择</option>
	<option value="1">公允价值模式核算</option>
	<option value="2">成本模式核算</option>
</select> </td>
 </tr>
 <tr>
  <td rowspan=2>15</td>
  <td colspan=2 rowspan=2>长期股权投资核算方法</td>
  <td colspan=2>1、对被投资单位具有控制采用成本法核算</td>
  <td ><select id="COL41"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr>
  <td colspan=2>2、能对被投资单位实施重大影响的联营企业或合营企业，采用权益法核算</td>
  <td><select id="COL42"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>16</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>长期股权投资减值准备</td>
  <td colspan=3 class=xl8811419 style='border-left:none'><select id="COL43"  class="form-control">
	<option value="">请选择</option>
	<option value="1">不计提减值准备</option>
	<option value="2">按单项投资预计可收回金额低于其账面价值的差额计提减值准备</option>
</select></td>
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td rowspan=5 height=80 class=xl8711419 style='height:60.0pt;border-top:none'>17</td>
  <td colspan=2 rowspan=5 class=xl9211419 width=248 style='width:187pt'>固定资产折旧方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>年限平均法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL44"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>工作量法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL45"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>双倍余额递减法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL46"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>年数总和法</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL47"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
  
  
 </tr>
 <tr class=xl8411419 height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>其他</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL48"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
  
  
 </tr>
 <tr class=xl8411419 height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>18</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>固定资产净残值率</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>占固定资产原价的比例</td>
  <td class=xl8911419 style='border-top:none;border-left:none'><input type="text" class="form-control" id="COL49"></td>
  
  
 </tr>
 <tr height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>19</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>固定资产减值准备　</td>
  <td colspan=3 class=xl8811419 style='border-left:none'><select id="COL50"  class="form-control">
	<option value="">请选择</option>
	<option value="1">不计提减值准备</option>
	<option value="2">按单项固定资产预计可收回金额低于其账面价值的差额计提减值准备</option>
</select></td>
  
  
 </tr>
 <tr height=55 style='mso-height-source:userset;height:41.25pt'>
  <td rowspan=2 height=71 class=xl8711419 style='height:53.25pt;border-top:
  none'>20</td>
  <td colspan=2 rowspan=2 class=xl9211419 width=248 style='width:187pt'>借款费用核算方法</td>
  <td colspan=2 class=xl9211419 width=314 style='border-left:none;width:236pt'>为购建固定资产而借入专门借款所发生的借款费用，满足相应资本化条件的，在所购建固定资产达到预定可使用状态前发生的，予以资本化</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL51"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9411419 style='height:12.0pt;border-left:
  none'>其他</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL52"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td rowspan=3 height=48 class=xl9811419 style='height:36.0pt;border-top:none'>21</td>
  <td colspan=2 rowspan=3 class=xl9911419 width=248 style='width:187pt'>无形资产内容及摊销方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>无形资产名称</td>
  <td class=xl9011419 style='border-top:none;border-left:none'>摊销时间</td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9711419 style='height:12.0pt;border-left:none'><input type="text" class="form-control" id="COL53"></td>
  <td class=xl8811419 style='border-top:none;border-left:none'><input type="date" class="form-control" id="COL54"></td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9711419 style='height:12.0pt;border-left:none'><input type="text" class="form-control" id="COL55"></td>
  <td class=xl8811419 style='border-top:none;border-left:none'><input type="date" class="form-control" id="COL56"></td>
  
  
 </tr>
 <tr height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>22</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>无形资产减值准备</td>
  <td colspan=3 class=xl8811419 style='border-left:none'><select id="COL57"  class="form-control">
	<option value="">请选择</option>
	<option value="1">不计提减值准备</option>
	<option value="2">按单项无形资产预计可收回金额低于其账面价值的差额计提减值准备</option>
</select></td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td rowspan=3 height=48 class=xl9811419 style='height:36.0pt;border-top:none'>23</td>
  <td colspan=2 rowspan=3 class=xl9911419 width=248 style='width:187pt'>长期待摊费用内容及摊销方法</td>
  <td colspan=2 class=xl9411419 style='border-left:none'>长期待摊费用内容</td>
  <td class=xl9011419 style='border-top:none;border-left:none'>摊销时间</td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9711419 style='height:12.0pt;border-left:none'><input type="text" class="form-control" id="COL58"></td>
  <td class=xl8811419 style='border-top:none;border-left:none'><input type="date" class="form-control" id="COL59"></td>
  
  
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9711419 style='height:12.0pt;border-left:none'><input type="text" class="form-control" id="COL60"></td>
  <td class=xl8811419 style='border-top:none;border-left:none'><input type="date" class="form-control" id="COL61"></td>
 </tr>
 <tr height=44 style='mso-height-source:userset;height:33.0pt'>
  <td rowspan=2 height=126 class=xl8711419 style='height:94.5pt;border-top:
  none'>24</td>
  <td colspan=2 rowspan=2 class=xl9211419 width=248 style='width:187pt'>销售商品收入确认</td>
  <td colspan=2 class=xl9211419 width=314 style='border-left:none;width:236pt'>1. 一般于产品已经发出，劳务已经提供，同时收讫价款或者取得收取价款的凭据时，确认销售收入的实现</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL62"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=82 style='mso-height-source:userset;height:61.5pt'>
  <td colspan=2 height=82 class=xl9211419 width=314 style='height:61.5pt;
  border-left:none;width:236pt'>2.
  已将商品所有权上的主要风险和报酬转移给购货方；既没有保留通常与所有权联系的继续管理权，也没有对已出售的商品实施控制；与交易相关的经济利益能够流入企业；相关的收入和成本能够可靠地计量</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL63"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=39 style='mso-height-source:userset;height:29.25pt'>
  <td rowspan=4 height=160 class=xl8711419 style='height:120.0pt;border-top:
  none'>25</td>
  <td colspan=2 rowspan=4 class=xl9211419 width=248 style='width:187pt'>提供劳务收入确认</td>
  <td colspan=2 class=xl9211419 width=314 style='border-left:none;width:236pt'>1.在同一会计年度内开始并完成的劳务，在完成劳务时确认；</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL64"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=60 style='mso-height-source:userset;height:45.0pt'>
  <td colspan=2 height=60 class=xl9211419 width=314 style='height:45.0pt;
  border-left:none;width:236pt'>2.如果劳务的开始和完成分属不同的会计年度，当交易的结果能够可靠估计时，在资产负债表日按完工百分比法确认相关劳务收入；</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL65"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=45 style='mso-height-source:userset;height:33.75pt'>
  <td colspan=2 height=45 class=xl9211419 width=314 style='height:33.75pt;
  border-left:none;width:236pt'>3.在提供劳务交易结果不能可靠估计的情况下，按照对已发生劳务成本的预计补偿程度进行相应会计处理</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL66"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9211419 width=314 style='height:12.0pt;border-left:none;width:236pt'>4.其他</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL67"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td rowspan=2 height=32 class=xl8711419 style='height:24.0pt;border-top:none'>26</td>
  <td colspan=2 rowspan=2 class=xl9211419 width=248 style='width:187pt'>让渡资产使用权收入确认</td>
  <td colspan=2 class=xl9211419 width=314 style='border-left:none;width:236pt'>1.与交易相关的经济利益能够流入企业</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL68"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=16 style='height:12.0pt'>
  <td colspan=2 height=16 class=xl9211419 width=314 style='height:12.0pt;border-left:none;width:236pt'>2.收入金额能够可靠计量</td>
  <td class=xl8811419 style='border-top:none;border-left:none'><select id="COL69"  class="form-control">
	<option value="">请选择</option>
	<option value="1">是</option>
	<option value="0">否</option>
</select></td>
 </tr>
 
 <tr height=18 style='height:13.5pt'>
  <td height=18 class=xl8711419 style='height:13.5pt;border-top:none'>27</td>
  <td colspan=2 class=xl9211419 width=248 style='border-left:none;width:187pt'>所得税计算方法</td>
  <td colspan=3 class=xl9611419 style='border-left:none'><select id="COL70"  class="form-control">
	<option value="">请选择</option>
	<option value="1">应付税款法</option>
	<option value="2">资产负债表债务法</option>
	<option value="3">其他</option>
</select></td>
 </tr>


         </table>   
	</form>         
	
   			<form class="form-horizontal" role="form" id="formmap">
   			    <input style="display:none" id="JDSMJL" />
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form> 
              
       </div>
    </div>      
        
    <script type="text/javascript"> 
        function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0109form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0109Ctrl/save");		
         }
 
        function closeAbPage(){
           window.close();
        }            
    </script> 
  </body>
</html>