<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <c:import url="${basePath}/menu/left?leftMenuId=107"></c:import>
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>${content.title }<em>/</em>${menu.name }</h1>
                <a href="javascript:history.go(-1);" class="return ui-link">返回列表</a> 
            </div>
            <div class="right-infor">
                <div class="profile-img lt">
                <c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="status">
	       			<img src="${basePath}/download/png?fileName=${item.path }" />
	       		</c:forEach>
                </div>
                <div class="profile-infor rt">
                    <div class="profile-name">
                        <h1>${content.title }</h1>
                        <p>${content.slogan }</p>
                    </div> 
                    <div class="profile-desc">${content.content }</div> 
                </div>
            </div> 
        </div>
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
	     if(p==""||p==null||p==undefined){
	        p = 0;
	     }
	     $("#item-menu li a.f").eq(item).trigger('click');
	     $("#item-menu li a.f").eq(item).next().find('dd').eq(p).addClass('curr');
	     
	     $(".profile-desc").mCustomScrollbar();
	})
</script>
</body>
</html>
