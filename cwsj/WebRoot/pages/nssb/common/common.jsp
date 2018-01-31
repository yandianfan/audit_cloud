<%@page import="gov.jslt.taxevent.wsbs.nssb.comm.DateUtil"%>
<%@ taglib
	uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-nested.tld" prefix="nested"%>
<%@ taglib uri="/WEB-INF/struts-template.tld" prefix="template"%>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles"%>
<%
	String curServerDate = DateUtil.getNowString("yyyy-MM-dd");
	String jsltWbLogin = "";
	if (null != request.getSession().getAttribute("JSLT_WB_LOGIN")) {
		jsltWbLogin = request.getSession()
				.getAttribute("JSLT_WB_LOGIN").toString();
	}
	String curWsbsPath = "http://www.jsds.gov.cn";
	String fontCssPath = "/index/sbmain/css/";
%>
<script type="text/javascript">
<!--
	 var curServerDate = '<%=curServerDate%>';
	 var curWsbsPath= '<%=curWsbsPath%>';
	 var jsLtWbLogin = '<%=jsltWbLogin%>';
//-->
</script>
<div>
	<input name="lcsxdm" id="lcsxdm" value="<%=request.getParameter("lcsxdm")%>" type="hidden"/>
	<input name="lclsh" id="lclsh" value="<%=request.getParameter("lclsh")%>" type="hidden"/>
</div>



