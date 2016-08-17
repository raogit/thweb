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
                <h1>九洲天虹广场<em>/</em>区位交通</h1>
                <a href="javascript:history.go(-1);" class="return ui-link">返回列表</a> 
            </div>
            <div class="right-infor">
                <div class="profile-img lt"><img src="${basePath}/home/images/img/img9.jpg" /></div>
                <div class="profile-infor rt">
                    <div class="profile-name">
                        <h1>区位交通</h1>
                        <p>Location traffic</p>
                    </div> 
                    <ul class="contact">
                       <li class="tel"><span>电话：</span><p>0791-8881 9999</p></li>
                       <li class="adder"><span>地址：</span><p>南昌市朝阳新城九洲大街666号九洲天虹广场</p></li>
                    </ul>
                    <div class="traffic-desc"> 
                        <p><b>项目以北：</b>九洲大街、象湖隧道，直抵象湖新城。朝阳大桥无缝对接九洲高架竣工，形成南昌市真正意义上的“一环线”，贯穿红谷滩及老城区。</p>
                        <P>&nbsp;</P>
                        <p><b>项目以东：</b>为进入朝阳新城的主干道抚生南路，并且，未来4号线地铁线将由抚生路经过本案。项目以西：全程无红绿灯的城市滨江快速路；项目以北，城市次主干道云锦路，将云锦路至九洲大街之间划定为朝阳新城金融商贸区。</p>
                        <P>&nbsp;</P>
                        <p><b>项目以北：</b>九洲大街、象湖隧道，直抵象湖新城。朝阳大桥无缝对接九洲高架竣工，形成南昌市真正意义上的“一环线”，贯穿红谷滩及老城区。</p>
                        <P>&nbsp;</P>
                        <p><b>项目以东：</b>为进入朝阳新城的主干道抚生南路，并且，未来4号线地铁线将由抚生路经过本案。项目以西：全程无红绿灯的城市滨江快速路；项目以北，城市次主干道云锦路，将云锦路至九洲大街之间划定为朝阳新城金融商贸区。</p>
                    </div> 
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
