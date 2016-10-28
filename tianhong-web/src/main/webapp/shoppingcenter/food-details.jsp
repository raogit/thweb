<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv=”X-UA-Compatible” content=”IE=edge,chrome=1″ />
	<title>T-天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body class="shpping" style="overflow: hidden;">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="common_parentBlock">
            <div class="common_page Foods_bg">
                <div class="Foods_block">
                    <div class="Foods_details" style="border: 0px solid #ccc;height: 600px;">
                        <div class="brand_info">
                            <h2 style="background: url(images/tb1.png) no-repeat;">${news.title }
                                <a href="JavaScript:history.go(-1)">&gt;&gt; 返回</a>
                            </h2>
                            <div class="brand_introduce" style="height: 100%;">${news.content }</div>
                            <!-- <ul>
                                <div class="left">
                                    <p>店号：<span>000CCC</span></p>
                                    <p>电话：<span>暂无</span></p>
                                    <p>营业时间：<span>AM9:00-PM10:00</span></p>
                                </div>
                                <div class="right">
                                    <p>所属业态：<span>餐饮类</span></p>
                                    <p>网址：<span></span>暂无</p>
                                    <p>店铺位置：<span>LIC-098</span></p>
                                </div>
                                <div class="clear"></div>
                            </ul> -->
                        </div>
                        <div class="brand_pic">
                            <div class="brand_img"><img src="${basePath}/download/png?fileName=${news.picture }" width="317px" height="488px"/></div>
                            <!-- <div class="dot"><span class="cursor"></span><span></span></div> -->
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
