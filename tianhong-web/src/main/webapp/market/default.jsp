<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>天虹官网</title>
<jsp:include page="base.jsp"></jsp:include>
</head>

<body style="overflow: hidden;">
	<div class="bg_mk">
		<jsp:include page="head.jsp"></jsp:include>
		<div class="content_mk">
			<div class="cont-in">
				<div class="c-in-tch">分享生活之美</div>
				<div class="c-in-ten">Share the beauty of life</div>
				<form action="${basePath}/market/introduction" method="post" id="formId">
					<div class="c-in-tsr" >
						<input type="text" style="float:left;width:65%" class="tsr-ip" placeholder="门店搜索" id="searchName" name="searchName"/>
						<div style="float:left;width:25%;height: 30px;" onclick="search()"> </div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="footer_mk">
		<div class="f-cont">
			<div class="f-c-right">
				<a href="" class="f-c-ri"><img
					src="${basePath}/market/images/p_1.png" alt=""></a> <a href=""
					class="f-c-ri fri"><img src="${basePath}/market/images/p_2.png"
					alt=""></a>
				<div class="fr"></div>
			</div>
			<div class="f-c-left">
				<a href="">友情链接</a> <span>版权所有:天虹商场股份有限公司</span> <span>备案号:粤ICP备11065574号-3</span>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<script type="text/javascript" src="${basePath}/market/Scripts/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="${basePath}/market/Scripts/web.js"></script>
	<script type="text/javascript">
	jQuery(document).ready(function() {
		var hcright = $(".h-c-right").find("li");
		for(var i=0;i<hcright.length;i++){
			var li = hcright[i];
			$(li).removeClass("rli5");
		}
	})
	</script>
</body>
</html>
