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
				<div class="common_page">
					<div class="News_block">
						<div class="News">
							<div class="head">
								<ul>
									<li <c:if test="${fn:contains(menu.name, '促销信息') }">class="current"</c:if>><a href="javascript:;" class="activity">促销信息</a></li>
									<li <c:if test="${fn:contains(menu.name, '商户优惠') }">class="current"</c:if>><a href="javascript:;" class="privilege">商户优惠</a></li>
									<li <c:if test="${fn:contains(menu.name, '新闻资讯') }">class="current"</c:if>><a href="javascript:;" class="Store">新闻资讯</a></li>
								</ul>
								<div class="clear"></div>
							</div>
							<div class="content">
								<div class="model1" <c:if test="${!fn:contains(menu.name, '促销信息') }">style="display: none;"</c:if> >
									<div class="news_title ">
										<span class="font_c">促销信息</span>&nbsp;&nbsp;<span class="font_c2">Promotional information</span>
									</div>
									<div class="goods_img">
										<c:forEach var="item" items="${promotionPictures }" begin="0" step="1" end="1" varStatus="itemStatus">
											<img src="${basePath}/download/png?fileName=${item.path }" width="325px" height="385px" />
										</c:forEach>
									</div>
									<ul class="activity_list">
										<c:forEach var="item" items="${promotion.obj }" begin="0" step="1" end="3" varStatus="itemStatus">
											<li>
												<a href="News_details.html">
													<h3>${item.title }</h3>
													<div style="height: 44px;overflow: hidden;"><p>${item.content }</p></div>
													<p><time>${item.newsTimeStr }</time></p>
													<div class="clear"></div>
												</a>
											</li>
										</c:forEach>
									</ul>
									<div class="choose_button" style="text-align: right;">
										<div class="video_choose">
											<a href="${basePath}/shopping/news/promotion?menuId=266&curPage=${promotion.curPage-1}" class="fl"><img src="${basePath}/images/shopping/common/up.png"></a>
											<p class="fl next_page">${promotion.curPage}/${promotion.totalPage}</p>
											<a href="${basePath}/shopping/news/promotion?menuId=266&curPage=${promotion.curPage+1>promotion.totalPage?promotion.totalPage:promotion.curPage+1}" class="fl"><img src="${basePath}/images/shopping/common/next.png"></a>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<div class="model1" <c:if test="${!fn:contains(menu.name, '商户优惠') }">style="display: none;"</c:if>>
									<div class="news_title ">
										<span class="font_c">商户优惠</span>&nbsp;&nbsp;<span class="font_c2">Promotional information</span>
									</div>
									<div class="goods_img">
										<c:forEach var="item" items="${discountPictures }" begin="0" step="1" end="1" varStatus="itemStatus">
											<img src="${basePath}/download/png?fileName=${item.path }" width="325px" height="385px" />
										</c:forEach>
									</div>
									<ul class="activity_list">
										<c:forEach var="item" items="${discount.obj }" begin="0" step="1" end="3" varStatus="itemStatus">
											<li>
												<a href="News_details.html">
													<h3>${item.title }</h3>
													<div style="height: 44px;overflow: hidden;"><p>${item.content }</p></div>
													<p><time>${item.newsTimeStr }</time></p>
													<div class="clear"></div>
												</a>
											</li>
										</c:forEach>
									</ul>
									<div class="choose_button" style="text-align: right;">
										<div class="video_choose">
											<a href="${basePath}/shopping/news/promotion?menuId=267&curPage=${discount.curPage-1}" class="fl"><img src="${basePath}/images/shopping/common/up.png"></a>
											<p class="fl next_page">${discount.curPage}/${discount.totalPage}</p>
											<a href="${basePath}/shopping/news/promotion?menuId=267&curPage=${discount.curPage+1>discount.totalPage? discount.totalPage : discount.curPage+1}" class="fl"><img src="${basePath}/images/shopping/common/next.png"></a>
											<div class="clear"></div>
										</div>
									</div>
								</div>
								<div class="model1"  <c:if test="${!fn:contains(menu.name, '新闻资讯') }">style="display: none;"</c:if>>
									<div class="news_title ">
										<span class="font_c">新闻资讯</span>&nbsp;&nbsp;<span
											class="font_c2">Promotional information</span>
									</div>
									<div class="goods_img">
										<c:forEach var="item" items="${infoPictures }" begin="0" step="1" end="1" varStatus="itemStatus">
											<img src="${basePath}/download/png?fileName=${item.path }" width="325px" height="385px" />
										</c:forEach>
									</div>
									<ul class="activity_list">
										<c:forEach var="item" items="${info.obj }" begin="0" step="1" end="3" varStatus="itemStatus">
											<li>
												<a href="News_details.html">
													<h3>${item.title }</h3>
													<div style="height: 44px;overflow: hidden;"><p>${item.content }</p></div>
													<p><time>${item.newsTimeStr }</time></p>
													<div class="clear"></div>
												</a>
											</li>
										</c:forEach>
									</ul>
									<div class="choose_button" style="text-align: right;">
										<div class="video_choose">
											<a href="${basePath}/shopping/news/promotion?menuId=268&curPage=${info.curPage-1}" class="fl"><img src="${basePath}/images/shopping/common/up.png"></a>
											<p class="fl next_page">${info.curPage}/${info.totalPage}</p>
											<a href="${basePath}/shopping/news/promotion?menuId=268&curPage=${info.curPage+1>info.totalPage?info.totalPage:info.curPage+1}" class="fl"><img src="${basePath}/images/shopping/common/next.png"></a>
											<div class="clear"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
</body>
</html>
