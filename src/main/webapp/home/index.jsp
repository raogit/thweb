<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="/base/base.jsp"></jsp:include>
	<link  href="${basePath}/home/css/common.css" rel="stylesheet" type="text/css">
	<script src="${basePath}/home/Scripts/jquery.min.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/Common.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/jQuery.pluges.js?ver=${ver}"></script>
</head>

<body>
<jsp:include page="head/head.jsp"></jsp:include>
<div id="wrapper">
   <div class="banner" id="banner">
       <ul class="list">
          <li><a href="javascript:void(0);" style="background:url(${basePath}/images/banner.jpg) no-repeat center;background-size:cover;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='${basePath}/images/banner.jpg',sizingMethod='scale')"></a></li> 
          <li><a href="javascript:void(0);" style="background:url(${basePath}/images/banner.jpg) no-repeat center;background-size:cover;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='${basePath}/images/banner.jpg',sizingMethod='scale')"></a></li> 
          <li><a href="javascript:void(0);" style="background:url(${basePath}/images/banner.jpg) no-repeat center;background-size:cover;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='${basePath}/images/banner.jpg',sizingMethod='scale')"></a></li> 
       </ul>
   </div>
   <div class="inlet-link">
       <ul>
           <li class="case"><a href="${basePath}/home/case/index.jsp"><em></em><span><i>项目案例</i><i>项目案例</i></span></a></li>
           <li class="item"><a href="${basePath}/home/project/index.jsp"><em></em><span><i>在建项目</i><i>在建项目</i></span></a></li>
           <li class="team"><a href="${basePath}/home/item/index.jsp"><em></em><span><i>项目合作</i><i>项目合作</i></span></a></li>
       </ul>
   </div>
</div>
<script type="text/javascript">
$(function(){
    $(".banner").bannerSlider(); 
})
</script>
</body>
</html>
