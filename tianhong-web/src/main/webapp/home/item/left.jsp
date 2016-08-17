<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
<div class="lt menu-left">
	<div class="menu-left-page project">
		<p>${menu.name }</p>
<!-- 		<span>Project cooperation 132456</span> -->
	</div>
	<div class="menu-left-item">
		<ul id="item-menu">
			<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
				<li><a href="${basePath}${item.link }?menuId=${item.id}&leftMenuId=${leftMenuId }&item=${itemStatus.index }" class="m">${item.name }</a></li>
			</c:forEach>
			<!-- <li><a href="index.jsp?item=0" class="m">南昌·九洲天虹广场</a></li>
			<li><a href="index.jsp?item=1" class="m">苏州·天虹品上中心</a></li>
			<li><a href="index.jsp?item=2" class="m">吉安·天虹购物中心</a></li>
			<li><a href="index.jsp?item=3" class="m">联发广场</a></li>
			<li><a href="index.jsp?item=4" class="m">厦门会展北商务综合体</a></li>
			<li><a href="index.jsp?item=5" class="m">鹰潭·天虹购物中心</a></li>  -->
		</ul>
	</div>
</div>
