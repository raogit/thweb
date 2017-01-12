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
		        <a href="Default.html" class="h-c-left">
		            <img src="images/logo.png" alt="">
		        </a>
		        <div class="nav-block">
		            <ul>
		                <li><a href="Introduction.html">门店介绍</a></li>
		                <li><a href="Management.html">品质管理</a></li>
		                <li><a href="Vip.html">会员专区</a></li>
		                <li><a href="Default.html">公司首页</a></li>
		            </ul>
		        </div>
		    </div>    
	    </div>
	    <div class="content_mk">
	        <div class="cont-in">
	            <div class="c-in-tch"><img src="images/share1.png"></div>
	            <div class="store-shop">
	                <div class="store-list">
	                    <h2>门店选择</h2>
	                    <div class="store-ul">
		            		<a href="javascript:;">东门天虹</a>
		            		<a href="javascript:;">福民天虹</a>
		            		<a href="javascript:;">后海天虹</a>
		            		<a href="javascript:;">国贸天虹</a>
		            		<a href="javascript:;">西丽天虹</a>
		            		<a href="javascript:;">龙新天虹</a>
		            		<a href="javascript:;">观澜天虹</a>
		            		<a href="javascript:;">布吉天虹</a>
		            		<a href="javascript:;">前海天虹</a>
		            		<a href="javascript:;">沙井天虹</a>
		                </div>
	                </div>
	                
	            </div>
	        </div>
	    </div>    
	</div>
	<div class="footer_mk">
	        <div class="f-cont">
	          <div class="f-c-left"><span>版权所有：天虹商场股份有限公司</span>
	              <span>备案号：粤ICP备11065574号-3</span>
	            </div>
	        </div>
	      <div class="clear"></div>
	    </div>
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
