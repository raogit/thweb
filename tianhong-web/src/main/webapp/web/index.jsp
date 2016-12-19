<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
<head>
	<meta charset="UTF-8">
	<title>天虹商场</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="base.jsp"></jsp:include>
	
	 <style type="text/css">
        html.full, html.full body{width:100%;height:100%; overflow: hidden;}
        .wrapper{width:100%}
    </style>
</head>

<body>
	<jsp:include page="head/index-head2.jsp"></jsp:include>
	<div class="wrapper">
        <div class="i-center">
            <div class="i-bg">
				<div class="banner">
                    <ul class="ban_ul">
	                    <c:forEach var="item" items="${pictures }" begin="0" step="1" end="5" varStatus="itemStatus">
							 <li>
								<c:choose>
									<c:when test="${fn:contains(item.url, 'http')}">  
								   		<a href="${item.url }">
			                            	<div class="index_image" style="background:url(${basePath}/download/png?fileName=${item.path }) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(${basePath}/download/png?fileName=${item.path },sizingMethod='scale');"></div>
			                            </a>
								   	</c:when>
								   	<c:otherwise> 
								   		<a href="${basePath}/${item.url }">
			                            	<div class="index_image" style="background:url(${basePath}/download/png?fileName=${item.path }) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(${basePath}/download/png?fileName=${item.path },sizingMethod='scale');"></div>
			                            </a>
								   	</c:otherwise>
								</c:choose>
	                        </li>
						</c:forEach>
                       
                    </ul>
                    <div class="ban-block">
			            <ul class="i_clk" style="bottom: 70px;">
			               	<li class="i_cli a1"><a target="_blank" href="${basePath}/market/index" title="天虹商场"></a></li>
			               	<li class="i_cli a6"><a target="_blank" href="${basePath}/app/list" title="虹领巾"></a></li>
			               	<li class="i_cli a3"><a target="_blank" href="http://www.dreams-on.com/" title="君尚百货"></a></li>
			               	<li class="i_cli a5"><a target="_blank" href="${basePath}/shopping/home/index" title="购物中心"></a></li>
							<li class="i_cli a4"><a target="_blank" href="${basePath}/store/index" title="微喔便利店"></a></li>
							<li class="i_cli a2"><a target="_blank" href="https://f.tianhong.cn/" title="天虹金融"></a></li>
			            </ul>
		            </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapbot" style="z-index: 999;">
	    <div class="i-btm" id="middle">
	        <div class="i-btm-in">
	            <div class="i-b-news">
	                <div class="n-title">
	                    <a href="${basePath}/web/newscenter/index?menuId=179" class="n-t-r fr">More +</a>
	                    <div class="n-t-l fl">公司新闻</div>
	                    <div class="clear"></div>
	                </div>
	                <a href="${basePath}/web/newscenter/detail?id=${news.id }&menuId=${news.menuId}" class="i-b-na">
						<div class="n-cont">
							<div class="n-c-r fr">
								<div class="n-c-rt" style="height: 19px;overflow: hidden;">${news.title }</div>
								<div class="n-c-rc" style="height: 52px;overflow: hidden;">${news.content }</div>
							</div>
							<div class="n-c-l fl">${news.newsTimeStr }</div>
							<div class="clear"></div>
						</div>
					</a>
	            </div>
	            <div class="i-b-mid">
	                <ul class="i-b-ul">
						<li><a href="${basePath}/app/list"><img src="images/img/i_1.png" alt=""><p>天虹APP下载</p></a></li>
						<li><a href="${basePath}/web/culture/ejournals?menuId=195"><img src="images/img/i_2.png" alt=""><p>《天虹》</p></a></li>
						<li><a href="${basePath}/web/culture/public?menuId=197"><img src="images/img/i_3.png" alt=""><p>天虹公益</p></a></li>
					</ul>
	            </div>
	            <div class="i-b-r" style="width: 160px;">
					<div class="tch">天虹商场（002419.sz）</div>
					<div class="ten">${shares }<span>RMB</span></div>
					<div class="time">截止${sharesTime }</div>
				</div>
	            <div class="clear"></div>
	        </div>
	    </div>
	    <jsp:include page="foot/index-foot.jsp"></jsp:include>
	</div>  
	<script src="${basePath}/web/js/banner.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function(){
			var wHeight = $(window).height();
			var resize = function(){
				wHeight = $(window).height();
				$(".wrapper").css({"height":wHeight-210});
			}
			resize();
			$(window).resize(function(){
				resize();
			})
		})
	</script>
</body>
</html>
