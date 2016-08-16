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
            <div class="menu-left-page project">
                <p>项目合作</p>
                <span>Project cooperation</span>
            </div>
            <div class="menu-left-item">
                <ul id="item-menu">
                    <li><a href="Index.html?item=0" class="m">南昌·九洲天虹广场</a></li> 
                    <li><a href="Index.html?item=1" class="m">苏州·天虹品上中心</a> </li>
                    <li><a href="Index.html?item=2" class="m">吉安·天虹购物中心</a></li>
                    <li><a href="Index.html?item=3" class="m">联发广场</a></li>
                    <li><a href="Index.html?item=4" class="m">厦门会展北商务综合体</a> </li>
                    <li><a href="Index.html?item=5" class="m">鹰潭·天虹购物中心</a></li>
                </ul>
            </div>
        </div> 
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>Project cooperation<em>/</em>项目楼盘</h1>
                <div class="rootle rt" id="forms">
                    <input type="text" placeholder="输入关键词搜索" class="ui-input"/>
                    <input type="submit" value="搜索"/>
                </div>
            </div>
            <div class="items-infor">
                <div class="items-img lt"><img src="../images/img/img14.jpg" /></div>
                <div class="items-desc rt">
                    <div class="desc-title">南昌· 九洲天虹广场</div>
                    <div class="tel-number"><img src="../Images/tel-number.png" /></div>
                    <div class="desc-text">
                        <p><b>2万方购物中心</b>——以“天虹百货+精致超市+餐饮+休闲+娱乐+X”的购物中心业态，打造一站式吃喝玩乐购的南昌商业新中心。</p>
                        <p>&nbsp;</p>
                        <p><b>天虹·金街商铺</b>——整座天虹广场，仅66席，75-249㎡可售街铺，其稀缺价值不言而喻</p>
                        <p>&nbsp;</p>
                        <p><b>LOFT-SOHO全功能空间</b>——4.45万㎡高端商务，屹立于九洲天虹购物中心之上，建筑高度达142米，华中区天虹总部将落户于此，建成后将成为朝阳新城滨江金融商务区又一商务地标。</p>
                        <p>&nbsp;</p>
                        <p><b>招商地址：</b>江西省·南昌市·西湖区九洲大街与抚生南路交汇处（九洲大街666号）二楼招商部</p>
                        <p>&nbsp;</p>
                    </div>
                </div>
                <div class="clear"></div>                
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
    $("#item-menu li a.m").eq(item).addClass('mActino');  
     
})
</script>
</body>
</html>
