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

	<title>审核整体工作计划</title>
	
</head>

<body>
    
   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">审核整体工作计划</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="fpgzjh()">任务分配</a>
  				    <a class="btn btn-small btn-success" onclick="printPagePro()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>


<table id="tab1" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="90%">
 

 <tr height=16 style='height:12.0pt'>
  <td colspan=8 height=16 style='height:12.0pt' align="right">索引号：1-1</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=7 height=16  width=619 style='height:12.0pt;width:464pt'>被审核单位名称：${QYMC}</td>
  <td  width=96 style='width:72pt'>金额单位：元</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td rowspan=2 height=32 width=150 >会计期间或会计截止日：</td>
  <td colspan=2 rowspan=2 width=150>${KJQJ}　</td>
  <td width=100>编制人</td>
  <td colspan=2 width=80>${BZR}　</td>
  <td width=100>日期</td>
  <td>　${BZRQ}</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td>复核人</td>
  <td colspan=2 >${FHR}　</td>
  <td>日期</td>
  <td>　${FHRQ}</td>
 </tr>
     </table>
     
   <form class="form-horizontal" role="form" id="Tsdg_0101_1form">
    <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="90%">	
 <tr height=16 style='height:12.0pt'>
  <td colspan=9 height=16 class=xl9422322 width=715 style='height:12.0pt;
  width:536pt'>一、审核项目（*填写委托审核事项业务类型）</td>
 </tr>
 <tr height=55 style='mso-height-source:userset;height:41.25pt'>
  <td colspan=9> <textarea class="form-control" id="COL1" rows="5"></textarea></td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=9 height=16 class=xl9422322 width=715 style='height:12.0pt;
  width:536pt'>二、审核目标（*填写“对审核事项的合法性、合理性发表意见”）</td>
 </tr>
 <tr height=57 style='mso-height-source:userset;height:42.75pt'>
  <td colspan=9> <textarea class="form-control" id="COL2" rows="5"></textarea></td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td colspan=9 height=16 class=xl9422322 width=715 style='height:12.0pt;
  width:536pt'>三、计划审核日期</td>
 </tr>
 <tr height=17 style='height:12.75pt'>
  <td height=17 class=xl8722322 width=151 style='height:12.75pt;border-top:
  none;width:113pt'>约定工作日开始日</td>
  <td width="120"><input type="date" class="form-control" id="COL3"/></td>
   <td colspan=7></td>
 </tr>
 <tr height=17 style='height:12.75pt'>
  <td height=17 class=xl8722322 width=151 style='height:12.75pt;border-top:
  none;width:113pt'>外勤工作日自</td>
  <td  width=95 style='border-top:none;border-left:none;
  width:71pt'><input type="date" class="form-control"  id="COL4"/></td>
  <td width="50">至</td>
  <td width="120"><input type="date" class="form-control"  id="COL5"/></td>
  <td class=xl8722322 width=48 style='border-top:none;border-left:none;
  width:36pt'>共计</td>
  <td width="120"><input type="text" class="form-control" id="COL6"/></td>
   <td width="50">天</td>
  <td width="120"><input type="text" class="form-control" id="COL7"/></td>
  <td>人次</td>
 </tr>
 <tr height=17 style='height:12.75pt'>
  <td height=17 class=xl8722322 width=151>编写报告自</td>
  <td><input type="date" class="form-control" id="COL8"/></td>
  <td>至</td>
  <td><input type="date" class="form-control" id="COL9"/></td>
  <td colspan="5"></td>
 </tr>
 <tr height=17 style='height:12.75pt'>
  <td height=17 width=151>审核截止日期</td>
  <td><input type="date" class="form-control" id="COL10"/></td>
  <td colspan=7></td>
 </tr>
     </table>
	</form>
	
    <table id="gridlist_1_table" align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="90%">
 <tr height=16 style='height:12.0pt'>
  <td colspan=7>四、审核小组组成及人员分工：</td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td width="50">请&nbsp;选&nbsp;择</td>
  <td align="center">姓名</td>
  <td align="center">选择人员</td>
  <td align="center">职务或名称</td>
  <td align="center">分工</td>
  <td align="center">分配任务</td>
  <td align="center">备注</td>
 </tr>
</table>
 
        <div class="row-fluid">
         <div class="span">     
 				<div id="gridlist_1" class="DataGrid" type="DataGrid" userdefine="true">
					<div name="LSH" style="display:none" caption="流水号"></div>					
					<div name="DJXH" style="display:none" caption="登记序号"></div>
					<div name="DG_DM" style="display:none" caption="底稿代码"></div>
					<div name="XZ" type="checkbox" class="noprint" delete="true" caption="请选择"></div>
					<div name="COL1" css="width:99%"></div>
					<div name="COL2" style="display:none"></div>
					<div name="BT1" type="button" value="选择人员"  onclick="selectRy(this)" css="width:99%"></div>
					<div name="COL3" type="text" css="width:99%"></div>
					<div name="COL4" type="textarea" css="width:99%;" ></div>
					<div name="COL5"  style="display:none"></div>
					<div name="BT2" type="button" value="分配底稿" onclick="selectDg(this)" css="width:99%"></div>
					<div name="COL6" type="textarea" css="width:99%"></div>		
					<div name="COL7" style="display:none"></div>			
				</div>              
       	   <div class="btn-group btn-group-xs noprint">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('gridlist_1')">新增</button>			    
		   </div>				
         </div> 		   	       
       </div>     
       
  <form class="form-horizontal" role="form" id="Tsdg_0101_2form">
     <table align="center" style="border-collapse: collapse"; border="1" cellspacing="1" cellpadding="1" bordercolor="#000000" width="90%">	            
       <tr height=16 style='height:12.0pt'>
          <td colspan=8 height=20  width=715 style='height:20pt; width:536pt'>公司（所）领导意见：</td>
       </tr>
       <tr height=57 style='mso-height-source:userset;height:42.75pt'>
         <td colspan=9> <textarea class="form-control" id="COL11" rows="5"></textarea></td>
       </tr>      
     </table>
  </form>
  
   			<form class="form-horizontal" role="form" id="formmap">
   			    <input style="display:none" id="JDSMJL" />
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form>           
         
</div></div>

    <script type="text/javascript"> 
        function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0101_1form");
           $w1.pushGrid("gridlist_1"); 
           $w1.pushForm("Tsdg_0101_2form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0101Ctrl/save");		
        }
         
        function closeAbPage(){
           window.close();
        }  
           
	function selectRy(e){
       var LSH=$("#LSH").val();
	   //alert(e.parentNode.parentNode.childNodes[4].firstChild.value);
       var diag = new top.Dialog();
	   diag.Drag = true;
	   diag.Title ="任务分配";
	   diag.URL = '<%=basePath%>rwfpCtrl/selectryinit?LSH='+LSH;
	   diag.Width = 280;
	   diag.Height = 370;
	   diag.CancelEvent = function(){ //关闭事件
			 var retrydm=diag.innerFrame.contentWindow.document.getElementById('retrydm').value;
			 var retrymc=diag.innerFrame.contentWindow.document.getElementById('retrymc').value;
			 var retzzjgdm=diag.innerFrame.contentWindow.document.getElementById('retzzjgdm').value;
			 if(retrydm!=""){
				 $(e).parent().parent().find("td[name='COL1']").text(retrymc);
				 $(e).parent().parent().find("td[name='COL2']").text(retrydm);
				 $(e).parent().parent().find("td[name='COL7']").text(retzzjgdm);
			 }			    
			 diag.close();
	   };
	   diag.show();
	}	 
	function selectDg(e){
	var LSH=$("#LSH").val();
	   //alert(e.parentNode.parentNode.childNodes[4].firstChild.value);
	   if(e.parentNode.parentNode.childNodes[5].innerText==null||e.parentNode.parentNode.childNodes[5].innerText==""){
	     Modal.sysAlert("请先选择人员");
	      return false;
	   }
       var diag = new top.Dialog();
	   diag.Drag = true;
	   diag.Title ="分配底稿";
	   diag.URL = '<%=basePath%>/TreeCtrl/treeInit.do?multiSelect=1&treeKey=SjsjtsMapper.treeQuerydg&LSH='+LSH;
	   diag.Width = 380;
	   diag.Height = 470;
	   diag.CancelEvent = function(){ //关闭事件
			 var retdgdm=diag.innerFrame.contentWindow.document.getElementById('RETCODE').value;
			 var retdgmc=diag.innerFrame.contentWindow.document.getElementById('RETNAME').value;
			 if(retdgdm!=""){
				 $(e).parent().parent().find("textarea[name='COL4']").text(retdgmc);
				 $(e).parent().parent().find("td[name='COL5']").text(retdgdm);
			 }			    
			 diag.close();
	   };
	   diag.show();
	}	
	
	function fpgzjh(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0101_1form");
           $w1.pushGrid("gridlist_1"); 
           $w1.pushForm("Tsdg_0101_2form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0101Ctrl/save",fpgzjh2);	   
	}  
	function fpgzjh2(){
	       var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0101_1form");
           $w1.pushGrid("gridlist_1"); 
           $w1.pushForm("Tsdg_0101_2form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0101Ctrl/fpgzjh");	 
	}
    </script>  
</body>

</html>
