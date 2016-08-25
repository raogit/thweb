<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="header_mk">
    <div class="h-cont clearfix">
        <ul class="h-c-right">
            <li class="h-c-rli rli5"><a href="${basePath}/market/introduction.jsp">门店介绍</a></li>
            <li class="h-c-rli rli2 rli5"><a href="${basePath}/market/management.jsp">品质管理</a></li>
            <li class="h-c-rli rli3 rli5"><a href="${basePath}/market/vip.jsp">会员专区</a></li>
            <li class="h-c-rli rli4 rli5"><a href="${basePath}/market/default.jsp">集团首页</a></li>
        </ul>
        <a href="${basePath}/market/default.jsp" class="h-c-left">
            <img src="${basePath}/market/images/logo2.png" alt="">
        </a>
    </div>
</div>
