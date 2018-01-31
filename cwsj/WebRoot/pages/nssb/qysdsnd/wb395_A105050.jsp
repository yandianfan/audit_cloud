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
	 
	<title>职工薪酬纳税调整明细表</title>
</head>
<body>
         <form class="form-horizontal" role="form" id="A105050form">
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">职工薪酬纳税调整明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105050')">自动取数</a>
                    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a> 
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> 	
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>			    
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
		</table>

		<table width="98%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr align="center">
				<td rowspan="2" width="10%">
					行 次
				</td>
				<td rowspan="2" width="30%">
					项 目
				</td>
				<td width="10%">
					账载金额
				</td>
				<td width="10%">
					税收规定扣除率
				</td>
				<td width="10%">
					以前年度累计结转扣除额
				</td>
				<td width="10%">
					税收金额
				</td>
				<td width="10%">
					纳税调整金额
				</td>
				<td width="10%">
					累计结转以后年度扣除额
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
					5（1-4）
				</td>
				<td>
					6（1+3-4）
				</td>
			</tr>
			<tr>
				<td align="center">
					1
				</td>
				<td>
					一、工资薪金支出
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GZXJ_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GZXJ_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GZXJ_NSTZJE">
                   </fieldset>
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
				  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：股权激励
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GQJL_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GQJL_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GQJL_NSTZJE">
                   </fieldset>
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
					二、职工福利费支出
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGFL_ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGFL_SSGDKCL">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGFL_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGFL_NSTZJE">
                   </fieldset>
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
					三、职工教育经费支出
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGJYJF_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGJYJF_YQNDKCL">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGJYJF_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGJYJF_NSTZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZGJYJF_YHNDKCL">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					5
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：按税收规定比例扣除的职工教育经费
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ABLKC_ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
					 <input type="text"  class="form-control" id="ABLKC_SSGDKCL">	
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ABLKC_YQNDKCL">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ABLKC_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ABLKC_NSTZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ABLKC_YHNDKCL">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;按税收规定全额扣除的职工培训费用
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="AJEKC_ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="AJEKC_SSGDKCL">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="AJEKC_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="AJEKC_NSTZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td>
					四、工会经费支出
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GHJF_ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GHJF_SSGDKCL">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GHJF_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="GHJF_NSTZJE">
                   </fieldset>
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
					五、各类基本社会保障性缴款
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BZJK_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BZJK_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="BZJK_NSTZJE">
                   </fieldset>
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
					六、住房公积金
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZFGJJ_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZFGJJ_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="ZFGJJ_NSTZJE">
                   </fieldset>
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
					七、补充养老保险
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YLBX_ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YLBX_SSGDKCL">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YLBX_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YLBX_NSTZJE">
                   </fieldset>
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
					八、补充医疗保险
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YILBX_ZZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YILBX_SSGDKCL">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YILBX_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="YILBX_NSTZJE">
                   </fieldset>
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
					九、其他
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_YQNDKCL">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_NSTZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="QT_YHNDKCL">
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td>
					合计（1+3+4+7+8+9+10+11+12）
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_ZZJE">
                   </fieldset>
				</td>
				<td align="center">
					*
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_YQNDKCL">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_SSJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_NSTZJE">
                   </fieldset>
				</td>
				<td>
				   <fieldset>
                       <input type="text"  class="form-control" id="HJ_YHNDKCL">
                   </fieldset>
                   
                   <fieldset>
                       <input type="text" class="form-control" id="PZXH" value="${PZXH}"  style="display:none">
                   <fieldset>                   
				</td>
			</tr>
			  <input type="text" style="display:none" value="A105050" id="FBPZZLDM"/>	
			
		</table>

	  	</div></div>
	</form> 
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105050form");
          $w1.ajax("/wb395A105050Ctrl/update",callback);    
     }
     
    </script>	
</body>

</html>
