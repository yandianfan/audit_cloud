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

	<title>减免所得税优惠明细表</title>
</head>
<body>
    <form class="form-horizontal" role="form" id="A107040form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">减免所得税优惠明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A107040')">自动取数</a>
	                <!-- <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a> -->
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

		<SPAN id='a' bz="update">
			<table id="tab1" width="80%" style="border-collapse: collapse"
				align="center" cellpadding="1" cellspacing="1" border="1"
				bordercolor="#000000">
				<tr align="center">
					<td width="10%">
						行 次
					</td>
					<td width="65%">
						项 目
					</td>
					<td width="25%">
						金 额
					</td>
				</tr>
				<tr>
					<td align="center">
						1
					</td>
					<td>
						一、符合条件的小型微利企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="FHTJXWQY">
                        </fieldset> 							
					</td>
				</tr>
				<tr>
					<td align="center">
						2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：减半征税
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JBZS">
                        </fieldset>					
					</td>
				</tr>
				<tr>
					<td align="center">
						3
					</td>
					<td>
						二、国家需要重点扶持的高新技术企业（4+5）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="GJXYZDFZGXQY">
                        </fieldset>							
					</td>
				</tr>
				<tr>
					<td align="center">
						4
					</td>
					<td>
						<a tabindex="-1" onclick="openFB('A107041')">
							&nbsp;&nbsp;&nbsp;&nbsp;（一）高新技术企业低税率优惠（填写A107041）</a>
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="GXJSQYDSLYH">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						5
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）经济特区和上海浦东新区新设立的高新技术企业定期减免（填写A107041）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JJTQPDXQ">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						6
					</td>
					<td>
						三、其他专项优惠（7+8+9+10+11…+14+15+16+…+31）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QTZXYH">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				<td align="center">
						7
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（一）受灾地区损失严重的企业（7.1+7.2+7.3）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="SZDQSSYZQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						7.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1.
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						7.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						7.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
					<td align="center">
						8
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二）受灾地区农村信用社（8.1+8.2+8.3）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="SZDQNCXYS">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						8.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						8.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						8.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
					<td align="center">
						9
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（三）受灾地区的促进就业企业（9.1+9.2+9.3）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="SZDQCJJYQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						9.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						9.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
				    <td align="center">
						9.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3
					</td>
					<td>
						 
					</td>
				</tr>
				<tr>
					<td align="center">
						10
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（四）支持和促进重点群体创业就业企业(10.1+10.2+10.3)
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZCCJQTCYQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						10.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中:1.下岗失业人员再就业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XGSYRYZJY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						10.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.高校毕业生就业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="GXBYSJY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						10.3
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.退役士兵就业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="TYSBJY">
                        </fieldset>						
					</td>
				</tr>	
				<tr>
					<td align="center">
						11
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（五）技术先进型服务企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JSXJXFWQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						12
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（六）动漫企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="DMQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						13
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（七）集成电路线宽小于0.8微米（含）的集成电路生产企业						                              
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDLSCQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						14
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（八）集成电路线宽小于0.25微米的集成电路生产企业（14.1+14.2）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDLERQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						14.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1.定期减免企业所得税
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDQJMQYSDS">
                        </fieldset>						
					</td>
				</tr>
				<tr>
				    <td align="center">
						14.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;2.减按15%税率征收企业所得税
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCSLZSQYSDS">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						15
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（九）投资额超过80亿元人民币的集成电路生产企业（15.1+15.2）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="TZCGQY">
                        </fieldset>	
					</td>
				</tr>
				<tr>
				    <td align="center">
						15.1
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;其中：1.定期减免企业所得税
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="TZDQJMQYSDS">
                        </fieldset>	
					</td>
				</tr>
				<tr>
				    <td align="center">
						15.2
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;2.减按15%税率征收企业所得税
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="TZSLZSQYSDS">
                        </fieldset>	 
					</td>
				</tr>
				<tr>
					<td align="center">
						16
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A107042')">
							&nbsp;&nbsp;&nbsp;&nbsp;（十）新办集成电路设计企业（填写A107042）</a>
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XBJCDLQY">
                        </fieldset>	
					</td>
				</tr>	
				<tr>
					<td align="center">
						17
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十一）国家规划布局内重点集成电路设计企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="GJGHBJU">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						18
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十二）集成电路封装、测试企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDLFZCSQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						19
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十三）集成电路关键专用材料生产企业或集成电路专用设备生产企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JCDLGJZYCLSCQY">
                        </fieldset>		
					</td>
				</tr>
				<tr>
					<td align="center">
						20
					</td>
					<td>
						<a  tabindex="-1" onclick="openFB('A107042')">
							&nbsp;&nbsp;&nbsp;&nbsp;（十四）符合条件的软件企业（填写A107042）</a>
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="FHTJRJQY">
                        </fieldset>		
					</td>
				</tr>	
				<tr>
					<td align="center">
						21
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十五）国家规划布局内重点软件企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="GJGHBJZD">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						22
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十六）经营性文化事业单位转制企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JYXWHSYDWQY">
                        </fieldset>	
					</td>
				</tr>	
				<tr>
					<td align="center">
						23
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十七）符合条件的生产和装配伤残人员专门用品企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="ZPSCRYQY">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						24
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十八）设在西部地区的鼓励类产业企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XBDQGLQY">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						25
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（十九）新疆困难地区新办企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XJKNDQXBQY">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						26
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十）新疆喀什、霍尔果斯特殊经济开发区新办企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XJKSTSJJKFQY">
                        </fieldset>	
					</td>
				</tr>	
				<tr>
					<td align="center">
						27
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十一）横琴新区、平潭综合实验区和前海深港现代化服务业合作区企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="HQXQHZQY">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						28
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十二）享受过渡期税收优惠企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XSGSSYHQY">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						29
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十三）其他1
			            <fieldset>
                            <input type="text"  class="form-control" id="QT1">
                        </fieldset>	
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QT1_JE">
                        </fieldset>	
					</td>
				</tr>	
				<tr>
					<td align="center">
						30
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十四）其他2
			            <fieldset>
                            <input type="text"  class="form-control" id="QT2">
                        </fieldset>	
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QT2_JE">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						31
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;（二十五）其他3
			            <fieldset>
                            <input type="text"  class="form-control" id="QT3">
                        </fieldset>	
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="QT3_JE">
                        </fieldset>	
					</td>
				</tr>
				<tr>
					<td align="center">
						32
					</td>
					<td>
						四、减：项目所得额按法定税率减半征收企业所得税叠加享受减免税优惠
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="XMSDYH">
                        </fieldset>								
					</td>
				</tr>																		
				<tr>
					<td align="center">
						33
					</td>
					<td>
						五、减免地方分享所得税的民族自治地方企业
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="JMDFSDSZZQY">
                        </fieldset>						
					</td>
				</tr>
				<tr>
					<td align="center">
						34
					</td>
					<td>
						合计：（1+3+6-32+33）
					</td>
					<td>
			            <fieldset>
                            <input type="text"  class="form-control" id="HJ">
                        </fieldset>		
                        <fieldset>
                            <input type="text" class="form-control" id="PZXH" value="${PZXH}" style="display:none">
                        <fieldset>                          
					</td>
				</tr>
			</table> </SPAN>

</div></div>
	</form>
    <script type="text/javascript"> 
    function saveGlgx(){
          var $w1=new  $w("Windking");
          $w1.pushForm("A107040form");
          $w1.ajax("/wb395A107040Ctrl/update");    
     }
     
    </script>	
	<script type="text/javascript"
		src="./nssb/wb395/wb395_A107040.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>
