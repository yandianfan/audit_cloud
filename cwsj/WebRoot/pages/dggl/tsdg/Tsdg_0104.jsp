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
<html>
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
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>审核过程中重大问题请示报告</title>
	
  </head>
  
  <body>
  

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">审核过程中重大问题请示报告</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
          
          <form class="form-horizontal" role="form" id="Tsdg_0104form">           
         <table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="100%">
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=6 height=29 class=xl6613686 style='height:21.75pt' align="right">索引号：1-4</td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td colspan=5 height=29 class=xl6713686 width=730 style='height:21.75pt;
  width:550pt'>被审核单位名称：${QYMC}</td>
  <td class=xl6613686 style='border-top:none;border-left:none'>金额单位：元</td>
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td rowspan=2 height=58 class=xl6713686 width=146 style='height:43.5pt;
  border-top:none;width:110pt'>会计期间或会计截止日：</td>
  <td rowspan=2 class=xl6813686 width=146 style='border-top:none;width:110pt'>${KJQJ}</td>
  <td class=xl6913686 width=146 style='border-top:none;border-left:none;
  width:110pt'>编制人</td>
  <td class=xl7013686 width=146 style='border-top:none;border-left:none;
  width:110pt'>${BZR}</td>
  <td class=xl6913686 width=146 style='border-top:none;border-left:none;
  width:110pt'>日期</td>
  <td class=xl7013686 width=146 style='border-top:none;border-left:none;
  width:110pt'>${BZRQ}</td>
  
  
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td height=29 class=xl6913686 width=146 style='height:21.75pt;border-top:
  none;border-left:none;width:110pt'>复核人</td>
  <td class=xl7113686 width=146 style='border-top:none;border-left:none;
  width:110pt'>${FHR}</td>
  <td class=xl6913686 width=146 style='border-top:none;border-left:none;
  width:110pt'>日期</td>
  <td class=xl7213686 width=146 style='border-top:none;border-left:none;
  width:110pt'>${FHRQ}</td>
  
  
 </tr>
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td height=29 class=xl7313686 width=146 style='height:21.75pt;border-top:none;width:110pt'>委托单位名称：</td>
  <td colspan=5><input type="text" class="form-control" id="COL1"></td>
 </tr>
 
 <tr height=29 style='mso-height-source:userset;height:21.75pt'>
  <td height=29 class=xl7513686 width=146 style='height:21.75pt;border-top:none;width:110pt'>执行的会计准则</td>
  <td colspan=2><input type="text" class="form-control" id="COL2"></td>
  <td>税款所属期间</td>
  <td colspan=2><input type="text" class="form-control" id="COL3"></td>
 </tr>
 
 <tr height=29>
  <td height=29>承办部门</td>
  <td><input type="text" class="form-control" id="COL4"></td>
  <td>项目负责人</td>
  <td><input type="text" class="form-control" id="COL5"></td>
  <td>业务类型</td>
  <td><input type="text" class="form-control" id="COL6"></td>
 </tr>
 
 <tr height="29">
  <td colspan=3>提请决定的主要问题及初步处理意见：<br></td>
  <td colspan=3>部门经理意见：</td>
 </tr>
 
 <tr>
  <td colspan=3 rowspan=4 height=116 > <textarea class="form-control" id="COL7" rows=10></textarea></td>
  <td colspan=3> <textarea class="form-control" id="COL8" rows="3"></textarea></td>
 </tr>
 
 <tr height="29">
  <td></td>
  <td>日期：</td>
  <td> <input type="text" class="form-control" id="COL9"></td>
 </tr>
 
 <tr height="29">
  <td colspan=3>公司（所）领导意见：</td>
 </tr>
 
 <tr>
  <td colspan=3> <textarea class="form-control" id="COL10" rows="3"></textarea></td>
 </tr>
 
 <tr height="29">
  <td>　</td>
  <td>日期：</td>
  <td><input type="text" class="form-control" id="COL11"></td>
  <td>　</td>
  <td>日期：</td>
  <td><input type="text" class="form-control" id="COL12"></td>
 </tr>

         </table>        
	</form> 

   			<form class="form-horizontal" role="form" id="formmap">
   			    <input style="display:none" id="JDSMJL" />
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form>  
  				         
       </div>
    </div>      
        
    <script type="text/javascript"> 
        function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0104form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0104Ctrl/save");		
        }
         
        function closeAbPage(){
           window.close();
        }        
    </script>   
  </body>
</html>