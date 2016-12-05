<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	
	<title>天虹官网</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="head/head.jsp"></jsp:include>
<div class="content">
    <div class="cont-in">
        <div class="cont-int clearfix">
            <ul class="c-i-img">
                <c:forEach var="item" items="${pictures }" begin="1" step="1" end="3" varStatus="itemStatus">
                	<c:choose>
						<c:when test="${fn:contains(item.url, 'http')}">  
					   		<li><a href="${item.url}"><img src="${basePath}/download/png?fileName=${item.path }" alt="" width="211px" height="90px"></a></li>
					   	</c:when>
					   	<c:otherwise> 
					   		<li><a href="${basePath}/${item.url}"><img src="${basePath}/download/png?fileName=${item.path }" alt="" width="211px" height="90px"></a></li>
					   	</c:otherwise>
					</c:choose>
	            	 
	            </c:forEach>
            </ul>
            <div class="c-i-banner">
	            <c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
	            	<img src="${basePath}/download/png?fileName=${item.path }" alt=""  width="743px" height="290px">
	            </c:forEach>
            </div>
        </div>
        <div class="c-i-new">
            <div class="c-i-nleft">
                <div class="n-l-ch">新品推荐</div>
                <div class="n-l-en">New arrival</div>
            </div>
            <ul class="c-i-nright">
            	<c:forEach var="item" items="${newProductList }" begin="0" step="1" end="4" varStatus="itemStatus">
	            	 <li><img src="${basePath}/download/png?fileName=${item.picture }" alt=""  width="60px" height="60px"><p style="padding-bottom:5px;">${item.name }</p></li>
	            </c:forEach>
            </ul>
        </div>
        <div class="c-i-btm">
            <div class="c-i-bright">
                <div class="b-r-title">最新消息</div>
                <div class="b-r-cont">
                    <div class="b-r-cT">
                        <img src="${basePath }/images/store/index/i_06.png" alt="">
                        <ul class="b-r-list">
	                        <c:forEach var="item" items="${newsList }" begin="0" step="1" end="4" varStatus="itemStatus">
				            	<li><a href="${basePath }/store/newinfo">
				            	<div class="b-r-cL">${item.title }</div>
				            	<div class="b-r-cR">${fn:substring(item.startTimeStr,0,11) }</div></a></li>
				            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="c-i-bleft">
                <div class="b-l-title">商品介绍</div>
                <div class="b-l-cont">
	                <c:forEach var="item" items="${storeProductsList }" begin="0" step="1" end="5" varStatus="itemStatus">
		            	<div class="l-cont-in">
	                        <div class="l-cont-inl"><img src="${basePath}/download/png?fileName=${item.picture }" alt=""  width="60px" height="60px"></div>
	                        <div class="l-cont-inr"><p>${item.name }</p><p class="inr-en"></p></div>
	                    </div>
		            </c:forEach>
                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="foot/foot.jsp"></jsp:include>

</body>
</html>
