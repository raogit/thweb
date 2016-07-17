	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	
	%>
	<link rel="shortcut icon" href="${basePath}/img/icon/icon.png" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="${basePath }/css/user/style.css" />
	<script src="${basePath}/js/jQuery/jquery-2.1.4.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/jQuery/jquery.min.js?ver=${ver}" type="text/javascript"></script>
	<script src="${basePath}/js/jQuery/jquery.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/header/header.js?ver=${ver}" type="text/javascript" ></script>