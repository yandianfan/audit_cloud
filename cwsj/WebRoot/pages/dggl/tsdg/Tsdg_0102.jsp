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
	<style>
    td {font-size: 16px !important;}
	</style>	
	 <script type="text/javascript" src="public/js/tool/common.js"></script>
	 <script type="text/javascript" src="pages/dggl/tsdg/Tsdg_comm.js"></script>

	<title>管理层声明书</title>

  </head>
  
  <body>

   	<div class="page-content">
		 <div class="row page-header text-center">
            <strong class="sb-title3">管理层声明书</strong>
  				<div class="btn-menu noprint">
  				    <a class="btn btn-small btn-success" onclick="save()">保存</a>
  				    <a class="btn btn-small btn-success" onclick="scdata()">生成底稿数据</a>
  				    <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>         
          </div>

   <form class="form-horizontal" role="form" id="Tsdg_0102form">
<table id="tab1" border=0 cellpadding=0 cellspacing=0 width=100% >

 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 style='height:20.25pt;width:719pt;text-align:left'><div id="COL1" style="display: inline-block;"></div>税务师事务所（有限公司）：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>本公司已委托贵税务师事务所对本公司<div id="COL2" style="display: inline-block;"></div>年度企业所得税年度汇算清缴纳税申报进行咨询服务，并出具咨询服务报告。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>为配合贵事务所的审核工作，本公司就已知的全部事项作出如下声明：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>1.本公司已履行<input type="text" id="COL3" style="font-size:15px"/>年<input type="text" id="COL4" style="font-size:15px"/>月<input type="text" id="COL5" style="font-size:15px"/>日与贵所签署的审核业务约定书中提及的责任，并承诺如下事项：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=41 style='mso-height-source:userset;height:30.75pt'>
  <td height=41 width=958 style='height:30.75pt;width:719pt'>（1）按照企业会计准则和《<input type="text"  style="font-size:15px" id="COL6"/>会计制度》和有关财务制度的规定编制<input type="text"  style="font-size:15px" id="COL7"/>年度财务报表，公允地反映本公司的财务状况、经营成果和现金流量情况，财务报表的编制基础与上年度保持一致，保证会计资料的真实性、准确性、完整性和合法性是我们的责任。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=40 style='mso-height-source:userset;height:30.0pt'>
  <td height=40 width=958 style='height:30.0pt;width:719pt'>(2)按照《中华人民共和国税收征收管理法》及其实施细则、《中华人民共和国企业所得税法》及其实施条例以及其他税收法律、法规、规范的要求，如实进行纳税申报，按照税收规定进行纳税调整，保证纳税资料的真实性、准确性、完整性和合法性是我们的责任。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=18 style='mso-height-source:userset;height:13.5pt'>
  <td height=18 width=958 style='height:13.5pt;width:719pt'>(3)建立、完善并有效实施与会计核算、纳税申报相关的内部控制，防止或发现并纠正错报，是我们的责任。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>2.本公司向贵事务所提供如下工作条件：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（1）允许接触全部涉及本次审核业务的相关会计数据和其他数据（如相关决议、合同、章程、股东会和董事会的会议记录等相关资料）；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（2）允许接触全部涉及本次审核业务的相关人员。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>3.本公司所有经济业务均已按规定入账，不存在账外资产或未计负债。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>4.本公司不存在导致重述比较数据或上年度所得税年度汇算清缴纳税申报的任何事项。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>5.本公司已提供并适当披露如下事项：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>(1)全部与关联方和关联方交易相关的资料；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（2）全部或有事项的相关资料；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（3）全部资产负债表日后事项的相关资料；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（4）其他应披露的事项.</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>6.除本公司承诺披露的事项外，本公司不存在其他应披露而未披露的承诺事项，不存在未披露的影响财务数据和所得税纳税申报数据的重大不确定事项。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>7.本公司已采取必要措施防止或发现舞弊及其他违反法规行为，未发现：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（1）涉及管理层的任何舞弊行为或舞弊嫌疑的信息；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（2）涉及对内部控制产生重大影响的员工的任何舞弊行为或舞弊嫌疑的信息；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（3）涉及对财务数据和所得税纳税申报数据的编制具有重大影响的其他人员的任何舞弊行为或舞弊嫌疑的信息。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>8.本公司严格遵守了合同规定的条款，不存在因未履行合同而对财务数据和所得税纳税申报数据产生重大影响的事项。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>9.本公司管理层确信：</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（1）未收到财务及税务监管机构有关调整或修改财务报表及纳税申报的通知；</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（2）无税务以及其他影响本年度所得税年度汇算清缴的纠纷。</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>10.其他事项</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=27 style='mso-height-source:userset;height:20.25pt'>
  <td height=27 width=958 style='height:20.25pt;width:719pt'>（税务认为重要而需声明的事项，或者管理层认为必要而声明的事项。）</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 width=958 style='height:12.0pt;width:719pt'></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 width=958 style='height:12.0pt;width:719pt'></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 width=958 style='height:12.0pt;width:719pt'></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 width=958 style='height:17.25pt;width:719pt'><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><input type="text" style="font-size:15px" id="COL8"/>公司(盖章)</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 width=958 style='height:17.25pt;width:719pt'><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span>法定代表人：（签名）<input type="text" style="font-size:15px" id="COL9"/></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 width=958 style='height:17.25pt;width:719pt'><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span>财务负责人：（签名）<input type="text"  style="font-size:15px"id="COL10"/></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=23 style='mso-height-source:userset;height:17.25pt'>
  <td height=23 width=958 style='height:17.25pt;width:719pt'><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span><input type="text" id="COL11" style="font-size:15px"/>年<input type="text" id="COL12" style="font-size:15px"/>月<input type="text" id="COL13" style="font-size:15px"/>日</td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>
 <tr height=16 style='height:12.0pt'>
  <td height=16 class=xl8526008 width=958 style='height:12.0pt;width:719pt'></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
  <td width=64 ></td>
 </tr>


</table>
  </form>
  
   			<form class="form-horizontal" role="form" id="formmap">
				<input style="display:none" id="LSH" />
				<input style="display:none" id="DG_DM" />
				<input style="display:none" id="DJXH" />		
  			</form>  
  			  
</div>

    <script type="text/javascript"> 
        function save(){
           var $w1=new  $w("Windking");
           $w1.pushForm("Tsdg_0102form");
           $w1.pushForm("formmap");
           $w1.ajax("/tsdg0102Ctrl/save");		
        }
         
        function closeAbPage(){
           window.close();
        }        
    </script> 
  </body>
</html>