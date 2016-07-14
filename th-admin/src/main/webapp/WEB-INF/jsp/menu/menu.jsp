<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../base/base.jsp"></jsp:include>
	<link href="${basePath}/css/menu/normalize.css" rel="stylesheet" type="text/css" />
	<link href="${basePath}/css/menu/default.css" rel="stylesheet" type="text/css" />
	<link href='${basePath}/css/menu/foundation.css' rel='stylesheet prefetch' />
	<link href="${basePath}/css/menu/styles.css" rel="stylesheet" type="text/css"/>
	<script src='${basePath}/js/menu/stopExecutionOnTimeout.js?t=1'></script>
	<script src='http://libs.useso.com/js/jquery/1.8.0/jquery.min.js'></script>
	<script src="${basePath}/js/menu/jquery.velocity.min.js"></script>
	<script src="${basePath}/js/menu/menu.js"></script>
</head>

<body id="by">
	<div style="height:70px;background:#add; color:#FFF"></div>
	<div>
		<jsp:include page="menu-left.jsp"></jsp:include>
		<jsp:include page="menu-right.jsp"></jsp:include>
	</div>
	
	
</body>
</html>
