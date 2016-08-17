<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                
	                <c:forEach var="item" items="${subMenus }" begin="0" step="1">
		       			<li>
	                        <a href="javascript:void(0);" class="f"><span>${item.name }</span><em></em></a>
	                        <dl>
	                        	<c:forEach var="sub" items="${item.subMenus }" begin="0" step="1">
	                        		<dd><a href="../case/profile.html?item=0&p=0">${sub.name }</a></dd>
	                        	</c:forEach>
	                        </dl>
	                    </li>
		       		</c:forEach>
                    <!-- <li>
                        <a href="javascript:void(0);" class="f"><span>南昌·九洲天虹广场</span><em></em></a>
                        <dl>
                            <dd><a href="../case/profile.html?item=0&p=0">项目简介</a></dd>
                            <dd><a href="../case/picture.html?item=0&p=1">项目图片</a></dd>
                            <dd><a href="../case/traffic.html?item=0&p=2">区位交通</a></dd>
                        </dl>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="f"><span>苏州·天虹品上中心</span><em></em></a>
                        <dl>
                            <dd><a href="../case/profile.html?item=1&p=0">项目简介</a></dd>
                            <dd><a href="../case/picture.html?item=1&p=1">项目图片</a></dd>
                            <dd><a href="../case/traffic.html?item=1&p=2">区位交通</a></dd>
                        </dl>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="f"><span>吉安·天虹购物中心</span><em></em></a>
                        <dl>
                            <dd><a href="../case/profile.html?item=2&p=0">项目简介</a></dd>
                            <dd><a href="../case/picture.html?item=2&p=1">项目图片</a></dd>
                            <dd><a href="../case/traffic.html?item=2&p=2">区位交通</a></dd>
                        </dl>
                    </li> -->
                </ul>
            </div>
        </div> 
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>Project development  /  项目楼盘</h1>
                <div class="rootle rt" id="forms">
                    <input type="text" placeholder="输入关键词搜索" class="ui-input"/>
                    <input type="submit" value=""/>
                </div>
            </div>
            <div class="item-list">
                <ul>
                   <li><a href="../case/profile.html?item=0&p=0">
                       <div class="img-box"><img src="../images/img/img1.jpg" /></div>
                       <div class="mode">在售项目</div>
                       <div class="item-name">
                           <h1>南昌·九洲天虹广场</h1>
                           <em></em>
                       </div>
                       <div class="item-infor"><p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。</p></div>
                   </a></li>
                   <li><a href="../case/profile.html?item=0&p=0">
                       <div class="img-box"><img src="../images/img/img1.jpg" /></div>
                       <div class="mode">在售项目</div>
                       <div class="item-name">
                           <h1>南昌·九洲天虹广场</h1>
                           <em></em>
                       </div>
                       <div class="item-infor"><p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。</p></div>
                   </a></li>
                   <li><a href="../case/profile.html?item=1&p=0">
                       <div class="img-box"><img src="../images/img/img1.jpg" /></div>
                       <div class="mode">在售项目</div>
                       <div class="item-name">
                           <h1>南昌·九洲天虹广场</h1>
                           <em></em>
                       </div>
                       <div class="item-infor"><p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。</p></div>
                   </a></li>
                   <li><a href="../case/profile.html?item=0&p=0">
                       <div class="img-box"><img src="../images/img/img1.jpg" /></div>
                       <div class="mode">在售项目</div>
                       <div class="item-name">
                           <h1>南昌·九洲天虹广场</h1>
                           <em></em>
                       </div>
                       <div class="item-infor"><p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。</p></div>
                   </a></li>
                   <li><a href="../case/profile.html?item=2&p=0">
                       <div class="img-box"><img src="../images/img/img1.jpg" /></div>
                       <div class="mode">在售项目</div>
                       <div class="item-name">
                           <h1>南昌·九洲天虹广场</h1>
                           <em></em>
                       </div>
                       <div class="item-infor"><p>九洲天虹广场，是由天虹商场股份有限公司打造的城市综合体项目，位于朝阳新城滨江商务核心区、九洲大街与抚生南路交汇处。项目总建面约32万方，集商务、商业、居住于一体。</p></div>
                   </a></li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>
<script type="text/javascript">
$(function(){
    $("#forms").formTip();
    $(".item-list").slideList();
})
</script>
</body>
</html>
