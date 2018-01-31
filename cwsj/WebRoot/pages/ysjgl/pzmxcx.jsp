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
	   var KMCODE=$("#KMCODE").val();
	   $("#kmSelect").val(KMCODE);
	   var LSH=$("#LSH").val();
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
		            url:getRootPath()+"/SjycxCtrl/cxPzdata.do?KMCODE="+KMCODE+"&LSH="+LSH+"&SSSQ="+SSSQ+"&guid="+new Date().getTime(),
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
		setHjxx(LSH,KMCODE,SSSQ,"");
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
	   var KMCODE=$("#KMCODE").val();
	   var LSH=$("#LSH").val();
		    var dialog = bootbox.dialog({
			       message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>',
			       closeButton: false});		   
			$.ajax({
				type: "post",
				url: getRootPath()+"/SjycxCtrl/cxPznrdata.do?KMCODE="+KMCODE+"&LSH="+LSH+"&guid="+new Date().getTime(),
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
function exportToExcel1(tableid,notitleandsearch){ 
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

function exportToExcel(){
   var LSH=$("#LSH").val();
   var KMCODE=$("#KMCODE").val();
   var SSSQ=$("#SSSQ").val();
   window.location.href='<%=basePath%>SjycxCtrl/excel.do?LSH='+LSH+'&KMCODE='+KMCODE+'&SSSQ='+SSSQ;
}
function openPzmx(pzxh,pzrq){
var LSH=$("#LSH").val();
var SSSQ=$("#SSSQ").val();
	   	 var diag = new top.Dialog();
		 diag.Drag=true;
		 diag.Title ="编辑菜单";
		 diag.URL = getRootPath()+"/SjycxCtrl/initPznr.do?PZXH="+pzxh+"&LSH="+LSH+"&PZRQ="+pzrq+"&SSSQ="+SSSQ+"&guid="+new Date().getTime();
	     diag.Width = 600;
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
function selectYf(){
	var KMCODE=$("#KMCODE").val();
	var LSH=$("#LSH").val();
    var SSSQ=$("#SSSQ").val();
    var YF=$("#yfSelect").val();
    var table = $('#example').DataTable();
    if(YF==null||YF==""){
       table.columns(0).search(SSSQ).draw();
    }else{
       table.columns(0).search(SSSQ+YF).draw();
    }   
    setHjxx(LSH,KMCODE,SSSQ,YF);	
}
function setHjxx(LSH,KMCODE,SSSQ,YF){
	$.ajax({
		type: "post",
		url: getRootPath()+"/SjycxCtrl/cxPzdatahz.do?guid="+new Date().getTime(),
		async : false,
		data : {KMCODE:KMCODE,LSH:LSH,SSSQ:SSSQ,YF:YF},		    	
		dataType:'text',
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
            $("#retmsg").text(responseText);
		}
	});	
}
function selectKm(){
	   var KMCODE=$("#kmSelect").val();
	   $("#KMCODE").val(KMCODE);
	   var LSH=$("#LSH").val();
	   var SSSQ=$("#SSSQ").val();
	   var datadef=$("#pzdefineobj").val();
       var dttable = $('#example').dataTable();
        dttable.fnClearTable(); //清空一下table
        dttable.fnDestroy(); //还原初始化了的datatable	   
		var table = $('#example').DataTable({
		     "bFilter": false,
		     "scrollY" : "300px",
		     "scrollX": true,
			"paging" : true,
			
			"searching": true,
			
			"processing": true,
 
		  "ajax":{  
		            url:getRootPath()+"/SjycxCtrl/cxPzdata.do?KMCODE="+KMCODE+"&LSH="+LSH+"&SSSQ="+SSSQ+"&guid="+new Date().getTime(),
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
		setHjxx(LSH,KMCODE,SSSQ,"");
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
}
</script>
</head>

<body>
	<div class="container-fluid">
		<div id="page-content" class="clearfix">
			<div class="page-header" style="margin: 4px 0 2px;padding-bottom: 1px;">
				<h3 style="margin-top: 0px;">
					源数据管理 <small><i class="icon-double-angle-right"></i> 总科目明细账</small>
					<ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							<button type="button" class="btn  btn-primary" onclick="query();">查询</button>
							<button type="button" class="btn  btn-primary "
								onclick="javascript:exportToExcel()">导出</button>
						</div>
					</ul>
				</h3>
			</div>
			<div>
			  <!-- 
					<div>
					切换列: 
					<c:forEach items="${pzdefineList}" var="pzdefine" varStatus="vs">
					   <c:if test="${vs.index==0}">
					     <a class="toggle-vis" data-column="${vs.index}">${pzdefine.SJXMC}</a>
					   </c:if>
					   <c:if test="${vs.index!=0}">
					      -<a class="toggle-vis" data-column="${vs.index}">${pzdefine.SJXMC}</a>
					   </c:if>					   					  
					</c:forEach>
				</div>		  
			   -->


				<div class="row-fluid" >
					<div class="widget-header widget-header-small">
						<h5 class="lighter">查询条件</h5>
						<span class="widget-toolbar"> <a href="#"
							data-action="collapse"><i class="icon-chevron-up"></i></a>
						</span>
					</div>
							 <input type="text" style="display:none" value="${pd.LSH}" id="LSH"/>
						    <input type="text" style="display:none" value="${pd.KMCODE}" id="KMCODE"/>
						    <input type="text" style="display:none" value="${pd.SSSQ}" id="SSSQ"/>
						     <input type="text" style="display:none" value='${pzdefineobj}' id="pzdefineobj"/>
					<div class="widget-body">
						<div class="widget-main">
							<form class="form-horizontal" role="form" id="cxtjform">
								<fieldset>
									<div class="form-group">
									
										<label class="col-sm-1 control-label" for="ds_host">月份</label>
									<div class="col-sm-3">
										<select id="yfSelect" onChange="selectYf()"  class="form-control" title="月份">
										   <option value="">全部</option>
										   <option value="01">1月</option>
										   <option value="02">2月</option>
										   <option value="03">3月</option>
										   <option value="04">4月</option>
										   <option value="05">5月</option>
										   <option value="06">6月</option>
										   <option value="07">7月</option>
										   <option value="08">8月</option>
										   <option value="09">9月</option>
										   <option value="10">10月</option>
										   <option value="11">11月</option>
										   <option value="12">12月</option>
										</select>
									</div>
									<label for="disabledSelect" class="col-sm-1 control-label">科目</label>
									<div class="col-sm-3">
										<select id="kmSelect" onChange="selectKm()" class="form-control" title="科目">
										  <c:forEach items="${kmSelect}" var="kmSjx" varStatus="vs">
										   <option value="${kmSjx.KMCODE}" >${kmSjx.KMCODE}-${kmSjx.KMNAME}</option>
										  </c:forEach>
										</select>
									</div>							
									</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>


				<div class="row-fluid">
					<table id="example" class="display nowrap"	cellspacing="0"
						width="100%">
						<thead>
							<tr>
								 <th>凭证日期</th>
								 <th>凭证号数</th>
								  <th>摘要</th>
								  <th>借方</th>
								  <th>贷方</th>
								  <th>方向</th>
<!-- 
							 <c:forEach items="${pzdefineList}" var="pzdefine" varStatus="vs">
							    <th>${pzdefine.SJXMC}</th>
							 </c:forEach>
 -->

							</tr>
						</thead>


						 <!-- 
						 <tbody id="example_tbody">
						  <c:forEach items="${pzdataList}" var="pzdata" varStatus="vs">
						    <tr>
						      <c:forEach items="${pzdefineList}" var="pzdefine" varStatus="vs2">
						      
						        <td>vs[${pzdefine.SJXDM}]</td>
						      </c:forEach>
						    </tr>
						  </c:forEach>	
						  </tbody>					 
						  -->


						
					</table>
					<p><font color="red" id="retmsg"></font></p>
				</div>
			</div>
		</div>
</body>
</html>
