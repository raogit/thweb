<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
		<div class="titleImg_content"
			style="background: url(../images/i_bg1.jpg) no-repeat center; background-size: cover; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(. ./images/i_bg1.jpg, sizingMethod='scale');">
			<div class="titleImg_img">
				<img src="../images/i_bg2.png">
			</div>
		</div>
		<div class="nav_content">
			<div class="nav_contentBlock">
				<div class="nav_aContent">
					<a href="../index.html" class="nav_aBlock icon">首页</a>
	                <a href="index.html" class="nav_aBlock icon">${parentMenu.name }</a>
	                <a href="index.html" class="nav_aBlock">${menu.name }</a>
				</div>
				<div class="nav_ulBlock">
					<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock current">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
			        </c:forEach>
				</div>
			</div>
		</div>
		<div class="inves_content">
			<div class="inves_ProtectBox">
				<div class="inves_ProtectTitle pfT">
					<h3>利润分配</h3>
					<h5>Profit distribution</h5>
				</div>
				<table class="pf_tab">
					<thead>
						<tr>
							<td>分红年度</td>
							<td>分红方案</td>
							<td>现金分红金额（元）</td>
							<td>股权登记日</td>
							<td>除权除息日</td>
							<td>红股上市日</td>
							<td>归属于上市公司股东的净利润（元）</td>
							<td>占合并报表中归属于上市公司股东的净利润的比率</td>
							<td>总股本（股）</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${profits }" begin="0" step="1" varStatus="itemStatus">
		                	<tr>
								<td>${item.profitDate }</td>
								<td>${item.profitPlan }</td>
								<td>${item.cash }</td>
								<td>${item.registerDate }</td>
								<td>${item.exDividendDate }</td>
								<td>${item.marketDate }</td>
								<td>${item.simpleProfit }</td>
								<td>${item.simpleProfitRatio }</td>
								<td>${item.shareTotal }</td>
							</tr>
				        </c:forEach>
					</tbody>
				</table>
				<div class="inves_ProtectTitle pfT">
					<h3>分红动态</h3>
					<h5>Dividend dynamics</h5>
				</div>
				<div class="inves_Spot">
					<ul>
						<c:forEach var="item" items="${bonus }" begin="0" step="1" varStatus="itemStatus">
		                	<li>
		                		<a href="${basePath}/web/investment/businetrend?menuId=${item.menuId }&id=${item.id}">
									<h3>${item.title }</h3>
									<h5>${item.createTimeStr }</h5>
									<div class="clear"></div>
								</a>
							</li>
				        </c:forEach>
					</ul>
					<a href="javascript:;" class="more readMoreBtn"><img src="../images/i9.png"></a>
				</div>
				<div class="clear"></div>
			</div>
		</div>

	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
