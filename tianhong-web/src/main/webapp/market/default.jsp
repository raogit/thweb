<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹门店-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
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
						<select id="marketName" style="width:120px;height: 25px;" name="marketName" onchange="changeMarket()">
							<option style="width:120px;" value="">选择门店</option>
							<c:forEach var="item" items="${markets }" begin="0" step="1" varStatus="itemStatus">
								 <option style="width:120px;" value="${item.id }">${item.name }</option>
							</c:forEach>
						</select>
						<div style="float:left;width:25%;height: 30px;" onclick="search()"> </div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
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
	function changeMarket(){
		//window.location.href = $("#basePath").val()+"/market/introduction?marketName="+$("#marketName option:selected").val();
		var marketName = $("#marketName option:selected").val();
		if(marketName!=null &&  marketName!=""){
			window.open($("#basePath").val()+"/market/introduction?marketId="+$("#marketName option:selected").val(),"_blank");
		}
		
	}
	</script>
</body>
</html>
