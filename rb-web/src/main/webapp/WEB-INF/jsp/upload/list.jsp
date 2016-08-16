<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../base/base.jsp"></jsp:include>
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
    <style>
        body {
            text-align: center;
        }
        section {
            width: 80%;
            margin: auto;
            text-align: left;
        }
    </style>
	<script src="${basePath}/js/jQuery/jquery-2.1.4.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/upload/ajaxfileupload.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/news/list.js?ver=${ver}" type="text/javascript" ></script>
</head>

<body>
	<jsp:include page="../head/head-iframe.jsp"></jsp:include>
	<input type="hidden" value="${menuId}" id="menuId" name="menuId" />
	<input type="hidden" value="0" id="id" name="id" />
	<input type="hidden" value="/upload/picture" id="uri" name="uri" />
	<div>
		<form action="${basePath }/upload/picture" encType="multipart/form-data" method="post">
			<ul class="ulColumn2" style="text-align: left;">
				<li>
					<span class="item_name" style="width: 120px;">上传文件：</span><input type="file" id="fileId" name="fileId"/> 
				</li>
				<li><span class="item_name" style="width: 120px;"></span> <input
					type="button" class="link_btn" onclick="upload('fileId')" value="上传"/></li>
					
				<li id="bannerpicture"> </li>
			</ul>
		</form>
	</div>
	<div style="height:30px;border-bottom:2px solid #19a97b;"></div>
	
	


 
</body>
</html>
