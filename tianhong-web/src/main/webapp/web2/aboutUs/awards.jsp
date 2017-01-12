<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link rel="shortcut icon" href="${basePath}/images/favicon.ico" type="image/x-icon">
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />
	
	<link href="${basePath}/web/style/style.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}/web/style/common.css" rel="stylesheet" type="text/css" />
    <script src="${basePath}/web2/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="${basePath}/web2/js/web.js" type="text/javascript"></script>
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
	                <a href="${basePath}" class="nav_aBlock icon">首页</a> 
					<a href="javascript:void(0);" class="nav_aBlock icon">${parentMenu.name }</a>
					<a href="javascript:void(0);" class="nav_aBlock">${menu.name }</a>
	            </div>
	            <div class="nav_ulBlock">
	               <c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
	                	</c:if>
			        </c:forEach>
	            </div>
	        </div>
	    </div>
	    <div class="history">
	        <div class="history_title">
	            <h2>荣誉奖项</h2>
	        </div>
	        <div class="Honor_content">
	            <div class="honor_text">
	                <p>天虹通过不断变革和创新走出了自己的道路，在关注市场变化的同时，更关注顾客需求。自1984年成立至今，天虹在全国零售业界取得了瞩目的成绩。</p>
	            </div>
	            <div class="honor_table">
	                <ul>
	                    <li class="ho_1">授予时间</li>
	                    <li class="ho_2">获奖名称</li>
	                </ul>
	            </div>
	            <div class="honor_main">
	                <ul>
	                
		                <c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
							<li>
		                        <span class="honor_on1">${fn:substring(item.eventTimeStr,0,5) }</span>
		                        <span class="honor_on2">${item.title }</span>
		                        <span class="honor_on3">
		                            <a href="javascript:;" class="ing_a"></a>
		                            <div class="Popup_img">
		                                <img src="${basePath}/download/png?fileName=${item.picture }" style="max-width:255px;">
		                                <em></em>
		                            </div>
		                        </span>
		                    </li>
				        </c:forEach>
	                   
	                </ul>
	                <!-- <div class="ho_more"><a href="javascript:;"><img src="../images/news/ho_3.png"></a></div> -->
	            </div>
	        </div> 
	    </div>
	
	</div>
	<div class="Footer">
	    <div class="footer_content">
	        <div class="footer_text">Copyright © 2016 版权所有 天虹商场股份有限公司     粤ICP备11065574号-3 </div>
	        <div class="footer_ulBlock">
	            <a href="javascript:void(0);" class="footer_map"></a>
	            <div class="footer_map"></div>
	            <div class="footer_friendship"></div>
	            <div class="clear"></div>
	        </div>
	    </div>
	</div>
	<script type="text/javascript">
	$(function(){
	    var item = $(".honor_main ul li");
	        for(var i=0;i<item.length;i++){
	            if(i%2==1){
	                item[i].style.backgroundColor="#ffffff"; 
	            }
	        }
	})
	$(".honor_main ul li .honor_on3").bind("mouseover",function(){
	    $(this).find(".Popup_img").stop(true,true).fadeIn();   
	})
	$("..honor_main ul li .honor_on3").bind("mouseout",function(){
	    $(this).find(".Popup_img").stop(true,true).css({"display":"none"});  
	})
	
	</script>
</body>
</html>
