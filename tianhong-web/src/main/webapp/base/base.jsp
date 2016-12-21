	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link rel="shortcut icon" href="${basePath}/images/favicon.ico" type="image/x-icon">
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />
	<link href="${basePath}/css/richtext/froala_page.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
	
	
	<link href="${basePath}/home/css/common.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/home/Scripts/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/home/Scripts/fancybox/jquery.fancybox-1.3.4.css" rel="stylesheet" type="text/css" /> 
	<script src="${basePath}/home/Scripts/jquery.min.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/Common.js?ver=${ver}"></script>
