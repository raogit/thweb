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
								   		<a href="${item.link }" target="_blank" class="nav_liBlock current">${item.name }</a>
								   	</c:when>
								   	<c:otherwise> 
								   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
								   	</c:otherwise>
								</c:choose>
		                	</c:if>
		                	<c:if test="${item.id!=menu.id }">
			                	<c:choose>
									<c:when test="${fn:contains(item.link, 'http')}">  
								   		<a href="${item.link }"  target="_blank" class="nav_liBlock">${item.name }</a>
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
	            <ul class="bd-sch-top t-top">
	                <li class="st-li li1 at">人才理念</li>
	                <li class="st-l"></li>
	                <li class="st-li li2">培养晋升</li>
	                <li class="st-l"></li>
	                <li class="st-li li3">薪酬福利</li>
	            </ul>
	            <div class="bd-sch-cont">
	                <div class="bd-sch-cin">
	                    <div class="bd-tl-cin">
	                        <div class="sch-r2 fr">
		                        <!-- <div class="bd-L-title">
		                            <div class="bd-L-tch tch2">培训中心</div>
		                            <div class="bd-L-ten ten4"></div>
		                            <div class="bd-L-tle tle3"></div>
		                        </div> -->
		                        <div class="bd-L-cont c2">${trainingCenter1.content }</div>
		                    </div>
	                        <div class="sch-l2 fl">
	                            <div class="sch-l2-in">
	                                <img src="../images/img/s_12.jpg" alt="">
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                    <%-- <div class="bd-tl-cin">
	                        <div class="sch-l2 fr">
	                            <div class="sch-l2-in">
	                                <img src="../images/img/s_12.jpg" alt="">
	                            </div>
	                        </div>
	                        <div class="sch-r2 fl">
	                            <div class="bd-L-title">
	                                <div class="bd-L-tch tch2">培训中心</div>
	                                <div class="bd-L-ten ten4"></div>
	                               <!--  <div class="bd-L-tle tle3"></div> -->
	                            </div>
	                            <div class="bd-L-cont c2">${trainingCenter2.content }</div>
	                        </div>
	                        <div class="clear"></div>
	                    </div> --%>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-L-tch tch2">培养晋升</div>
	                    <div class="bd-L-cont c3">天虹内部90%以上的中层管理人员来自内部选拔，我们始终相信严谨的管理体系培养出的人才，更能够适应公司的战略发展。</div>
	                    <div class="bd-L-cont c3"><img alt="" src="${basePath}/web/images/up.png" style="width:557px;height:308px;"></div>
	                    <div class="bd-L-cont c3">${knowledge.content }</div>
	                    <div class="bd-tl-list">
	                        <ul class="bd-tl-lin">
	                            <li><div class="tl-ltx">${plan.content }</div>
	                                <div class="tl-lbt"></div>
	                            </li>
	                            <li><div class="tl-ltx">${newStar.content }</div>
	                                <div class="tl-lbt"></div>
	                            </li>
	                            <li><div class="tl-ltx">${thBuz.content }</div>
	                                <div class="tl-lbt"></div>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-tl-st">
	                        <div class="ttp">
	                            <div class="t-line"></div><div class="tch">天虹员工福利</div><div class="t-line"></div>
	                            <div class="clear"></div>
	                        </div>
	                        <div class="ten">Tianhong staff salaries and benefits and Six big benefits</div>
	                    </div>
	                    <div class="bd-tl-sb">
	                        <div class="sb-txt fl">
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">${wages01.title }</div>
	                                <div class="sb-tin-c">${wages01.content }</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">${wages02.title }</div>
	                                <div class="sb-tin-c">${wages02.content }</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">${wages03.title }</div>
	                                <div class="sb-tin-c">${wages03.content }</div>
	                            </div>
	                        </div>
	                        <div class="sb-txt txt2 fr">
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">${wages04.title }</div>
	                                <div class="sb-tin-c">${wages04.content }</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">${wages05.title }</div>
	                                <div class="sb-tin-c">${wages05.content }</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">${wages06.title }</div>
	                                <div class="sb-tin-c">${wages06.content }</div>
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        $(".bd-tl-lin li:first").css({"margin-left":"0"});
	        $(".tl-lbt").bind("click",function(){
	            $(this).prev(".tl-ltx").css({"height":"auto","overflow":"visible"});
	        })
	
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
