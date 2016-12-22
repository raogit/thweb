<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
	<style type="text/css">
	html.full, html.full body {
		width: 100%;
		height: 100%;
		overflow: hidden;
	}
	
	.wrapper {
		width: 100%;
	}
	</style>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
	    <div class="titleImg_content" style="background:url(../images/b_2.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_2.jpg,sizingMethod='scale');">
	        <div class="titleImg_img"><img src="../images/b_3.png"></div>
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
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
	                	</c:if>
			        </c:forEach>
	            </div>
	        </div>
	    </div>
	    <div class="bd-cont cont-H">
	        <div class="bd-cont-in">
	            <div class="bd-titleH">
	                <div style="font-size: 40px;color: #e9a171;" class="bd-tH-num">1984-2015</div>
	                <div style="color: #e9a171;" class="bd-tH-ch">天虹公司发展历程</div>
	            </div>
	        </div>
	        <div class="bd-cont-H" id="H-slideBox">
	                <div class="bd-V-arr arr-prev fl" style="cursor: pointer;">
	                    <img src="../images/img/c_20.png">
	                </div>
	                <div class="move-box">
	                    <ul class="bd-H-list">
		                    <c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
			                	<li class="H-list-li">  
		                            <div class="H-txt">
		                                <div class="H-dot"></div>
		                                <div class="H-img"><img src="${basePath}/download/png?fileName=${item.picture }" width="275px" height="400px" /></div>
		                                <div class="H-txt-c">${item.content }</div>
		                                <div style="font-size: 32px;" class="H-txt-t">${fn:substring(item.eventTimeStr,0,5) }</div>
		                            </div>
		                        </li>
					        </c:forEach>
	                    </ul>
	                </div>
	                <div class="bd-V-arr arr-next fr" style="cursor: pointer;">
	                    <img src="../images/img/c_21.png">
	                </div>
	        </div>
	        <div class="clear"></div> 
	    </div>
	
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
		(function($){
			$.fn.listRun=function(options){
				var defaults = {
					speed:500,
					liWidth:270,
					marSize:20
				};
				var o=$.extend(defaults,options,{});
				return this.each(function(){
					var that = $(this);
					var moveBox = $('.move-box',that);
					var move = $('ul',that);
					var $li = $('li',that);
					var list = $li.length;
					var liW = $li.width();
					var btnPrev = $(".arr-prev",that);
					var btnNext = $(".arr-next",that);
					var index = 0;
					function init(){
						$li.each(function(g){
							$li.eq(g).css({width:(o.liWidth+o.marSize)})
						});
						$li.eq(0).css({width:450}).addClass('current'); 
						$li.eq(0).find('.H-img').fadeIn().parent().parent().siblings().find('.H-img').hide();
					};
					init();
					
					btnPrev.bind('click',function(){
						$li.eq(list-1).prependTo(move);
						move.css({marginLeft:-(o.liWidth+o.marSize)});
						move.animate({marginLeft:0},o.speed,function(){
							move.children().eq(0).animate({width:450},o.speed).siblings().stop().animate({width:(o.liWidth+o.marSize)},o.speed);
							move.children().eq(0).addClass('current').siblings().removeClass('current');
							move.children().eq(0).find('.H-img').fadeIn(); 
						}); 
					});
					btnNext.bind('click',function(){
						move.animate({marginLeft:-(o.liWidth+o.marSize)},o.speed,function(){
							move.children().eq(0).appendTo(move);
							move.css({marginLeft:0}); 
							move.children().eq(0).animate({width:450},o.speed).siblings().stop().animate({width:(o.liWidth+o.marSize)},o.speed);
							move.children().eq(0).addClass('current').siblings().removeClass('current');
							move.children().eq(0).find('.H-img').fadeIn(); 
						});
					});
					
					$li.bind('mouseenter',function(){
						if(!$li.is(":animated")){
							$(this).animate({width:450},o.speed).siblings().stop().animate({width:(o.liWidth+o.marSize)},o.speed);
							$(this).addClass('current').siblings().removeClass('current');
							$(this).find('.H-img').fadeIn(); 
						}
					})
					 
				});
			}
		})(jQuery);
		$(function(){
			$("#H-slideBox").listRun();
		})
	</script>
</body>
</html>
