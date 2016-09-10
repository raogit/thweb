<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="header">
    <div class="h-cont">
        <a href="Default.html"><div class="h-c-back">集团首页</div></a>
        <ul class="h-c-title">
        	<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	        	<li class="at"><a href="${basePath}${item.link }?menuId=${item.id }">${item.name }</a></li>
	        </c:forEach>
            <%-- <li class="at"><a href="${basePath}/store/index?menuId=162">首页</a></li>
            <li><a href="${basePath}/store/Commodity/Default.html">商品</a></li>
            <li><a href="Activity/Default.html">最新活动</a></li>
            <li><a href="New.html">新品上市</a></li>
            <li><a href="PreOrder/Default.html">预购专区</a></li>
            <li><a href="Convenience/Default.html">便利服务</a></li>
            <li><a href="Join/Iwant.html">加盟招聘</a></li>
            <li><a href="About/Introduce.html">关于我们</a></li> --%>
        </ul>
    </div>
</div>
