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
	    		<h2>发展历程</h2>
	    	</div>
	    	<div class="history_head">
		    	<div class="history_left">
		    		<div class="history_left_top">
		    			<h3>1984-2017</h3>
		    		</div>
		    	</div>
		    </div>
		    <div class="history_conter">
		    	<c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
                	<div class="old_year">
			    		<div class="old_img"><img src="${basePath}/download/png?fileName=${item.picture }"></div>
			    		<div class="old_list">
			    			<h2>${fn:substring(item.eventTimeStr,0,5) }</h2>
			    			<div class="old_text">
			    				<p>${item.content }</p>
			    			</div>
			    		</div>
			    		<div class="clear"></div>
			    	</div>
		        </c:forEach>
		    </div>
		    <div class="history_bottom">
		    	<div class="history_bot_left">
		    		<div class="history_bot_bottom">
		    			<h3></h3>
		    		</div>
		    	</div>
		    </div>	
	    </div>
	
	</div>
	<div class="Footer">
	    <div class="footer_content">
	        <div class="footer_text">Copyright © 2016 版权所有 天虹商场股份有限公司     粤ICP备11065574号-3 </div>
	        <!-- <div class="footer_ulBlock">
	            <a href="javascript:void(0);" class="footer_map"></a>
	            <div class="footer_map"></div>
	            <div class="footer_friendship"></div>
	            <div class="clear"></div>
	        </div> -->
	    </div>
	</div>
</body>
</html>
