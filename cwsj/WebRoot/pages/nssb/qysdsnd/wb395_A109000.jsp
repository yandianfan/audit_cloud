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
	 
	<title>跨地区经营汇总纳税企业年度分摊企业所得税明细表</title>
</head>
<body>

	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">跨地区经营汇总纳税企业年度分摊企业所得税明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A109000')">自动取数</a>
  				    <!-- 
    				    <a class="btn btn-small btn-success" onclick="jsSbb('A109000')">计算</a>
	                    <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>				    
  				     -->
                    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>        
          </div>		
	
         <form class="form-horizontal" role="form" id="A109000form">				
	<table width="100%" style="border-collapse: collapse" align="center" id="tab1" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
		<tr align="center">
			<td width="10%">
				行 &nbsp;&nbsp;次
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
				一、总机构实际应纳所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id=ZJGSJYNS>
			</td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;减：境外所得应纳所得税额
			</td>		
			<td>
			    <input type="text"  class="form-control" id="ZJGSJYNS_JWSDYN">
			</td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;加：境外所得抵免所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGSJYNS_JWSDDM">
			</td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				二、总机构用于分摊的本年实际应纳所得税（1-2+3）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGFTBNSJYN">
			</td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				三、本年累计已预分、已分摊所得税（6+7+8+9）
			</td>
			<td>
			    <input type="text"  class="form-control" id="BNLJYFFT">
			</td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（一）总机构向其直接管理的建筑项目部所在地预分的所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id="BNLJYFFT_ZJGJZXMYF">
			</td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（二）总机构已分摊所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id="BNLJYFFT_ZJGFT">
			</td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（三）财政集中已分配所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id="BNLJYFFT_CZJZFP">
			</td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（四）分支机构已分摊所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id="BNLJYFFT_ZJGFZFT">
			</td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：总机构主体生产经营部门已分摊所得税额
			</td>
			<td>
			    <input type="text"  class="form-control" id="BNLJYFFT_ZJGSCBMFT">
			</td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				四、本年度应分摊的应补（退）的所得税额（4-5）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGBNYFTBT">
			</td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（一）总机构分摊本年应补（退）的所得税额（11×总机构分摊比例）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGBNYFTBT_ZJGFT">
			</td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（二）财政集中分配本年应补（退）的所得税额（11×财政集中分配比例）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGBNYFTBT_CZJZFP">
			</td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;（三）分支机构分摊本年应补（退）的所得税额（11×分支机构分摊比例）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGBNYFTBT_ZJGFZFT">
			</td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其中：总机构主体生产经营部门分摊本年应补（退）的所得税额（11×总机构主体生产经营部门分摊比例）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGBNYFTBT_ZJGSCBM">
			</td>
		</tr>
		<tr>
			<td align="center">
				16
			</td>
			<td>
				五、境外所得抵免后的应纳所得税额（2-3）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGJWSDDMHYN">
			</td>
		</tr>
		<tr>
			<td align="center">
				17
			</td>
			<td>
				六、总机构本年应补（退）的所得税额（12+13+15+16）
			</td>
			<td>
			    <input type="text"  class="form-control" id="ZJGBNBT">
			    <input type="text" class="form-control" id="PZXH" style="display:none">
			</td>
		</tr>
	</table>
         </form>	
		</div>
	</div>
	
        <script type="text/javascript"> 
          function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A109000form");
          $w1.ajax("/wb395A109000Ctrl/update");    
          }
     
        </script>
        
</body>
</html>
