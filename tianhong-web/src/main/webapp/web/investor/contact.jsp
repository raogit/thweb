<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
    <meta charset="UTF-8">
	<title>天虹集团官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
    <div class="bodyer">
        <div class="titleImg_content" style="background:url(../images/i_bg1.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/i_bg1.jpg,sizingMethod='scale');">
            <div class="titleImg_img"><img src="../images/i_bg2.png"></div>
        </div>
        <div class="nav_content">
            <div class="nav_contentBlock">
                <div class="nav_aContent">
                    <a href="${basePath}" class="nav_aBlock icon">首页</a> 
					<a href="javascript:void(0);" class="nav_aBlock icon">${parentMenu.name }</a>
					<a href="javascript:void(0);" class="nav_aBlock">${menu.name }</a>
                </div>
                <div class="nav_ulBlock">
                    <c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock current">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
			        </c:forEach>
                </div>
            </div>
        </div>
        <div class="inves_content">
            <div class="inves_ContactBox">
                <div class="inves_ContactL">
                    <img src="${basePath}/download/png?fileName=${picture.path }">
                </div>
                <div class="inves_ContactR">
                    <div class="inves_ContactTit">
                        <h3>联系方式</h3>
                        <h5>Contact information</h5>
                    </div>
                    <c:forEach var="item" items="${infos }" begin="0" step="1" end="0" varStatus="itemStatus">
	                	<div class="inves_Pinfo">
	                        <div class="inves_Pname">
	                            <span>${item.name }</span>&nbsp;&nbsp;<em>${item.job }</em>
	                        </div>
	                        <div class="phone">${item.phone }</div>
	                        <div class="mail">${item.email }</div>
	                    </div>
			        </c:forEach>
                    <c:forEach var="item" items="${infos }" begin="1" step="1" end="1" varStatus="itemStatus">
	                    <div class="inves_Pinfo inves_PinfoL">
		                    <div class="inves_Pname">
	                            <span>${item.name }</span>&nbsp;&nbsp;<em>${item.job }</em>
	                        </div>
	                        <div class="phone">${item.phone }</div>
		                    <div class="mail">${item.email }</div>
		                </div>
			        </c:forEach>
                        
                    <div class="clear"></div>
                    <div class="inves_ContactTit inves_ContactTitT">
                        <h3>投资者交流</h3>
                        <h5>Contact information</h5>
                    </div>
                     <div class="inves_trade">
                         <h3>深圳证券交易所互动易平台</h3>
                         <a href="http://irm.cninfo.com.cn/ssessgs/S002419/index.html" target="_blank">点击进入</a>
                     </div>
                </div>
                <div class="clear"></div>
            </div>
         </div>
	</div>
    <jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
