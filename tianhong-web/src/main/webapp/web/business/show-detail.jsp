<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>天虹商场|官方网站，分享生活之美</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
	    <div class="titleImg_content" style="background:url(../images/b_02.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_02.jpg,sizingMethod='scale');">
            <!-- <div class="titleImg_img"><img src="../images/bs8.png"></div> -->
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
	    <div class="show_content">
	        <div class="show_contentBox" >
	            <div class="showTop">
	                <ul>
	                    <li class="wth cur1"><a href="javascript:void(0);">品牌展示</a></li>
	                    <li class="wth2"></li>
	                    <li class="wth1"><a href="javascript:void(0);">项目展示</a></li>
	                </ul>
	            </div>
	            <div class="show_ConBox">
	                <div class="show_model1">
	                 <div class="show_dtBox">
	                         <h3>${detail.title }</h3>
	                         <div class="froala-element show_dtContent">${fn:replace(detail.content,back,basePath)}</div>
	                     </div>
	                 </div>
	                <div class="show_model2" style="display:none">
	                	<c:forEach var="item" items="${projects }" begin="0" step="1" end="2" varStatus="itemStatus">
							<div class="show_proBox">
								<div class="show_proImg"><img src="${basePath}/download/png?fileName=${item.picture }" /></div>
								<div class="show_proText">
									<h3>${item.title }</h3>
									<div class="froala-element show_proContent" style="overflow: hidden;"><p>${fn:replace(item.content,back,basePath)}</p></div>
									<a href="${basePath}/web/investment/showdetail2?id=${item.id }&menuId=${menu.id }">了解更多</a>
								</div>
								<div class="clear"></div>
							</div>
						</c:forEach>
	                </div>
	            </div>
	            </div>
	        </div>
	    </div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
