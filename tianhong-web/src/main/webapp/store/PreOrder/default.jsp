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
				<div class="cm-nav p-nav">
					<div class="cm-n-title">预购专区 · <i>Pre Order</i></div>
					<div class="cm-n-cont">
						<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
							<a href="${basePath}/store/prebuy/detail?menuId=${menuId}&categoryId=${item.id}"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
						</c:forEach>
					</div>
				</div>
				<%-- <div class="n-r-nav">
					<div class="n-r-top"><img src="${basePath}/images/store/n_06.png" alt=""></div>
					<div class="n-r-new">
						<img src="${basePath}/images/store/n_07.png" alt="">
						<div class="n-r-nin"><img src="${basePath}/images/store/n_13.png" alt=""></div>
					</div>
				</div> --%>
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
						<div class="c-now">${categoryName }</div>
					</div>
				</div>
				<div class="n-l-cont">
					<div class="n-l-ct">${categoryName }</div>
					<div class="n-l-line"></div>
					<!-- <div class="at-rec cv-rec">
						<div class="dt-rec-txt new-t">
							<p><em>不定期为顾客优选最新商品</em></p>
							<p>天虹微喔便利店不断创新，为顾客提供最值得信赖的品牌及商品，解决顾客对于商品的健康和品质问题的疑虑。天虹微喔便利店强大的运营团队，对引进的新商品严格把关，做到品质最优，真正做到让顾客放心消费。</p>
						</div>
					</div> -->
				</div>
			</div>
			<c:forEach var="item" items="${preBuyList }" begin="0" step="1" varStatus="itemStatus">
				<c:if test="${(itemStatus.index+1)%5==0 }">
					<div class="new-left p-left">
				</c:if>
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
				<c:if test="${(itemStatus.index+1)%5==0 }">
					</div>
				</c:if>
			</c:forEach>
			
			<div class="n-l-btm">
				<img src="${basePath}/images/store/n_12.png" alt="">
			</div>
		</div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
