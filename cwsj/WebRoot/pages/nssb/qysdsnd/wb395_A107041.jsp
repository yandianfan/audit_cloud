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
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>


	<title>高新技术企业优惠情况及明细表</title>
</head>
<body>
    <form class="form-horizontal" role="form" id="A107041form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">高新技术企业优惠情况及明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107041')">自动取数</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	

		<table width="85%" style="border-collapse: collapse" align="center"
			cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
			<tr align="center">
				<td>
					行 次
				</td>
				<td colspan="4">
					基本信息
				</td>
			</tr>
			<tr>
				<td align="center" width="5%">
					1
				</td>
				<td width="20%" align="center">
					高新技术企业证书编号
				</td>
				<td width="20%">
			            <fieldset>
                            <input type="text"  class="form-control" id="GXQYZSBH">
                        </fieldset> 	
				</td>
				<td width="20%" align="center">
					高新技术企业证书取得时间
				</td>
				<td width="20%">
                    <input type="text" class="form-control date" format="yyyy-mm-dd" css="width:99%"  readonly="readonly" id="GXJSQYZSQDSJ">
				</td>
			</tr>
			<tr>
				<td align="center" rowspan="3">
					2
				</td>
				<td rowspan="3" width="20%">
					对企业主要产品（服务）发挥核心支持作用的技术所属范围
				</td>	
				<td colspan="3" align="center">
					国家重点支持的高新技术领域
				</td>						
			</tr>
			
			<tr>
				<td align="center">
					一级领域
				</td>
				<td align="center">
					二级领域
				</td>
				<td align="center">
					三级领域
				</td>						
			</tr>
						
			<tr>
				<td>
                    <input type="text"  class="form-control" id="GXJSLY_YJLY">
				</td>
				<td>
                    <input type="text"  class="form-control" id="GXJSLY_EJLY">
				</td>
				<td>
                    <input type="text"  class="form-control" id="GXJSLY_SJLY">
				</td>
			</tr>				
		</table>
		
		<table id="tab1" width="85%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
			<tr>
				<td width="5%" align="center">
					3
				</td>
				<td width="80%" colspan="6" align="center">
					关键指标情况
				</td>
			</tr>
			<tr>
				<td width="5%" align="center">
					4
				</td>
				<td width="8%" rowspan="7" align="center">
					收入指标
				</td>
				<td width="62%" colspan="4">
					一、本年高新技术产品（服务）收入（6+7）
				</td>
				<td width="10%">
			            <fieldset>
                            <input type="text"  class="form-control" id="BNGXJSSR">
                        </fieldset>
				</td>						
			</tr>		
			<tr>
				<td align="center">
					5
				</td>
				<td colspan="4">
					&nbsp;&nbsp;&nbsp;&nbsp; 其中：产品（服务）收入
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="CPFWSR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td colspan="4">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 技术性收入
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JSXSR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					7
				</td>
				<td colspan="4">
					二、本年企业总收入(8-9)
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNQYSR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					8
				</td>
				<td colspan="4">
					&nbsp;&nbsp;&nbsp;&nbsp; 其中：收入总额
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNQYSR_QZSRZE">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td colspan="4">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不征税收入
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNQYSR_BZSSR">
                        </fieldset> 
				</td>
			</tr>					
			<tr>
				<td align="center">
					10
				</td>
				<td colspan="4">
					三、本年高新技术产品（服务）收入占企业总收入的比例（5÷8）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNGXFWSRBL">
                        </fieldset> 
				</td>
			</tr>			
					
			<tr>
				<td align="center">
					11
				</td>
				<td rowspan="3" align="center" width="8%">
					人员指标
				</td>
				<td colspan="4">
					四、本年科技人员数
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNJYDZXLRS">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td colspan="4">
					五、本年职工总数
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNZGZS">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					13
				</td>
				<td colspan="4">
					六、本年科技人员占企业当年职工总数的比例（11÷12）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNYFRYZZSB">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center" rowspan="2" width="5%">
					14
				</td>
				<td rowspan="18" align="center" width="8%">
					 研发费用指标
				</td>					
				<td rowspan="2" align="center" width="32%">
					高新研发费用归集年度
				</td>
				<td align="center" width="10%">
					本年度
				</td>				
				<td align="center" width="10%">
					前一年度
				</td>					
				<td align="center" width="10%">
					前二年度
				</td>					
				<td align="center" width="10%">
					合计
				</td>							
			</tr>	
			
			<tr>
				<td align="center" width="10%">
					1
				</td>				
				<td align="center" width="10%">
					2
				</td>					
				<td align="center" width="10%">
					3
				</td>					
				<td align="center" width="10%">
					4
				</td>							
			</tr>	
	
					
			<tr>			
				<td align="center">
					15
				</td>
				<td>
					七、归集的高新研发费用金额（16+25）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNGJYFJE">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYNGJYFJE">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QENGJYFJE">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="HJGJYFJE">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					16
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp; （一）内部研究开发投入（17+18+19+20+21+22+24）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNNBYJKFTR">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYNNBYJKFTR">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QENNBYJKFTR">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="HJNBYJKFTR">
                        </fieldset> 
				</td>
				
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.人员人工费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNRYRG">
                        </fieldset> 
				</td>       
				<td>				                 
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNRYRG">
                        </fieldset>
				</td>                        
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENRYRG">
                        </fieldset>
 				</td>                       
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJRYRG">
                        </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.直接投入费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNZJTR">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYNZJTR">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QENZJTR">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="HJZJTR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.折旧费用与长期待摊费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNZJFYTX">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYNZJFYTX">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QENZJFYTX">
                        </fieldset> 
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="HJZJFYTX">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.无形资产摊销费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNWXZCTX">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNWXZCTX">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENWXZCTX">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJWXZCTX">
                        </fieldset>
				</td>
			</tr>					
			<tr>
				<td align="center">
					21
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.设计费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNSJFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNSJFY">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENSJFY">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJSJFY">
                        </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.装备调试费与实验费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNZBTSF">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNZBTSF">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENZBTSF">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJZBTSF">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					23
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7.其他费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNQTFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNQTFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENQTFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJQTFY">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					24
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：可计入研发费用的其他费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNQZJRYFQT">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNQZJRYFQT">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENQZJRYFQT">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJQZJRYFQT">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					25
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（二）委托外部研发费用[(26+28)×80%]
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNWTWBYFFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNWTWBYFFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENWTWBYFFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJWTWBYFFY">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					26
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.境内的外部研发费
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNJNWBYFFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNJNWBYFFY">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENJNWBYFFY">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJJNWBYFFY">
                        </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					27
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.境外的外部研发费
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNJWWBYFFY">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNJWWBYFFY">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENJWWBYFFY">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJJWWBYFFY">
                        </fieldset>
				</td>				
			</tr>
			<tr>
				<td align="center">
					28
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：可计入研发费用的境外的外部研发费
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNKJLYFFYDWBYFF">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNKJLYFFYDWBYFF">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENKJLYFFYDWBYFF">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJKJLYFFYDWBYFF">
                        </fieldset>
				</td>				
			</tr>			
			
			<tr>
				<td align="center">
					29
				</td>
				<td>
					八、销售（营业）收入
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNXSSR">
                        </fieldset> 
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QYNXSSR">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="QENXSSR">
                        </fieldset>
				</td>
				<td>                        
                        <fieldset>
                            <input type="text"  class="form-control" id="HJXSSR">
                        </fieldset>
				</td>
			</tr>			
			
			<tr>
				<td align="center">
					30
				</td>
				<td colspan="4">
					九、三年研发费用占销售（营业）收入的比例（15行4列÷29行4列）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="SNYFFYZXSSRBL">
                        </fieldset> 
				</td>
			</tr>
			
			<tr>
				<td align="center">
					31
				</td>
				<td rowspan="2" align="center" width="8%">  				
					减免税额
				</td>
				<td colspan="4">  				
					十、国家需要重点扶持的高新技术企业减征企业所得税
				</td>				
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="GXJSQYJZQYSDS">
                        </fieldset>                                           
				</td>				
			</tr>				
			<tr>
				<td align="center">
					32
				</td>							
				<td colspan="4">  				
					十一、经济特区和上海浦东新区新设立的高新技术企业定期减免税额
				</td>				
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id=" JJTQHSHPDXQJMSE">
                        </fieldset>        
			            <fieldset>
                            <input type="text" class="form-control" id="PZXH" style="display:none">
                        <fieldset>                                     
				</td>				
			</tr>				
								
			<input type="text"  id="DJXH" value="${DJXH}" style="display:none">
		</table>

	</div></div>
	</form>
	
	<input type="text" style="display:none" value="A107041" id="FBPZZLDM"/>
	
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var DJXH=$("#DJXH").val();
          $w1.pushData("DJXH",DJXH);
          $w1.pushForm("A107041form");
          $w1.ajax("/wb395A107041Ctrl/update",callback);    
     }
     
    function closeAbPage(){
          window.close();
          }      
    </script>	
<script type="text/javascript"
	src="./nssb/wb395/wb395_A107041.js?<%=System.currentTimeMillis()%>"></script>
  	
</body>	
	</html>
