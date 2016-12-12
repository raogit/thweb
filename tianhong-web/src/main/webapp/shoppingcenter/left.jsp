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
					<c:forEach var="mu" items="${item.subMenus }" begin="0" step="1">
						<c:if test="${empty mu.link }">
							<a href="javascript:void(0);" >${mu.name }</a>
						</c:if>
						<c:if test="${!empty mu.link }">
							<c:choose>
								<c:when test="${fn:contains(mu.link, 'http')}">  
							   		<a href="${item.link }" >${mu.name }</a>
							   	</c:when>
							   	<c:otherwise> 
								   	<c:if test="${mu.id==276 }">
								   		<a href="${basePath}${mu.link }" >${mu.name }</a>
								   	</c:if>
								   	<c:if test="${mu.id!=276 }">
								   		<a href="${basePath}${mu.link }?menuId=${mu.id }" >${mu.name }</a>
								   	</c:if>
							   		
							   	</c:otherwise>
							</c:choose>
						</c:if>
					</c:forEach>
					<i class="hd${itemStatus.index }"></i>
				</div>
			</div>
		</c:if>
	</div>
</c:forEach>
<div class="nav_box">
	<div class="logo"><a href="${basePath}"><img src="${basePath}/images/shopping/common/logo.png"></a></div>
	<div class="nav">
		<ul>
			<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
                	<c:if test="${item.id==parentMenu.id }">
                		<c:choose>
							<c:when test="${fn:contains(item.link, 'http')}">  
						   		<li class="current"><a target="_blank" href="${item.link }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:when>
						   	<c:otherwise> 
						   		<li class="current"><a href="${basePath}${item.link }?menuId=${item.id }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:otherwise>
						</c:choose>
                	</c:if>
                	<c:if test="${item.id!=parentMenu.id }">
                		<c:choose>
							<c:when test="${fn:contains(item.link, 'http')}">  
						   		<li><a target="_blank" href="${item.link }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:when>
						   	<c:otherwise> 
						   		<li><a href="${basePath}${item.link }?menuId=${item.id }"  class="nav_blockText" >${item.name }</a></li>
						   	</c:otherwise>
						</c:choose>
                	</c:if>
		    </c:forEach>
		</ul>
	</div>
	
	<a href="${basePath}" class="back_jt">公司首页 &gt;</a>
	<div class="nav_btom">
		<p>天虹商场股份有限公司</p>
		<p>Copyright © 2016</p>
	</div>		
</div>
<!-- 导航栏 -->
