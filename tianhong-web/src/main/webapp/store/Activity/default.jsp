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
	<script src="${basePath}/store/Scripts/swipe.js"></script>
	<style>
	#swipe {
		width: 100%;
		overflow: hidden;
	}
	/*定位*/
	.imgBlock {
		width: 100%;
		float: left;
		position: relative;
	}
	
	.imgBlock img {
		width: 100%;
	}
	</style>
</head>
<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="content">
		<div class="cont-in clearfix">
			<div class="new-right">
				<div class="cm-nav">
					<div class="cm-n-title">最新活动 · <i>Activities</i></div>
					<div class="cm-n-cont">
						<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
							<a href="${basePath}/store/newactivity/detail?categoryId=${item.id }&menuId=${item.menuId}"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
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
							<a href="${basePath}/store/newactivity/index?menuId=${menu.id}"><div class="c-home"><img src="${basePath}/images/store/n_03.png" alt=""></div></a>
							<a href="${basePath}/store/newactivity/index?menuId=${menu.id}"><div class="c-h-in">最新活动 · <i>Activities</i></div></a>
						</div>
						<div class="c-now">最新活动</div>
					</div>
				</div>
				<div class="n-l-cont">
					<div class="n-l-ct">最新活动</div>
					<div class="n-l-line"></div>
					<div class="a-banner">
						<div id="swipe">
							<div>
								<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
									<div class="imgBlock a-bn-in"><img src="${basePath}/download/png?fileName=${item.path }" width="752px" height="350px"/></div>
								</c:forEach>
							</div>
						</div>
						<div class="a-bn-btm">
							<div class="a-bn-dot a-dat"></div>
							<div class="a-bn-dot"></div>
							<div class="a-bn-dot"></div>
						</div>
					</div>
					<div class="n-l-line itd-line"></div>
					<div class="a-rec">
						<div class="a-rec-title">最新活动推荐</div>
						<ul class="a-rec-cont">
							<c:forEach var="item" items="${recommends }" begin="0" step="1" varStatus="itemStatus">
								<li>
									<div style="height:177px"><img src="${basePath}/download/png?fileName=${item.picture }" alt="" style="max-width:177px;max-height:176px;"></div>
									<div class="a-rec-t"><p>${item.title }</p><p>截止时间：${item.newsTimeStr }</p></div>
								</li>
							</c:forEach>
							<%-- <li>
								<img src="${basePath}/${basePath}/images/store/store/a_05.jpg" alt="">
								<div class="a-rec-t"><p>五月优惠活动</p><p>截止时间：2016-05-30</p></div>
							</li>
							<li>
								<img src="${basePath}/images/store/a_05.jpg" alt="">
								<div class="a-rec-t"><p>五月优惠活动</p><p>截止时间：2016-05-30</p></div>
							</li>
							<li>
								<img src="${basePath}/images/store/a_05.jpg" alt="">
								<div class="a-rec-t"><p>五月优惠活动</p><p>截止时间：2016-05-30</p></div>
							</li>
							<li>
								<img src="${basePath}/images/store/a_05.jpg" alt="">
								<div class="a-rec-t"><p>五月优惠活动</p><p>截止时间：2016-05-30</p></div>
							</li> --%>
						</ul>
					</div>
				</div>
				<div class="n-l-btm">
					<img src="${basePath}/images/store/n_12.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
	    $(function(){
	        var swipeOb = Swipe(document.getElementById('swipe'),{auto: 3000,callback:function(){
	            var n = swipeOb.getPos();
	        }});
	    })
	</script>

</body>
</html>
