<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div id="page-content"  class="clearfix">	
			<div class="page-header position-relative">
			    <h3>源数据管理<small><i class="icon-double-angle-right"></i>标准数据项手工匹配</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="queding();">确定</button>
							    <button type="button" class="btn  btn-primary" onclick="winclose();">关闭</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>		
			<div class="row-fluid">
				  <div class="widget-body">
				   <div class="widget-main">				  
						<span class="input-icon">
							<input autocomplete="off" id="SJXMCTJ" type="text"  value="" placeholder="这里输入关键词" />
							 <button  onclick="query();" class="btn btn-purple btn-small">Search <i class="icon-search icon-on-right"></i></button>  
							<input type="text" style="display:none" id="SJX_XH" value="${SJX_XH}"/> 
							<input type="text" style="display:none" id="s_jfyeZ" value="${s_jfyeZ}"/> 
							<input type="text" style="display:none" id="s_dfyeZ" value="${s_dfyeZ}"/> 
							<input type="text" style="display:none" id="b_jffsZ" value="${b_jffsZ}"/> 
							<input type="text" style="display:none" id="b_dffsZ" value="${b_dffsZ}"/> 
							<input type="text" style="display:none" id="e_jfyeZ" value="${e_jfyeZ}"/> 
							<input type="text" style="display:none" id="e_dfyeZ" value="${e_dfyeZ}"/> 
							<input type="text" style="display:none" id="kmcodeZ" value="${kmcodeZ}"/> 
							<input type="text" style="display:none" id="kmnameZ" value="${kmnameZ}"/>
							<input type="text" style="display:none" id="LSH" value="${LSH}"/> 
						</span>
             </div>
</div></div>


			<div class="row-fluid">
				<div id="dppList" class="DataGrid" type="DataGrid" css="table table-striped table-bordered table-hover" caption="显示信息">
				   <div name="check" type="radio" caption="选择"></div>
					<div name="Index" style="width:5%" caption="序号"></div>
					<div name="LSH" caption="流水号" style="display:none"></div>
					<div name="DJXH" caption="企业代码" style="display:none"></div>
					<div name="JYSJX_XH"style="width:5%"  caption="建议匹配数据项序号"></div>
					<div name="JYSJX_MC" style="width:5%" caption="建议匹配数据项名称"></div>					
					<div name="kmcode"style="width:5%" caption="原始科目代码"></div>
					<div name="kmname" style="width:5%" caption="原始科目名称"></div>
					<div name="s_jfye"style="width:5%"  caption="期初余额(借方)"></div>
					<div name="s_dfye"style="width:5%"  caption="期初余额(贷方)"></div>
					<div name="b_jffs"style="width:5%"  caption="本期余额(借方)"></div>
					<div name="b_dffs"style="width:5%"  caption="本期余额(贷方)"></div>
					<div name="e_jfye"style="width:5%"  caption="期末余额(借方)"></div>
					<div name="e_dfye" style="width:5%" caption="期末余额(贷方)"></div>										
				</div>
			</div>


	</div>
	</div>
	<!--/#page-content-->
	<script type="text/javascript" src="pages/login/head.js"></script>       
	<script type="text/javascript">

		function query(){
		     var $w1=new  $w("Windking");
		     var sjxmc=$("#SJXMCTJ").val();
		     var LSH=$("#LSH").val();
             $w1.pushData("LSH", LSH);
             $w1.pushData("SJX_MC", sjxmc);
             $w1.ajax("/BLH/sjywhBLH_querryDpp");	
		}

	function queding(){
	   var LSH=$("#LSH").val();
	   var SJX_XH=$("#SJX_XH").val();
	   var kmcode="";
	   var kmname="";
	   var s_jfye="";
	   var s_dfye="";
	   var b_jffs="";
	   var b_dffs="";
	   var e_jfye="";
	   var e_dfye="";
	   var DJXH="";
	   $("input:radio[name='check']").each(function(checkindex,checkitem){//遍历每一行
		   if(checkitem.checked){	
		       kmcode=$("td[name='kmcode']")[checkindex].innerText;	
		       kmname=$("td[name='kmname']")[checkindex].innerText;	
		       s_jfye=$("td[name='s_jfye']")[checkindex].innerText;	
		       s_dfye=$("td[name='s_dfye']")[checkindex].innerText;	
		       b_jffs=$("td[name='b_jffs']")[checkindex].innerText;	
		       b_dffs=$("td[name='b_dffs']")[checkindex].innerText;	
		       e_jfye=$("td[name='e_jfye']")[checkindex].innerText;	
		       e_dfye=$("td[name='e_dfye']")[checkindex].innerText;	
		       DJXH=$("td[name='DJXH']")[checkindex].innerText;	
              //SJX_MC=$("td[name='SJX_MC']")[checkindex].innerText;	
              //SJX_VALUE=$("td[name='SJX_VALUE']")[checkindex].innerText;		   
		   }
	   });	
	   if(kmname==""||kmname==null){
	      Modal.sysAlert("请选择数据");
	     return false;
	   }
	   $("#s_jfyeZ").val(s_jfye);
	   $("#s_dfyeZ").val(s_dfye);
	   $("#b_jffsZ").val(b_jffs);
	   $("#b_dffsZ").val(b_dffs);
	   $("#e_jfyeZ").val(e_jfye);
	   $("#e_dfyeZ").val(e_dfye);
	   $("#kmcodeZ").val(kmcode);
	   $("#kmnameZ").val(kmname);
       var $w1=new  $w("Windking");
       $w1.pushData("LSH", LSH);
       $w1.pushData("DJXH", DJXH);
       $w1.pushData("SJX_XH", SJX_XH);
       $w1.pushData("kmcode", kmcode);
       $w1.pushData("kmname", kmname);
       $w1.pushData("s_jfye", s_jfye);
       $w1.pushData("s_dfye", s_dfye);
       $w1.pushData("b_jffs", b_jffs);
       $w1.pushData("b_dffs", b_dffs);
       $w1.pushData("e_jfye", e_jfye);
       $w1.pushData("e_dfye", e_dfye);
       $w1.ajax("/BLH/sjywhBLH_saveSjx");	
       Dialog.close();	   
	}	
       function winclose(){
          Dialog.close();
       }		
	</script>	
</body>
</html>