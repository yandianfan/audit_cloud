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
	
	<title>固定资产加速折旧、扣除明细表</title>
</head>
<body>
	

	<div class="page-content">
		<div class="col-xs-12">
		 <div class="row page-header text-center">
            <strong class="sb-title3">固定资产加速折旧、扣除明细表</strong>
  				<div class="btn-menu noprint">
	                <a class="btn btn-small btn-success" onclick="printPage()">打印</a>
	                <a class="btn btn-small btn-success" onclick="closeAbPage()">关闭</a>
				</div>
          </div>	
		          
    <form class="form-horizontal" role="form" id="A105081form1">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">
			<tr align="center">
				<td rowspan="3" width="80">
					序 号
				</td>
				<td rowspan="3" colspan="2" width="320">
					项 目
				</td>
				<td colspan="2" width="320">
					房屋、建筑物
				</td>
				<td colspan="2" width="320">
					飞机、火车、轮船、机器、机械和其他生产设备
				</td>
				<td colspan="2" width="320">
					与生产经营活动有关的器具、工具、家具
				</td>
				<td colspan="2" width="320">
					飞机、火车、轮船以外的运输工具
				</td>
				<td colspan="2" width="320">
					电子设备
				</td>
				<td colspan="2" width="320">
					其他
				</td>
				<td colspan="6" width="960">
					合计
				</td>
			</tr>
			<tr align="center">
				<td width="160">
					原值
				</td>
				<td width="160">
					税收折旧（扣除）额
				</td>
				<td width="160">
					原值
				</td>
				<td width="160">
					税收折旧（扣除）额
				</td>
				<td width="160">
					原值
				</td>
				<td width="160">
					税收折旧（扣除）额
				</td>
				<td width="160">
					原值
				</td>
				<td width="160">
					税收折旧（扣除）额
				</td>
				<td width="160">
					原值
				</td>
				<td width="160">
					税收折旧（扣除）额
				</td>
				<td width="160">
					原值
				</td>
				<td width="160">
					税收折旧（扣除）额
				</td>
				
				<td width="160">
					原值
				</td>
				<td width="160">
					会计折旧额
				</td>
				<td width="160">
					正常折旧额
				</td>
				<td width="160">
					税收折旧额
				</td>
				<td width="160">
					纳税减少额
				</td>
				<td width="160">
					加速折旧优惠统计额
				</td>

			</tr>
			<tr align="center">
				<td width="160">
					1
				</td>
				<td width="160">
					2
				</td>
				<td width="160">
					3
				</td>
				<td width="160">
					4
				</td>
				<td width="160">
					5
				</td>
				<td width="160">
					6
				</td>
				<td width="160">
					7
				</td>
				<td width="160">
					8
				</td>
				<td width="160">
					9
				</td>
				<td width="160">
					10
				</td>
				<td width="160">
					11
				</td>
				<td width="160">
					12
				</td>
				<td width="160">
					13
				</td>
				<td width="160">
					14
				</td>
				<td width="160">
					15
				</td>
				<td width="160">
					16
				</td>
				<td width="160">
					17
				</td>
				<td width="160">
					18
				</td>
			</tr>
			<tr height="20px">
				<td align="center" width="80">
					1
				</td>
				<td colspan="2" width="320">
					一、重要行业固定资产加速折旧
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE1">
                   </fieldset>	
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE1">
                   </fieldset>	
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE1">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE1">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form2">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					2
				</td>
				<td width="160">
			       <fieldset>
					   <select id="HYZL_DM"  name = "HYZL_DM" class="form-control"></select>	  
                   </fieldset>
				</td>
				<td width="160">
					税会处理一致
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE2">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE2">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE2">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE2">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form3">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr height="20px">
				<td align="center" width="80">
					3
				</td>
				<td align="center" width="160">
				*
				</td>				
				<td width="160">
					税会处理不一致
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE3">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE3">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE3">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form4">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr height="20px">
				<td align="center" width="80">
					4
				</td>
				<td colspan="2">
					二、其他行业研发设备加速折旧
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE4">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE4">
                   </fieldset>
				</td>								
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE4">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE4">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form5">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr height="20px">
				<td align="center" width="80">
					5
				</td>
				<td width="160">
					100万元以上专用研发设备
				</td>
				<td width="160">
				税会处理一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE5">
                   </fieldset>
				</td>  
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE5">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE5">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE5">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE5">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE5">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form6">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr height="20px">
				<td align="center" width="80">
					6
				</td>
				<td width="160">
					100万元以上专用研发设备
				</td>				
				<td width="160">
					税会处理不一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE6">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE6">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE6">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE6">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE6">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form7">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">				
			<tr height="20px">
				<td align="center" width="80">
					7
				</td>
				<td colspan="2">
					三、允许一次性扣除的固定资产
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE7">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE7">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE7">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE7">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form8">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					8
				</td>
				<td colspan="2">
					1.单价不超过100万元研发设备
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE8">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE8">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE8">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE8">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form9">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					9
				</td>
				<td width="160">
		             <fieldset>
                       <select id="ZYHYBJ"  name = "ZYHYBJ" class="form-control"></select>
                     </fieldset>
				</td>
				<td width="160">
				税会处理一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE9">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE9">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE9">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE9">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE9">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE9">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form10">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					10
				</td>
				<td align="center" width="160">
				*
				</td>				
				<td width="160">
					税会处理不一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id=YSGJSSZJ_JE10>
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE10">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE10">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE10">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE10">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE10">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form11">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					11
				</td>
				<td colspan="2" width="320">
					2.5000元以下固定资产
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE11">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE11">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE11">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE11">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form12">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					12
				</td>
				<td  align="center" width="160">
				*
				</td>
				<td width="160">
					税会处理一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE12">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE12">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE12">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE12">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE12">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE12">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form13">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					13
				</td>
				<td  align="center" width="160">
				*
				</td>				
				<td width="160">
					税会处理不一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE13">
                   </fieldset>
				</td>
				<td width="160">				
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE13">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE13">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE13">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE13">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE13">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form14">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">		
			<tr height="20px">
				<td align="center" width="80">
					14
				</td>
				<td colspan="2">
					合计（1行+4行+7行）
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE14" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE14" readonly="readonly">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form16">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="36">
				<td align="center" width="80">
					15
				</td>
				<td colspan="20">
				四、其他固定资产加速折旧备案信息
				</td>				
			</tr>
			<tr>
				<td align="center" width="80">
					16
				</td>
				<td colspan="2">
				1.技术进步、更新换代固定资产
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE16">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE16">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE16">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE16">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form17">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					17
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
				税会处理一致
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE17">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE17">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE17">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE17">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE17">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE17">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form18">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					18
				</td>
				<td align="center" width="160">
				*
				</td>				
				<td width="160">
				税会处理不一致
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE18">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE18">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE18">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE18">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE18">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form19">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					19
				</td>
				<td colspan="2">
				2.常年强震动、高腐蚀固定资产
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE19">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE19">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE19">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE19">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form20">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					20
				</td>
				<td width="160" align="center">
				*
				</td>
				<td width="160">
				税会处理一致
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE20">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE20">
                   </fieldset>
				</td>
				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE20">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE20">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE20">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE20">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form21">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					21
				</td>
				<td width="160" align="center">
				*
				</td>				
				<td width="160">
				税会处理不一致
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE21">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE21">
                   </fieldset>
				</td>		
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE21">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE21">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE21">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form22">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					22
				</td>
				<td colspan="2">
				3.外购软件折旧（摊销）
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE22">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE22">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE22">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE22">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE22">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE22">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE22">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE22">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form23">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					23
				</td>
				<td  width="160" align="center">
				*
				</td>
				<td width="160">
				税会处理一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE23">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE23">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE23">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE23">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE23">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE23">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form24">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					24
				</td>
				<td  width="160" align="center">
				*
				</td>				
				<td width="160">
				税会处理不一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE24">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE24">
                   </fieldset>
				</td>		
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE24">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE24">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE24">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE24">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form25">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					25
				</td>
				<td colspan="2">
				4.集成电路企业生产设备
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE25">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE25">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE25">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE25">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE25">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form26">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					26
				</td>
				<td width="160" align="center">
				*
				</td>
				<td width="160">
				税会处理一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE26">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE26">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE26">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE26">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE26">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE26">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE26">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE26">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE26">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE26">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE26">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE26">
                   </fieldset>
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form27">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					27
				</td>
				<td width="160" align="center">
				*
				</td>				
				<td width="160">
				税会处理不一致
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE27">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE27">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE27">
                   </fieldset>
				</td>				
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE27">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE27">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE27">
                   </fieldset>
				</td>
				<td align="center" width="160">
				*
				</td>
			</tr>
		</table>
    </form>				

    <form class="form-horizontal" role="form" id="A105081form28">          
		<table width="100%" style="border-collapse: collapse" align="center" cellpadding="1" cellspacing="1" border="1" bordercolor="#000000">			
			<tr height="20px">
				<td align="center" width="80">
					28
				</td>
				<td colspan="2">
				合计（16行+19行+22行+25行）
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="FWJZSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCSBSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="SCGJSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="YSGJSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="DZSBSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="QTSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>			
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJYZ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJKJZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJZCZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJSSZJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJNSJS_JE28" readonly="readonly">
                   </fieldset>
				</td>
				<td width="160">
			       <fieldset>
                       <input class="form-control" id="HJJSZJYHTJ_JE28" readonly="readonly">
                   </fieldset>
				</td>
			</tr>			
		</table>
    </form>				

		</div>
	</div>
	<input type="text" style="display:none" value="A105081" id="FBPZZLDM"/>
	<input type="text" style="display:none" value="${PZXH}" id="PZXH"/>

	<script type="text/javascript"
		src="./nssb/wb395/wb395_A105081.js?<%=System.currentTimeMillis()%>"></script>
</body>
</html>
