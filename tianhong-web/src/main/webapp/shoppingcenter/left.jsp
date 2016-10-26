<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<input type="hidden" id="menuId" name="menuId" value="${menu.id }" />
<!-- 导航栏 -->
<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
	<div class="nav_content">
		<c:if test="${fn:length(item.subMenus)>0}">
			<div class="nav_InnerBlock">
				<div class="l_nav nav_p${itemStatus.index }" >
					<c:forEach var="menu" items="${item.subMenus }" begin="0" step="1">
						<a href="news.html?page=0">${menu.name }</a>
					</c:forEach>
					<i class="hd${itemStatus.index }"></i>
				</div>
			</div>
		</c:if>
	</div>
</c:forEach>
<div class="nav_box">
	<div class="logo"><img src="${basePath}/images/shopping/common/logo.png"></div>
	<div class="nav">
		<ul>
			<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
                	<c:if test="${item.id==menu.id }">
                		<c:choose>
							<c:when test="${fn:contains(item.link, 'http')}">  
						   		<li class="current"><a target="_blank" href="${item.link }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:when>
						   	<c:otherwise> 
						   		<li class="current"><a target="_blank" href="${basePath}${item.link }?menuId=${item.id }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:otherwise>
						</c:choose>
                	</c:if>
                	<c:if test="${item.id!=menu.id }">
                		<c:choose>
							<c:when test="${fn:contains(item.link, 'http')}">  
						   		<li><a target="_blank" href="${item.link }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:when>
						   	<c:otherwise> 
						   		<li><a target="_blank" href="${basePath}${item.link }?menuId=${item.id }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:otherwise>
						</c:choose>
                	</c:if>
		    </c:forEach>
		</ul>
	</div>
	
	<a  href="#" class="back_jt">返回集团 &gt;</a>
	<div class="nav_btom">
		<p>深圳市天虹置业有限公司</p>
		<p>Copyright © 2016</p>
		<p>技术支持：牧星策划</p>
	</div>		
</div>
<!-- 导航栏 -->
