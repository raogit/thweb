<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="/base/base.jsp"></jsp:include>
	<link  href="${basePath}/home/css/common.css" rel="stylesheet" type="text/css">
	<script src="${basePath}/home/Scripts/jquery.min.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/Common.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/jQuery.pluges.js?ver=${ver}"></script>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<div id="webbox">
    <div class="wrap padd">
        <div class="lt menu-left">
            <div class="menu-left-page contact-page">
                <p>联系我们</p>
                <span>contact us</span>
            </div>
            <div class="menu-left-item">
                <ul id="item-menu">
                    <li><a href="index.jsp" class="m mActino">联系方式</a></li> 
                    <li><a href="message.jsp" class="m">在线留言</a> </li> 
                </ul>
            </div>
        </div> 
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>contact us<em>/</em>联系方式</h1> 
            </div>
            <div class="right-infor">
                <div class="contact-maps lt"><img src="${basePath}/images/img/img15.jpg" /></div>
                <div class="contact-content rt">
                    <div class="contact-title">
                        <h1>联系方式</h1>
                        <p>Contact information</p>
                    </div>  
                    <div class="phone-number"><span>0755-2365 1426</span></div>
                    <div class="contact-adder">公司地址：深圳市南山区中心路(深圳湾段)3019号</div>
                    <ul class="two-code">
                       <li><img src="${basePath}/images/img/img13.png"><p>官方微信</p></li>
                       <li><img src="${basePath}/images/img/img13.png"><p>官方微博</p></li>
                    </ul> 
                </div>
            </div> 
        </div>
        <div class="clear"></div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
