<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<jsp:include page="../base.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="content">
		<div class="cont-in clearfix">
			<div class="new-right">
				<div class="cm-nav p-nav">
					<div class="cm-n-title">预购专区 · <i>Pre Order</i></div>
					<div class="cm-n-cont">
						<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
							<a href="${basePath}/store/prebuy/detail?menuId=${menuId}&categoryId=${item.id}"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="new-left">
				<div class="n-l-top">
					<img src="${basePath}/images/store/n_02.jpg" alt="">
				</div>
				<div class="n-l-c">
					<div class="n-l-crumb">
						<div class="n-l-cleft">
							<a href="${basePath}/store/prebuy/index?menuId=${menuId}"><div class="c-home"><img src="${basePath}/images/store/n_03.png" alt=""></div></a>
							<a href="${basePath}/store/prebuy/index?menuId=${menuId}"><div class="c-h-in">预购专区 · <i>Pre Order</i></div></a>
						</div>
						<div class="c-now"></div>
					</div>
				</div>
				
			</div>
			
			
			<c:forEach var="category" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
				<div class="n-l-cont">
					<div class="">${category.name }</div>
					<div class="n-l-line"></div>
				</div>
				<div class="new-left p-left">
					<c:forEach var="item" items="${category.preBuys }" begin="0" step="1" varStatus="itemStatus">
						<div class="p-left-in">
							<div class="rs-title">
								<div class="rs-tch">${item.name }</div>
								<div class="n-r-nin"><img src="${basePath}/images/store/n_13.png" alt="" /></div>
							</div>
							<div class="rs-cont">
								<div class="rs-cin p-cin">
									<div class="cin-CM-in">
										<img src="${basePath}/download/png?fileName=${item.picture }" alt="" width="150px" height="150px" />
									</div>
									<div class="cin-CM-nm rs-nm">
										<p>截止日期：${item.closeDate }</p>
										<p class="rs-p">规 格：${item.weight }</p>
										<p class="rs-p">参考价格：<em>${item.price }</em></p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					
				</div>
			</c:forEach>
			
			<div class="n-l-btm">
				<img src="${basePath}/images/store/n_12.png" alt="">
			</div>
		</div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
