<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
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
										<c:forEach var="item" items="${activityInfo }" begin="0" step="1" end="2" varStatus="itemStatus">
											<li><a href="${basePath}/web/newscenter/detail?id=${item.id }&menuId=${item.menuId}"><b>${item.title }</b><span></span></a></li>
										</c:forEach>
										<!-- <li><a href="News_details.html"><b>拿都斯里8月08日已经盛大开业啦!</b><span>活动时间:08月10日-08月14日</span></a></li>
										<li><a href="News_details.html"><b>拿都斯里8月08日已经盛大开业啦!</b><span>活动时间:08月10日-08月14日</span></a></li>
										<li><a href="News_details.html"><b>拿都斯里8月08日已经盛大开业啦!</b><span>活动时间:08月10日-08月14日</span></a></li> -->
									</ul>
									<div class="clear"></div>
								</div>
								<div class="menu">
									<ul>
										<li <c:if test="${fn:contains(menu.name, '特色美食') }">class="current"</c:if>><a href="${basePath}/shopping/specia/food?menuId=269" class="eat1">特色美食<i></i></a></li>
										<li <c:if test="${fn:contains(menu.name, '休闲娱乐') }">class="current"</c:if>><a href="${basePath}/shopping/specia/food?menuId=270" class="eat2">休闲娱乐<i></i></a></li>
										<li <c:if test="${fn:contains(menu.name, '潮流风尚') }">class="current"</c:if>><a href="${basePath}/shopping/specia/food?menuId=271" class="eat3">潮流风尚<i></i></a></li>
										<div class="clear"></div>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<div class="pic_Area">
								<div class="banner">
									<div class="banner_img banner_content">
										<c:forEach var="item" items="${rotationPictures }" begin="0" step="1" varStatus="itemStatus">
											<img src="${basePath}/download/png?fileName=${item.path }" width="570px" height="548px" /> 
										</c:forEach>
										<!-- <img src="images/5.jpg" alt=""> 
										<img src="images/1_021.jpg" alt=""> -->
									</div>
									<div class="dot">
										<span class="cursor"></span> <span></span>
									</div>
								</div>


								<div class="store_Area">
									<ul class="Dining" style="display: block;">
										<c:forEach var="item" items="${ads.obj }" begin="0" step="1" end="5" varStatus="itemStatus">
											<li><a href="${basePath}/shopping/specia/detail?id=${item.id }"><img src="${basePath}/download/png?fileName=${item.picture }"></a></li>
										</c:forEach>
									</ul>
									<div class="choose_button choose_button_food">
										<div class="video_choose">
											<c:if test="${ads.curPage>1}">
												<a href="${basePath}/shopping/specia/food?menuId=${menu.id }&curPage=${ads.curPage-1}" class="fl">
													<img src="${basePath}/images/shopping/common/up.png">
												</a>
											</c:if>
											<c:if test="${ads.curPage<=1}">
												<img src="${basePath}/images/shopping/common/up_gray.png" class="fl">
											</c:if>
											
											<p class="fl next_page">${ads.curPage}/${ads.totalPage}</p>
											<c:if test="${ads.curPage<ads.totalPage}">
												<a href="${basePath}/shopping/specia/food?menuId=${menu.id }&curPage=${ads.curPage+1>ads.totalPage?ads.totalPage:ads.curPage+1}" class="fl">
													<img src="${basePath}/images/shopping/common/next.png">
												</a>
											</c:if>
											<c:if test="${ads.curPage>=ads.totalPage}">
													<img src="${basePath}/images/shopping/common/next_gray.png" class="fl">
											</c:if>
											
											
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
           // $(".menu li").eq(page).addClass("current");
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
