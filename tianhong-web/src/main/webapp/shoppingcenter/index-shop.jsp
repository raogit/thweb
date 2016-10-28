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
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="main_bodyer">
			<div class="index_bodyer">
				<div class="index_bigImgBox">
					<div class="index_bigImg ">
						<c:forEach var="item" items="${rotatePictures }" begin="0" step="1" varStatus="itemStatus">
							<div><a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="855px" height="925px" /></a></div>
						</c:forEach>
					</div>
					<div class="index_bigImgBtn">
						<i></i>
					</div>
				</div>
				<div class="index_rightBox">
					<div class="index_right_topBox">
						<div class="topBox1 fl">
							 <div class="indexTopCon_1">
								<div class="indexnewbg">
									<c:forEach var="item" items="${commonPictures }" begin="0" step="1" end="0" varStatus="itemStatus">
										<a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="468px" height="472px" /></a>
									</c:forEach>
								</div>
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
								<div class="indexnewbg">
									<c:forEach var="item" items="${commonPictures }" begin="1" step="1" end="1" varStatus="itemStatus">
										<a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="468px" height="472px" /></a>
									</c:forEach>
								</div>
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
								<c:forEach var="item" items="${commonPictures }" begin="2" step="1" end="2" varStatus="itemStatus">
									<a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="435px" height="367px" /></a>
								</c:forEach>
							</div>
							<div class="clear"></div>
						</div>
						<div class="bottomBox2">
							<div class="index_btm_pic">
								<c:forEach var="item" items="${commonPictures }" begin="3" step="1" end="3" varStatus="itemStatus">
									<a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="426px" height="367px" /></a>
								</c:forEach>
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
								<c:forEach var="item" items="${commonPictures }" begin="4" step="1" end="4" varStatus="itemStatus">
									<a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="445px" height="366px" /></a>
								</c:forEach>
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
							<div class="index_btmcon fl" style="padding:0 0;width: 85%;">
								<div class="">
									<c:forEach var="item" items="${commonPictures }" begin="5" step="1" end="5" varStatus="itemStatus">
										<a href="${item.url }"><img src="${basePath}/download/png?fileName=${item.path }" width="445px" height="431px" /></a>
									</c:forEach>
								</div>
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
			var on = 0;
			var imgs = $(".index_bigImg div");
			var	maxSize = $(".index_bigImg div").length;
			setInterval(function(){
				on++;				
				on %= maxSize;
				$(".index_bigImg div").eq(on).siblings().stop(true,true).fadeOut(500);
				$(".index_bigImg div").eq(on).stop(true,true).fadeIn(500);
			},3500)
		})
	</script>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/indexWeb.js"></script>
	
</body>
</html>