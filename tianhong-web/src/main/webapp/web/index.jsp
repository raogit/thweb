<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="base.jsp"></jsp:include>
	
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
	<jsp:include page="head/index-head.jsp"></jsp:include>
	<div class="wrapper">
		<div class="i-center">
			<div class="i-c-l"><img src="images/img/bg_2.png" alt=""></div>
			<div class="i-c-t"><img src="images/img/bg_1.png" alt=""></div>
			<div class="i-c-r"><img src="images/img/bg_3.png" alt=""></div>
			<ul class="i_clk">
				<li class="i_cli a1"><a href="${basePath}/market/index" title="天虹商场"></a></li>
				<li class="i_cli a2"><a href="javascript:void(0);" title="天虹金融"></a></li>
				<li class="i_cli a3"><a href="javascript:void(0);" title="君尚百货"></a></li>
				<li class="i_cli a4"><a href="${basePath}/store/index" title="微喔便利店"></a></li>
				<li class="i_cli a5"><a href="javascript:void(0);" title="购物中心"></a></li>
				<li class="i_cli a6"><a href="${basePath}/app/list" title="虹领巾"></a></li>
			</ul>
		</div>
		<div class="i-btm" id="middle">
			<div class="i-btm-in">
				<div class="i-b-news">
					<div class="n-title">
						<a href="${basePath}/web/newscenter/index?menuId=179" class="n-t-r fr">More +</a>
						<div class="n-t-l fl">公司新闻</div>
						<div class="clear"></div>
					</div>
					<a href="news/newsInfo.html" class="i-b-na">
						<div class="n-cont">
							<div class="n-c-r fr">
								<div class="n-c-rt" style="width: 350px;height: 19px;overflow: hidden;">${news.title }</div>
								<div class="n-c-rc" style="height: 45px;overflow: hidden;">${news.content }</div>
							</div>
							<div class="n-c-l fl">${item.newsTimeStr }</div>
							<div class="clear"></div>
						</div>
					</a>
				</div>
				<div class="i-b-mid">
					<ul class="i-b-ul">
						<li><a href="${basePath}/app/list"><img src="images/img/i_1.png" alt=""><p>天虹APP下载</p></a></li>
						<li><a href="${basePath}/web/culture/ejournals?menuId=195"><img src="images/img/i_2.png" alt=""><p>天虹期刊</p></a></li>
						<li><a href="${basePath}/web/culture/public?menuId=197"><img src="images/img/i_3.png" alt=""><p>天虹公益</p></a></li>
					</ul>
				</div>
				<div class="i-b-r">
					<!-- <div class="tch">天虹商场（002419.sz）</div>
					<div class="ten">14.31<span>RMB</span></div>
					<div class="time">截止2016-08-19 11:22:36</div> -->
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<jsp:include page="foot/index-foot.jsp"></jsp:include>
	<script>
	    $(function(){
	//        var h=-$('.i-btm').height()-$('Header').height()-$('Footer').height();
	//        $(".i-center").height(h);
	        $('.i-c-t').addClass("animated pulse");
	        $('.i-c-l').addClass("animated swing");
	        $('.i-c-r').addClass("animated swing");
	    })
	</script>
</body>
</html>
