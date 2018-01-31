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
<html lang="en">
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
     <style media=print type="text/css"> 
     .noprint{visibility:hidden}
     </style>           
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 
	<title>研发费用加计扣除优惠明细表</title>
</head>
<body>
  <div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">研发费用加计扣除优惠明细表</strong>
  				<div class="btn-menu noprint">
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
        
       <table width="98%" style="border-collapse: collapse" align="center" id="listA107014_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
              <thead>
					<tr align="center">					
						<td rowspan="3" width="3%">
							行 次
						</td>
						<td rowspan="2" width="9%">
							研发项目
						</td>
						<td colspan="9" width="10%">
							本年研发费用明细
						</td>
						<td rowspan="2" width="10%">
							减:作为不征税收入处理的财政性资金用于研发的部分
						</td>
						<td rowspan="2" width="10%">
							可加计扣除的研发费用合计
						</td>
						<td colspan="2" width="10%">
							费用化部分
						</td>
						<td colspan="4" width="10%">
							资本化部分
						</td>
						<td rowspan="2" width="10%">
							本年研发费用加计扣除额合计
						</td>
					</tr>
					<tr align="center">
						<td width="5%">
							研发活动直接消耗的材料、燃料和动力费用
						</td>
						<td width="5%">
							直接从事研发活动的本企业在职人员费用
						</td>
						<td width="5%">
							专门用于研发活动的有关折旧费、租赁费、运行维护费
						</td>
						<td width="5%">
							专门用于研发活动的有关无形资产摊销费
						</td>
						<td width="5%">
							中间试验和产品试制的有关费用，样品、样机及一般测试手段购置费
						</td>
						<td width="5%">
							研发成果论证、评审、验收、鉴定费用
						</td>
						<td width="5%">
							勘探开发技术的现场试验费，新药研制的临床试验费
						</td>
						<td width="5%">
							设计、制定、资料和翻译费用
						</td>
						<td width="5%">
							年度研发费用合计
						</td>
						<td width="5%">
							计入本年损益的金额
						</td>
						<td width="5%">
							计入本年研发费用加计扣除额
						</td>
						<td width="5%">
							本年形成无形资产的金额
						</td>
						<td width="5%">
							本年形成无形资产加计摊销额
						</td>
						<td width="5%">
							以前年度形成无形资产本年加计摊销额
						</td>
						<td width="5%">
							无形资产本年加计摊销额
						</td>
					</tr>
					<tr align="center">
						<td>
							1
						</td>
						<td>
							2
						</td>
						<td>
							3
						</td>
						<td>
							4
						</td>
						<td>
							5
						</td>
						<td>
							6
						</td>
						<td>
							7
						</td>
						<td>
							8
						</td>
						<td>
							9
						</td>
						<td>
							10(2+3+4+5
							</br>
							+6+7+8+9)
						</td>
						<td>
							11
						</td>
						<td>
							12(10-11)
						</td>
						<td>
							13
						</td>
						<td>
							14(13×50%)
						</td>
						<td>
							15
						</td>
						<td>
							16
						</td>
						<td>
							17
						</td>
						<td>
							18(16+17)
						</td>
						<td>
							19(14+18)
						</td>
					</tr>
             </thead>
              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
		</table> 
		              
       <div class="row-fluid">
         <div class="span">          
	       <div id="listA107014" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>        
	          <div name="SBMX_XH" caption="000000"></div>
	          <div name="YFXM" css="text-align:left" caption="000000"></div>
	          <div name="YFHDZJXHCLRLDLFY" caption="000000"></div>
	          <div name="ZJCSYFHDBQYZZRYFY" caption="000000"></div>
	          <div name="ZMYYYFHDZJZLYXF" caption="000000"></div>
	          <div name="ZMYYYFHDYGWXZCTXF" caption="000000"></div>
	          <div name="ZJSYHCPSZYGYBYJFY" caption="000000"></div>
	          <div name="YFCGFY" caption="000000"></div>
	          <div name="KTKFJSXYYZFY" caption="000000"></div>
	          <div name="SJZDZLFYFY" caption="000000"></div>
	          <div name="NDYFFYHJ" caption="000000"></div>
	          <div name="ZWBZSSRCLCZZJYFFY" caption="000000"></div>
	          <div name="KJJKCYFFYHJ" caption="000000"></div>
	          <div name="JRBNSYJE" caption="000000"></div>
	          <div name="JRBNYFFYJJKCS" caption="000000"></div>
	          <div name="BNXCWXZCJE" caption="000000"></div>
	          <div name="BNXCWXZCJJTXE" caption="000000"></div>
	          <div name="YQNDXCWXZCBNJJTXE" caption="000000"></div>
	          <div name="WXZCBNJJTXE" caption="000000"></div>
	          <div name="BNYFFYJJKCEHJ" caption="000000"></div>
	       </div>
 

         </div> 		   			       
       </div>             
            
  </div>		

</body>
</html>