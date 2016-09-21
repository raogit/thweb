<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<input type="hidden" id="menuId" name="menuId" value="${menu.id }" />
<div class="Header H2">
    <div class="header_content">
        <a href="${basePath}/web/index" class="header_logo"><img src="images/logo.png"></a>
        <div class="header_contentBlock">
            <div class="header_ulBlock">
            	<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
		        	<c:if test="${item.id==parentMenu.id }">
                		<a href="${basePath}${item.link }?menuId=${item.id }" class="header_liBlock current">${item.name }</a>
                	</c:if>
                	<c:if test="${item.id!=parentMenu.id }">
                		<a href="${basePath}${item.link }?menuId=${item.id }" class="header_liBlock">${item.name }</a>
                	</c:if>
		        </c:forEach>
                <!-- <a href="index.html" class="header_liBlock">首 页</a>
                <a href="aboutUs/Intro.html" class="header_liBlock">关于天虹</a>
                <a href="Business.html" class="header_liBlock">多元业务</a>
                <a href="culture/index.html" class="header_liBlock">企业文化</a>
                <a href="staff/School.html" class="header_liBlock">人力资源</a>
                <a href="business/BusineIndex.html" class="header_liBlock">招商采购</a>
                <a href="news/news.html" class="header_liBlock">新闻中心</a>
                <a href="investor/inveIndex.html" class="header_liBlock">投资者关系</a> -->
                <div style="clear:both;"></div>
            </div>
            <div class="header_rightBlock">
                <div class="header_wcWb">
                    <a href="javascript:;" class="header_wb"></a>
                    <a href="javascript:;" class="header_wc"></a>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
</div>
