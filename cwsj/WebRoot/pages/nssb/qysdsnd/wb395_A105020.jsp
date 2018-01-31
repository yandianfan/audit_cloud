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
	 
	<title>未按权责发生制确认收入纳税调整明细表</title>
</head>
<body onkeydown="enterTab()">

      <form class="form-horizontal" role="form" id="A105020form">
	
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">未按权责发生制确认收入纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105020')">自动取数</a>
  				    <!--
   				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> 				    
  				      -->
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>          
          </div>       
          
	<table width="98%" style="border-collapse: collapse" align="center"
		id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
		<tr align="center">
			<td rowspan="3" width="10%">
				行次
			</td>
			<td rowspan="3">
				项 目
			</td>
			<td rowspan="2" width="10%">
				合同金额
				<br />
				（交易金额）
			</td>
			<td colspan="2" width="15%">
				账载金额
			</td>
			<td colspan="2" width="15%">
				税收金额
			</td>
			<td rowspan="2" width="10%">
				纳税调整金额
			</td>
		</tr>
		<tr align="center">
			<td>
				本年
			</td>
			<td>
				累计
			</td>
			<td>
				本年
			</td>
			<td>
				累计
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
				6（4-2）
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、跨期收取的租金、利息、特许权使用费收入（2+3+4）
			</td>

			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="KQSQ_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="KQSQ_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="KQSQ_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="KQSQ_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="KQSQ_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="KQSQ_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）租金
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJ_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJ_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJ_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJ_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJ_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJ_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）利息
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="LX_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="LX_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="LX_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="LX_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="LX_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="LX_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）特许权使用费
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="TXQSYF_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="TXQSYF_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="TXQSYF_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="TXQSYF_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="TXQSYF_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="TXQSYF_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				二、分期确认收入（6+7+8）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQQRSR_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQQRSR_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQQRSR_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQQRSR_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQQRSR_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQQRSR_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）分期收款方式销售货物收入
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQSKFS_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQSKFS_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQSKFS_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQSKFS_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQSKFS_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="FQSKFS_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）持续时间超过12个月的建造合同收入
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZHTSR_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZHTSR_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZHTSR_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZHTSR_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZHTSR_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZHTSR_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他分期确认收入
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTFQQRSR_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTFQQRSR_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTFQQRSR_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTFQQRSR_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTFQQRSR_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTFQQRSR_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				三、政府补助递延收入（10+11+12）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZFBZ_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZFBZ_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZFBZ_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZFBZ_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZFBZ_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZFBZ_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）与收益相关的政府补助
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SYXGZFBZ_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SYXGZFBZ_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SYXGZFBZ_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SYXGZFBZ_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SYXGZFBZ_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SYXGZFBZ_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）与资产相关的政府补助
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZCXGZFBZ_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZCXGZFBZ_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZCXGZFBZ_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZCXGZFBZ_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZCXGZFBZ_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZCXGZFBZ_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）其他
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QT_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QT_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QT_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QT_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QT_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QT_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				四、其他未按权责发生制确认收入
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTWAZQQR_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTWAZQQR_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTWAZQQR_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTWAZQQR_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTWAZQQR_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="QTWAZQQR_NSTZJE">
               </fieldset>
            </td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				合计（1+5+9+13）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJ_HTJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJ_BNZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJ_LJZZJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJ_BNSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJ_LJSSJE">
               </fieldset>
            </td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJ_NSTZJE">
               </fieldset>
               <fieldset>
                    <input type="text" class="form-control" id="PZXH" style="display:none">
               <fieldset>                
            </td>
		</tr>
	</table>

	  	</div></div>
	</form> 
	<input type="text" style="display:none" value="A105020" id="FBPZZLDM"/>
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105020form");
          $w1.ajax("/wb395A105020Ctrl/update",callback);    
     }
     
    </script>	
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105020.js?<%=System.currentTimeMillis()%>"></script>
</html>
