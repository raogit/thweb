<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
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
                <h1>联发广场<em>/</em>规划指标</h1>
                <a href="javascript:history.go(-1);" class="return ui-link">返回列表</a> 
            </div>
            <div class="right-infor">
                <div class="profile-img lt"><img src="${basePath}/home/images/img/img11.jpg" /></div>
                <div class="profile-infor rt">
                    <div class="profile-name">
                        <h1>规划指标</h1>
                        <p>Planning index</p>
                    </div> 
                    <div class="fixed">
                        <h1>建筑高度达142米</h1> 
                        <h2>未来华中区天虹总部</h2>
                        <em></em>
                    </div>
                    <div class="product-desc"> 
                        <p>总占地面积43444㎡，总建筑面积323522㎡，其中4栋高层住宅总户数380户，727个地下停车位，容积率3.98，绿地率31%；天虹购物中心总建筑面积12万方；项目商铺共计66套，总建筑面积8228㎡；4.45万㎡商办建筑，建筑高度达142米，单层建筑面积1996㎡，未来华中区天虹总部所在</p>
                        <p>&nbsp;</p>
                        <p>作为南昌城市地标建筑，联发广场项目是集5A级摩天写字楼、时尚购物中心、高档奢装公寓为一体的大型综合体。</p>
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
