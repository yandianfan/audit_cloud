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

	<title>期间费用明细表</title>
</head>

<body>
         <form class="form-horizontal" role="form" id="A104000form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">期间费用明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A104000')">自动取数</a>
  				    <!-- <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a> -->
	                <!--<a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>  --> 
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
	
		<table width="98%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr>
				<td rowspan="2" align="center">
					行&nbsp;次
				</td>
				<td rowspan="2" align="center">
					项 目
				</td>
				<td align="center">
					销售费用
				</td>
				<td align="center">
					其中：境外支付
				</td>
				<td align="center">
					管理费用
				</td>
				<td align="center">
					其中：境外支付
				</td>
				<td align="center">
					财务费用
				</td>
				<td align="center">
					其中：境外支付
				</td>
			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td align="center">
					2
				</td>
				<td align="center">
					3
				</td>
				<td align="center">
					4
				</td>
				<td align="center">
					5
				</td>
				<td align="center">
					6
				</td>

			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td>
					一、职工薪酬
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZGXC_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZGXC_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					2
				</td>
				<td>
					二、劳务费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="LWF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="LWF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="LWF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="LWF_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					三、咨询顾问费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXGWF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXGWF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXGWF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZXGWF_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					4
				</td>
				<td>
					四、业务招待费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YWZDF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YWZDF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					五、广告费和业务宣传费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="GGYWXCF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="GGYWXCF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					六、佣金和手续费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJSXF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJSXF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJSXF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJSXF_GLFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJSXF_CWFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJSXF_CWFYJWZF">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					七、资产折旧摊销费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZCZJTXF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZCZJTXF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td>
					八、财产损耗、盘亏及毁损损失
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="CCSH_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="CCSH_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
					九、办公费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BGF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BGF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					10
				</td>
				<td>
					十、董事会费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="DSHF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="DSHF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					十一、租赁费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZLF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZLF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZLF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="ZLF_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					十二、诉讼费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="SSF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="SSF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					十三、差旅费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="CLF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="CLF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					十四、保险费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BXF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BXF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					15
				</td>
				<td>
					十五、运输、仓储费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YSCCF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YSCCF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YSCCF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YSCCF_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					16
				</td>
				<td>
					十六、修理费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XLF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XLF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XLF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XLF_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					十七、包装费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BZF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="BZF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					十八、技术转让费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="JSZRF_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="JSZRF_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="JSZRF_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="JSZRF_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					十九、研究费用
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJFY_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJFY_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJFY_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="YJFY_GLFYJWZF">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					二十、各项税费
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="GXSF_XSFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="GXSF_GLFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					21
				</td>
				<td>
					二十一、利息收支
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="LYSZ_CWFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="LYSZ_CWFYJWZF">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					二十二、汇兑差额
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HDCE_CWFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HDCE_CWFYJWZF">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					23
				</td>
				<td>
					二十三、现金折扣
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="XJZK_CWFY">
                    </fieldset>
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					24
				</td>
				<td>
					二十四、其他
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_GLFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_CWFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="QT_CWFYJWZF">
                    </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					25
				</td>
				<td>
					合计(1+2+3+…24)
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_XSFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_XSFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_GLFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_GLFYJWZF">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_CWFY">
                    </fieldset>
				</td>
				<td>
				    <fieldset>
                        <input type="text"  class="form-control" id="HJ_CWFYJWZF">
                    </fieldset>
                    
                    <fieldset>
                        <input type="text" class="form-control" id="PZXH" style="display:none">
                    <fieldset>
				</td>
			</tr>

		</table>

		</div>
   	</div>
	</form>
	<input type="text" style="display:none" value="A104000" id="FBPZZLDM"/>
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A104000form");
          $w1.ajax("/wb395A104000Ctrl/update",callback);    
     }
     
    </script>
</body>
<script type="text/javascript" src="./nssb/wb395/wb395_A104000.js?<%=System.currentTimeMillis()%>"></script>
</html>
