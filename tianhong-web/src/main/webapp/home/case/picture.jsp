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
        <jsp:include page="left.jsp"></jsp:include>
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
