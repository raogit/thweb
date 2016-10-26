<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv=”X-UA-Compatible” content=”IE=edge,chrome=1″/>
	<title>T-天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body class="shpping" style="overflow:hidden;">	
	<!-- 导航栏 -->
	<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
		<div class="nav_content">
			<c:if test="${fn:length(item.subMenus)>0}">
				<div class="nav_InnerBlock">
					<div class="l_nav nav_p${itemStatus.index+1 }" >
						<c:forEach var="menu" items="${item.subMenus }" begin="0" step="1">
							<a href="news.html?page=0">${menu.name }</a>
						</c:forEach>
						<i class="hd${itemStatus.index+1 }"></i>
					</div>
				</div>
			</c:if>
		</div>
	</c:forEach>
	<!-- <div class="nav_content">
		<div class="nav_InnerBlock">
			<div class="l_nav nav_p1" >
				<a href="news.html?page=0">促销信息</a>
				<a href="news.html?page=1">商户优惠</a>
				<a href="news.html?page=2">新闻资讯</a>
				<i class="hd1"></i>
			</div>
		</div>
	</div>
	<div class="nav_content">
		<div class="nav_InnerBlock">
			<div class="l_nav nav_p2" >
				<a href="ShopBrand.html">品牌索引</a>
				<a href="ShopFloor.html">楼层索引</a>
				<a href="specia_shop.html">特色店铺</a>
				<i class="hd2"></i>
			</div>
		</div>
	</div>
	<div class="nav_content">
		<div class="nav_InnerBlock">
			<div class="l_nav nav_p3" >
				<a href="specia_food.html?page=0">特色美食</a>
				<a href="specia_food.html?page=1">休闲娱乐</a>
				<a href="specia_food.html?page=2">潮流风尚</a>
				<i class="hd3"></i>
			</div>
		</div>
	</div>
	<div class="nav_content">
		<div class="nav_InnerBlock">
			<div class="l_nav nav_p4" >
				<a href="ServeCenter.html?page=0">客服平台</a>
				<a href="ServeCenter.html?page=1">常见问题</a>
				<a href="ServeCenter.html?page=2">泊车服务</a>
				<i class="hd4"></i>
			</div>
		</div>
	</div>
	<div class="nav_content">		
	</div>
	<div class="nav_content">
		<div class="nav_InnerBlock">
			<div class="l_nav nav_p5" >
				<a href="aboutUs.html?page=0">公司简介</a>
				<a href="aboutUs.html?page=1">诚聘英才</a>
				<a href="aboutUs.html?page=2">联系我们</a>
				<i class="hd5"></i>
			</div>
		</div>
	</div> -->
	<div class="nav_box">
		<div class="logo"><img src="${basePath}/images/shopping/common/logo.png"></div>
		<div class="nav">
			<ul>
				<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<li class="current"><a target="_blank" href="${item.link }"  class="nav_blockText" >${item.name }</a></li>
							   	</c:when>
							   	<c:otherwise> 
							   		<li class="current"><a target="_blank" href="${basePath}${item.link }?menuId=${item.id }"  class="nav_blockText" >${item.name }</a></li>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<li><a target="_blank" href="${item.link }"  class="nav_blockText" >${item.name }</a></li>
							   	</c:when>
							   	<c:otherwise> 
							   		<li><a target="_blank" href="${basePath}${item.link }?menuId=${item.id }"  class="nav_blockText" >${item.name }</a></li>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
			    </c:forEach>
				<!-- <li><a href="index_shop.html"  class="nav_blockText" >首页</a></li>
				<li><a href="news.html" class="nav_blockText" >资讯中心</a></li>
				<li><a href="ShopBrand.html"  class="nav_blockText">购物指南</a></li>
				<li><a href="specia_food.html" class="nav_blockText">娱乐风尚</a></li>
				<li><a href="ServeCenter.html" class="nav_blockText">服务中心</a></li>
				<li><a href="brand.html" class="nav_blockText">品牌招商</a></li>
				<li><a href="aboutUs.html" class="nav_blockText">关于我们</a></li>	 -->				
			</ul>
		</div>
		
		<a  href="#" class="back_jt">返回集团 &gt;</a>
		<div class="nav_btom">
			<p>深圳市天虹置业有限公司</p>
			<p>Copyright © 2016</p>
			<p>技术支持：牧星策划</p>
		</div>		
		<%-- <div class="nav_line">
			<a  href="#"><img src="${basePath}/images/shopping/common/sine.png"></a>
			<a  href="#"><img src="${basePath}/images/shopping/common/winx.png"></a>
			<a  href="#"><img src="${basePath}/images/shopping/common/pel.png"></a>
			<a  href="#"><img src="${basePath}/images/shopping/common/poh.png"></a>
			<div class="clear"></div>
		</div> --%>
	</div>
	<!-- 导航栏 -->
	
	<div class="indexK_bodyer">
		<div class="main_bodyer">
			<div class="index_bodyer">
				<div class="index_bigImgBox">
					<div class="index_bigImg ">
						<img src="${basePath}/images/shopping/1_02.jpg" />
						<img src="${basePath}/images/shopping/1_021.jpg" />
					</div>
					<div class="index_bigImgBtn">
						<i></i>
					</div>
				</div>
				<div class="index_rightBox">
					<div class="index_right_topBox">
						<div class="topBox1 fl">
							 <div class="indexTopCon_1">
								<div class="indexnewbg"><img src="${basePath}/images/shopping/1_04.jpg" /></div>
							</div>
							<div class="indexTopCon_2">
								<div class="indexTopCon_new">
									<div class="indexnewtb"><img src="${basePath}/images/shopping/common/1_07.png" /></div>
									<div class="Con_newTitle">
										<div class="title_en">Beer and skittles</div>
										<div class="title_cn">吃喝玩乐</div>
										<div class="title_line"></div>
									</div>
									<div class="Con_newList">
										<ul>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
										</ul>
									</div>
									<div class="index_more"><a href="#">了解更多</a></div>
								</div>
							</div>
						</div>
						<div class="topBox2 fl">
							 <div class="indexTopCon_3">
								<div class="indexnewbg"><img src="${basePath}/images/shopping/1_06.jpg" /></div>
							</div>
							<div class="indexTopCon_4">
								<div class="indexTopCon_new">
									<div class="indexnewtb"><img src="${basePath}/images/shopping/common/1_04.png" /></div>
									<div class="Con_newTitle">
										<div class="title_en">News</div>
										<div class="title_cn">新闻资讯</div>
										<div class="title_line"></div>
									</div>
									<div class="Con_newList">
										<ul>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
											<li><a href="#">2016.05.01-2016.05.10劳动节期间，全店商铺凡在当天在虹领巾购买天虹自营商品</a></li>
										</ul>
									</div>
									<div class="index_more"><a href="#">了解更多</a></div>
								</div>
							</div>
						</div>
						
						<div class="clear"></div>
					</div>
					<div class="index_right_bottomBox">
						<div class="bottomBox">
							<div class="index_btm_top">
								<div class="index_topCon">
									<div class="tb1 fl"><img src="${basePath}/images/shopping/common/1_12.png"></div>									
									<div class="link fl"><a href="#"><img src="${basePath}/images/shopping/common/1_34.png"></a></div>
									<div class="clear"></div>
								</div>
								<div class="sj1"></div>
							</div>
							<div class="index_btm_pic">
								<img src="${basePath}/images/shopping/1_26.jpg">
							</div>
							<div class="clear"></div>
						</div>
						<div class="bottomBox2">
							<div class="index_btm_pic">
								<img src="${basePath}/images/shopping/1_09.jpg">
							</div>
							<div class="index_btm_top2">
								<div class="index_topCon">
									<div class="tb1 fl"><img src="${basePath}/images/shopping/common/1_30-37.png"></div>
									<div class="link2 fl"><a href="#"><img src="${basePath}/images/shopping/common/1_34.png"></a></div>
									<div class="clear"></div>
								</div>
								<div class="sj2"></div>
							</div>
							
							<div class="clear"></div>
						</div>
						<div class="bottomBox3">
							<div class="index_btm_top3">
								<div class="index_topCon">
									<div class="tb1 fl"><img src="${basePath}/images/shopping/common/1_15.png"></div>
									<div class="link3 fl"><a href="#"><img src="${basePath}/images/shopping/common/1_34.png"></a></div>
									<div class="clear"></div>
								</div>
								<div class="sj3"></div>
							</div>
							<div class="index_btm_pic">
								<img src="${basePath}/images/shopping/1_27.jpg">
							</div>
							<div class="clear"></div>
						</div>
						<div class="bottomBox4">
							<div class="index_btm_top4 fl">
								<div class="index_topCon">
									
									<div class="link4 fl"><a href="#"><img src="${basePath}/images/shopping/common/1_34.png"></a></div>
								</div>
								<div class="sj4"></div>
							</div>
							<div class="index_btmcon fl">
								<div class=""><a href="#"><img src="${basePath}/images/shopping/1_04.jpg"></a></div>
							</div>								
						</div>
					</div>
					<div class="clear"></div>
				</div>
				</div>
			</div>
			
			<div class="clear"></div>			
		</div>
		<div class="index_foot">
				天虹购物中心&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				让城市生活更美好&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				畅想欢乐时光的生活中心</div>
	</div>
	<script type="text/javascript">
		$(function(){
			var on = 0,
				maxSize = $(".index_bigImg img").length;
			setInterval(function(){
				on++;				
				on %= maxSize;
				$(".index_bigImg img").eq(on).siblings().stop(true,true).fadeOut(500);
				$(".index_bigImg img").eq(on).stop(true,true).fadeIn(500);
			},3500)


		})
	</script>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/indexWeb.js"></script>
	
</body>
</html>
