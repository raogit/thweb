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
         <c:import url="${basePath}/menu/left?leftMenuId=${leftMenuId }"></c:import>
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
