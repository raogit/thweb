<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<input type="hidden" id="menuId" name="menuId" value="${menu.id }" />
<div class="Header">
    <div class="header_content">
        <a href="index.html" class="header_logo"><img src="../images/logo.png"></a>
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
                <div class="header_wcWb">
                    <a href="javascript:;" class="header_wb"></a>
                    <a href="javascript:;" class="header_wc"></a>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="header_onBlock">
		<div class="header_onBlockBg"></div>
		<c:forEach var="item" items="${headMenus }" begin="1" step="1" varStatus="itemStatus">
			<div class="header_onBlockBg">
				<div class="header_onBlockIn">
					<ul class="header_onList">
						<c:forEach var="sub" items="${item.subMenus }" begin="0" step="1">
							<li><a href="${basePath}${sub.link }?menuId=${sub.id }">${sub.name }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
