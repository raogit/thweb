<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天虹官网</title>
<jsp:include page="base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>

	<div class="c-in-cont">
		<div class="c-in-right">
			<div class="c-in-rt">
				<div class="c-in-rti">
					<div class="c-in-ltx ltx2 fl">门店介绍</div>
					<ul class="c-in-rtr">
						<li class="c-in-rli rtr-at">门店介绍</li>
						<li class="c-in-rli">门店新闻</li>
						<li class="c-in-rli">门店活动</li>
					</ul>
				</div>
			</div>
			<div class="bodyer_content">
				<div class="c-in-rc">
					<div class="c-in-rct rct2">
						<div class="c-rct-top">
							<img src="${basePath}/market/images/p_5.png" alt="">
						</div>
						<div class="c-rct-title">厦门汇腾天虹</div>
						<div class="c-rct-line"></div>
						<div class="c-rct-ch">门店介绍</div>
						<div class="c-rct-en">Shop introduction</div>
					</div>
					<div class="c-in-rcc">
						<p class="c-in-rcp">厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p>
						<p class="c-in-rcp">汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>
						<p class="c-in-rcp">商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务，送货服务范围更广、更便捷了。</p>
					</div>
					<!-- <div class="c-in-rar"><img src="${basePath}/market/images/p_6.png" alt=""></div> -->
				</div>
				<div class="c-in-rc">
					<div class="c-in-rct">
						<div class="c-rct-ch">门店新闻</div>
						<div class="c-rct-en">Shop news</div>
					</div>
					<div class="c-in-rcc">
						<div class="rcc-in">
							<div class="rcc-ir">
								<img src="${basePath}/market/images/p_7.jpg" alt="">
							</div>
							<div class="rcc-il">
								<div class="rcc-ilt">兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华</div>
								<div class="rcc-ilc">活动主题：兰芝“父亲节”特别优惠
									活动内容：一楼兰芝本柜台购买兰芝两支男士产品，可获8折优惠。1、买满480元送抗皱精粹霜5g+透明雨伞；2、买满720元送时光锁中样3件+时尚拎包</div>
								<a href="javascript:;" class="rcc-btn">Learn more<img
									src="${basePath}/market/images/p_8.png" alt="" class="rcc-br"></a>
								<div class="rcc-line"></div>
								<div class="rcc-time">2016.10.22</div>
							</div>
						</div>
						<a href="javascript:;" class="rcc-in rci2">
							<div class="rcc-ir2 clearfix">
								<div class="rcc-ird">16</div>
								<div class="rcc-irr">
									<div class="rcc-irm">Jun</div>
									<div class="rcc-iry">2016</div>
								</div>
							</div>
							<div class="rcc-il ril2">
								<div class="rcc-ilt ilt2">厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</div>
								<div class="rcc-ilc ilc2">春天来了，我们总会幻想着许多浪漫的事情在这个美丽的季节发生。4月底，厦门汇腾天虹举办了“炫魅春色”专柜POP涂鸦大赛，所有员工都参与了调颜色，勾轮廓，描虚影……彩笔潇洒的游走于底稿之上，一幅幅或时尚、或艺术或另类的作</div>
							</div>
						</a> <a href="javascript:;" class="rcc-in rci2">
							<div class="rcc-ir2 rir3 clearfix">
								<div class="rcc-ird">22</div>
								<div class="rcc-irr">
									<div class="rcc-irm">Jun</div>
									<div class="rcc-iry">2016</div>
								</div>
							</div>
							<div class="rcc-il ril2">
								<div class="rcc-ilt ilt3">厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</div>
								<div class="rcc-ilc ilc2">春天来了，我们总会幻想着许多浪漫的事情在这个美丽的季节发生。4月底，厦门汇腾天虹举办了“炫魅春色”专柜POP涂鸦大赛，所有员工都参与了调颜色，勾轮廓，描虚影……彩笔潇洒的游走于底稿之上，一幅幅或时尚、或艺术或另类的作</div>
							</div>
						</a>
						<div class="rcc-more">更多新闻</div>
					</div>
				</div>
				<div class="c-in-rc">
					<div class="c-in-rct">
						<div class="c-rct-ch">门店活动</div>
						<div class="c-rct-en">Shop event</div>
					</div>
					<div class="c-in-rcc">
						<div class="rcc-in2">
							<div class="rcc-imgL">
								<img src="${basePath}/market/images/p_10.jpg" alt="">
							</div>
							<div class="rcc-imgR">
								<img src="${basePath}/market/images/p_11.jpg" alt="">
							</div>
						</div>
						<div class="rcc-in3">
							<div class="rcc-imgL">
								<img src="${basePath}/market/images/p_12.jpg" alt="">
							</div>
							<div class="rcc-imgR rcR2">
								<div class="rcc-Rm">
									<div class="rcc-Rmt">促销活动</div>
									<div class="rcc-Rmc">
										<p>2013-11-22 全场8折,免费标准配送。</p>
										<p>2013-11-22 全场8折,免费标准配送。</p>
									</div>
									<div class="rcc-Rmb">阿玛尼是世界著名时装品牌，1975年由时尚设计大师乔治·阿玛尼（Giorgio
										Armani）创立于意大利米兰，乔治·阿玛尼是在美国销量最大的欧洲设计师品牌，他以使用新型面料及优良制作而闻名。</div>
								</div>
								<div class="rcc-Rr">
									<div class="rcc-Rrt">
										<img src="${basePath}/market/images/p_13.png" alt="">
									</div>
									<div class="rcc-Rrm">
										<p>l2-2054</p>
										<p>800000889</p>
										<p>www.armani.com</p>
									</div>
									<div class="rcc-Rrb">
										<a href="" class="Rrb-in">店铺位置</a> <a href=""
											class="Rrb-in Rbi">对我关注</a>
									</div>
								</div>
							</div>
						</div>
						<div class="rcc-more">更多活动</div>
						<div class="rcc-btm">
							<p>
								顾客专线：<strong>5391315</strong>
							</p>
							<p>地 址：厦门市嘉禾路323号汇腾大厦1-4楼</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="c-in-left"
			style="background:url(${basePath}/market/images/p_4.jpg) no-repeat;background-size:cover;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(${basePath}/market/images/p_4.jpg,sizingMethod='scale');">
			<div class="c-in-lt">
				<div class="c-in-lti">
					<div class="c-in-lip">
						<input type="text" class="tsr-ip c-lip" value="厦门汇腾天虹">
					</div>
					<div class="c-in-ltx fr">厦门汇腾天虹</div>
				</div>
			</div>
			<!-- <img src="${basePath}/market/images/p_4.jpg" alt=""> -->
		</div>
		<div class="clear"></div>
	</div>

	<div class="footer_mk">
		<div class="f-cont">
			<div class="f-c-right">
				<a href="" class="f-c-ri"><img
					src="${basePath}/market/images/p_1.png" alt=""></a> <a href=""
					class="f-c-ri fri"><img src="${basePath}/market/images/p_2.png"
					alt=""></a>
				<div class="fr">技术支持：牧星策划</div>
				<div class="f-c-wc">
					<img src="${basePath}/market/images/p_3.png" alt="">
				</div>
			</div>
			<div class="f-c-left">
				<a href="">友情链接</a> <span>版权所有:天虹商场股份有限公司</span> <span>备案号:粤ICP备11065574号-3</span>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<script type="text/javascript"
		src="${basePath}/market/Scripts/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="${basePath}/market/Scripts/web.js"></script>
	<script type="text/javascript">
		$(function() {
			var page = 0;
			var showPage = function() {
				$(".bodyer_content .c-in-rc").eq(page).siblings().css({
					"display" : "none"
				});
				$(".bodyer_content .c-in-rc").eq(page).stop(true, true)
						.fadeIn();
				$(".c-in-rli").eq(page).addClass("rtr-at").siblings()
						.removeClass("rtr-at");
			}
			showPage();
			$(".c-in-rli").bind("click", function() {
				page = $(this).index();
				showPage();
			})
		})
	</script>
</body>
</html>
