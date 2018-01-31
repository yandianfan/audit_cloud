<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<!-- jsp文件头和头部 -->
<%@ include file="../../../public/jsp/top.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<div id="page-content"  class="clearfix">	
			<div class="page-header position-relative">
			    <h3>工作底稿<small><i class="icon-double-angle-right"></i>固定资产折旧明细表</small>
			     <ul class="nav ace-nav pull-right">
						<div class="btn-group btn-group-small">
							    <button type="button" class="btn  btn-primary"  onclick="saveGdzc();">保存</button>
						</div>			     
			     </ul>
			    </h3>			     
			</div>		
<input type="hidden" value="${LSH}"  id="LSH"/>

			<div class="row-fluid">
				<div id="listgdzc" class="DataGrid" type="DataGrid"css="table table-striped table-bordered table-hover" caption="显示信息">
					<div name="Index" caption="序号"></div>
					<div name="zc_code" caption="资产编号"></div>
					<div name="zc_name" caption="资产名称"></div>
                    <div name="zc_cate" caption="资产类型"></div>
					<div name="indate" caption="入账日期"></div>
					<div name="value" caption="原值"></div>
					<div name="zc_czl" caption="残值率"></div>
					<div name="unuseddate" type="text" caption="可使用月份"></div>
					<div name="useddate" caption="已使用月份"></div>
					<div name="s_zj" caption="期初累计折旧"></div>
					<div name="b_zj" caption="本期折旧"></div>
					<div name="e-zj" caption="期末累计折旧"></div>
					<div name="curr_date" caption="资产处置日期"></div>
					<div name="sfgdzjxe" css="width:90%" caption="税法规定折旧限额"></div>
					<div name="nstzje"  type="text" caption="纳税调整金额"></div>
					<div name="tzyy"  type="text"  caption="调整原因"></div>
				</div>
			</div>


	</div>
	</div>
	<!--/#page-content-->
	<script type="text/javascript" src="pages/login/head.js"></script>
	<script type="text/javascript">
       $(top.hangge());
       function saveGdzc(){
           var $w1=new  $w("Windking");
           var LSH=$("#LSH").val();
           $w1.pushGrid("listgdzc");
           $w1.pushData("LSH", LSH);
           $w1.ajax("/gdzczjCtrl/saveGdzc");	
       }
	</script>	
</body>
</html>