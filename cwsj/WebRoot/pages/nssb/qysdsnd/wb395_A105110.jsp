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
	 
	<title>政策性搬迁纳税调整明细表</title>
</head>
<body>

	     <form class="form-horizontal" role="form" id="A105110form">
	
	   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">政策性搬迁纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105110')">自动取数</a>
	                <!-- <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> -->  
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	

		<table width="70%" style="border-collapse: collapse" align="center"
			cellpadding="1" cellspacing="1" border="1" bordercolor="#000000"
			id="tab1">
			<tr align="center">
				<td width="10%">
					行 次
				</td>
				<td width="60%"></td>
				<td>
					金 额
				</td>
			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td>
					一、搬迁收入(2+8)
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQSR">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）搬迁补偿收入（3+4+5+6+7）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQBCSR">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.对被征用资产价值的补偿
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="DBZYZCJZBC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.因搬迁、安置而给予的补偿
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YBQAZGYBC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.对停产停业形成的损失而给予的补偿
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="DTCTYXCSSGYBC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.资产搬迁过程中遭到毁损而取得的保险赔款
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCBQSHBXPK">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他补偿收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTBCSR">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）搬迁资产处置收入
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQZCCZSR">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					二、搬迁支出(10+16)
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQZC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）搬迁费用支出(11+12+13+14+15)
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQFYZC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.安置职工实际发生的费用
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="AZZGSJFSFY">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.停工期间支付给职工的工资及福利费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="TGZFGZJFL">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.临时存放搬迁资产而发生的费用
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="LSCFBQZCFY">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.各类资产搬迁安装费用
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GLZCBQAZFY">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					15
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.其他与搬迁相关的费用
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QTYBQXGFY">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					16
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）搬迁资产处置支出
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQZCCZZC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					三、搬迁所得或损失（1-9）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQSDHSS">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					四、应计入本年应纳税所得额的搬迁所得或损失（19+20+21）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YJRBNYNSDEBQSDHSS">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：搬迁所得
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQSD">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搬迁损失一次性扣除
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQSSYCKC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					21
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;搬迁损失分期扣除
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BQSSFQKC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					五、计入当期损益的搬迁收益或损失
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="JRDQSYBQSYHSS">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					23
				</td>
				<td>
					六、以前年度搬迁损失当期扣除金额
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YQNDBQSSDQKCJE">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					24
				</td>
				<td>
					七、纳税调整金额（18-22-23）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="NSTZJE">
                   </fieldset>
				</td>
			</tr>

			<tr>
				<td align="center">
					附报资料:
				</td>
			</tr>
			<tr>
				<td align="center">
					1、
				</td>
				<td>
					&nbsp;&nbsp;资产处置支出：
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCCZZC">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					2、
				</td>
				<td>
				   <fieldset>
					   <select id="GGLX"  name = "GGLX" class="form-control"></select>	
                   </fieldset>                   
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCGZZC_SJ">
                   </fieldset>
				</td>
			</tr>

			<tr style="display: none" id="ws">
				<td align="center">

				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中，允许从搬迁收入中扣除的金额：
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZCGZZC">
                   </fieldset>
                   
                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" value="${PZXH}" style="display:none">
                   <fieldset>                      
				</td>
			</tr>
		</table>

	
	</div></div>
	</form>
    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105110form");
          $w1.ajax("/wb395A105110Ctrl/update");    
     }
     
    </script	
	
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105110.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>
