<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<input type="hidden" value="${menu.id }" id="menuId" name="menuId"/>
<div class="content">
    <div class="cont-in clearfix">
        <div class="new-right">
            <div class="cm-nav dt-nav">
                <div class="cm-n-title">${menu.name } <i></i></div>
                <div class="cm-n-cont">
                	<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
						<a href="${basePath}/store/servicejoinabout/detail?menuId=${item.menuId}&categoryId=${item.id }"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
					</c:forEach>
                </div>
            </div>
            <div class="n-r-nav">
                <c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
	            	<div class="n-r-top">
						<img src="${basePath}/download/png?fileName=${item.path }" alt="" width="164px" height="73px">
					</div>
	            </c:forEach>
				<c:forEach var="item" items="${pictures }" begin="1" step="1" end="1" varStatus="itemStatus">
	            	<div class="n-r-new">
						<img src="${basePath}/download/png?fileName=${item.path }" alt="" width="164px" height="73px" />
						 <div class="n-r-nin">
	                        <img src="${basePath}/images/store/n_13.png" alt="" />
	                    </div>
					</div>
	            </c:forEach>
            </div>
        </div>
        <div class="new-left">
            <div class="n-l-top">
                <img src="images/n_02.jpg" alt=""></div>
            <div class="n-l-c">
                <div class="n-l-crumb">
                    <div class="n-l-cleft">
                        <a href="${basePath}/store/servicejoinabout/index?menuId=${menu.id }"><div class="c-home"><img src="images/n_03.png" alt=""></div></a>
                        <a href="${basePath}/store/servicejoinabout/index?menuId=${menu.id }"><div class="c-h-in">${menu.name }<i></i></div>
                    </a>
                    </div>
                    <div class="c-now">${categoryName }</div>
                </div>
            </div>
            <div class="n-l-cont">
                <div class="n-l-ct">${categoryName }</div>
                <div class="n-l-line">
                </div>
                <div class="at-rec cv-rec">
                    <div class="at-rec-cont clearfix">
                        <div class="cv-cr">
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                        </div>
                        <div class="cv-cl">
                            <img src="images/cv_06.jpg" alt="">
                        </div>
                    </div>
                    <div class="dt-rec-txt new-t">
                        <p>
                            <em>生活宅配</em></p>
                        <p>
                            客服预定。顾客将“送货地址+收货人+联系电话+到货时间”内容以电话（82769293）或微信天虹微喔小天进行下订单；
                            客服预定。顾客将“送货地址+收货人+联系电话+到货时间”内容以电话（82769293）或微信天虹微喔小天进行下订单；
                        </p>

                    </div>
                    <div class="cv-btn">了解更多</div>
                    <div class="n-l-line itd-line cv-line">
                    </div>
                </div>
                <div class="at-rec cv-rec">
                    <div class="at-rec-cont clearfix">
                        <div class="cv-cr">
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                            <div class="cv-cr-in"><img src="images/cv_07.jpg" alt=""></div>
                        </div>
                        <div class="cv-cl">
                            <img src="images/cv_06.jpg" alt="">
                        </div>
                    </div>
                    <div class="dt-rec-txt new-t">
                        <p>
                            <em>生活宅配</em></p>
                        <p>
                            客服预定。顾客将“送货地址+收货人+联系电话+到货时间”内容以电话（82769293）或微信天虹微喔小天进行下订单；
                            客服预定。顾客将“送货地址+收货人+联系电话+到货时间”内容以电话（82769293）或微信天虹微喔小天进行下订单；
                        </p>

                    </div>
                    <div class="cv-btn">了解更多</div>
                    <div class="n-l-line itd-line cv-line">
                    </div>
                </div>
                <div class="at-rec cv-rec">
                    <div class="at-rec-cont clearfix">
                        <div class="cv-cr">
                            <div class="dt-rec-txt new-t">
                                <p>
                                    <em>生活宅配</em></p>
                                <p>
                                    客服预定。顾客将“送货地址+收货人+联系电话+到货时间”内容以电话（82769293）或微信天虹微喔小天进行下订单；
                                    客服预定。顾客将“送货地址+收货人+联系电话+到货时间”内容以电话（82769293）或微信天虹微喔小天进行下订单；
                                </p>

                            </div>
                            <div class="cv-btn">了解更多</div>
                        </div>
                        <div class="cv-cl">
                            <img src="images/cv_06.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="n-l-btm">
            <img src="images/n_12.png" alt="">
        </div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
