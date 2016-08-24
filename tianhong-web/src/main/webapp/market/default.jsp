<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body style="overflow:hidden;">
<div class="bg_mk">
    <div class="header_mk">
        <div class="h-cont clearfix">
            <ul class="h-c-right">
                <li class="h-c-rli"><a href="Introduction.html">门店介绍</a></li>
                <li class="h-c-rli rli2"><a href="Management.html">品质管理</a></li>
                <li class="h-c-rli rli3"><a href="Vip.html">会员专区</a></li>
                <li class="h-c-rli rli4"><a href="Default.html">集团首页</a></li>
            </ul>
            <a href="Default.html" class="h-c-left">
                <img src="${basePath}/market/images/logo.png" alt="">
            </a>
        </div>
    </div>
    <div class="content_mk">
        <div class="cont-in">
            <div class="c-in-tch">分享生活之美</div>
            <div class="c-in-ten">Share the beauty of life</div>
            <div class="c-in-tsr"><input type="text" class="tsr-ip" value="门店搜索"></div>
        </div>
    </div>    
</div>
<div class="footer_mk">
        <div class="f-cont">
            <div class="f-c-right">
                <a href="" class="f-c-ri"><img src="${basePath}/market/images/p_1.png" alt=""></a>
                <a href="" class="f-c-ri fri"><img src="${basePath}/market/images/p_2.png" alt=""></a>
                <div class="fr">技术支持：牧星策划</div>
            </div>
            <div class="f-c-left">
                <a href="">友情链接</a>
                <span>版权所有:天虹商场股份有限公司</span>
                <span>备案号:粤ICP备11065574号-3</span>
            </div>
        </div>
        <div class="clear"></div>
    </div>
<script type="text/javascript" src="${basePath}/market/Scripts/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="${basePath}/market/Scripts/web.js"></script>
</body>
</html>
