<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<jsp:include page="/base/base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<div id="webbox">
    <div class="wrap padd">
       <c:import url="${basePath}/menu/contactleft?leftMenuId=${leftMenuId }"></c:import>
       <%--  <div class="lt menu-left">
            <div class="menu-left-page contact-page">
                <p>联系我们</p>
                <span>contact us</span>
            </div>
            <div class="menu-left-item">
                <ul id="item-menu">
                    <li><a href="${basePath}/contact/index" class="m mActino">联系方式</a></li> 
                    <li><a href="${basePath}/contact/message" class="m">在线留言</a> </li> 
                </ul>
            </div>
        </div>  --%>
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>contact us<em>/</em>联系方式</h1> 
            </div>
            <div class="right-infor">
                <div class="contact-maps lt"><c:forEach var="item" items="${subPictures }" begin="0" step="1" end="0" varStatus="status">
					<img src="${basePath}/download/png?fileName=${item.path }" />
				</c:forEach></div>
				
                <div class="contact-content rt">
                    <div class="contact-title">
                        <h1>联系方式</h1>
                        <p>Contact information</p>
                    </div>  
                    <div class="phone-number"><span>${content.phone }</span></div>
                    <div class="contact-adder">公司地址：${content.address }</div>
                    <ul class="two-code">
	                    <c:forEach var="item" items="${subPictures }" begin="1" step="1" end="2" varStatus="status">
							<li><img src="${basePath}/download/png?fileName=${item.path }"><p>${item.title }</p></li>
						</c:forEach>
                    </ul> 
                </div>
            </div> 
        </div>
        <div class="clear"></div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>
<script type="text/javascript">
$(function(){
    
    $("#item-menu li a.m").eq(0).addClass('mActino');  
     
})
</script>
</body>
</html>
