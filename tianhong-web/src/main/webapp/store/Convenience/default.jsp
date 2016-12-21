<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<input type="hidden" value="${menu.id }" id="menuId" name="menuId"/>
<div class="content">
    <div class="cont-in clearfix">
        <div class="new-right">
            <div class="cm-nav dt-nav">
                <div class="cm-n-title">${menu.name } <i></i></div>
                <div class="cm-n-cont">
                	<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
						<a href="${basePath}/store/servicejoinabout/detail?menuId=${item.menuId}&categoryId=${item.id }"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
					</c:forEach>
                </div>
            </div>
            <div class="n-r-nav">
                <c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
	            	<div class="n-r-top">
						<img src="${basePath}/download/png?fileName=${item.path }" alt="" width="164px" height="73px">
					</div>
	            </c:forEach>
				<c:forEach var="item" items="${pictures }" begin="1" step="1" end="1" varStatus="itemStatus">
	            	<div class="n-r-new">
						<img src="${basePath}/download/png?fileName=${item.path }" alt="" width="164px" height="73px" />
						 <div class="n-r-nin">
	                        <img src="${basePath}/images/store/n_13.png" alt="" />
	                    </div>
					</div>
	            </c:forEach>
            </div>
        </div>
        <div class="new-left">
            <div class="n-l-top">
                <img src="${basePath}/images/store/n_02.jpg" alt=""></div>
            <div class="n-l-c">
                <div class="n-l-crumb">
                    <div class="n-l-cleft">
                        <a href="${basePath}/store/servicejoinabout/index?menuId=${menu.id }"><div class="c-home"><img src="${basePath}/images/store/n_03.png" alt=""></div></a>
                        <a href="${basePath}/store/servicejoinabout/index?menuId=${menu.id }"><div class="c-h-in">${menu.name }<i></i></div></a>
                    </div>
                    <div class="c-now"><%-- ${categoryName } --%></div>
                </div>
            </div>
            <div class="n-l-cont">
                <div class="n-l-ct">${menu.name }</div>
                <div class="n-l-line"> </div>
                <c:forEach var="item" items="${activitys }" begin="0" step="1" end="2" varStatus="itemStatus">
                	<div style="padding-top: 20px;"><p><em style="color: #f08200;font-size: 20px;">${item.categoryName }</em></p></div>
	            	<div class="at-rec cv-rec" >
	                    <div class="froala-element at-rec-cont clearfix" style="height: 400px;overflow: hidden;">${fn:replace(item.content,back,basePath)}</div>
	                    <div class="cv-btn"><a href="${basePath}/store/servicejoinabout/detail?categoryId=${item.categoryId }&menuId=${menu.id}">了解更多</a></div>
	                    <div class="n-l-line itd-line cv-line"></div>
	                </div>
	            </c:forEach>
                
                
                
                
            </div>
        </div>
        <div class="n-l-btm">
            <img src="${basePath}/images/store/n_12.png" alt="">
        </div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
