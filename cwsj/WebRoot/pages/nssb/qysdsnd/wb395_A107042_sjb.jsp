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
   
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/nssb/qysdsnd/qysdssbb_comm.js"></script>
	 
	<title>软件、集成电路企业优惠情况及明细表</title>
</head>
<body>
    <form class="form-horizontal" role="form" id="A107042form">

	   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">软件、集成电路企业优惠情况及明细表</strong>
  				<div class="btn-menu2">
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>	
       
		<SPAN id='a' bz="update">
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
					<td width="25%">
						企业成立日期
					</td>
					<td width="25%" >
			            <fieldset>
                    <input type="text" class="form-control date" format="yyyy-mm-dd" readonly="readonly" id="QYCLRQ">
                        </fieldset>
					</td>
					<td width="20%">
						软件企业证书取得日期
					</td>
					<td width="25%" >
			            <fieldset>
                    <input type="text" class="form-control date" format="yyyy-mm-dd" readonly="readonly" id="RJQYZSQDRQ">
                        </fieldset>
					</td>
				</tr>
				<tr>
					<td align="center">
						2
					</td>
					<td>
						软件企业认定证书编号
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJQYRDZSBH">
                        </fieldset> 					
					</td>
					<td>
						软件产品登记证书编号
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJCPDJZSBH">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						3
					</td>
					<td>
						计算机信息系统集成资质等级认定证书编号
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JSJRDZSBH">
                        </fieldset> 
					</td>
					<td>
						集成电路生产企业认定文号
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCQYRDH">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						4
					</td>
					<td>
						集成电路设计企业认定证书编号
					</td>
					<td colspan="3">
			            <fieldset>
                            <input type="text"  class="form-control" id="JCQYRDBH">
                        </fieldset> 
					</td>
				</tr>
			</table>
			<table id="tab1" width="85%" style="border-collapse: collapse"
				align="center" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr>
					<td align="center">
						5
					</td>
					<td align="center" colspan="3">
						关键指标情况（2011年1月1日以后成立企业填报）
					</td>
				</tr>
				<tr>
					<td align="center" width="5%">
						6
					</td>
					<td rowspan="5" width="10%">
						&nbsp;&nbsp; 人员指标
					</td>
					<td width="60%">
						一、企业本年月平均职工总人数
					</td>
					<td width="25%">
			            <fieldset>
                            <input type="text"  class="form-control" id="QYNYPJRS">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中:签订劳动合同关系且具有大学专科以上学历的职工人数
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QDHTDXZ">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						8
					</td>
					<td>
						二、研究开发人员人数
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="YFRYS">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						9
					</td>
					<td>
						三、签订劳动合同关系且具有大学专科以上学历的职工人数占企业当年月平均职工总人数的比例（7÷6）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QDHTBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						10
					</td>
					<td>
						四、研究开发人员占企业本年月平均职工总数的比例（8÷6）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="YFRYBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						11
					</td>
					<td rowspan="15">
						&nbsp;&nbsp;收入指标
					</td>
					<td>
						五、企业收入总额
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYZSRE">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						12
					</td>
					<td>
						六、集成电路制造销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDLSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						13
					</td>
					<td>
						七、集成电路制造销售（营业）收入占企业收入总额的比例（12÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDLBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						14
					</td>
					<td>
						八、集成电路设计销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCSJSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：集成电路自主设计销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCZZSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						16
					</td>
					<td>
						九、集成电路设计企业的集成电路设计销售（营业）收入占企业收入总额的比例（14÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCSJBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						17
					</td>
					<td>
						十、集成电路自主设计销售（营业）收入占企业收入总额的比例（15÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCZZBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						18
					</td>
					<td>
						十一、软件产品开发销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJCPSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：嵌入式软件产品和信息系统集成产品开发销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QRCPSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						20
					</td>
					<td>
						十二、软件产品自主开发销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJZZCPSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：嵌入式软件产品和信息系统集成产品自主开发销售（营业）收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QRSJCSR">
                        </fieldset> 

					</td>
				</tr>
				<tr>
					<td align="center">
						22
					</td>
					<td>
						十三、软件企业的软件产品开发销售（营业）收入占企业收入总额的比例（18÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJQYXSBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						23
					</td>
					<td>
						十四、嵌入式软件产品和信息系统集成产品开发销售（营业）收入占企业收入总额的比例（19÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QRSRJXSBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						24
					</td>
					<td>
						十五、软件产品自主开发销售（营业）收入占企业收入总额的比例（20÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJCPZZBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						25
					</td>
					<td>
						十六、嵌入式软件产品和信息系统集成产品自主开发销售（营业）收入占企业收入总额的比例（21÷11）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QRSRJBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						26
					</td>
					<td rowspan="4">
						&nbsp;&nbsp;研究开发费用指标
					</td>
					<td>
						十七、研究开发费用总额
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QRSXSBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						27
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：企业在中国境内发生的研究开发费用金额
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYDYFY">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						28
					</td>
					<td>
						十八、研究开发费用总额占企业销售（营业）收入总额的比例
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="YFFYZBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						29
					</td>
					<td>
						十九、企业在中国境内发生的研究开发费用金额占研究开发费用总额的比例（27÷26）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYZGJNBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						30
					</td>
					<td colspan="3" align="center">
						关键指标情况（2011年1月1日以前成立企业填报）
					</td>
				</tr>
				<tr>
					<td align="center">
						31
					</td>
					<td rowspan="3">
						&nbsp;&nbsp;人员指标
					</td>
					<td>
						二十、企业职工总数
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYZGS">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						32
					</td>
					<td>
						二十一、从事软件产品开发和技术服务的技术人员
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="CSCPKFRS">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						33
					</td>
					<td>
						二十二、从事软件产品开发和技术服务的技术人员占企业职工总数的比例（32÷31）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="CSCPKFBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						34
					</td>
					<td rowspan="5">
						&nbsp;&nbsp;收入指标
					</td>
					<td>
						二十三、企业年总收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYNSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						35
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：企业年软件销售收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYRJSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						36
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：自产软件销售收入
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZCRJSR">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						37
					</td>
					<td>
						二十四、软件销售收入占企业年总收入比例（35÷34）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="RJXSBL">
                        </fieldset> 

					</td>
				</tr>
				<tr>
					<td align="center">
						38
					</td>
					<td>
						二十五、自产软件收入占软件销售收入比例（36÷35）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZCXSBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						39
					</td>
					<td rowspan="2">
						&nbsp;&nbsp;研究开发经费指标
					</td>
					<td>
						二十六、软件技术及产品的研究开发经费
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYJSFY">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						40
					</td>
					<td>
						二十七、软件技术及产品的研究开发经费占企业年软件收入比例（39÷35）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QYJSBL">
                        </fieldset> 
					</td>
				</tr>
				<tr>
					<td align="center">
						41
					</td>
					<td colspan="2">
						&nbsp;&nbsp;减免税金额
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
				<input type="text" id="DJXH" value="${DJXH}"  style="display:none">
			</table>
		</SPAN>

	
	</div></div>
	</form>
	
	<input type="text" style="display:none" value="A107042" id="FBPZZLDM"/>
	
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          var DJXH=$("#DJXH").val();
          $w1.pushData("DJXH",DJXH);
          $w1.pushForm("A107042form");
          $w1.ajax("/wb395A107042Ctrl/update",callback);    
     }

    function closeAbPage(){
          window.close();
          }      
    </script>	
</body>

<script type="text/javascript"
	src="./nssb/wb395/wb395_A107042.js?<%=System.currentTimeMillis()%>"></script>
</html>
