<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>虹领巾-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path;
		request.setAttribute("path", path);
		request.setAttribute("basePath", basePath);
		request.setAttribute("ver", Math.random());
	%>
	<link rel="shortcut icon" href="${basePath}/images/favicon.ico" type="image/x-icon">
	<input type="hidden" value="${basePath }" id="basePath" name="basePath" />
	<input type="hidden" value="${path }" id="path" name="path" />
	<link rel="stylesheet" href="${basePath}/app/Style/index.css">
</head>

<body>
	<div class="header_app">
		<div class="h-cont">
			<div class="h-c-left">
				<a href="${basePath}" class="h-c-l1"><img src="${basePath}/app/Images/l1.png" alt=""></a>
				<a href="${basePath}" class="h-c-l2"><img src="${basePath}/app/Images/l2.png" alt=""></a>
			</div>
			<a href="${basePath}" class="h-c-back">公司首页</a>
			<ul class="h-c-title">
				<%-- <c:forEach var="item" items="${subMenus }" begin="0" step="1">
					<li>${item.name }</li>
				</c:forEach> --%>
				<li>首页</li>
				<li>关于我们</li>
				<li>APP下载专区</li>
				<li>商务合作</li>
				<li>联系我们</li>
			</ul>
		</div>
	</div>
	<div class="content_app">
		<div class="cont-in">
			<div class="c-in-cont">
				<div class="c-in-txt">
					<div class="c-in-ti"><img src="${basePath}/app/Images/p_9.png" alt=""></div>
					<div class="c-in-tt">本地生活服务平台</div>
					<div class="c-in-tc">革命你的生活 成就懒人梦</div>
					<ul class="c-in-tb">
	                    <li><a href="http://www.honglingjin.cn/" target="_block"><img src="${basePath}/app/Images/p_6.png" alt=""><p>虹领巾APP</p></a></li>
	                    <li><a href="http://www.tianhong.cn/app_off_download.html" target="_block"><img src="${basePath}/app/Images/p_7.png" alt=""><p>虹领巾PC</p></a></li>
	                    <li><a href="http://m.honglingjin.cn/" target="_block"><img src="${basePath}/app/Images/p_8.png" alt=""><p>虹领巾wap</p></a></li>
	                </ul>
				</div>
				<div class="c-in-img"><img src="${basePath}/app/Images/p_1.png" alt=""></div>
			</div>
			<div class="c-in-btm"></div>
		</div>
		<div class="cont-in c-in2">
			<div class="c-in-cont">
				<div class="c-in-img2">
					<img src="${basePath}/app/Images/p_2.png" alt="">
				</div>
				<div class="c-in-txt2">
					<div class="c-in-tt2">APP功能介绍</div>
					<div class="c-in-tc2">虹领巾是天虹商场股份有限公司打造的本地化生活消费服务平台，在线销售生鲜、食品、家电、百货、母婴、服饰、海淘、美容护理等优质商品，满足顾客日常购物和生活资讯需求。</div>
					<ul class="c-in-tb2">
						<li><a href=""><img src="${basePath}/app/Images/p_10.png" alt="">
								<p class="ta2-p1">海外购</p>
								<p>国际买手帮你把全球热门尖货搬回家</p></a></li>
						<li><a href=""><img src="${basePath}/app/Images/p_11.png" alt="">
								<p class="ta2-p1">天虹到家</p>
								<p>超市直送，2小时到家</p></a></li>
						<li><a href=""><img src="${basePath}/app/Images/p_12.png" alt="">
								<p class="ta2-p1">优惠券</p>
								<p>用券更优惠</p></a></li>
					</ul>
				</div>
			</div>
			<div class="c-in-btm c-ib2"></div>
		</div>
		<div class="cont-in c-in3">
			<div class="c-in-cont clearfix">
				<div class="fr">
					<img src="${basePath}/app/Images/p_3.png" alt="">
				</div>
				<div class="c-in-txt c-ic2 fl">
					<div class="c-in-tt tt3">APP下载专区</div>
					<div class="c-in-tc3">适用于iOS 7.0 Android 2.3或以上平台</div>
					<div class="c-in-wc clearfix">
						<div class="wc-in fr">
							<img src="${basePath}/app/Images/p_14.png" alt="">
							<p>天虹微信</p>
						</div>
						<div class="wc-in fl">
							<img src="${basePath}/app/Images/p_13.png" alt="">
							<p>天虹官方app虹领巾</p>
						</div>
					</div>
				</div>
			</div>
			<div class="c-in-btm c-ib3"></div>
		</div>
		<div class="cont-in c-in4">
			<div class="c-in-cont clearfix">
				<div class="c-in-txt4 fr">
					<div class="c-in-tt2">本地生活服务平台招商</div>
					<div class="c-in-tc4">致力于为用户提供便捷有特色的城市生活服务</div>
					<div class="c-in-join clearfix">
						<div class="j-right">
							<p>
								您可以是<strong> 专注于某垂直类生活服务 </strong>的建设
							</p>
							<p>
								或者是拥有<strong> 本地生活服务资源拓展计划 </strong>的大咖
							</p>
							<p>
								您也可以是<strong> 拥有O2O新领域探索 </strong>的创想家
							</p>
						</div>
						<div class="j-left">
							<p>
								<strong>如何加入我们？</strong>
							</p>
							<p>
								请将您公司、业务介绍、联系方式<br> 发送至下方邮箱，我们将尽快与您联系。
							</p>
							<p>
								<strong>myrainbow@rainbowcn.com</strong>
							</p>
						</div>
					</div>
					<div class="c-in-tc41">无论是哪种形式，我们都诚挚地邀请您的加入！</div>
				</div>
				<div class="fl">
					<img src="${basePath}/app/Images/p_4.png" alt="">
				</div>
			</div>
			<div class="c-in-btm c-ib4"></div>
		</div>
		<div class="cont-in c-in5">
			<div class="c-in-cont clearfix">
				<div class="fr">
					<img src="${basePath}/app/Images/p_5.png" alt="">
				</div>
				<div class="c-in-txt c-ic5 fl">
					<div class="c-in-tt tt3">联系我们</div>
					<div class="c-in-tc5">
						<p>深圳市南山区中心路深圳湾段3019号天虹总部大厦18楼</p>
						<p>联系电话：4008-295-295</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer_app">
		<div class="f-top clearfix">
			<div class="f-t-cont">
				<div class="f-t-cr clearfix">
					<c:forEach var="item" items="${headMenus }" begin="1" step="1" varStatus="itemStatus">
						<c:if test="${fn:length(item.subMenus)>0 }">
							<div class="f-t-list">
								<div class="f-t-lt">${item.name }</div>
								<ul class="f-t-lc">
									<c:forEach var="menu" items="${item.subMenus }" begin="0" step="1" varStatus="itemStatus">
										<c:choose>
											<c:when test="${fn:contains(menu.link, 'http')}">  
										   		<li><a target="_blank" href="${menu.link }">${menu.name }</a></li>
										   	</c:when>
										   	<c:otherwise> 
										   		<li><a target="_blank" href="${basePath}${menu.link }?menuId=${menu.id }">${menu.name }</a></li>
										   	</c:otherwise>
										</c:choose>
									</c:forEach>
								</ul>
							</div>
						</c:if>
					</c:forEach>
				</div>
				<div class="f-t-cl">
					<div class="f-t-logo">
						<img src="${basePath}/app/Images/p_17.jpg">
					</div>
					<div class="f-t-txt">
						<p class="f-t-p">地址：深圳市南山区中心路（深圳湾段）3019号天虹大厦9-14楼、17-20楼</p>
						<p class="f-t-p fp2">电话：0755-23651000 23652000</p>
					</div>
					<div class="f-t-wc">
						<img src="${basePath}/app/Images/p_20.jpg"><img src="${basePath}/app/Images/p_20.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="f-btm">
			<div class="f-b-cont clearfix">
				<div class="f-b-cr" style="width:200px;color:#fff;">客服热线   4008-295-295</div>
				<div class="f-b-cl">
					<p>
						Copyright © 2015 版权所有 天虹商场股份有限公司 <span>粤ICP备11065574号-3</span>
					</p>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="JS/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="JS/jquery.mousewheel.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(function() {
				var on = 0, blockTop = 0, maxSize = $(".cont-in").length, wHeight = $(
						window).height();
				$(".cont-in").css({
					"height" : wHeight
				});
				var scrollFun = function() {
					if (on == 0) {
						blockTop = 0;
					} else if (on == maxSize) {
						blockTop = $(".footer_app").offset().top;
					} else {
						blockTop = $(".cont-in").eq(on).offset().top - 40;
					}
					$(".h-c-title li").eq(on).addClass("current").siblings()
							.removeClass("current");
					$("html,body").stop().animate({
						scrollTop : blockTop
					})
				}
				$(window).resize(function() {
					wHeight = $(window).height()
					$(".cont-in").css({
						"height" : wHeight
					});
					scrollFun();
				})
				$(".h-c-title li").bind("click", function() {
					on = $(this).index();
					scrollFun();
				})

				var scrollMousewheel = function() {
					//滚轮滚动控制           
					var dataScroll = 0;
					$(document).bind('mousewheel', function(event, delta) {
						if (new Date().getTime() - dataScroll > 500) {
							if (delta > 0) {
								if (on > 0) {
									on -= 1;
									scrollFun();
								}
							} else {
								if (on < maxSize) {
									on += 1;
									scrollFun();
								}
							}
							dataScroll = new Date().getTime();

						}
						return false;
					});
				}

				scrollMousewheel();

			})
		})
	</script>
</body>
</html>
