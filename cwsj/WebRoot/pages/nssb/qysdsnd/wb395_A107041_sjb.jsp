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
  				<div class="btn-menu2">
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
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
				<td width="20%">
					高新技术企业证书编号
				</td>
				<td width="20%">
			            <fieldset>
                            <input type="text"  class="form-control" id="GXQYZSBH">
                        </fieldset> 	
				</td>
				<td width="20%">
					高新技术企业证书取得时间
				</td>
				<td width="20%">
                    <input type="text" class="form-control date" format="yyyy-mm-dd" css="width:99%"  readonly="readonly" id="GXJSQYZSQDSJ">
				</td>
			</tr>
			<tr height="80px">
				<td align="center">
					2
				</td>
				<td>
					产品（服务）属于《国家重点支持的高新技术领域》规定的范围（填写具体范围名称）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="CPFWMC">
                        </fieldset> 
				</td>
				<td>
					是否发生重大安全、质量事故
				</td>
				<td>
			        &nbsp;&nbsp;      
					<input name="SFFSZDSG" type="radio" value="1"/><span class="lbl">是</span>	 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="SFFSZDSG" type="radio" value="2"/><span class="lbl">否</span>
				</td>
			</tr>
			<tr>
				<td align="center">
					3
				</td>
				<td>
					是否有环境等违法、违规行为，受到有关部门处罚的
				</td>
				<td>
			        &nbsp;&nbsp;      
					<input name="SFYHJWFXW" type="radio" value="1"/><span class="lbl">是</span>	 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="SFYHJWFXW" type="radio" value="2"/><span class="lbl">否</span>
				</td>
				<td>
					是否发生偷骗税行为
				</td>
				<td>
			        &nbsp;&nbsp;      
					<input name="SFFSPSXW" type="radio" value="1"/><span class="lbl">是</span>	 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="SFFSPSXW" type="radio" value="2"/><span class="lbl">否</span>
				</td>
			</tr>
		</table>
		<table id="tab1" width="85%" style="border-collapse: collapse"
			align="center" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
			<tr>
				<td width="5%" align="center">
					4
				</td>
				<td width="80%" colspan="3" align="center">
					关键指标情况
				</td>
			</tr>
			<tr>
				<td width="5%" align="center">
					5
				</td>
				<td width="15%" rowspan="5">
					&nbsp;&nbsp;&nbsp;&nbsp; 收入指标
				</td>
				<td width="50%">
					一、本年高新技术产品（服务）收入（6+7）
				</td>
				<td width="15%">
			            <fieldset>
                            <input type="text"  class="form-control" id="BNGXJSSR">
                        </fieldset>
				</td>
			</tr>
			<tr>
				<td align="center">
					6
				</td>
				<td>
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
					7
				</td>
				<td>
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
					8
				</td>
				<td>
					二、本年企业总收入
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNQYSR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					9
				</td>
				<td>
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
					10
				</td>
				<td rowspan="5">
					&nbsp;&nbsp;&nbsp;&nbsp; 人员指标
				</td>
				<td>
					四、本年具有大学专科以上学历的科技人员数
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNJYDZXLRS">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					11
				</td>
				<td>
					五、本年研发人员数
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNYFRYS">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					12
				</td>
				<td>
					六、本年职工总数
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
				<td>
					七、本年具有大学专科以上学历的科技人员占企业当年职工总数的比例 （10÷12）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNJYZCZZSBL">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					14
				</td>
				<td>
					八、本年研发人员占企业当年职工总数的比例（11÷12）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNYFRYZZSB">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					15
				</td>
				<td rowspan="14">
					&nbsp;&nbsp;&nbsp;&nbsp; 研究开发费用指标
				</td>
				<td>
					九、本年归集的高新研发费用金额（16+25）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNGJYFJE">
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
                            <input type="text"  class="form-control" id="NBYJKFTR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					17
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.人员人工
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RYRG">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					18
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.直接投入
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZJTR">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					19
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.折旧费用与长期费用摊销
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZJFYTX">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					20
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.设计费用
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="SJFY">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					21
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.装备调试费
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZBTSF">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					22
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.无形资产摊销
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="WXZCTX">
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
                            <input type="text"  class="form-control" id="QTFY">
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
                            <input type="text"  class="form-control" id="QZJRYFQT">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					25
				</td>
				<td>
					&nbsp;&nbsp;&nbsp;&nbsp;（二）委托外部研究开发费用（26+27）
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="WTWBYFFY">
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
                            <input type="text"  class="form-control" id="JNWBYFFY">
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
                            <input type="text"  class="form-control" id="JWWBYFFY">
                        </fieldset> 
				</td>
				
			</tr>
			<tr>
				<td align="center">
					28
				</td>
				<td>
					十、本年研发费用占销售（营业）收入比例
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="BNYFFYZB">
                        </fieldset> 
				</td>
			</tr>
			<tr>
				<td align="center">
					29
				</td>
				<td colspan="2">
					&nbsp;&nbsp;&nbsp;&nbsp; 减免税金额
				</td>
				<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JMSJE">
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
