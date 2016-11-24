<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹商场</title>
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
	    <div class="titleImg_content" style="background:url(../images/b_01.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_01.jpg,sizingMethod='scale');">
	       <!--  <div class="titleImg_img"><img src="../images/b_3.png"></div> -->
	    </div>
	    <div class="nav_content">
	        <div class="nav_contentBlock">
	            <div class="nav_aContent">
	                <a href="${basePath}" class="nav_aBlock icon">首页</a> 
					<a href="javascript:void(0);" class="nav_aBlock icon">${parentMenu.name }</a>
					<a href="javascript:void(0);" class="nav_aBlock">${menu.name }</a>
	            </div>
	            <div class="nav_ulBlock">
	            	<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
	                	<c:if test="${item.id==menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock current">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
			        </c:forEach>
	            </div>
	        </div>
	    </div>
	    <div class="bd-cont">
	        <div class="bd-cont-in">
	            <ul class="bd-sch-top">
	                <li class="st-li li1 at">商学院简介</li>
	                <li class="st-l"></li>
	                <li class="st-li li2">培训中心</li>
	                <li class="st-l"></li>
	                <li class="st-li li3">创新中心</li>
	                <li class="st-l"></li>
	                <li class="st-li li4">同济大学MBA项目</li>
	                <li class="st-l"></li>
	                <li class="st-li li5">场地租赁</li>
	            </ul>
	            <div class="bd-sch-cont">
	                <div class="bd-sch-cin">
	                    <div class="sch-r fr">
	                        <img src="../images/img/s_10.png" alt="">
	                    </div>
	                    <div class="sch-l fl">
	                        <div class="bd-L-title">
	                            <div class="bd-L-tch tch2">商学院简介</div>
	                            <div class="bd-L-ten ten4">Business School Profile</div>
	                            <div class="bd-L-tle tle3"></div>
	                        </div>
	                        <div class="bd-L-cont c2">${buz.content }</div>
	                        <ul class="bd-sch-list">
	                            <li><img src="../images/img/s_6.png" alt=""><p>领导发展中心</p></li>
	                            <li><img src="../images/img/s_7.png" alt=""><p>人才培养中心</p></li>
	                            <li><img src="../images/img/s_8.png" alt=""><p>零售技术推广中心</p></li>
	                            <li><img src="../images/img/s_9.png" alt=""><p>变革推动中心</p></li>
	                        </ul>
	                    </div>
	                    <div class="clear"></div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="sch-r2 fr">
	                        <div class="bd-L-title">
	                            <div class="bd-L-tch tch2"></div>
	                            <div class="bd-L-ten ten4"></div>
	                           <!--  <div class="bd-L-tle tle3"></div> -->
	                        </div>
	                        <div class="bd-L-cont c2">${train.content }</div>
	                    </div>
	                    <div class="sch-l2 fl">
	                        <div class="sch-l2-in">
	                            <img src="../images/img/s_12.jpg" alt="">
	                        </div>
	                    </div>
	                    <div class="clear"></div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-sch-inn">
	                        <div class="bd-sch-inr fr">
	                            <div class="inr-in">
	                                <div class="inr-t">知识管理体系</div>
	                                <div class="inr-cont">
	                                    <div class="inr-cin">
	                                        <div class="inr-ct">E-learnning系统</div>
	                                        <div class="inr-cc">${learnning.content }</div>
	                                        <div class="inr-btn"><a href="${learnning.address }">点击进入</a></div>
	                                    </div>
	                                    <div class="inr-line"></div>
	                                    <div class="inr-cin cin2">
	                                        <div class="inr-ct">KMS系统</div>
	                                        <div class="inr-cc">${kms.content }</div>
	                                        <div class="inr-btn"><a href="${kms.address }">点击进入</a></div>
	                                    </div>
	                                </div>
	
	                            </div>
	                            <div class="inr-in in2">
	                                <div class="inr-t t2">创新大赛</div>
	                                <div class="inr-cont">
	                                    <p>${innovate.content }</p>
	                                </div>
	                                <div class="inr-btn b2"><a href="${innovate.address }">参与报名</a></div>
	                            </div>
	                        </div>
	                        <div class="bd-sch-inl fl">
	                            <div class="bd-L-title">
	                                <div class="bd-L-tch tch3">创新中心</div>
	                                <div class="bd-L-ten ten5">Innovation Center</div>
	                                <div class="bd-L-tle tle4"></div>
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-sch-mba">
                            <div class="mba-r fr">${tongJiMba.content }</div>
	                        <div class="mba-l fl">
	                            <div class="mba-lt">
	                                <div class="ten">MBA project</div>
	                                <div class="tch">同济大学MBA项目</div>
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-sch-map">
	                        <div class="map-btn">
	                            <!-- <div class="m-btn"></div>
	                            <div class="m-btn b2"></div> -->
	                        </div>
	                        <div class="map-cont">
	                            <div class="map-cin">
	                                <div class="map-ct">场地介绍</div>
	                                <div class="map-line"></div>
	                                <div class="map-cc">${introduction.content }</div>
	                            </div>
	                            <div class="map-cin">
	                                <div class="map-ct">租赁方式</div>
	                                <div class="map-line"></div>
	                                <div class="map-cc">
	                                    <p>${leaseMode.content }</p>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        var tOn=0;
	        var showCont=function(){
	            $(".bd-sch-cin").eq(tOn).siblings().css({"display":"none"});
	            $(".bd-sch-cin").eq(tOn).stop(true,true).fadeIn();
	        }
	        showCont();
	        $(".bd-sch-top li").bind("click",function(){
	            tOn=($(this).index()+1)/2;
	            showCont();
	            $(this).addClass("at").siblings().removeClass("at");
	        })
	    })
	</script>
	
	
	

</body>
</html>
