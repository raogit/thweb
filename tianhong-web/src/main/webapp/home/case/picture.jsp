<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
        <div class="lt menu-left">
            <div class="menu-left-page">
                <p>项目楼盘</p>
                <span>Project development</span>
            </div>
            <div class="menu-left-item">
                <ul id="item-menu">
                    <li>
                        <a href="javascript:void(0);" class="f"><span>南昌·九洲天虹广场</span><em></em></a>
                        <dl>
                            <dd><a href="${basePath}/home/case/profile.jsp?item=0&p=0">项目简介</a></dd>
                            <dd><a href="${basePath}/home/case/picture.jsp?item=0&p=1">项目图片</a></dd>
                            <dd><a href="${basePath}/home/case/traffic.jsp?item=0&p=2">区位交通</a></dd>
                        </dl>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="f"><span>苏州·天虹品上中心</span><em></em></a>
                        <dl>
                            <dd><a href="${basePath}/home/case/profile.jsp?item=1&p=0">项目简介</a></dd>
                            <dd><a href="${basePath}/home/case/picture.jsp?item=1&p=1">项目图片</a></dd>
                            <dd><a href="${basePath}/home/case/traffic.jsp?item=1&p=2">区位交通</a></dd>
                        </dl>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="f"><span>吉安·天虹购物中心</span><em></em></a>
                        <dl>
                            <dd><a href="${basePath}/home/case/profile.jsp?item=2&p=0">项目简介</a></dd>
                            <dd><a href="${basePath}/home/case/picture.jsp?item=2&p=1">项目图片</a></dd>
                            <dd><a href="${basePath}/home/case/traffic.jsp?item=2&p=2">区位交通</a></dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div> 
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>九洲天虹广场<em>/</em>项目图片</h1>
                <a href="javascript:history.go(-1);" class="return ui-link">返回列表</a> 
            </div>
            <div class="picture-list">
                <div class="moveBox">
                    <ul>
                        <li>
                           <a href="${basePath}/home/images/img/img3.jpg" rel="group"><img src="${basePath}/home/images/img/img3.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img4.jpg" rel="group"><img src="${basePath}/home/images/img/img4.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img5.jpg" rel="group"><img src="${basePath}/home/images/img/img5.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img6.jpg" rel="group"><img src="${basePath}/home/images/img/img6.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img7.jpg" rel="group"><img src="${basePath}/home/images/img/img7.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img8.jpg" rel="group"><img src="${basePath}/home/images/img/img8.jpg" /></a>
                        </li> 
                        <li>
                           <a href="${basePath}/home/images/img/img3.jpg" rel="group"><img src="${basePath}/home/images/img/img3.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img4.jpg" rel="group"><img src="${basePath}/home/images/img/img4.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img5.jpg" rel="group"><img src="${basePath}/home/images/img/img5.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img6.jpg" rel="group"><img src="${basePath}/home/images/img/img6.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img7.jpg" rel="group"><img src="${basePath}/home/images/img/img7.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img8.jpg" rel="group"><img src="${basePath}/home/images/img/img8.jpg" /></a>
                        </li> 
                        <li>
                           <a href="${basePath}/home/images/img/img3.jpg" rel="group"><img src="${basePath}/home/images/img/img3.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img4.jpg" rel="group"><img src="${basePath}/home/images/img/img4.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img5.jpg" rel="group"><img src="${basePath}/home/images/img/img5.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img6.jpg" rel="group"><img src="${basePath}/home/images/img/img6.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img7.jpg" rel="group"><img src="${basePath}/home/images/img/img7.jpg" /></a> 
                           <a href="${basePath}/home/images/img/img8.jpg" rel="group"><img src="${basePath}/home/images/img/img8.jpg" /></a>
                        </li> 
                    </ul> 
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
