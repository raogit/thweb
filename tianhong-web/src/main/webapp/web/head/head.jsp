<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<input type="hidden" id="menuId" name="menuId" value="${menu.id }" />
<div class="Header">
	<div class="header_bg"></div>
    <div class="header_content">
        <a href="${basePath}" class="header_logo"><img src="../images/logo.png"></a>
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
                <div style="clear:both;"></div>
            </div>
            <div class="header_rightBlock">
                <!-- <div class="header_wcWb">
                    <a href="javascript:;" class="header_wb"></a>
                    <a href="javascript:;" class="header_wc"></a>
                </div> -->
                <div style="clear:both;"></div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="header_onBlock" style="top:0px">
		<div class="header_onBlockBg"></div>
		<c:forEach var="item" items="${headMenus }" begin="1" step="1" varStatus="itemStatus">
			<div class="header_onBlockBg">
				<c:if test="${fn:length(item.subMenus)>0}">
					<div class="BlockBg"></div>
				</c:if>
				<div class="header_onBlockIn">
					<ul class="${item.backup3 }">
						<c:forEach var="sub" items="${item.subMenus }" begin="0" step="1">
							<c:if test="${item.name=='多元业务' }">
								<c:choose>
									<c:when test="${fn:contains(sub.link, 'http')}">  
								   		<li><a target="_blank" href="${sub.link }">${sub.name }</a></li>  
								   	</c:when>
								   	<c:otherwise> 
								   		<li><a target="_blank" href="${basePath}${sub.link }?menuId=${sub.id }">${sub.name }</a></li>
								   	</c:otherwise>
								</c:choose>
							</c:if>
							<c:if test="${item.name!='多元业务' }">
								<c:choose>
									<c:when test="${fn:contains(sub.link, 'http')}">  
								   		<li><a href="${sub.link }">${sub.name }</a></li>  
								   	</c:when>
								   	<c:otherwise> 
								   		<li><a href="${basePath}${sub.link }?menuId=${sub.id }">${sub.name }</a></li>
								   	</c:otherwise>
								</c:choose>
							</c:if>
						</c:forEach>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
