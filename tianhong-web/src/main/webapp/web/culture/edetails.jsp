<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹商场</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
	<style type="text/css">
		html.full, html.full body {
			width: 100%;
			height: 100%;
			overflow: hidden;
		}
		
		.wrapper {
			width: 100%;
		}
	</style>
</head>

<body>
<%-- 	<jsp:include page="../head/head.jsp"></jsp:include> --%>
	<div style="background-color: rgb(38,38,38);height: 100%;width: 100%;overflow: hidden;margin: 0;">
 		<iframe src="${basePath }/pdf/${fileName }" width="100%" height="100%"></iframe>
<%--  		<iframe src="${basePath}/download/pdf?fileName=${fileName }" width="100%" height="100%" type="application/pdf"></iframe> --%>
	</div>
<%-- 	<jsp:include page="../foot/foot.jsp"></jsp:include> --%>
</body>
</html>
