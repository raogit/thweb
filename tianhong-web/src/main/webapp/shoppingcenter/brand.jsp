<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>T-天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body class="shpping" style="overflow: hidden;">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="common_parentBlock">
			<div class="common_page">
				<div class="drand_blocks drand_mainBox">
					<div class="drand_titleBlock ">
	                         <div class="drand_titleText">
	                        		<span class="font_c">品牌招商</span>&nbsp;&nbsp;<span class="font_c2">Brand merchants</span>	
	                         </div>
	                     </div>
	                     <div class="drand_content">
	                        <div class="drand_contentText fl">${brand.content }</div>
	                        <div class="drand_contentPic fl">
	                        	<c:forEach var="item" items="${pictures }" begin="0" step="1" end="1" varStatus="itemStatus">
											<img src="${basePath}/download/png?fileName=${item.path }" width="313px" height="488px" /> 
								</c:forEach>
	                        	
	                        </div>
	                        <div class="clear"></div>
	                     </div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
</body>
</html>
