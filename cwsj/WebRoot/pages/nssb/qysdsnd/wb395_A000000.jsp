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
	
	<title>企业基础信息表</title>
</head>
<body>
		

	<div class="page-content">
		<div class="col-xs-12">

		 <div class="row page-header text-center">
            <strong class="sb-title3">企业基础信息表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A000000')">自动取数</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">确定</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>
          </div>		

       <form class="form-horizontal" role="form" id="A000000_1form">
       	<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="qysdsNb_JbxxTable1">	
			<tr>
				<td>
					100基本信息
				</td>
			<td colspan="3">					       
			        &nbsp;&nbsp;      
					<input name=SBLX type="radio" value="1"/><span class="lbl"> 正常申报</span>	 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="SBLX" type="radio" value="2"/><span class="lbl">更正申报</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="SBLX" type="radio" value="3"/><span class="lbl">补充申报</span>
				</td>
			</tr>
			<tr>
				<td>
					101汇总纳税企业
				</td>
				<td colspan="3">
					&nbsp;&nbsp;
					<input type="radio" name="HZNSQYLX" value="1" ><span class="lbl">是（总机构）</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="HZNSQYLX" value="2" ><span class="lbl">按比例缴纳总机构）</span>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="HZNSQYLX" value="3" ><span class="lbl">否</span>
				</td>
			</tr>
			<tr>
				<td width="14%">
					102注册资本（万元）
				</td>
				<td width="25%"> 
				    <fieldset>
                           <input type="text"  class="form-control" id="ZCZB">
                    </fieldset>
				</td>
				<td width="25%">
					103所属行业明细代码
				</td>
				<td>
				    <fieldset>
                           <input type="text"  class="form-control" id="HYMC" readonly="readonly">
                    </fieldset>
				</td>
			</tr>
		</table>
		<div style="width: 100%" align="center">
			<p align="left">
				<font style="font-size: 16px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>以下根据实际情况逐项填报，
						<input type="radio" disabled="disabled">
						<span class="lbl">只能选择一项</span>&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
							disabled="disabled"> <span class="lbl">可多选</span></b> </font>
			</p>
		</div>
		<table width="100%" style="border-collapse: collapse" align="center"
			cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
			<tr>
				<td width="14%">
					106境外中资控股居民企业
				</td>
				<td width="25%">
				&nbsp;&nbsp;
				<input type="radio" name="SFJWZZKK" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp; 
                <input type="radio" name="SFJWZZKK" value="0"/><span class="lbl">否</span>
				</td>
				<td width="25%">
					107从事国家限制和禁止行业
				</td>
				<td>
				&nbsp;&nbsp;
				<input type="radio" name="FXZHY" value="1"/><span class="lbl">是</span>	
				&nbsp;&nbsp;&nbsp;&nbsp; 
			    <input type="radio" name="FXZHY" value="0"/><span class="lbl">否</span>
					<B>(</B>非限制和非禁止行业
					<B>)</B>
				</td>
			</tr>
			<tr>
				<td>
					104从业人数
				</td>
				<td>
				    <fieldset>
                           <input type="text"  class="form-control" id="CYRS">
                    </fieldset>         
				</td>
				<td>
					108存在境外关联交易
				</td>
				<td>
				    &nbsp;&nbsp;
				<input type="radio" name="SFJWGLJY" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			    <input type="radio" name="SFJWGLJY" value="0"/><span class="lbl"> 否</span>	
				</td>
			</tr>

			<tr>
				<td>
					105资产总额（
					<b>万元</b>）
				</td>
				<td style="background-color: #CAD4EF">
				    <fieldset>
                           <input type="text"  class="form-control" id="ZCZE">
                    </fieldset>   
					<font color='red' size="4">万元</font>
				</td>
				<td>
					109上市公司
				</td>
				<td>
				    &nbsp;&nbsp;
				<input type="radio" name="SFSSGS" value="1"/><span class="lbl"> 是（境内）</span>
					&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="SFSSGS" value="2"/><span class="lbl"> 境外</span>
					&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="SFSSGS" value="3"/><span class="lbl"> 否</span>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					200主要会计政策和估计
				</td>
			</tr>
			<tr>
				<td>
					201适用的会计准则或会计制度
				</td>
				<td colspan="3">
				   <fieldset>
						 <select id="KJZD"  class="form-control" title="适用的会计准则或会计制度"></select>	
                   </fieldset>
				</td>
			</tr>
			<tr>
				<td>
					202会计档案的存放地
				</td>
				<td>
				    <fieldset>
                           <input type="text"  class="form-control" id="DACFD">
                    </fieldset> 						
				</td>
				<td>
					203会计核算软件
				</td>
				<td>
				    <fieldset>
                           <input type="text"  class="form-control" id="KJHSRJ">
                    </fieldset>				                  
				</td>
			</tr>
			<tr>
				<td>
					204记账本位币
				</td>
				<td>				
				    &nbsp;&nbsp;
					<input type="radio" name="JZBWB" value="1"/><span class="lbl">人民币</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="JZBWB" value="0"/><span class="lbl">其他</span>	
				</td>
				<td>
					205会计政策和估计是否发生变化
				</td>
				<td>
				    &nbsp;&nbsp;
					<input type="radio" name="KJZCSFBH" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="KJZCSFBH" value="0"/><span class="lbl">否</span>		
				</td>
			</tr>
			<tr>
				<td>
					206固定资产折旧方法
				</td>
				<td colspan="3">
				  &nbsp;&nbsp;
				  <input type="checkbox" name="GDZCZJFF" value="01'"><span class="lbl">年限平均法</span>
				  &nbsp;&nbsp;
				  <input type="checkbox" name="GDZCZJFF" value="02"><span class="lbl">工作量法</span>	
				  &nbsp;&nbsp;
				  <input type="checkbox" name="GDZCZJFF" value="03"><span class="lbl">双倍余额递减法</span>
			      &nbsp;&nbsp;
			      <input type="checkbox" name="GDZCZJFF" value="04"><span class="lbl">年数总和法</span> 
				  &nbsp;&nbsp;
				  <input type="checkbox" name="GDZCZJFF" value="99"><span class="lbl">其他</span>
      		    </td>
			</tr>
			<tr>
				<td>
					207存货成本计价方法
				</td>
				<td colspan="3">
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="01"><span class="lbl">先进先出法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="02"><span class="lbl">移动加权平均法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="03"><span class="lbl">月末一次加权平均法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="04"><span class="lbl">个别计价法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="05"><span class="lbl">毛利率法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="06"><span class="lbl">零售价法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="07"><span class="lbl">计划成本法</span>
                    &nbsp;&nbsp;
                    <input type="checkbox" name="CHCBJJFF" value="99"><span class="lbl">其他</span>
				</td>
			</tr>
			<tr>
				<td>
					208坏账损失核算方法
				</td>
				<td colspan="3">		
				    &nbsp;&nbsp;		
				 	<input type="radio" name="HZSSHSFF" value="1"/><span class="lbl">备抵法</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="HZSSHSFF" value="2"/><span class="lbl">直接核销法</span>				
				</td>
			</tr>
			<tr>
				<td>
					209所得税计算方法
				</td>
				<td colspan="3">
				    &nbsp;&nbsp;
				   	<input type="radio" name="SDSJSFF" value="1"/><span class="lbl">应付税款法</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="SDSJSFF" value="2"/><span class="lbl">资产负债表债务法</span>	
				</td>
			</tr>
			<tr>
				<td align="center" colspan="4">
					300企业主要股东及对外投资情况
				</td>
                    <fieldset>
                           <input type="text" class="form-control" id="PZXH1" style="display:none">
                    <fieldset>  				
			</tr>
			</table>
	</form>			
								
	   <table width="100%" style="border-collapse: collapse" id="listA000000_zygd_table" align="center" cellspacing="1" cellpadding="1" border="1" bordercolor="#000000">
					  <thead>	
					  	<tr>
							<td colspan="8" align="center">
								<h5 class="lighter">301企业主要股东（前5位）</h5>
							</td>					  	
					  	</tr>					  
						<tr>
							<td align="center" width="5%">
								请&nbsp;选&nbsp;择
							</td>					
							<td align="center" width="5%">
								行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次
							</td>												
							<td align="center"">
								股东名称
							</td>
							<td align="center" width="15%">
								证件种类
							</td>
							<td align="center" width="20%">
								证件号码
							</td>
							<td align="center" width="15%">
								经济性质
							</td>
							<td align="center" width="10%">
								投资比例
							</td>
							<td align="center" width="15%">
								国籍（注册地址）
							</td>
						</tr>
					  </thead>
                   <input type="text" style="display:none" value="${PZXH}" id="PZXH"/>		
	   </table> 	
	
       <div class="row-fluid">       
         <div class="span">  	
	       <div id="listA000000_zygd" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="XZ" type="checkbox" delete="true" caption="请选择"></div>	          
	          <div name="MXXH" type="text" caption="000000"></div>	       
	          <div name="GDMC" type="text" caption="000000"></div>
	          <div name="ZJZL" type="select" caption="000000"></div>
	          <div name="ZJHM" type="text" caption="000000"></div>
	          <div name="DJZCLX_DM" type="select" caption="000000"></div>
	          <div name="TZBL" type="text" caption="000000"></div>	          
	          <div name="GJ" type="select" caption="000000"></div>
	       </div>		
	       
       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA000000_zygd')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA000000_zygd');">删除</button>
		   </div>		       
	       				
         </div> 		   	       
       </div>							
	
	   <table width="100%" style="border-collapse: collapse" id="listA000000_dwtz_table" align="center" cellspacing="1" cellpadding="1" border="1" bordercolor="#000000">
					  <thead>			
					  	<tr>
							<td colspan="8" align="center">
								<h5 class="lighter">302对外投资（前5位）</h5>
							</td>					  	
					  	</tr>	
						<tr>
							<td align="center" width="5%">
								请&nbsp;选&nbsp;择
							</td>					
							<td align="center" width="5%">
								行&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;次
							</td>							
							<td align="center">
								被投资者名称
							</td>
							<td align="center" width="20%">
								纳税人识别号
							</td>
							<td align="center" width="15%">
								经济性质
							</td>
							<td align="center" width="10%">
								投资比例
							</td>
							<td align="center" width="15%">
								投资金额
							</td>
							<td align="center" width="15%">
								国籍（注册地址）
							</td>
						</tr>
					  </thead>						
	   </table>						
       <div class="row-fluid">       
         <div class="span">  	
	       <div id="listA000000_dwtz" type="DataGrid" class="DataGrid" css="table table-striped table-bordered table-hover" userdefine="true">
	          <div name="XZ" type="checkbox" delete="true" caption="请选择"></div>	          
	          <div name="MXXH" type="text" caption="000000"></div>	   	       
	          <div name="BTZZMC" type="text" caption="000000"></div>
	          <div name="NSRSBH" type="text" caption="000000"></div>
	          <div name="DJZCLX_DM" type="select" caption="000000"></div>
	          <div name="TZBL" type="text" caption="000000"></div>
	          <div name="TZJE" type="text" caption="000000"></div>	          
	          <div name="GJ" type="select" caption="000000"></div>
	       </div>	
	       
       	   <div class="btn-group btn-group-xs">
				<button type="button" class="btn  btn-primary" onclick="addGridRow('listA000000_dwtz')">新增</button>			    
				<button type="button" class="btn  btn-primary " onclick="deleteGridRow('listA000000_dwtz');">删除</button>
		   </div>	       
	       					
         </div> 		   	       
       </div>			
       
       <form class="form-horizontal" role="form" id="A000000_2form">
       	<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">	
			<tr>
				<td colspan="4" align="center">
					400是否发生以下需要填报附表的项目
				</td>
			</tr>
			<tr>
				<td>
					417是否存在关联关系
				</td>
				<td>		
				    &nbsp;&nbsp;		
				 	<input type="radio" name="SFGLQY" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="SFGLQY" value="0"/><span class="lbl">否</span>				
				</td>
					
				<td>
					418是否存在关联交易
				</td>
				<td>		
				    &nbsp;&nbsp;		
				 	<input type="radio" name="SFGLJY" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="SFGLJY" value="0"/><span class="lbl">否</span>				
				</td>
			</tr>
			<tr>
				<td>
					419是否受控外国
				</td>
				<td>		
				    &nbsp;&nbsp;		
				 	<input type="radio" name="SFSKWG" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="SFSKWG" value="0"/><span class="lbl">否</span>				
				</td>

				<td>
					420是否存在对外支付款项情况
				</td>
				<td>		
				    &nbsp;&nbsp;		
				 	<input type="radio" name="SFDWZF" value="1"/><span class="lbl">是</span>	
					&nbsp;&nbsp;&nbsp;&nbsp;
			        <input type="radio" name="SFDWZF" value="0"/><span class="lbl">否</span>				
				</td>				

			</tr>
		</table>
		  <div id="A000000_GLQYDIV" style='height: 550; width: 690; margin: 0px;' class="x-hidden">
			<br />
			<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000" id="glqkTab">
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;《中华人民共和国企业所得税法》第四十三条：企业向税务机关报送年度企业所得税纳税申报表时，应当就其与关联方之间的业务往来，附送年度关联业务往来报告表。
						<br>
						&nbsp;&nbsp;&nbsp;《特别纳税调整实施办法（试行）》第105条：企业未按本办法的规定向税务机关报送企业年度关联业务往来报告表，或未保存同期资料或其他相关资料的，依照征管法第六十条和第六十二条的规定处理。
					</td>
				</tr>
				<tr style="height: 20px">
					<td align="center" width="50%">
						是否存在关联关系
					</td>
					<td>
				        &nbsp;&nbsp;		
				 	    <input type="radio" name="GLFLAG" value="1"/><span class="lbl">是</span>	
					    &nbsp;&nbsp;&nbsp;&nbsp;
			            <input type="radio" name="GLFLAG" value="0"/><span class="lbl">否</span>	
					</td>
				</tr>
				<tr style="height: 20px">
					<td align="center">
						是否存在关联交易
					</td>
					<td>
				        &nbsp;&nbsp;		
				 	    <input type="radio" name="SFGLJY2" value="1"/><span class="lbl">是</span>	
					    &nbsp;&nbsp;&nbsp;&nbsp;
			            <input type="radio" name="SFGLJY2" value="0"/><span class="lbl">否</span>				            				
					</td>
				</tr>
				<tr style="height: 20px">
					<td align="center">
						是否存在对外支付款项情况
					</td>
					<td>
				        &nbsp;&nbsp;		
				 	    <input type="radio" name="ZFFLAG" value="1"/><span class="lbl">是</span>	
					    &nbsp;&nbsp;&nbsp;&nbsp;
			            <input type="radio" name="ZFFLAG" value="0"/><span class="lbl">否</span>												
					</td>
				</tr>
				<tr style="height: 20px">
					<td align="center">
						中国居民股东是否在纳税年度任何一天单层直接或多层间接单一持有外国企业10%（含）以上有表决权股份，且共同持有该外国企业50%（含）以上股份
					</td>
					<td>
				        &nbsp;&nbsp;		
				 	    <input type="radio" name="SKWGBJ" value="1"/><span class="lbl">是</span>	
					    &nbsp;&nbsp;&nbsp;&nbsp;
			            <input type="radio" name="SKWGBJ" value="0"/><span class="lbl">否</span>		
                        <fieldset>
                            <input type="text" class="form-control" id="PZXH2" style="display:none">
                        <fieldset>  			            				
					</td>
				</tr>

			</table>
		  </div>
       </form>		  
		</div>
	</div>

	       	
     <script type="text/javascript"> 
     function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A000000_1form");
          $w1.pushForm("A000000_2form");
          
          var PZXH=$("#PZXH").val();
          $w1.pushData("PZXH",PZXH);
          $w1.pushGrid("listA000000_zygd");   
          $w1.pushGrid("listA000000_dwtz"); 
                 
          $w1.ajax("/wb395A000000Ctrl/update");    
     }
     
    </script>       
                                

</body>

</html>
