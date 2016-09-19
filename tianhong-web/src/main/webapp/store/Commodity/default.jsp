<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>天虹官网</title>
		<jsp:include page="../base.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="../head/head.jsp"></jsp:include>
		<div class="content">
			<div class="cont-in clearfix">
				<div class="new-right">
					<div class="cm-nav">
						<div class="cm-n-title">商品 · <i>Commodity</i></div>
						<div class="cm-n-cont">
							<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
								<a href="${basePath}/store/product/detail?menuId=${item.menuId }&categoryId=${item.id}"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
							</c:forEach>
						</div>
					</div>
					<div class="n-r-nav">
						<div class="n-r-top">
							<img src="${basePath}/images/store/n_06.png" alt="">
						</div>
						<div class="n-r-new">
							<img src="${basePath}/images/store/n_07.png" alt="">
							<div class="n-r-nin">
								<img src="${basePath}/images/store/n_13.png" alt="">
							</div>
						</div>
						<div class="n-r-list">
							<!-- <div class="n-r-lt">
								<div class="n-r-ch">商品一览</div>
								<div class="n-r-en">Ttem List</div>
								<div class="n-r-nin">
									<img src="${basePath}/images/store/n_14.png" alt="">
								</div>
							</div>
							<ul class="n-r-ul">
								<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
										<div class="n-r-name"><div class="n-r-nch">关东煮1</div><div class="n-r-nen">Oden1</div></div>
								</a></li>
								<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
										<div class="n-r-name"><div class="n-r-nch">关东煮2</div><div class="n-r-nen">Oden3</div></div>
								</a></li>
								<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
										<div class="n-r-name"><div class="n-r-nch">关东煮</div><div class="n-r-nen">Oden</div></div>
								</a></li>
								<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
										<div class="n-r-name"><div class="n-r-nch">关东煮</div><div class="n-r-nen">Oden</div></div>
								</a></li>
								<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
										<div class="n-r-name"><div class="n-r-nch">关东煮</div><div class="n-r-nen">Oden</div></div>
								</a></li>
							</ul> -->
							<div class="n-r-lb"></div>
						</div>
					</div>
				</div>
				<div class="new-left">
					<div class="n-l-top"><img src="${basePath}/images/store/n_02.jpg" alt=""></div>
					<div class="n-l-c">
						<div class="n-l-crumb">
							<div class="n-l-cleft n-l-cl2"><a href="${basePath}/store/product/index?menuId=${menu.id}"><div class="c-home"><img src="${basePath}/images/store/n_03.png" alt=""></div></a></div>
							<div class="c-h-in">商品 · <i>Commodity</i></div>
						</div>
					</div>
					<div class="n-l-cont">
						<div class="n-l-ct">商品</div>
						<div class="n-l-line"></div>
						<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
							<div class="n-l-cin">
								<div class="cin-title">
									<div class="cin-ttc">${item.name }</div><a href="${basePath}/store/product/detail?menuId=${item.menuId }&categoryId=${item.id}"><div class="cin-tdc">MORE>></div></a>
								</div>
								<div class="cin-contCM">
									<c:forEach var="product" items="${item.storeProducts }" begin="0" step="1" end="3">
										<div class="cin-CM">
											<div class="cin-CM-in"><img src="${basePath}/download/png?fileName=${product.picture }" alt=""></div>
											<div class="cin-CM-nm"><p>${product.name }</p><p>统一价格：<em>${product.price }</em></p></div>
										</div>
									</c:forEach>
								</div>
							</div>
						</c:forEach>
						<div class="n-l-btm"><img src="${basePath}/images/store/n_12.png" alt=""></div>
					</div>
				</div>
			</div>
		</div>	
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	</body>
</html>
