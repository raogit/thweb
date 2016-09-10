	<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
	<link rel="stylesheet" href="${basePath}/store/Style/Style.css">
    <script src="${basePath}/store/Scripts/jquery-1.7.1.min.js"></script>
	<script src="${basePath}/store/Scripts/common.js"></script>
	<input type="hidden" value="${basePath }" id="basePath" name="basePath"/>
	<input type="hidden" value="${path }" id="path" name="path" />
