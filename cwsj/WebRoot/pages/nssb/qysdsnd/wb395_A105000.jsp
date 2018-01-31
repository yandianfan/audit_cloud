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
	 
	<title>纳税调整项目明细表</title>
</head>
<body onkeydown="enterTab()">
         <form class="form-horizontal" role="form" id="A105000form">

   	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">纳税调整项目明细表</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="dgScsbb('A105000')">自动取数</a>
  				    <a class="btn btn-small btn-success" onclick="jsSbb()">计算</a>
	                <a class="btn btn-small btn-success" onclick="saveGlgx();">保存</a>
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>          
          </div>

<SPAN id='a' bz="sjdq">
	<table width="98%" style="border-collapse: collapse" align="center"
			id="tab1" cellpadding="1" cellspacing="1" border="1"
			bordercolor="#000000">
		<tr>
			<td rowspan="2" align="center" width="10%">
				行次
			</td>
			<td rowspan="2" align="center" width="50%">
				项 目
			</td>
			<td align="center" width="10%">
				账载金额
			</td>
			<td align="center" width="10%">
				税收金额
			</td>
			<td align="center" width="10%">
				调增金额
			</td>
			<td align="center" width="10%">
				调减金额
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td align="center">
				2
			</td>
			<td align="center">
				3
			</td>
			<td align="center">
				4
			</td>
		</tr>
		<tr>
			<td align="center">
				1
			</td>
			<td>
				一、收入类调整项目（2+3+4+5+6+7+8+10+11）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRLTZXM_TZJE">
                </fieldset>
             </td>
             <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRLTZXM_TJJE">
                </fieldset>	
             </td>   		
		</tr>
		<tr>
			<td align="center">
				2
			</td>
			<td>
				<a tabindex="-1" onclick="openFB('A105010')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）视同销售收入（填入A105010）</a>
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="STXSSR_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="STXSSR_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				3
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105020')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）未按权责发生制原则确认的收入（填入A105020）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WAQZSR_ZZJE">
                </fieldset>
             </td>

		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WAQZSR_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WAQZSR_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WAQZSR_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				4
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105030')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）投资收益（填入A105030）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TZSY_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TZSY_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TZSY_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TZSY_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				5
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）按权益法核算长期股权投资对初始投资成本调整确认收益
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="AQYFHS_TJJE">
                </fieldset>
             </td>

		</tr>
		<tr>
			<td align="center">
				6
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）交易性金融资产初始投资调整
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
			   *
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="JYXJRZC_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="JYXJRZC_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				7
			</td>
			<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）公允价值变动净损益
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="GYJZBD_ZZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="GYJZBD_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="GYJZBD_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				8
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）不征税收入
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="BZSSR_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="BZSSR_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				9
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105040')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：专项用途财政性资金（填入A105040）</a>
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZXYTZCZJ_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZXYTZCZJ_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				10
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）销售折扣、折让和退回
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="XSZK_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="XSZK_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="XSZK_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="XSZK_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				11
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）其他
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRLXMQT_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRLXMQT_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRLXMQT_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRLXMQT_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				12
			</td>
			<td>
				二、扣除类调整项目 （13+14+15+16+17+18+19+20+21+22+23+24+26+27+28+29）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KCLTZXM_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KCLTZXM_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				13
			</td>
			<td>
				<a tabindex="-1" onclick="openFB('A105010')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）视同销售成本（填入A105010）</a>
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="STXXTB_SSJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="STXXCB_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				14
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105050')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）职工薪酬（填入A105050）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZGXC_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZGXC_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZGXC_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZGXC_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				15
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）业务招待费支出
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="YWZDF_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="YWZDF_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="YWZDF_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				16
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105060')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）广告费和业务宣传费支出（填入A105060）</a>
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="GGYWXCF_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="GGYWXCF_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				17
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105070')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）捐赠支出（填入A105070）</a>
			</td>

		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="JZZC_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="JZZC_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="JZZC_TZJE">
                </fieldset>
             </td>
             
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				18
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（六）利息支出
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="LXZC_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="LXZC_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="LXZC_TZJE">
                </fieldset>
             </td>
             <td align="center">
				*
			 </td>
		</tr>
		<tr>
			<td align="center">
				19
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（七）罚金、罚款和被没收财物的损失
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="FJFK_ZZJE">
                </fieldset>
             </td>
            <td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="FJFK_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				20
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（八）税收滞纳金、加收利息
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SSZNJ_ZZJE">
                </fieldset>
             </td>
             <td align="center">
				*
			 </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SSZNJ_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				21
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（九）赞助支出
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZZZC_ZZJE">
                </fieldset>
             </td>
             <td align="center">
				*
			 </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZZZC_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				22
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十）与未实现融资收益相关在当期确认的财务费用
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WSXRZSY_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WSXRZSY_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WSXRZSY_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="WSXRZSY_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				23
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十一）佣金和手续费支出
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="YJSSF_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="YJSSF_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="YJSSF_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				24
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十二）不征税收入用于支出所形成的费用
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="BZSSRYYZF_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				25
			</td>
			<td>
				<a tabindex="-1" onclick="openFB('A105040')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;其中：专项用途财政性资金用于支出所形成的费用（填入A105040）</a>
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZXYTCZXZJ_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				26
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十三）跨期扣除项目
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KQKCXM_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KQKCXM_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KQKCXM_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KQKCXM_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				27
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十四）与取得收入无关的支出
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRWGDZC_ZZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>             
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="SRWGDZC_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				28
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十五）境外所得分摊的共同支出
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="JWSDZC_TZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		</tr>
		<tr>
			<td align="center">
				29
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（十六）其他
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KCLXMQT_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KCLXMQT_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KCLXMQT_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="KCLXMQT_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				30
			</td>
			<td>
				三、资产类调整项目（31+32+33+34）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCLXM_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCLXM_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				31
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105080')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）资产折旧、摊销 （填入A105080）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCZJTX_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCZJTX_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCZJTX_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCZJTX_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				32
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）资产减值准备金
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCJZZBJ_ZZJE">
                </fieldset>
             </td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCJZZBJ_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCJZZBJ_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				33
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105090')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）资产损失（填入A105090）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCSS_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCSS_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCSS_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCSS_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				34
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）其他
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCLXMQT_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCLXMQT_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCLXMQT_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCLXMQT_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				35
			</td>
			<td>
				四、特殊事项调整项目（36+37+38+39+40）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSSXXM_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSSXXM_TJJE">
                </fieldset>
             </td>

		</tr>
		<tr>
			<td align="center">
				36
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105100')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（一）企业重组（填入A105100）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="QYCZ_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="QYCZ_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="QYCZ_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="QYCZ_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				37
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105110')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（二）政策性搬迁（填入A105110）</a>
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCXBQ_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="ZCXBQ_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				38
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105120')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（三）特殊行业准备金（填入A105120）</a>
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSHYZBJ_ZZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSHYZBJ_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSHYZBJ_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSHYZBJ_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				39
			</td>
			<td>
				<a  tabindex="-1" onclick="openFB('A105010')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（四）房地产开发企业特定业务计算的纳税调整额(填入A105010)</a>
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="FDCQYNSTZE_SSJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="FDCQYNSTZE_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="FDCQYNSTZE_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				40
			</td>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（五）其他
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSSXXMQT_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TSSXXMQT_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				41
			</td>
			<td>
				五、特别纳税调整应税所得
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TBNSYSSD_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="TBNSYSSD_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				42
			</td>
			<td>
				六、其他
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="QT_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="QT_TJJE">
                </fieldset>
             </td>
		</tr>
		<tr>
			<td align="center">
				43
			</td>
			<td>
				合计（1+12+30+35+41+42）
			</td>
			<td align="center">
				*
			</td>
			<td align="center">
				*
			</td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="HJ_TZJE">
                </fieldset>
             </td>
		     <td>
				<fieldset>
                    <input type="text"  class="form-control" id="HJ_TJJE">
                </fieldset>
                
                <fieldset>
                    <input type="text" class="form-control" id="PZXH" style="display:none">
                <fieldset>                
             </td>
		</tr>

	</table>
	</SPAN>
	
    	</div></div>
	</form> 
    <input type="text" style="display:none" value="A105000" id="FBPZZLDM"/>	
    
    <script type="text/javascript"> 
    function saveGlgx(callback){
          var $w1=new  $w("Windking");
          $w1.pushForm("A105000form");
          $w1.ajax("/wb395A105000Ctrl/update",callback);    
     }
     
    </script>	
</body>
<script type="text/javascript"
	src="./nssb/wb395/wb395_A105000.js?<%=System.currentTimeMillis()%>"></script>
</html>
