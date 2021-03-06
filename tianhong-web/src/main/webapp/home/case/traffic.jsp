<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹置业-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<jsp:include page="/base/base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<div id="webbox">
    <div class="wrap padd">
 		<c:import url="${basePath}/menu/left?leftMenuId=${leftMenuId }"></c:import>
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>${parentMenu.name }<em>/</em>${menu.name }</h1>
                <a href="javascript:history.go(-1);" class="return ui-link">返回</a> 
            </div>
            <div class="right-infor">
                <div class="profile-img lt"><c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="status">
	       			<img src="${basePath}/download/png?fileName=${item.path }" />
	       		</c:forEach> </div>
                <div class="profile-infor rt">
                    <div class="profile-name">
                        <h1>${content.title }</h1>
                        <p>${content.slogan }</p>
                    </div>
                    <ul class="contact">
                       <li class="tel"><span>电话：</span><p>${content.phone }</p></li>
                       <li class="adder"><span>地址：</span><p>${content.address }</p></li>
                    </ul>
                    <div class="traffic-desc">${content.content }</div> 
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
	     
	    $(".picture-list").slideList({
	       visible:1
	    });
	    $(".picture-list li a").fancybox(); 
	})
</script>
</body>
</html>
