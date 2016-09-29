	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link href="${basePath}/web/style/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}/web/style/style.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}/web/style/common.css" rel="stylesheet" type="text/css" />
    <script src="${basePath}/web/js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="${basePath}/web/js/web.js" type="text/javascript"></script>
	<link href="${basePath}/web/style/investorstyle.css" rel="stylesheet" type="text/css" />
    <script src="${basePath}/web/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="${basePath}/web/js/investorweb.js" type="text/javascript"></script>
    <script src="${basePath}/js/timer/timer.js" type="text/javascript"></script>
    
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />
