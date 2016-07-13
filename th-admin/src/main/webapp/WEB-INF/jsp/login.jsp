<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="base/base.jsp"></jsp:include>
	<link rel="stylesheet" href="${basePath}/css/login/reset.css">
	<link rel="stylesheet" href="${basePath}/css/login/supersized.css">
	<link rel="stylesheet" href="${basePath}/css/login/style.css">
	<script src="${basePath}/js/login/supersized.3.2.7.min.js?ver=${ver}"></script>
	<script src="${basePath}/js/login/supersized-init.js?ver=${ver}"></script>
	<script src="${basePath}/js/login/login.js?ver=${ver}"></script>
</head>

<body id="by" style="overflow-y: hidden">
	<div class="page-container">
		<h1>一路向西</h1>
		<form id="formId" name="formId"  action="${basePath}/loginconfirm" method="post">
			<div>
				<input type="text" name="username" class="username" placeholder="Username" autocomplete="off"/>
			</div>
			<div>
				<input type="password" name="password" class="password" placeholder="Password" oncontextmenu="return false" onpaste="return false"/>
			</div>
			<button id="submit" type="button">登录</button>
		</form>
		<div class="connect">
			<p style="left: 0%;">If we can only encounter each other rather than stay with each
				other,then I wish we had never encountered.</p>
			<p style="margin-top:20px;left: 0%;">如果只是遇见，不能停留，不如不遇见。</p>
		</div>
	</div>
	<div class="alert" style="display:none">
		<h2>消息</h2>
		<div class="alert_con">
			<p id="ts"></p>
			<p style="line-height:70px">
				<a class="btn">确定</a>
			</p>
		</div>
	</div>
	
</body>
</html>
