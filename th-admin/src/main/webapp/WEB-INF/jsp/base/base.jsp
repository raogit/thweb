	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	
	%>
<%-- 	<link rel="shortcut icon" href="${basePath}/img/icon/wan.png" type="image/x-icon"> --%>
	<script src="${basePath}/js/jQuery/jquery-2.1.4.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/jQuery/jquery.min.js?ver=${ver}" type="text/javascript"></script>
	<script src="${basePath}/js/jQuery/jquery.js" type="text/javascript" ></script>
	<script src="${basePath }/js/header/header.js?ver=${ver}" type="text/javascript" ></script>