	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link rel="shortcut icon" href="${basePath}/images/favicon.ico" type="image/x-icon">
	<link href="${basePath}/css/richtext/froala_page.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
	
	<link href="${basePath}/web/style/animate.min.css" rel="stylesheet" type="text/css" />
    
    <script src="${basePath}/js/timer/timer.js" type="text/javascript"></script>
    
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />
	
	
	 <link href="${basePath}/web2/style/style.css" rel="stylesheet" type="text/css" />
    <link href="${basePath}/web2/style/common.css" rel="stylesheet" type="text/css" />
    <script src="${basePath}/web2/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="${basePath}/web2/js/web.js" type="text/javascript"></script>
