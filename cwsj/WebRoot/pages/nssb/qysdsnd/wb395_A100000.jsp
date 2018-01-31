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

	<title>中华人民共和国企业所得税年度纳税申报表（A类）</title>
</head>
<body>

		<form class="form-horizontal" role="form" id="A100000form">
	<div class="page-content">
		<div class="col-xs-12">		
		 <div class="row page-header text-center">
            <strong class="sb-title3">中华人民共和国企业所得税年度纳税申报表（A类）</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A100000')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">确定</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage();">关闭</a>
				</div>        
          </div>
		<table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">				
			<tr>
				<td>
					<div align="center">
						税款所属期间: 
					    ${A100000.SFSSQ_QSRQ}
						至
				        ${A100000.SFSSQ_ZZRQ}
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">
						纳税人名称:
						${A100000.NSR_MC}
					</div>
				</td>
			</tr>
		</table>
		<SPAN id='a' bz="sjdq">
			<table width="70%" style="border-collapse: collapse" align="center" id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
				<tr align="center">
					<td width="5%">
						行次
					</td>
					<td width="20%">
						类别
					</td>
					<td width="55%">
						项 目
					</td>
					<td width="20%">
						金 额
					</td>
				</tr>
				<tr>
					<td align="center">
						1
					</td>
					<td rowspan="13" align="center">
						利润总额计算
					</td>
					<td> 
						<a onclick="openFB('A102010|A102020|A103000')"  tabindex="-1">&nbsp;&nbsp;&nbsp;&nbsp;一、营业收入（填写A101010\101020\103000）</a>
					</td>
					<td>																       
					   <fieldset>
                           <input type="text"  class="form-control" id="YYSR">
                       </fieldset> 																			
					</td>
				</tr>
				<tr>
					<td align="center">
						2
					</td>
					<td>
						<a  tabindex="-1"
							onclick="openFB('A102010|A102020|A103000')">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;减：营业成本（填写A102010\102020\103000）</a>
					</td>
					<td>
                       <fieldset>
                           <input type="text"  class="form-control" id="YYCB">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;营业税金及附加

					</td>
					<td>
					   <fieldset>
                           <input type="text"  class="form-control" id="YYSJJFJ">
                       </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						4
					</td>
					<td>

						<a  tabindex="-1" onclick="openFB('A104000')">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销售费用（填写A104000）</a>


					</td>
					<td>
					   <fieldset>
                           <input type="text"  class="form-control" id="XSFY">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						5
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A104000')">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理费用（填写A104000）</a>


					</td>
					<td>
					   <fieldset>
                           <input type="text"  class="form-control" id="GLFY">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						6
					</td>
					<td>

						<a tabindex="-1" onclick="openFB('A104000')">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;财务费用（填写A104000）</a>


					</td>
					<td>
					   <fieldset>
                           <input type="text"  class="form-control" id="CWFY">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资产减值损失

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="ZCJZSS">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;加：公允价值变动收益
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="GYJZSY">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;投资收益


					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="TZSY">
                       </fieldset>							
					</td>
				</tr>
				<tr>
					<td align="center">
						10
					</td>
					<td>
						二、营业利润(1-2-3-4-5-6-7+8+9)

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YYLR">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						11
					</td>
					<td>
						<a tabindex="-1"
							onclick="openFB('A101010|A101020|A103000')">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;加：营业外收入（填写A101010\101020\103000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YYWSR">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						12
					</td>
					<td>
						<a  tabindex="-1"
							onclick="openFB('A102010|A102020|A103000')">&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;减：营业外支出（填写A102010\102020\103000）</a>



					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YYWZC">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						13
					</td>
					<td>
						三、利润总额（10+11-12）

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="LRZE">
                       </fieldset>
					</td>
				</tr>

				<tr>
					<td align="center">
						14
					</td>
					<td rowspan="10" align="center">
						应纳税所得额计算
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A108010')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：境外所得（填写A108010）</a>



					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="JWSD">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						15
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A105000')">&nbsp;&nbsp;&nbsp;&nbsp;加：纳税调整增加额（填写A105000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="NSTZZJE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						16
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A105000')">&nbsp;&nbsp;&nbsp;&nbsp;减：纳税调整减少额（填写A105000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="NSTZJSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						17
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A107010')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：免税、减计收入及加计扣除（填写A107010）</a>



					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="MJJJKC">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						18
					</td>
					<td>
						<a tabindex="-1" onclick="openFB('A108000')">
							&nbsp;&nbsp;&nbsp;&nbsp;加：境外应税所得抵减境内亏损（填写A108000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="JWYSSDKS">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						19
					</td>
					<td>
						四、纳税调整后所得（13-14+15-16-17+18）
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="NSTZHSD">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						20
					</td>
					<td>
						<a tabindex="-1" onclick="openFB('A107020')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：所得减免（填写A107020）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="SDJM">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						21
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A107030')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：抵扣应纳税所得额（填写A107030）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="DKYNESDE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						22
					</td>
					<td>
						<a tabindex="-1" onclick="openFB('A106000')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：弥补以前年度亏损（填写A106000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="MBYQNDKS">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						23
					</td>
					<td>
						五、应纳税所得额（19-20-21-22）


					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YNSSDE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						24
					</td>
					<td rowspan="13" align="center">
						应纳税额计算
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;税率（25%）

					</td>
					<td>
						<input type="text" style="width: 90%;" name="sl"
							id="sl" cal="true" format='2' readonly="readonly"
							class="fsrx" tabindex="-1" value="0.25" />
					</td>
				</tr>
				<tr>
					<td align="center">
						25
					</td>
					<td>
						六、应纳所得税额（23×24）

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YNSDSE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						26
					</td>
					<td>
						<a tabindex="-1" onclick="openFB('A107040')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：减免所得税额（填写A107040）</a>
					</td>
					<td>
			           <fieldset>
                           <input type="text"  class="form-control" id="JMSDSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						27
					</td>
					<td>


						<a  tabindex="-1" onclick="openFB('A107050')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：抵免所得税额（填写A107050）</a>


					</td>
					<td>
			           <fieldset>
                           <input type="text"  class="form-control" id="DMSDSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						28
					</td>
					<td>
						七、应纳税额（25-26-27）

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YNSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						29
					</td>
					<td>

						<a tabindex="-1" onclick="openFB('A108000')">
							&nbsp;&nbsp;&nbsp;&nbsp;加：境外所得应纳所得税额（填写A108000）</a>



					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="JWSDYNSDSE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						30
					</td>
					<td>

						<a  tabindex="-1" onclick="openFB('A108000')">
							&nbsp;&nbsp;&nbsp;&nbsp;减：境外所得抵免所得税额（填写A108000）</a>


					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="JWSDDMSDSE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						31
					</td>
					<td>
						八、实际应纳所得税额（28+29-30）

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="SJYNSDSE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						32
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;减：本年累计实际已预缴的所得税额
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="BNSJYYJSDSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						33
					</td>
					<td>
						九、本年应补（退）所得税额（31-32）

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="BNYBSDSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						34
					</td>
					<td>
						<a tabindex="-1" onclick="openFB('A109000')">
							&nbsp;&nbsp;&nbsp;&nbsp;其中：总机构分摊本年应补（退）所得税额（填写A109000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="ZJGFTBNYBSDSE">
                       </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						35
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A109000')">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;财政集中分配本年应补（退）所得税额（填写A109000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="CZJZFPBNYBSDSE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						36
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A109000')">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总机构主体生产经营部门分摊本年应补（退）所得税额（填写A109000）</a>
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="ZJGZTFTBNYBSDSE">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						37
					</td>
					<td rowspan="2" align="center">
						附列资料
					</td>
					<td>
						以前年度多缴的所得税额在本年抵减额

					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="BNDJ">
                       </fieldset>

					</td>
				</tr>
				<tr>
					<td align="center">
						38
					</td>
					<td>
						以前年度应缴未缴在本年入库所得税额
					</td>
					<td>
		               <fieldset>
                           <input type="text"  class="form-control" id="YQYJWJ">
                       </fieldset>
 
                       <fieldset>
						   <input type="text" class="form-control" id="PZXH" style="display:none">
					   <fieldset>
					    	   
					</td>
				</tr>			
			</table> </SPAN>


</div></div>
             
	</form>
       <input type="text" style="display:none" value="A100000" id="FBPZZLDM"/>
	<script type="text/javascript" src="pages/login/head.js"></script>	

    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A100000form");
          $w1.ajax("/wb395A100000Ctrl/update",callback);    
     }
        
  
     
    function closeAbPage(){
          window.close();
       }
           
    </script>	
</body>



</html>
