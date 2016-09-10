<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
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
							<a href="CmdDetail.html"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
						</c:forEach>
					</div>
				</div>
				<div class="n-r-nav">
					<div class="n-r-top"><img src="images/n_06.png" alt=""></div>
					<div class="n-r-new">
						<img src="images/n_07.png" alt="">
						<div class="n-r-nin"><img src="images/n_13.png" alt=""></div>
					</div>
					<div class="n-r-list">
						<div class="n-r-lt">
							<div class="n-r-ch">商品一览</div>
							<div class="n-r-en">Ttem List</div>
							<div class="n-r-nin"><img src="images/n_14.png" alt=""></div>
						</div>
						<ul class="n-r-ul">
							<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt="" class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
						</ul>
						<div class="n-r-lb"></div>
					</div>
				</div>
			</div>
			<div class="new-left">
				<div class="n-l-top">
					<img src="images/n_02.jpg" alt="">
				</div>
				<div class="n-l-c">
					<div class="n-l-crumb">
						<div class="n-l-cleft">
							<a href="Default.html"><div class="c-home"><img src="images/n_03.png" alt=""></div></a>
							<a href="Default.html"><div class="c-h-in">最新活动 · <i>Activities</i></div></a>
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
							<li><img src="images/a_05.jpg" alt="">
							<div class="a-rec-t">
									<p>五月优惠活动</p>
									<p>截止时间：2016-05-30</p>
								</div></li>
							<li><img src="images/a_05.jpg" alt="">
							<div class="a-rec-t">
									<p>五月优惠活动</p>
									<p>截止时间：2016-05-30</p>
								</div></li>
							<li><img src="images/a_05.jpg" alt="">
							<div class="a-rec-t">
									<p>五月优惠活动</p>
									<p>截止时间：2016-05-30</p>
								</div></li>
							<li><img src="images/a_05.jpg" alt="">
							<div class="a-rec-t">
									<p>五月优惠活动</p>
									<p>截止时间：2016-05-30</p>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="n-l-btm">
					<img src="images/n_12.png" alt="">
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
