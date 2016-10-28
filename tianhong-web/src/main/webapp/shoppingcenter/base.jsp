	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link rel="stylesheet" type="text/css" href="${basePath}/shoppingcenter/css/style.css">  <!-- 具体样式 -->
	<link rel="stylesheet" type="text/css" href="${basePath}/shoppingcenter/css/common.css"> <!-- 公共样式 -->
    
    <script src="${basePath}/web/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="${basePath}/js/timer/timer.js" type="text/javascript"></script>
	<script src="${basePath}/shoppingcenter/js/main.js" type="text/javascript" ></script> <!-- main.js -->
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />