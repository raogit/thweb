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
    <div class="menu-left-page contact-page">
        <p>${menu.name }</p>
    </div>
    <div class="menu-left-item">
        <ul id="item-menu">
       		<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
				<li><a href="${basePath}${item.link }?menuId=${item.id}&leftMenuId=${leftMenuId }&item=${itemStatus.index }" class="m">${item.name }</a></li>
			</c:forEach>
           
        </ul>
    </div>
</div> 
