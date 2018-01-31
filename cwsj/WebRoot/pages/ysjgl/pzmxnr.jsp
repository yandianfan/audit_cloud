<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="static/css/jquery.dataTables.css" />
<link href="static/css/bootstrap.min337.css" rel="stylesheet" />
<script type="text/javascript" src="static/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="static/js/bootbox.min440.js"></script>
<script type="text/javascript" src="static/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="public/js/commonjs.js"></script>
<script type="text/javascript">
       function  getPath(){

                     var pathName = document.location.pathname;
                      var index = pathName.substr(1).indexOf("/");
                     var result = pathName.substr(0,index+1);
                     return result;


                 }

	$(document).ready(function() {
	   var PZXH=$("#PZXH").val();
	   var LSH=$("#LSH").val();
	   var PZRQ=$("#PZRQ").val();
	   var SSSQ=$("#SSSQ").val();
	   var datadef=$("#pzdefineobj").val();
		var table = $('#example').DataTable({
		     "bFilter": false,
		     "scrollY" : "300px",
		     "scrollX": true,
			"paging" : true,
			
			"searching": true,
			
			"processing": true,
 //           "serverSide": true,
//			"sAjaxDataProp" : "aData",//是服务器分页的标志，必须有
			
            
 //           "sAjaxSource" : getRootPath()+"/SjycxCtrl/cxPzdata.do?KMCODE="+KMCODE+"&LSH="+LSH+"&guid="+new Date().getTime(),
 //           "fnServerData": retrieveData,
 
		  "ajax":{  
		            url:getRootPath()+"/SjycxCtrl/cxPznrdata.do?PZXH="+PZXH+"&LSH="+LSH+"&PZRQ="+PZRQ+"&SSSQ="+SSSQ+"&guid="+new Date().getTime(),
		            dataSrc:  
		                    function(data){  
		                      if(data.callbackCount==null){  
		                        data.callbackCount=0;  
		                      }  
		                      //抛出异常  
		                      if(data.sqlException){  
		                       alert(data.sqlException);  
		                      }  
		                      return data;             //自定义数据源，默认为data  
		                    },     //dataSrc相当于success，在datatable里面不能用success方法，会覆盖datatable内部回调方法  
		            type:"post" 
		          },  
            "columns" : $.parseJSON(datadef),
        
		    language: {
		        "sProcessing": "处理中...",
		        "sLengthMenu": "显示 _MENU_ 项结果",
		        "sZeroRecords": "没有匹配结果",
		        "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
		        "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
		        "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
		        "sInfoPostFix": "",
		        "sSearch": "搜索:",
		        "sUrl": "",
		        "sEmptyTable": "表中数据为空",
		        "sLoadingRecords": "载入中...",
		        "sInfoThousands": ",",
		        "oPaginate": {
		            "sFirst": "首页",
		            "sPrevious": "上页",
		            "sNext": "下页",
		            "sLast": "末页"
		        },
		        "oAria": {
		            "sSortAscending": ": 以升序排列此列",
		            "sSortDescending": ": 以降序排列此列"
		        }
		    }			
		});
	        //给按钮绑定点击事件
	        $("#table_id_example_button").click(function () {
	            var column1 = table.row('.selected').data().column1;
	            var column2 = table.row('.selected').data().column2;
	            alert("第一列内容："+column1 + "；第二列内容： " + column2);
	        });
		$('a.toggle-vis').on('click', function(e) {

			e.preventDefault();

			// Get the column API object

			var column = table.column($(this).attr('data-column'));

			// Toggle the visibility

			column.visible(!column.visible());

		});

	});

        function retrieveData(sSource, aoData, fnCallback) {
            $.ajax({
                //这个就是请求地址对应sAjaxSource
                url : sSource,                                
                //这个是把datatable的一些基本数据传给后台,比如起始位置,每页显示的行数
                data : {"aoData":JSON.stringify(aoData)},    
                type : 'POST',
                dataType : 'json',
                async : false,
                success : function(result) {
                    //把返回的数据传给这个方法就可以了,datatable会自动绑定数据的
                    fnCallback(result);                      
                },
                error : function(msg) {
                    alert("服务器发生错误请稍后再试!");
                }
            });
        }     

	
	function queryPzdata(){
	   var PZXH=$("#PZXH").val();
	   var PZRQ=$("#PZRQ").val();
	   var LSH=$("#LSH").val();
		    var dialog = bootbox.dialog({
			       message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
			       closeButton: false});		   
			$.ajax({
				type: "post",
				url: getRootPath()+"/SjycxCtrl/cxPznrdata.do?PZXH="+PZXH+"&LSH="+LSH+"&PZRQ="+PZRQ+"&guid="+new Date().getTime(),
				async : true,
//		    	data: submitData,
				data : {KMCODE:KMCODE,LSH:LSH},		    	
				dataType:'json',
				//beforeSend: validateData,
				cache: false,
				timeout : sys_timeout,
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					if (XMLHttpRequest.responseText.indexOf("script") != -1) {
						document.write(XMLHttpRequest.responseText);
					} else {
						if(XMLHttpRequest.responseText.msg!=""&&XMLHttpRequest.responseText.msg!=undefined&&XMLHttpRequest.responseText.msg!=null){
							Modal.sysAlert(responseText.msg);
						}						
					}
				},
				success : function(responseText, textStatus, XMLHttpRequest) {
					dialog.modal('hide');
                    loadTable(responseText);
				}
			});		   	
	}
	function loadTable(responseText){	
		for(var key in responseText){ //第一层循环取到各个list
		  if(key==0){
		   alert(JSON.stringify(responseText[key]));
		  }  
		 }
	}
	
var idTmr = ""; 
function killExcelProcess(appExcel_){ 
appExcel_.Quit(); 
appExcel_ = null; 
idTmr = window.setInterval("Cleanup();",1); 
} 

//导出到excel，参数tableid为JSP页面需要导出的table的id，需要更改IE的安全设置，ActiveX都打开，如果还是不能使用，再服务端运行“regsvr32 scrrun.dll” 
function exportToExcel(tableid,notitleandsearch){ 
try { 
clipboardData.setData('Text',''); 
var appExcel = new ActiveXObject("Excel.Application"); 

killExcelProcess(appExcel); 
appExcel.workbooks.add; 

//标题 
if (notitleandsearch==null||notitleandsearch==false){ 
var elTable = document.getElementById('div_title'); 
var oRangeRef = document.body.createTextRange(); 
oRangeRef.moveToElementText(elTable); 
oRangeRef.execCommand( "Copy" ); 
appExcel.ActiveSheet.Cells(1,3).select(); 
appExcel.ActiveSheet.Paste(); 

clipboardData.setData('Text',''); 
appExcel.ActiveSheet.Cells(2,1).select(); 
appExcel.ActiveSheet.Paste(); 
} 

var elTable1 = document.getElementById(tableid); 
var oRangeRef1 = document.body.createTextRange(); 
oRangeRef1.moveToElementText(elTable1); 
oRangeRef1.execCommand( "Copy" ); 

appExcel.WorkSheets(1).Activate; 
if (notitleandsearch==null||notitleandsearch==false){ 
appExcel.ActiveSheet.Cells(3,1).select(); 
}else{ 
appExcel.ActiveSheet.Cells(1,1).select(); 
} 
appExcel.WorkSheets(1).Activate; 
appExcel.ActiveSheet.Paste(); 
appExcel.Visible = true; 

} catch(e) { 
alert("请确认IE安全设置，ActiveX都启用！"); 
return false; 
} 
clipboardData.setData('text',''); 
} 	
function openPzmx(e){
var LSH=$("#LSH").val();
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑菜单";
		 diag.URL = getRootPath()+"/SjycxCtrl/initPznr.do?PZXH="+e+"&LSH="+LSH+"&guid="+new Date().getTime();
	     diag.Width = 900;
	     diag.Height = 400;
		 diag.CancelEvent = function(){ //关闭事件
			    //setTimeout("location.reload()",100);
			/** if(diag.innerFrame.contentWindow.document.getElementById('s_jfyeZ').value!=""){
				 $(e).parent().parent().find("input[name='s_jfye']").val(diag.innerFrame.contentWindow.document.getElementById('s_jfyeZ').value);
				 $(e).parent().parent().find("input[name='s_dfye']").val(diag.innerFrame.contentWindow.document.getElementById('s_dfyeZ').value);
				 $(e).parent().parent().find("input[name='b_jffs']").val(diag.innerFrame.contentWindow.document.getElementById('b_jffsZ').value);
				 $(e).parent().parent().find("input[name='b_dffs']").val(diag.innerFrame.contentWindow.document.getElementById('b_dffsZ').value);
				 $(e).parent().parent().find("input[name='e_jfye']").val(diag.innerFrame.contentWindow.document.getElementById('e_jfyeZ').value);
				 $(e).parent().parent().find("input[name='e_dfye']").val(diag.innerFrame.contentWindow.document.getElementById('e_dfyeZ').value);
			 }		*/	    
			 diag.close();
		 };
		 diag.show();
}
</script>
</head>

<body>
	<div class="container-fluid">
		<div id="page-content" class="clearfix">
			<div class="page-header" style="margin: 4px 0 2px;padding-bottom: 1px;">
				<h4 style="margin-top: 0px;text-align:center;font-weight:bold;">
					记-${pd.PZXH}
				</h4>
				<h5 style="margin-top: 0px;text-align:center">
					凭证日期：${pd.PZRQ_FORMATE}
				</h5>				
			</div>
			<div>

				<div class="row-fluid" style="display:none">
						   <input type="text" style="display:none" value="${pd.LSH}" id="LSH"/>
						    <input type="text" style="display:none" value="${pd.PZXH}" id="PZXH"/>
						    <input type="text" style="display:none" value="${pd.PZRQ}" id="PZRQ"/>
						    <input type="text" style="display:none" value="${pd.SSSQ}" id="SSSQ"/>
						     <input type="text" style="display:none" value='${pzdefineobj}' id="pzdefineobj"/>
				</div>

   
				<div class="row-fluid">
				 <div style="width: 99%;height: 260px;border: 1px solid blue;box-sizing:border-box;">	
				 <div style="overflow:scroll; width:100%; height:260px;" >			
					<table width="100%" style="border-collapse: collapse" align="center"
						id="tab1" cellpadding="1" cellspacing="1" border="1"
						bordercolor="#000000">
						<thead>
							<tr height="25px">
								<td width="30%" align="center">
									摘要
								</td>
								<td width="30%" align="center">
									科目名称
								</td>
								<td align="center">
									借方发生
								</td>
								<td align="center">
									贷方发生
								</td>								
							</tr>
						</thead>
					    <tbody>
					    <c:forEach items="${pzdataList}" var="pzdata" varStatus="vs">
							<tr height="20px">
								<td align="center">
								   <fieldset>
						                     <input type="text"  class="form-control" id="XSSPSR" value="${pzdata.ZY}">
						           </fieldset>
								</td>
								<td>
								   <fieldset>
						                     <input type="text"  class="form-control" id="XSSPSR" value="${pzdata.KMNAME}">
						           </fieldset>
								</td>
								<td>
								   <fieldset>
						                     <input type="text"  class="form-control" id="XSSPSR" value="${pzdata.JFYE}">
						           </fieldset>
								</td>
								<td>
								   <fieldset>
						                     <input type="text"  class="form-control" id="XSSPSR" value="${pzdata.DFYE}">
						           </fieldset>
								</td>
							</tr>
						</c:forEach>					    
					    </tbody>						
					</table>
					</div>
					 </div>
				</div>
				<div class="row-fluid">
					<div>
						显示选项: 				
						<c:forEach items="${pzdefineList}" var="pzdefine" varStatus="vs">
						     ${pzdefine.SJXMC}<input type="checkbox"/>				   					  
						</c:forEach>
					</div>		
				</div>		
			</div>
		</div>
</body>
</html>
