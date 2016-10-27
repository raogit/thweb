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
		<div class="bodyer">
			<div class="common_parentBlock">
				<div class="common_page Foods_bg">
					<div class="Foods_block">
						<div class="foods">
							<div class="Nav">
								<div class="activity">
									<div class="activity_title">活动讯息<i></i></div>
									<ul class="activity_list">
										<li><a href="News_details.html"><b>拿都斯里8月08日已经盛大开业啦!</b><span>活动时间:08月10日-08月14日</span></a></li>
										<li><a href="News_details.html"><b>拿都斯里8月08日已经盛大开业啦!</b><span>活动时间:08月10日-08月14日</span></a></li>
										<li><a href="News_details.html"><b>拿都斯里8月08日已经盛大开业啦!</b><span>活动时间:08月10日-08月14日</span></a></li>
									</ul>
									<div class="clear"></div>
								</div>
								<div class="menu">
									<ul>
										<li><a href="JavaScript:;" class="eat1">特色美食<i></i></a></li>
										<li><a href="JavaScript:;" class="eat2">休闲娱乐<i></i></a></li>
										<li><a href="JavaScript:;" class="eat3">潮流风尚<i></i></a></li>
										<div class="clear"></div>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<div class="pic_Area">
								<div class="banner">
									<div class="banner_img banner_content">
										<img src="images/5.jpg" alt=""> <img
											src="images/1_021.jpg" alt="">
									</div>
									<div class="dot">
										<span class="cursor"></span> <span></span>
									</div>
								</div>


								<div class="store_Area">
									<ul class="Dining" style="display: block;">
										<li><a href="food_details.html"><img src="images/aa.jpg"></a></li>
										<li><a href="food_details.html"><img src="images/a.jpg"></a></li>
										<li><a href="food_details.html"><img src="images/b.jpg"></a></li>
										<li><a href="food_details.html"><img src="images/c.jpg"></a></li>
										<li><a href="food_details.html"><img src="images/d.jpg"></a></li>
										<li><a href="food_details.html"><img src="images/e.jpg"></a></li>
									</ul>
									<div class="choose_button choose_button_food">
										<div class="video_choose">
											<a href="#" class="fl"><img src="images/common/up.png"></a>
											<p class="fl next_page">1/6</p>
											<a href="#" class="fl"><img src="images/common/next.png"></a>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
	<script type="text/javascript">
        $(function(){
            var page = parseInt(window.location.href.split("page=")[1])?parseInt(window.location.href.split("page=")[1]):0;
            $(".menu li").eq(page).addClass("current");
            $(".menu li").bind("click",function(){
                page = $(this).index();
                $(".menu li").eq(page).addClass("current").siblings().removeClass("current");
            })

            var on = 0, maxSize = $(".banner_img img").length;
            var showImg = function(){
                $(".banner_img img").eq(on).siblings().stop(true,true).fadeOut(500);
                $(".banner_img img").eq(on).stop(true,true).fadeIn(500);
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
        })
    </script>

</body>
</html>
