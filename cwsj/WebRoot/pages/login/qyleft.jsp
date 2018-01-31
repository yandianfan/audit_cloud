<%
	String pathl = request.getContextPath();
	String basePathl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+pathl+"/";
%>
		<!-- 本页面涉及的js函数，都在head.jsp页面中     -->
		<div id="sidebar" class="menu-min">


				<ul class="nav nav-list">



			<c:forEach items="${menuList}" var="menu">

				<li id="lm${menu.MENU_ID }" >
					  <a style="cursor:pointer;" target="mainFrame"   onclick="siMenu('z${menu.MENU_ID}','lm${menu.MENU_ID}','${menu.MENU_NAME}','${menu.target}','${menu.MENU_URL}?bdds=${user.DJXH}')" >
						<i class="${menu.MENU_ICON == null ? 'icon-desktop' : menu.MENU_ICON}"></i>
						<span>${menu.MENU_NAME}</span>
					  </a>			  
				</li>

			</c:forEach>

				</ul><!--/.nav-list-->

				<div id="sidebar-collapse"><i class="icon-double-angle-left"></i></div>

			</div><!--/#sidebar-->

