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
				<div class="cm-nav p-nav">
					<div class="cm-n-title">预购专区 · <i>Pre Order</i></div>
					<div class="cm-n-cont">
						<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
							<a href="CmdDetail.html"><div class="cm-n-cin">a${item.name }<i>${item.enName }</i></div></a>
						</c:forEach>
					</div>
				</div>
				<div class="n-r-nav">
					<div class="n-r-top">
						<img src="images/n_06.png" alt="">
					</div>
					<div class="n-r-new">
						<img src="images/n_07.png" alt="">
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="n-r-list">
						<div class="n-r-lt">
							<div class="n-r-ch">商品一览</div>
							<div class="n-r-en">Ttem List</div>
							<div class="n-r-nin">
								<img src="images/n_14.png" alt="">
							</div>
						</div>
						<ul class="n-r-ul">
							<li><a href="#"> <img src="images/n_08.jpg" alt=""
									class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt=""
									class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt=""
									class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt=""
									class="n-r-img">
									<div class="n-r-name">
										<div class="n-r-nch">关东煮</div>
										<div class="n-r-nen">Oden</div>
									</div>
							</a></li>
							<li><a href="#"> <img src="images/n_08.jpg" alt=""
									class="n-r-img">
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
							<a href="Default.html">
								<div class="c-home">
									<img src="images/n_03.png" alt="">
								</div>
							</a><a href="Default.html">
								<div class="c-h-in">
									预购专区 · <i>Pre Order</i>
								</div>
							</a>
						</div>
						<div class="c-now">节日必选</div>
					</div>
				</div>
				<div class="n-l-cont">
					<div class="n-l-ct">节日必选</div>
					<div class="n-l-line"></div>
					<div class="at-rec cv-rec">
						<div class="dt-rec-txt new-t">
							<p>
								<em>不定期为顾客优选最新商品</em>
							</p>
							<p>
								天虹微喔便利店不断创新，为顾客提供最值得信赖的品牌及商品，解决顾客对于商品的健康和品质问题的疑虑。天虹微喔便利店强大的运营团队，对引进的新商品严格把关，做到品质最优，真正做到让顾客放心消费。
							</p>
						</div>
					</div>
				</div>
			</div>
			<c:forEach var="item" items="${preBuyList }" begin="0" step="1" varStatus="itemStatus">
			
			</c:forEach>
			
			
			<div class="new-left p-left">
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="new-left p-left">
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="p-left-in">
					<div class="rs-title">
						<div class="rs-tch">黄金兴蛋黄莲蓉月饼</div>
						<div class="n-r-nin">
							<img src="images/n_13.png" alt="">
						</div>
					</div>
					<div class="rs-cont">
						<div class="rs-cin p-cin">
							<div class="cin-CM-in">
								<img src="images/p_01.jpg" alt="">
							</div>
							<div class="cin-CM-nm rs-nm">
								<p>截止日期：2016-08-26</p>
								<p class="rs-p">规 格：125g</p>
								<p class="rs-p">
									参考价格：<em>98元</em>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="n-l-btm">
				<img src="images/n_12.png" alt="">
			</div>
		</div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
