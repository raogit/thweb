<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
	<style type="text/css">
	html.full, html.full body {
		width: 100%;
		height: 100%;
		overflow: hidden;
	}
	
	.wrapper {
		width: 100%;
	}
	</style>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
	    <div class="titleImg_content" style="background:url(../images/b_2.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_2.jpg,sizingMethod='scale');">
	        <div class="titleImg_img"><img src="../images/b_3.png"></div>
	    </div>
	    <div class="nav_content">
	        <div class="nav_contentBlock">
	            <div class="nav_aContent">
	                <a href="../index.html" class="nav_aBlock icon">首页</a>
	                <a href="Intro.html" class="nav_aBlock icon">${parentMenu.name }</a>
	                <a href="Intro.html" class="nav_aBlock">${menu.name }</a>
	            </div>
	            <div class="nav_ulBlock">
	                <c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
	                	</c:if>
			        </c:forEach>
	            </div>
	        </div>
	    </div>
	    <div class="bd-cont">
	        <div class="bd-cont-in">
	            <div class="bd-cont-RB fr">
	                <img src="../images/img/a_7.png" alt="" class="fl">
	                <ul class="bd-RB-list">
	                    <li>
	                        <img src="../images/img/a_8.png" alt="" class="fl">
	                        <div class="lin-txt fl">
	                             <div class="lin-ch">菲尔芙</div>
	                              <div class="lin-en">品牌特色：超值、可靠、实用；产品系列：日杂用品、厨房用品、纸巾、清洁用品等</div>
	                        </div>
	                    </li>
	                    <li>
	                        <img src="../images/img/a_8.png" alt="" class="fl">
	                        <div class="lin-txt fl">
	                            <div class="lin-ch">天优</div>
	                            <div class="lin-en">品牌特色：超值、可靠、实用；产品系列：日杂用品、厨房用品、纸巾、清洁用品等</div>
	                        </div>
	                    </li>
	                    <li>
	                        <img src="../images/img/a_8.png" alt="" class="fl">
	                        <div class="lin-txt fl">
	                            <div class="lin-ch">奥百思</div>
	                            <div class="lin-en">品牌特色：超值、可靠、实用；产品系列：日杂用品、厨房用品、纸巾、清洁用品等</div>
	                        </div>
	                    </li>
	                    <li>
	                        <img src="../images/img/a_8.png" alt="" class="fl">
	                        <div class="lin-txt fl">
	                            <div class="lin-ch">天口味</div>
	                            <div class="lin-en">品牌特色：超值、可靠、实用；产品系列：日杂用品、厨房用品、纸巾、清洁用品等</div>
	                        </div>
	                    </li>
	                </ul>
	                <div class="clear"></div>
	            </div>
	            <div class="bd-cont-L fl LB">
	                <div class="bd-L-title">
	                    <div class="bd-L-tch">自有品牌</div>
	                    <div class="bd-L-tle"></div>
	                    <div class="bd-L-ten">Own brand</div>
	                </div>
	            </div>
	            <div class="clear"></div>
	            <div class="bd-text">
	                <div class="bd-t-in">
	                    <p>随着商品数量的增加，自有品牌的总体销售额不断上升，销售占比也在逐渐加大。自有品牌的发展存在广阔的空间，每个季度我们都有详细的商品发展计划。为加强我司自有品牌商品开发渠道，现采购部就以下品类面向有供应能力和生产能力的厂家招商。</p>
	                </div>
	                <div class="bd-t-line"></div>
	                <div class="bd-t-in t-in2"><p><strong>招商范围：</strong>粮油食品、零食、饮料酒水、冷冻冷藏食品、即食食品、保健品、冲饮品、婴幼品、个人护理、家居清洁、针织品、家居杂品、厨房用品</p></div>
	                <div class="bd-t-line"></div>
	                <div class="bd-t-in t-in3">
	                    <p><strong>招商热线：</strong>0755-82769168(总台)</p>
	                    <p><strong>招商地址：</strong>深圳市地铁大厦21层天虹商场有限公司采购部</p>
	                    <p><strong>传真：</strong>0755－82769193</p>
	                    <p><strong>联系人：</strong>陈先生（82769216）刘小姐（23805768）</p>
	                </div>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        $(".bd-RB-list li").eq(1).css({"margin-left":"70px"});
	        $(".bd-RB-list li").eq(2).css({"margin-left":"80px"});
	        $(".bd-RB-list li").eq(3).css({"margin-left":"20px"});
	    })
	</script>


</body>
</html>
