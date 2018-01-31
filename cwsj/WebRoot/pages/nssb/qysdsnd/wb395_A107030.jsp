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
	 
	<title>抵扣应纳税所得额明细表</title>
</head>
<body>

    <form class="form-horizontal" role="form" id="A107030form">

 	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">抵扣应纳税所得额明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107030')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>
		
	<table width="70%" style="border-collapse: collapse" align="center"
		cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="tab1">
		<tr align="center">
			<td width="10%">
				行 次
			</td>
			<td width="70%">
				项 目
			</td>
			<td>
				金 额
			</td>
		</tr>
		<tr>
		    <td align="left" colspan="3">
		      一、创业投资企业直接投资于未上市中小高新企业按投资额一定比例抵扣应纳税所得额
		    </td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				本年新增的符合条件的股权投资额
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNXZFHTJGQTZE">
               </fieldset>     
            </td>
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				税收规定的抵扣率
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="SSGDDKL" value="70%" >
               </fieldset> 			     
            </td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				本年新增的可抵扣的股权投资额（1×2）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNXZKDKGQTZE">
               </fieldset>      
            </td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				以前年度结转的尚未抵扣的股权投资余额
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="YQNDJZSWDKGQTZYE">
               </fieldset>      
            </td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				本年可抵扣的股权投资额（3+4）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNKDKGQTZE">
               </fieldset>     
            </td>
		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				本年可用于抵扣的应纳税所得额
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNKYYDKYNSSDE">
               </fieldset>      
            </td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
				本年实际抵扣应纳税所得额（5≤6，本行=5行；5＞6，本行=6行）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNSJDKYNSSDE">
               </fieldset>     
            </td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				结转以后年度抵扣的股权投资余额（5＞6，本行=5-7行；5≤6，本行=0）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="JZYHNDDKGQTZYE">
               </fieldset>     
            </td>
		</tr>
		<tr>
		    <td align="left" colspan="3">
		      二、通过有限合伙制创业投资企业投资未上市中小高新企业按一定比例抵扣分得的应纳税所得额
		    </td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				本年从有限合伙创投企业应分得的应纳税所得额
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNHHYFDYNSSDE">
               </fieldset> 
            </td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				本年新增的可抵扣投资额
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNXZKDKTZE">
               </fieldset> 
            </td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				以前年度结转的可抵扣投资额余额
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="YQNDZJKDKTZEYE">
               </fieldset>   
            </td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				本年可抵扣投资额（10行+11行）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNKDKTZE">
               </fieldset>   
            </td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				本年实际抵扣应分得的应纳税所得额（9行≤12行，本行=9行；9行＞12行，本行=12行）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="BNSJDKYFDYNSSDE">
               </fieldset>       
            </td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				结转以后年度抵扣的投资额余额（9行≤12行，本行=12行-9行；9行＞12行，本行=0）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="ZJNDDKTZYE">
               </fieldset>    
            </td>
		</tr>
		<tr>
		    <td align="left" colspan="3">
		      三、抵扣应纳税所得额合计
		    </td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				合计：（7行+13行）
			</td>
			<td>
			   <fieldset>
                    <input type="text"  class="form-control" id="HJJE">
               </fieldset>   
               <fieldset>
                    <input type="text" class="form-control" id="PZXH" style="display:none">
               <fieldset>               
            </td>
		</tr>
	</table>

	</div></div>
	</form>
	<input type="text" style="display:none" value="A107030" id="FBPZZLDM"/>
	
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A107030form");
          $w1.ajax("/wb395A107030Ctrl/update",callback);    
     }
     
    </script>
</body>

	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107030.js?<%=System.currentTimeMillis()%>"></script>
</html>
