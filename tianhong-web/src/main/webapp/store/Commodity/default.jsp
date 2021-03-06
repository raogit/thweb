<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>微喔便利店-天虹商场|官方网站，分享生活之美</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
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
					<%-- <div class="n-r-nav">
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
							<div class="n-r-lb"></div>
						</div>
					</div> --%>
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
											<div class="cin-CM-in"><img src="${basePath}/download/png?fileName=${product.picture }" alt="" width="150px" height="150px"></div>
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
