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

	<title>符合条件的居民企业之间的股息、红利等权益性投资收益优惠明细表</title>
</head>
<body>
  <div class="page-content">            
		 <div class="row page-header text-center">
            <strong class="sb-title3">符合条件的居民企业之间的股息、红利等权益性投资收益优惠明细表</strong>
  				<div class="btn-menu noprint">
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	 

       <table width="100%" style="border-collapse: collapse" align="center" id="listA107011_table" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
        <thead>
		  <tr align="center">		  
						<td rowspan="3" width="3%" style="text-align: center;">
							行&nbsp;&nbsp;&nbsp;次
						</td>
						<td rowspan="2" width="12%" style="text-align: center;">
							被投资企业
						</td>
						<td rowspan="2" width="8 %" style="text-align: center;">
							投资性质
						</td>
						<td rowspan="2" width="5%" style="text-align: center;">
							投资成本
						</td>
						<td rowspan="2" width="5%" style="text-align: center;">
							投资比例
						</td>
						<td colspan="2" width="5%" style="text-align: center;">
							被投资企业利润
							<br />
							分配确认金额
						</td>
						<td colspan="3" width="15%" style="text-align: center;">
							被投资企业清算确认金额
						</td>
						<td colspan="6" width="31%" style="text-align: center;">
							撤回或减少投资确认金额
						</td>
						<td rowspan="2" width="3%" style="text-align: center;">
							合计
						</td>
					</tr>
					<tr align="center">
						<td width="6%" style="text-align: center;">
							被投资企业做
							<br />
							出利润分配或
							<br />
							转股决定时间
						</td>
						<td width="5%" style="text-align: center;">
							依决定归属
							<br />
							于本公司的
							<br />
							股息、红利
							<br />
							等权益性投
							<br />
							资收益金额
						</td>
						<td width="5%" style="text-align: center;">
							分得的被投
							<br />
							资企业清算
							<br />
							剩余资产
						</td>
						<td width="5%" style="text-align: center;">
							被清算企业
							<br />
							累计未分配
							<br />
							利润和累计
							<br />
							盈余公积应
							<br />
							享有部分
						</td>
						<td width="6%" style="text-align: center;">
							应确认的
							<br />
							股息所得
						</td>
						<td width="5%" style="text-align: center;">
							从被投资企
							<br />
							业撤回或减
							<br />
							少投资取得
							<br />
							的资产
						</td>
						<td width="5%" style="text-align: center;">
							减少投资
							<br />
							比例
						</td>
						<td width="5%" style="text-align: center;">
							收回初始
							<br />
							投资成本
						</td>
						<td width="5%" style="text-align: center;">
							取得资产中
							<br />
							超过收回初
							<br />
							始投资成本
							<br />
							部分
						</td>
						<td width="5%" style="text-align: center;">
							撤回或减少
							<br />
							投资应享有
							<br />
							被投资企业
							<br />
							累计未分配
							<br />
							利润和累计
							<br />
							盈余公积
						</td>
						<td width="6%" style="text-align: center;">
							应确认的
							<br />
							股息所得
						</td>
					</tr>
					<tr align="center">
						<td style="text-align: center;">
							1
						</td>
						<td style="text-align: center;">
							2
						</td>
						<td style="text-align: center;">
							3
						</td>
						<td style="text-align: center;">
							4
						</td>
						<td style="text-align: center;">
							5
						</td>
						<td style="text-align: center;">
							6
						</td>
						<td style="text-align: center;">
							7
						</td>
						<td style="text-align: center;">
							8
						</td>
						<td style="text-align: center;">
							9
							<br />
							（7与8孰小)
						</td>
						<td style="text-align: center;">
							10
						</td>
						<td style="text-align: center;">
							11
						</td>
						<td style="text-align: center;">
							12
							<br />
							（3×11）
						</td>
						<td style="text-align: center;">
							13
							<br />
							（10-12）
						</td>
						<td style="text-align: center;">
							14
						</td>
						<td style="text-align: center;">
							15
							<br />
							(13与14孰小)
						</td>
						<td style="text-align: center;">
							16
							<br />
							（6+9+15）
						</td>
					</tr>
		</thead>
              <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>
              <input type="text" style="display:none" value="${DJXH}" id="DJXH"/>
	</table>
	              
       <div class="row-fluid">
         <div class="span">         
	       <div id="listA107011" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="PZXH" caption="000000" style="display:none"></div>         
	          <div name="SBMX_XH" caption="000000"></div>
	          <div name="BTZQYMC" css="text-align:left" caption="000000"></div>
	          <div name="TZXZ_DM" caption="000000"></div>
	          <div name="TZCB_JE" caption="000000"></div>
	          <div name="TZBL" caption="000000"></div>
	          <div name="LRFPRQ" caption="000000"></div>
	          <div name="LRFPSY_JE" caption="000000"></div>
	          <div name="QSSYZC_JE" caption="000000"></div>
	          <div name="QSWFPBF_JE" caption="000000"></div>
	          <div name="QSGXSD_JE" caption="000000"></div>
	          <div name="CHTZQDZC_JE" caption="000000"></div>
	          <div name="CHTZBL" caption="000000"></div>
	          <div name="CHCSCB_JE" aption="000000"></div>
	          <div name="QDCGCB_JE" caption="000000"></div>
	          <div name="CHWFP_JE" caption="000000"></div>
	          <div name="CHGXSD_JE" caption="000000"></div>
	          <div name="HJ_JE" caption="000000"></div>
	       </div>    

		   	       
         </div> 	       
       </div>		      
  </div>		      

</body>
</html>