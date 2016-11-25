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
<body>
	<jsp:include page="head/head.jsp"></jsp:include>
	<div class="content">
		<div class="cont-in clearfix">
			<div class="new-right">
				<div class="n-r-nav">
					<c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
		            	<div class="n-r-top">
							<img src="${basePath}/download/png?fileName=${item.path }" alt="" width="164px" height="73px">
						</div>
		            </c:forEach>
					<c:forEach var="item" items="${pictures }" begin="1" step="1" end="1" varStatus="itemStatus">
		            	<div class="n-r-new">
							<img src="${basePath}/download/png?fileName=${item.path }" alt="" width="164px" height="73px" />
							 <div class="n-r-nin">
		                        <img src="${basePath}/images/store/n_13.png" alt="" />
		                    </div>
						</div>
		            </c:forEach>
				</div>
			</div>
			<div class="new-left">
				<div class="n-l-top">
					<img src="${basePath}/images/store/n_02.jpg" alt="">
				</div>
				<div class="n-l-c">
					<div class="n-l-crumb">
						<div class="n-l-cleft n-l-cl2">
							<a href="Default.html"><div class="c-home"><img src="${basePath}/images/store/n_03.png" alt=""></div></a>
						</div>
						<div class="c-h-in">新品上市 · <i>New arrivals</i></div>
					</div>
				</div>
				<div class="n-l-cont">
					<div class="n-l-ct">新品上市</div>
					<div class="n-l-line"></div>
					<!-- <div class="at-rec cv-rec">
						<div class="dt-rec-txt new-t">
							<p><em>不定期为顾客优选最新商品</em></p>
							<p>天虹微喔便利店不断创新，为顾客提供最值得信赖的品牌及商品，解决顾客对于商品的健康和品质问题的疑虑。天虹微喔便利店强大的运营团队，对引进的新商品严格把关，做到品质最优，真正做到让顾客放心消费。
							</p>
						</div>
					</div> -->
				</div>
			</div>
			<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
				<div class="new-left">
					<div class="rs-title">
						<div class="rs-tch">${item.name }</div>
						<div class="rs-ten">${item.enName }</div>
						<div class="n-r-nin"><img src="${basePath}/images/store/n_13.png" alt=""></div>
					</div>
					<div class="rs-cont">
						<c:forEach var="product" items="${item.newProducts }" begin="0" step="1">
							<div class="rs-cin">
								<div class="cin-CM-in"><img src="${basePath}/download/png?fileName=${product.picture }" alt="" width="150px" height="150px"></div>
								<div class="cin-CM-nm rs-nm">
									<p>${product.name }</p>
									<p class="rs-p" style="height: 43px;overflow: hidden;">${product.describer }</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
			
			<div class="n-l-btm">
				<img src="${basePath}/images/store/n_12.png" alt="">
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="f-cont">
			<div class="f-c-right">
				<div class="r-left">
					<a href="Problem.html" class="f-r-a">常见问题</a> | <a
						href="Contact.html" class="f-r-a">联系我们</a>
				</div>
				<div class="r-right"></div>
			</div>
			<div class="f-c-left">Copyright© 天虹微喔 2009-2017, All Rights
				Reserved 粤ICP备11065574号-7</div>
		</div>
	</div>
	<script src="${basePath}/store/Scripts/common.js"></script>
</body>
</html>
