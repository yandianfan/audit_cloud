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
	 
	<title>特殊行业准备金纳税调整明细表</title>
</head>
<body>

		     <form class="form-horizontal" role="form" id="A105120form">
	   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">特殊行业准备金纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105120')">自动取数</a>
	                <!-- <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> -->
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	

		<table width="80%" style="border-collapse: collapse" align="center"
			cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
			id="tab1">
			<tr align="center">
				<td rowspan="2">
					行 次
				</td>
				<td rowspan="2">
					项 目
				</td>
				<td>
					账载金额
				</td>
				<td>
					税收金额
				</td>
				<td>
					纳税调整金额
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
					3(1-2)
				</td>
			</tr>
			<tr>
				<td align="center" width="10%">
					1
				</td>
				<td width="45%">
					一、保险公司（2+3+6+7+8+9+10）
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXGS_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXGS_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXGS_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）未到期责任准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WDQZRZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WDQZRZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WDQZRZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）未决赔款准备金（4+5）
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WJPKZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WJPKZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WJPKZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：已发生已报案未决赔款准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="YFSYBAWJPKZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="YFSYBAWJPKZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="YFSYBAWJPKZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已发生未报案未决赔款准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="YFSWBAWJPKZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="YFSWBAWJPKZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="YFSWBAWJPKZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）巨灾风险准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JZFXZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JZFXZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JZFXZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）寿险责任准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="SXZRZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="SXZRZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="SXZRZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）长期健康险责任准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="CQJKXZRZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="CQJKXZRZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="CQJKXZRZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）保险保障基金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXBZJJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXBZJJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXBZJJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）其他
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXGSQT_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXGSQT_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="BXGSQT_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					二、证券行业（12+13+14+15）
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQHY_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQHY_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQHY_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）证券交易所风险基金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJYSFXJJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJYSFXJJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJYSFXJJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）证券结算风险基金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJSFXJJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJSFXJJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQJSFXJJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）证券投资者保护基金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQTZZBHJJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQTZZBHJJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQTZZBHJJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					15
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQHYQT_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQHYQT_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZQHYQT_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					16
				</td>
				<td>
					三、期货行业（17+18+19+20）
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHHY_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHHY_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHHY_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）期货交易所风险准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHJYSFXZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHJYSFXZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHJYSFXZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）期货公司风险准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHGSFXZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHGSFXZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHGSFXZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）期货投资者保障基金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHTZZBZJJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHTZZBZJJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHTZZBZJJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHHYQT_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHHYQT_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QHHYQT_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					21
				</td>
				<td>
					四、金融企业（22+23+24)
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JRQY_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JRQY_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JRQY_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）涉农和中小企业贷款损失准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="SNHZXQYDKSSZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="SNHZXQYDKSSZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="SNHZXQYDKSSZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					23
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）贷款损失准备金
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="DKSCZBJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="DKSCZBJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="DKSCZBJ_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					24
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JRQYQT_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JRQYQT_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="JRQYQT_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					25
				</td>
				<td>
					五、中小企业信用担保机构(26+27+28)
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXQYXYDBJG_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXQYXYDBJG_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXQYXYDBJG_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					26
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）担保赔偿准备
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="DBPCZB_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="DBPCZB_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="DBPCZB_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					27
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）未到期责任准备
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WDQZRZB_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WDQZRZB_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="WDQZRZB_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					28
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXQYXYDBJGQT_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXQYXYDBJGQT_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXQYXYDBJGQT_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					29
				</td>
				<td>
					六、其他
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_NSTZJE">
                    </fieldset
				</td>
			</tr>
			<tr>
				<td align="center">
					30
				</td>
				<td>
					合计(1+11+16+21+25+29)
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_ZZJE">
                    </fieldset>
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_SSJE">
                    </fieldset
				</td>
				<td width="15%">
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_NSTZJE">
                    </fieldset
                    <fieldset>
                        <input type="text" class="form-control" id="PZXH" value="${PZXH}"  style="display:none">
                    <fieldset>                  
				</td>
			</tr>
		</table>


	</div></div>
	</form>
    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105120form");
          $w1.ajax("/wb395A105120Ctrl/update");    
     }
     
    </script>	
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105120.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>

