<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="head/head.jsp"></jsp:include>
<div class="content">
    <div class="cont-in">
        <div class="cont-int clearfix">
            <ul class="c-i-img">
               <%--  <li><a href="About/Store.html"><img src="${basePath }/store/images/index/i_02.png" alt=""></a></li>
                <li><a href="About/Public.html"><img src="${basePath }/store/images/index/i_03.png" alt=""></a></li> --%>
               
                <c:forEach var="item" items="${pictures }" begin="1" step="1" end="3" varStatus="itemStatus">
	            	 <li><a href="Join/Iwant.html"><img src="${basePath}/download/png?fileName=${item.path }" alt="" width="211px" height="90px"></a></li>
	            </c:forEach>
            </ul>
            <div class="c-i-banner">
	            <c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
	            	<img src="${basePath}/download/png?fileName=${item.path }" alt=""  width="743px" height="290px">
	            </c:forEach>
            </div>
        </div>
        <div class="c-i-new">
            <div class="c-i-nleft">
                <div class="n-l-ch">新品推荐</div>
                <div class="n-l-en">New arrival</div>
            </div>
            <ul class="c-i-nright">
                <li><img src="${basePath }/store/images/index/i_05.jpg" alt=""><p>鸿福堂杨枝甘露</p></li>
                <li><img src="${basePath }/store/images/index/i_05.jpg" alt=""><p>鸿福堂杨枝甘露</p></li>
                <li><img src="${basePath }/store/images/index/i_05.jpg" alt=""><p>鸿福堂杨枝甘露</p></li>
                <li><img src="${basePath }/store/images/index/i_05.jpg" alt=""><p>鸿福堂杨枝甘露</p></li>
                <li><img src="${basePath }/store/images/index/i_05.jpg" alt=""><p>鸿福堂杨枝甘露</p></li>
            </ul>
        </div>
        <div class="c-i-btm">
            <div class="c-i-bright">
                <div class="b-r-title">最新消息</div>
                <div class="b-r-cont">
                    <div class="b-r-cT">
                        <img src="${basePath }/store/images/index/i_06.png" alt="">
                        <ul class="b-r-list">
                            <li><a href="NewInfo.html"><div class="b-r-cR">偏爱圣诞季~积分"五"倍送</div><div class="b-r-cL">2016年07月07日</div></a></li>
                            <li><a href="NewInfo.html"><div class="b-r-cR">偏爱圣诞季~积分"五"倍送</div><div class="b-r-cL">2016年07月07日</div></a></li>
                            <li><a href="NewInfo.html"><div class="b-r-cR">偏爱圣诞季~积分"五"倍送</div><div class="b-r-cL">2016年07月07日</div></a></li>
                            <li><a href="NewInfo.html"><div class="b-r-cR">偏爱圣诞季~积分"五"倍送</div><div class="b-r-cL">2016年07月07日</div></a></li>
                            <li><a href="NewInfo.html"><div class="b-r-cR">偏爱圣诞季~积分"五"倍送</div><div class="b-r-cL">2016年07月07日</div></a></li>
                            <li><a href="NewInfo.html"><div class="b-r-cR">偏爱圣诞季~积分"五"倍送</div><div class="b-r-cL">2016年07月07日</div></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="c-i-bleft">
                <div class="b-l-title">商品介绍</div>
                <div class="b-l-cont">
                    <div class="l-cont-in">
                        <div class="l-cont-inl"><img src="${basePath }/store/images/index/i_05.jpg" alt=""></div>
                        <div class="l-cont-inr">
                            <p>关东煮</p>
                            <p class="inr-en">Oden</p>
                        </div>
                    </div>
                    <div class="l-cont-in">
                        <div class="l-cont-inl"><img src="${basePath }/store/images/index/i_05.jpg" alt=""></div>
                        <div class="l-cont-inr">
                            <p>关东煮</p>
                            <p class="inr-en">Oden</p>
                        </div>
                    </div>
                    <div class="l-cont-in">
                        <div class="l-cont-inl"><img src="${basePath }/store/images/index/i_05.jpg" alt=""></div>
                        <div class="l-cont-inr">
                            <p>关东煮</p>
                            <p class="inr-en">Oden</p>
                        </div>
                    </div>
                    <div class="l-cont-in">
                        <div class="l-cont-inl"><img src="${basePath }/store/images/index/i_05.jpg" alt=""></div>
                        <div class="l-cont-inr">
                            <p>关东煮</p>
                            <p class="inr-en">Oden</p>
                        </div>
                    </div>
                    <div class="l-cont-in">
                        <div class="l-cont-inl"><img src="${basePath }/store/images/index/i_05.jpg" alt=""></div>
                        <div class="l-cont-inr">
                            <p>关东煮</p>
                            <p class="inr-en">Oden</p>
                        </div>
                    </div>
                    <div class="l-cont-in">
                        <div class="l-cont-inl"><img src="${basePath }/store/images/index/i_05.jpg" alt=""></div>
                        <div class="l-cont-inr">
                            <p>关东煮</p>
                            <p class="inr-en">Oden</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="foot/foot.jsp"></jsp:include>

</body>
</html>
