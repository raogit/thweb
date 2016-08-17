<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div id="Header">
    <div class="wrap">
         <div class="logo"><a href="${basePath}/home/index.jsp"><img src="${basePath}/images/logo.png" alt="天虹官网"/></a></div>
         <div class="menu">
            <div class="menu-link">
                <div class="link-box">
                  <a href="" class="sina">新浪微博</a><a href="" class="weixin">微信</a>
                  <a href="" class="return">返回集团</a>
                </div>
            </div>
            <div class="menu-nav">
                <ul id="nav">
                	<c:forEach var="item" items="${headMenus }" begin="0" step="1">
		       			<li><a href="${basePath}/menu/sub?menuId=${item.id }&link=${item.link}">${item.name }<i></i></a></li>
		       		</c:forEach>
                   <%--  <li><a href="${basePath}/menu/sub?menuId=106&link=/home/index">首页<i></i></a></li>
                    <li><a href="${basePath}/menu/sub?menuId=107&link=/home/case/index">案例展示<i></i></a></li>
                    <li><a href="${basePath}/menu/sub?menuId=108&link=/home/project/index">在建项目<i></i></a></li> 
                    <li><a href="${basePath}/menu/sub?menuId=107&link=/home/item/index">项目合作<i></i></a></li>
                    <li><a href="${basePath}/menu/sub?menuId=107&link=/home/contact/index">联系我们<i></i></a></li> --%>
                </ul>
            </div>
        </div>
    </div>
</div>

