<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link rel="shortcut icon" href="${basePath}/images/favicon.ico" type="image/x-icon">
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />
	<link href="${basePath}/brand/css/common.css" rel="stylesheet" type="text/css"> <!-- 具体样式 -->
	<script src="${basePath}/brand/js/jquery-1.4.2.js" type="text/javascript" ></script> <!-- Jquery 库 -->
</head>

<body>
	<body>
		<div class="header_content">
			<div class="header_contentBlock">
				<a href="#" class="header_logo"><img src="images/common/logo.png"></a>
				<div class="header_ulBlock">
					<ul>
					<c:forEach var="item" items="${subMenus }" begin="0" step="1">
		       			<li><a href="javascript:void(0);"><h1 class="nvafontr">${item.name }</h1><h1 class="nvafont">${item.backup1 }</h1><div class="clear"></div></a></li>
		       		</c:forEach>
						
						<!-- <li><a href="javascript:;"><h1 class="nvafontr">天   优</h1><h1 class="nvafont">teemful</h1><div class="clear"></div></a></li>
						<li><a href="javascript:;"><h1 class="nvafontr">奥百思</h1><h1 class="nvafont">ALBST</h1><div class="clear"></div></a></li>
						<li><a href="javascript:;"><h1 class="nvafontr">天口味</h1><h1 class="nvafont">TOPWELL</h1><div class="clear"></div></a></li> -->
					</ul>
				</div>

			</div>
			<div class="header_bottomBlock">
					<div class="complay"><a href="#">集团首页</a></div>
					<div class="clink">
						<h1 class="linkText fl">友情链接</h1>
						<a href="#" class="sinalink fl"><img src="images/common/sina.png"></a>
						<a href="#" class="wxlink fl"><img  src="images/common/winx.png">
							<div class="wx"><img src="images/6-07.jpg"></div>
						</a>
						<div class="clear"></div>
					</div>
					<div class="hearder_info">
						<p>版权所有天虹商场股份有限公司 </p>
						<p>备案号:粤ICP备11065574号-3</p>
						<p></p> 
						<p>技术支持：牧星策划</p>
					</div>
				</div>
		</div>
		<div class="bodyer">
			<div class="common_parentBlock">
				<div class="common_page modol_1">
					<c:forEach var="item" items="${pictures }" begin="0" step="1" end="0">
		       			<img src="${basePath}/download/png?fileName=${item.path }">
		       		</c:forEach>
					<i></i>
				</div>
				<c:forEach var="item" items="${subMenus }" begin="0" step="1">
	       			<div class="common_page modol_2">
						<div class="newCon_box">
							<div class="newCon_title">
								<div class="newCon_titleText fl">
									<p class="font1">${item.name }</p>
									<p class="font2">${item.backup1 }</p>
								</div>
								<div class="newCon_titleTb fr">
									<c:forEach var="picture" items="${item.pictures }" begin="0" step="1" end="0">
						       			<img src="${basePath}/download/png?fileName=${picture.path }">
						       		</c:forEach>
								</div>
								<div class="clear"></div>
							</div>
							<div class="newCon_content">
								<p>菲尔芙是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。<br><br>
	1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。<br><br>
	公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。<br><br>
	天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。<br></p>
								
							</div>
							<div class="newCon_contentPic">
									<c:forEach var="picture" items="${item.pictures }" begin="1" step="1" end="3">
						       			<div class="contentPic fl"><img src="${basePath}/download/png?fileName=${picture.path }"></div>
						       		</c:forEach>
								<!-- <div class="contentPic fl"><img src="images/7.jpg"></div>
								<div class="contentPic fl"><img src="images/8.jpg"></div>
								<div class="contentPic fl"><img src="images/9.jpg"></div> -->
								<div class="clear"></div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
	       		</c:forEach>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		$(function(){
			var bWidth = $(window).width() - 240,
				scrollTop = 0,
				b1 = 0,
				b2 = 0,
				b3 = 0,
				b4 = 0;
			var resize = function(){				
				bWidth = $(window).width() - 240;
				$(".bodyer").css({"width":bWidth});
				b1 = $(".common_page").eq(1).offset().top - 300;
				b2 = $(".common_page").eq(2).offset().top - 300;
				b3 = $(".common_page").eq(3).offset().top - 300;
				b4 = $(".common_page").eq(4).offset().top - 300;
			}
			resize();
			$(window).resize(function(){
				resize();
			})
			//选中状态判断
			$(window).scroll(function(){
				scrollTop = $(window).scrollTop();
				if(scrollTop > b1 && scrollTop < b2){
					$(".header_ulBlock li").eq(0).addClass("cur").siblings().removeClass("cur");
				}else if(scrollTop > b2 && scrollTop < b3){
					$(".header_ulBlock li").eq(1).addClass("cur").siblings().removeClass("cur");
				}else if(scrollTop > b3 && scrollTop < b4){
					$(".header_ulBlock li").eq(2).addClass("cur").siblings().removeClass("cur");
				}else if(scrollTop > b4){
					$(".header_ulBlock li").eq(3).addClass("cur").siblings().removeClass("cur");
				}else{
					$(".header_ulBlock li").removeClass("cur");
				}
			})
			$(".header_ulBlock li").bind("click",function(){
				var ik = $(this).index()+1;
				var scrollValue = $(".common_page").eq(ik).offset().top
				$("html,body").stop().animate({scrollTop:scrollValue});
			})



			//top  微信
			$(".wxlink").mouseenter(function() {
				$(".wx").stop(true,true).fadeIn("300");
			});
			$(".wxlink").mouseleave(function() {
				$(".wx").stop(true,true).fadeOut("300");
			});
	});
	</script>
</html>
