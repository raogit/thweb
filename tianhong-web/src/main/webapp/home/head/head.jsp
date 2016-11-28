<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div id="Header">
    <div class="wrap">
         <div class="logo"><a href="${basePath}"><img src="${basePath}/images/logo.png" alt="天虹官网"/></a></div>
         <div class="menu">
            <div class="menu-link">
                <div class="link-box">
                  <a href="javascript:void(0);" class=""></a><a href="javascript:void(0);" class=""></a>
                  <a href="${basePath}" class="return">公司首页</a>
                </div>
            </div>
            <div class="menu-nav">
                <ul id="nav">
                	<c:forEach var="item" items="${headMenus }" begin="0" step="1">
		       			<li id="head_${item.id }"><a href="${basePath}/menu/sub?menuId=${item.id }&link=${item.link}">${item.name }<i></i></a></li>
		       		</c:forEach>
                </ul>
            </div>
        </div>
    </div>
    <input type="hidden" value="${leftMenuId }" id="headMenuId"/>
</div>
<script type="text/javascript">
	$(function(){
		
		var lis = $("#nav li");
		for(var i=0;i<lis.length;i++){
			var li = lis[i];
			$(li).removeClass("curr");
		}
		$("#head_"+$("#headMenuId").val()).addClass('curr');
	})
</script>
