<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹门店-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body style="overflow:hidden;">
	<div class="bg_mk" style="background:url(${basePath}/market2/Images/bg.jpg) no-repeat; background-size:cover;filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='${basePath}/market2/Images/bg.jpg',sizingMethod='scale');">
	    <div class="header_mk">
	        <div class="navs">
		        <a href="${basePath}" class="h-c-left">
		            <img src="${basePath}/market2/Images/logo.png" alt="">
		        </a>
		        <div class="nav-block">
		            <ul>
		                <li><a href="${basePath}/market/introduction">门店介绍</a></li>
		                <li><a href="${basePath}/market/manage">品质管理</a></li>
		                <li><a href="${basePath}/market/vip.jsp">会员专区</a></li>
		                <li><a href="${basePath}">公司首页</a></li>
		            </ul>
		        </div>
		    </div>    
	    </div>
	    <div class="content_mk">
	        <div class="cont-in">
	            <div class="c-in-tch"><img src="${basePath}/market2/Images/share1.png"></div>
	            <div class="store-shop">
	                <div class="store-list">
	                    <h2>门店选择</h2>
	                    <div class="store-ul">
	                    	<c:forEach var="item" items="${markets }" begin="0" step="1" varStatus="itemStatus">
								 <a target="_blank" href="${basePath}/market/introduction?marketId=${item.id }">${item.name }</a>
							</c:forEach>
		                </div>
	                </div>
	                
	            </div>
	        </div>
	    </div>    
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
	<script type="text/javascript" src="${basePath}/market2/Scripts/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="${basePath}/market2/Scripts/web.js"></script>
	<script type="text/javascript">
	    function webSize(){
			var winW = $(window).width();
			var winH = $(window).height();
			var foot = $(".footer_mk").height();
		    var sum = winH - foot;
			$(".bg_mk").css({width:winW,height:sum})
		}
		$(function(){
			webSize();
			$(window).resize(function(){
				webSize();
			})
		}) 
		$(".store-list").hover( function(event){
		    $(".store-ul").css("display", "block");    
		}, function(event){
		    $(".store-ul").css("display", "none");
		});
	</script>
</body>
</html>
