<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="header">
    <div class="h-cont">
        <a href="${basePath}"><div class="h-c-back">公司首页</div></a>
        <ul class="h-c-title">
        	<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
        		<c:if test="${menu.id == item.id }">
        			<li class="t-li t2 at"><a href="${basePath}${item.link }?menuId=${item.id }">${item.name }</a></li>
        		</c:if>
        		<c:if test="${menu.id != item.id }">
        			<li class="t-li t2"><a href="${basePath}${item.link }?menuId=${item.id }">${item.name }</a></li>
        		</c:if>
        	
	        	
	        </c:forEach>
        </ul>
    </div>
</div>
