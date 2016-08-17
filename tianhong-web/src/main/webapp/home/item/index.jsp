<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="/base/base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<div id="webbox">
    <div class="wrap padd">
        <c:import url="${basePath}/menu/itemleft?leftMenuId=${leftMenuId }"></c:import>
        <c:import url="${basePath}/menu/itemright?rightMenuId=${rightMenuId }"></c:import>
        <div class="clear"></div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>
<script type="text/javascript">
$(function(){
    var item = $UrlParameter('item');
    var p = $UrlParameter('p');
    if(item==""||item==null||item==undefined){
       item = 0;
    } 
    $("#item-menu li a.m").eq(item).addClass('mActino');  
     
})
</script>
</body>
</html>
