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
	    <div class="titleImg_content" style="background:url(../images/b_04.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_04.jpg,sizingMethod='scale');">
	        <!-- <div class="titleImg_img"><img src="../images/b_3.png"></div> -->
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
	    <div class="bd-cont cont-C">
	        <div class="bd-cont-in">
	            <div class="bd-cont-R2"><c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
		                	<img src="${basePath}/download/png?fileName=${item.path }"  width="756px" height="447px">
				        </c:forEach></div>
	            <div class="bd-cont-L LC fl">
	                <div class="bd-L-title">
	                    <div style="color:#e9a171;" class="bd-L-tch">${content.title }</div>
	                    <div style="background:#e9a171;" class="bd-L-tle"></div>
	                    <div style="color:#e8a171;font-size:26px;margin-top:15px;text-transform:uppercase;" class="bd-L-ten">${content.slogan }</div>
	                </div>
	                <ul class="bd-L-cult">
	                    <li><img src="../images/img/c_1.png">企 业 使 命</li>
	                    <li><img src="../images/img/c_2.png">企 业 愿 景</li>
	                    <li><img src="../images/img/c_3.png">核心价值观</li>
	                </ul>
	                <div class="clear"></div>
	                <div class="bd-L-cont LC">${content.content }</div>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        $(".bd-L-cont.LC p").eq(0).css({"width":"420px"});
	    })
	</script>
	

</body>
</html>
