<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>购物中心-天虹商场|官方网站，分享生活之美</title>
	<jsp:include page="base.jsp"></jsp:include>
	<link href="${basePath}/css/richtext/froala_page.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
</head>

<body class="shpping" style="overflow: hidden;">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="common_parentBlock">
            <div class="common_page Foods_bg">
                <div class="Foods_block" style="border: solid 1px #252525;">
                    <div class="Foods_details" style="border: 0px solid #ccc;height: 600px;">
                        <div class="brand_info" style="width: 100%;">
                            <h2 style="background: url(images/tb1.png) no-repeat;width: 430px;">${news.title }
                                <a href="JavaScript:history.go(-1)">&gt;&gt; 返回</a>
                            </h2>
                            <div class="froala-element not-msie f-basic f-placeholder" style="border: solid 0px #252525;">${fn:replace(news.content,back,basePath)}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
	 <script type="text/javascript">
       /*  $(function(){
           
            var on = 0,
                maxSize = $(".brand_img img").length;
            var showImg = function(){
                $(".brand_img img").eq(on).siblings().stop(true,true).fadeOut(500);
                $(".brand_img img").eq(on).stop(true,true).fadeIn(500);
                $(".dot span").eq(on).addClass("cursor").siblings().removeClass("cursor");
            }
            var setInt = setInterval(function(){
                on++;               
                on %= maxSize;
                showImg();
            },3500)
            $(".dot span").bind("mouseover",function(){
                on = $(this).index();
                showImg();                
            })
            $(".dot").hover(function(){
            	clearInterval(setInt);
            },function(){
            	setInt = setInterval(function(){
	                on++;               
	                on %= maxSize;
	                showImg();
	            },3500)
            })
        }) */
    </script> 

</body>
</html>
