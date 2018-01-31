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
	<meta charset="utf-8" />

		<base href="<%=basePath%>">
	<!-- jsp文件头和头部 -->
	<%@ include file="../../../public/jsp/top.jsp"%>
    
     <link href="public/css/wsbs.css" rel="stylesheet" />
     <style media=print type="text/css"> 
     .noprint{visibility:hidden}
     </style>       
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	
	<title>免税、减计收入及加计扣除优惠明细表</title>
</head>
<body>
         <form class="form-horizontal" role="form" id="A107010form">
	<div id="mainDiv">
	  <div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">免税、减计收入及加计扣除优惠明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107010')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
			
			<SPAN id="b" bz="update">
				<table id="tab1" width="80%" style="border-collapse: collapse"
					align="center" cellpadding="1" cellspacing="1" border="1"
					bordercolor="#000000">
					<tr align="center">
						<td width="10%">
							行 次
						</td>
						<td width="65%">
							项 目
						</td>
						<td width="25%">
							金 额
						</td>
					</tr>
					<tr>
						<td align="center">
							1
						</td>
						<td>
							一、免税收入（2+3+4+5）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id=MSSR_JE>
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							2
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;（一）国债利息收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="GZLXSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							3
						</td>
						<td>
							<a tabindex="-1" onclick="openFB('A107011')">
								&nbsp;&nbsp;&nbsp;&nbsp;（二）符合条件的居民企业之间的股息、红利等权益性投资收益（填写A107011）</a>
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="QYXTZSYSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							4
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;（三）符合条件的非营利组织的收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="FYLZZSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							5
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;（四）其他专项优惠（6+7+8+9+10+11+12+13+14）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="MSSRQTZXYHHJ_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							6
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.中国清洁发展机制基金取得的收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="ZGQJFZJZJESR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							7
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.证券投资基金从证券市场取得的收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="ZQTZJJSCQDSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							8
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.证券投资基金投资者获得的分配收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="ZQTZJJTZZFPSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							9
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.证券投资基金管理人运用基金买卖股票、债券的差价收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="ZQTZJJCJSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							10
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.取得的地方政府债券利息所得或收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="DFZFZQSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							11
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.受灾地区企业取得的救灾和灾后恢复重建款项等收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="SZDQQYKXSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							12
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.中国期货保证金监控中心有限责任公司取得的银行存款利息等收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="YHCKLXSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							13
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8.中国保险保障基金有限责任公司取得的保险保障基金等收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="BXBZJJSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							14
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9.其他
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="MSSRZXYHQTSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							15
						</td>
						<td>
							二、减计收入（16+17）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="JJSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							16
						</td>
						<td>
							<a tabindex="-1" onclick="openFB('A107012')">
								&nbsp;&nbsp;&nbsp;&nbsp;（一）综合利用资源生产产品取得的收入（填写A107012）</a>
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="ZHLYZYSCQDSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							17
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;（二）其他专项优惠（18+19+20）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="JJSRQTZXYHHJ_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							18
						</td>
						<td>
							<a tabindex="-1" onclick="openFB('A107013')">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.金融、保险等机构取得的涉农利息、保费收入（填写A107013）</a>
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="SNLXBFSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							19
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.取得的中国铁路建设债券利息收入
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="ZGTLJSZQLXSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							20
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.其他
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="JJSRZXYHQTSR_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							21
						</td>
						<td>
							三、加计扣除（22+23+26）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="JJKC_JE">
                           </fieldset
						</td>
					</tr>
					<tr>
						<td align="center">
							22
						</td>
						<td>
							<a tabindex="-1" onclick="openFB('A107014')">
								&nbsp;&nbsp;&nbsp;&nbsp;（一）开发新技术、新产品、新工艺发生的研究开发费用加计扣除（填写A107014）</a>
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="YJKFFYJJKC_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							23
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;（二）安置残疾人员及国家鼓励安置的其他就业人员所支付的工资加计扣除（24+25）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="AZRYZFGZJJKC_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							24
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.支付残疾人员工资加计扣除
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="CJRYGZJJKC_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							25
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.国家鼓励的其他就业人员工资加计扣除
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="QTRYGZJJKC_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							26
						</td>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;（三）其他专项优惠
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="QTZXYHJJKC_JE">
                           </fieldset>
						</td>
					</tr>
					<tr>
						<td align="center">
							27
						</td>
						<td>
							合计（1+15+21）
						</td>
						<td>
				           <fieldset>
                               <input type="text"  class="form-control" id="HJ_JE">
                           </fieldset>
                           <fieldset>
                               <input type="text" class="form-control" id="PZXH" value="${PZXH}"  style="display:none">
                           <fieldset>                           
						</td>
					</tr>
				</table> </SPAN>
		</div>
	</div></div>
	</form>
	<input type="text" style="display:none" value="A107010" id="FBPZZLDM"/>
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A107010form");
          $w1.ajax("/wb395A107010Ctrl/update",callback);    
     }
     
    </script>	
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107010.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>
