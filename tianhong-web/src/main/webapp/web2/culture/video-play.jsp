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
	<link href="${basePath}/js/video/video-js.css" rel="stylesheet" type="text/css">
	<script src="${basePath}/js/video/video.js"></script>
	<script>     videojs.options.flash.swf = $("#basePath").val()+"/js/video/video-js.swf"; </script>
</head>
	
<body style="margin:0 0;">
	<video id="example_video_1" class="video-js vjs-default-skin" autoplay controls width="1200px" height="625px"
	src="${fileName }">
  </video>
</body>
</html>
