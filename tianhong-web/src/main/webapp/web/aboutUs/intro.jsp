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
	<script src="${basePath}/web/js/web.js" type="text/javascript"></script>
	<style type="text/css">
		html.full, html.full body {
			width: 100%;
			height: 100%;
			overflow: hidden;
		}
		
		.wrapper {
			width: 100%;
		}
	</style>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
	    <div class="titleImg_content" style="background:url(../images/b_2.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_2.jpg,sizingMethod='scale');">
	        <div class="titleImg_img"><img src="../images/b_3.png"></div>
	    </div>
	    <div class="nav_content">
	        <div class="nav_contentBlock">
	            <div class="nav_aContent">
	                <a href="../index.html" class="nav_aBlock icon">首页</a>
	                <a href="Intro.html" class="nav_aBlock icon">关于天虹</a>
	                <a href="Intro.html" class="nav_aBlock">公司概况</a>
	            </div>
	            <div class="nav_ulBlock">
	                <a href="Intro.html?p=0" class="nav_liBlock">公司概况</a>
	                <a href="../Business.html?p=1" class="nav_liBlock">多元业务</a>
	                <a href="History.html?p=2" class="nav_liBlock">发展历程</a>
	                <a href="Strategy.html?p=3" class="nav_liBlock">发展战略</a>
	                <a href="Awards.html?p=4" class="nav_liBlock">荣誉奖项</a>
	                <a href="Brand.html?p=5" class="nav_liBlock">自有品牌</a>
	            </div>
	        </div>
	    </div>
	    <div class="bd-cont">
	        <div class="bd-cont-in">
	            <div class="bd-cont-R fr">
	                <div class="bd-R-in"><img src="../images/img/a_2.jpg"></div>
	            </div>
	            <div class="bd-cont-L fl">
	                <div class="bd-L-title">
	                    <div class="bd-L-tch">天虹商场股份有限公司</div>
	                    <div class="bd-L-tle"></div>
	                    <div class="bd-L-ten">SINCE 1984</div>
	                </div>
	                <div class="bd-L-cont">
	                    <p>天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。</p>
	                    <p>1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同，以百货店、大型购物中心、便利店的实体零售业态，打造以“亲和、信赖、享受生活”为核心价值的品牌，旗下拥有“天虹”、“君尚”两大零售品牌。截止5月16日，天虹品牌在北京、广东、福建、江西、湖南、江苏、浙江、四川等8省20市开设了61家直营分店及以特许经营方式管理2家分店，君尚品牌在深圳、东莞、惠州共开设了3家直营分店；天虹微喔便利店在深圳、厦门、南昌等地共开设了96家直营分店，38家加盟店；天虹跨境电商体验店在深圳、东莞、惠州、厦门、福州、成都、长沙、株洲、吉安、赣州、杭州、苏州等地开店34家。</p>
	                    <p>公司在行业内率先突破传统百货购物模式，从实体店走向线上线下融合的全渠道，率先打造出全国首家拥有“自定义菜单”的零售微信服务号“天虹”，随后逐步创新，现已形成实体店、PC网店、移动端（天虹微信、天虹微品、虹领巾）的全渠道零售生活平台。</p>
	                    <p>天虹将始终坚持“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</p>
	                </div>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
