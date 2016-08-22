<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
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
				<a href="" class="h-c-l1"><img src="${basePath}/app/Images/l1.png" alt=""></a>
				<a href="" class="h-c-l2"><img src="${basePath}/app/Images/l2.png" alt=""></a>
			</div>
			<a href="" class="h-c-back">返回天虹</a>
			<ul class="h-c-title">
				<c:forEach var="item" items="${subMenus }" begin="0" step="1">
					<li>${item.name }</li>
				</c:forEach>
				<!-- <li>首页</li>
				<li>关于我们</li>
				<li>APP下载专区</li>
				<li>商务合作</li>
				<li>联系我们</li> -->
			</ul>
		</div>
	</div>
	<div class="content_app">
		<div class="cont-in">
			<div class="c-in-cont">
				<div class="c-in-txt">
					<div class="c-in-ti"><c:forEach var="item" items="${subMenus }" begin="0" step="1" end="0">
							<c:forEach var="picture" items="${item.pictures }" begin="0" step="1" end="0">
								<img src="${basePath}/download/png?fileName=${picture.path }" alt="">
							</c:forEach>
						</c:forEach></div>
					<div class="c-in-tt">本地生活服务平台</div>
					<div class="c-in-tc">革命你的生活 成就懒人梦</div>
					<ul class="c-in-tb">
						<c:forEach var="item" items="${subMenus }" begin="0" step="1" end="0">
							<c:forEach var="picture" items="${item.pictures }" begin="1" step="1" end="3">
								<li><a href="${picture.url }" target="_block">
									<img src="${basePath}/download/png?fileName=${picture.path }" alt=""><p>${picture.title }</p>
									</a>
								</li>
							</c:forEach>
						</c:forEach>
					</ul>
				</div>
				<div class="c-in-img">
					<c:forEach var="item" items="${subMenus }" begin="0" step="1" end="0">
							<c:forEach var="picture" items="${item.pictures }" begin="4" step="1" end="4">
								<img src="${basePath}/download/png?fileName=${picture.path }" alt="">
							</c:forEach>
					</c:forEach>
				</div>
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
					<div class="f-t-list">
						<div class="f-t-lt">关于天虹</div>
						<ul class="f-t-lc">
							<li><a href="">公司资讯</a></li>
							<li><a href="">组织架构</a></li>
							<li><a href="">发展历程</a></li>
							<li><a href="">企业文化</a></li>
							<li><a href="">企业形象</a></li>
							<li><a href="">自由品牌</a></li>
							<li><a href="">食品质量安全</a></li>
							<li><a href="">社会责任</a></li>
						</ul>
					</div>
					<div class="f-t-list">
						<div class="f-t-lt">新闻资讯</div>
						<ul class="f-t-lc">
							<li><a href="">公司新闻</a></li>
							<li><a href="">各地新闻</a></li>
							<li><a href="">媒体报道</a></li>
							<li><a href="">视频中心</a></li>
							<li><a href="">天虹悦读</a></li>
						</ul>
					</div>
					<div class="f-t-list">
						<div class="f-t-lt">业务布局</div>
						<ul class="f-t-lc">
							<li><a href="">天虹商场</a></li>
							<li><a href="">购物中心</a></li>
							<li><a href="">君尚百货</a></li>
							<li><a href="">微喔便利店</a></li>
							<li><a href="">天虹置业</a></li>
							<li><a href="">天虹金融</a></li>
							<li><a href="">跨境电商体验店</a></li>
							<li><a href="">天虹到家</a></li>
							<li><a href="">虹领巾</a></li>
							<li><a href="">天虹微商</a></li>
						</ul>
					</div>
					<div class="f-t-list">
						<div class="f-t-lt">招商采购</div>
						<ul class="f-t-lc">
							<li><a href="">招商中心</a></li>
							<li><a href="">成果展示</a></li>
							<li><a href="">招商公告</a></li>
							<li><a href="">各业务招商</a></li>
						</ul>
					</div>
					<div class="f-t-list">
						<div class="f-t-lt">投资者关系</div>
						<ul class="f-t-lc">
							<li><a href="">股票信息</a></li>
							<li><a href="">基本信息</a></li>
							<li><a href="">定期报告</a></li>
							<li><a href="">临时公告</a></li>
							<li><a href="">公司治理</a></li>
							<li><a href="">股东回报</a></li>
							<li><a href="">宣传与保护</a></li>
							<li><a href="">投资者互动交流</a></li>
						</ul>
					</div>
					<div class="f-t-list">
						<div class="f-t-lt">人力资源</div>
						<ul class="f-t-lc">
							<li><a href="">天虹商学院</a></li>
							<li><a href="">我们在天虹</a></li>
							<li><a href="">社会招聘</a></li>
							<li><a href="">校园招聘</a></li>
						</ul>
					</div>
				</div>
				<div class="f-t-cl">
					<div class="f-t-logo">
						<img src="${basePath}/app/Images/p_17.jpg">
					</div>
					<div class="f-t-txt">
						<p class="f-t-p">地址：深圳市福田区华富路天虹商业公司</p>
						<p class="f-t-p fp2">电话：0755-8888888</p>
					</div>
					<div class="f-t-wc">
						<img src="${basePath}/app/Images/p_20.jpg"><img src="${basePath}/app/Images/p_20.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="f-btm">
			<div class="f-b-cont clearfix">
				<div class="f-b-cr">
					<a href=""><img src="${basePath}/app/Images/p_21.png"></a> 
					<a href=""><img src="${basePath}/app/Images/p_22.png"></a> 
					<a href=""><img src="${basePath}/app/Images/p_23.png"></a>
				</div>
				<div class="f-b-cl">
					<p>
						Copyright © 2015 版权所有 天虹商场股份有限公司 <span>粤ICP备11065574号-3</span>
					</p>
					<p>技术支持：牧星策划</p>
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