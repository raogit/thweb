<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
        <div class="lt menu-left">
            <div class="menu-left-page building">
                <p>在建项目</p>
                <span>building project</span>
            </div>
            <div class="menu-left-item">
                <ul id="item-menu">
                    <li>
                        <a href="javascript:void(0);" class="f"><span>联发广场</span><em></em></a>
                        <dl>
                            <dd><a href="profile.jsp?item=0&p=0">项目简介</a></dd> 
                            <dd><a href="picture.jsp?item=0&p=1">项目图片</a></dd>
                            <dd><a href="business.jsp?item=0&p=2">商业配套</a></dd>
                            <dd><a href="product.jsp?item=0&p=3">产品定位</a></dd>
                            <dd><a href="house.jsp?item=0&p=4">主力户型</a></dd>
                            <dd><a href="planning.jsp?item=0&p=5">规划指标</a></dd>
                            <dd><a href="contact.jsp?item=0&p=6">联系方式</a></dd>
                            <dd><a href="traffic.jsp?item=0&p=7">区位交通</a></dd> 
                        </dl>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="f"><span>厦门会展北商务综合体</span><em></em></a>
                        <dl>
                            <dd><a href="profile.jsp?item=1&p=0">项目简介</a></dd> 
                            <dd><a href="picture.jsp?item=1&p=1">项目图片</a></dd>
                            <dd><a href="business.jsp?item=1&p=2">商业配套</a></dd>
                            <dd><a href="product.jsp?item=1&p=3">产品定位</a></dd>
                            <dd><a href="house.jsp?item=1&p=4">主力户型</a></dd>
                            <dd><a href="planning.jsp?item=0&p=5">规划指标</a></dd>
                            <dd><a href="contact.jsp?item=1&p=6">联系方式</a></dd>
                            <dd><a href="traffic.jsp?item=1&p=7">区位交通</a></dd> 
                        </dl>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="f"><span>鹰潭·天虹购物中心</span><em></em></a>
                        <dl>
                            <dd><a href="profile.jsp?item=2&p=0">项目简介</a></dd> 
                            <dd><a href="picture.jsp?item=2&p=1">项目图片</a></dd>
                            <dd><a href="business.jsp?item=2&p=2">商业配套</a></dd>
                            <dd><a href="product.jsp?item=2&p=3">产品定位</a></dd>
                            <dd><a href="house.jsp?item=2&p=4">主力户型</a></dd>
                            <dd><a href="planning.jsp?item=2&p=5">规划指标</a></dd>
                            <dd><a href="contact.jsp?item=2&p=6">联系方式</a></dd>
                            <dd><a href="traffic.jsp?item=2&p=7">区位交通</a></dd> 
                        </dl>
                    </li>
                </ul>
            </div>
        </div> 
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>联发广场<em>/</em>商业配套</h1>
                <a href="javascript:history.go(-1);" class="return ui-link">返回</a> 
            </div>
            <div class="right-infor">
                <div class="profile-img lt"><img src="${basePath}/home/images/img/img10.jpg" /></div>
                <div class="profile-infor rt">
                    <div class="profile-name">
                        <h1>商业配套</h1>
                        <p>Business matching</p>
                    </div> 
                    <div class="profile-desc">
                        <h1 style="color:#e8a171">12万㎡天虹购物中心、75-249㎡天虹金街商铺</h1>
                        <p>&nbsp;</p>
                        <p>联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p>
                        <p>&nbsp;</p>
                        <p>联发广场为毗邻市政府的临江项目，位于行政金融中心核心区，占地47亩，总建筑面积约为21万平方米，主体建筑超200米，总投资10亿元人民币。作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p>
                        <p>&nbsp;</p>  
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
     
     $(".profile-desc").mCustomScrollbar();
})
</script>
</body>
</html>
