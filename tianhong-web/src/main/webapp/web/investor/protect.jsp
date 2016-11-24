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
</head>
<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
        <div class="titleImg_content" style="background:url(../images/i_bg1.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/i_bg1.jpg,sizingMethod='scale');">
            <div class="titleImg_img"><img src="../images/i_bg2.png"></div>
        </div>
        <div class="nav_content">
            <div class="nav_contentBlock">
                <div class="nav_aContent">
                    <a href="../index.html" class="nav_aBlock icon">首页</a>
	                <a href="${basePath}${parentMenu.link }?menuId=${parentMenu.id }" class="nav_aBlock icon">${parentMenu.name }</a>
	                <a href="${basePath}${menu.link }?menuId=${menu.id }" class="nav_aBlock">${menu.name }</a>
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
        <div class="inves_content">
            <div class="inves_ProtectBox">
                <div class="inves_ProtectTitle">
                    <h3>热点关注</h3>
                    <h5>Hot spots</h5>
                </div>
                <div class="inves_Spot">
                    <ul>
                   	 	<c:forEach var="item" items="${hots }" begin="0" step="1" varStatus="itemStatus">
			            	<li>
	                            <a href="${basePath}/web/investment/businetrend?menuId=${item.menuId }&id=${item.id}">
	                                <h3>${item.title }</h3>
	                                <h5>${item.createTimeStr }</h5>
	                                <div class="clear"></div>
	                            </a>
	                        </li>
				        </c:forEach>
                    </ul>
                    <a href="javascript:;" class="more readMoreBtn"><img src="../images/i9.png"></a>
                </div>
                <div class="inves_ProtBox">
                    <div class="inves_ProtTit">法律法规</div>
                            <div class="inves_ProtContentBlick">
	                            <c:forEach var="historys" items="${laws }" begin="0" step="1" varStatus="itemStatus">
	                           		<c:if test="${itemStatus.index==0 }">
	                           			<div class="inves_ProtContent">
	                           		</c:if>
				                	<c:if test="${itemStatus.index>0 }">
	                           			<div class="inves_ProtContent" style="display:none">
	                           		</c:if>
		                               <ul>
		                                    <c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
							                	<ul>
		                                            <li>
		                                                 <a href="${basePath}/web/investment/businetrend?menuId=${item.menuId }&id=${item.id }">
		                                                    <h3>${item.title }</h3>
			                                          		<h5>${item.createTimeStr }</h5>
		                                                    <div class="clear"></div>
		                                                </a>
		                                            </li>
		                                        </ul>
									        </c:forEach>
		                                   <div class="clear"></div>
		                               </ul>
		                               <div class="clear"></div>
		                           </div>
						        </c:forEach>
                            </div>
                    <div class="inves_ProtFocus">
                        <ul>
                       	 	<c:forEach var="historys" items="${laws }" begin="0" step="1" varStatus="itemStatus">
                           		<c:if test="${itemStatus.index==0 }">
                           			<li class="cur"></li>
                           		</c:if>
			                	<c:if test="${itemStatus.index>0 }">
                           			<li></li>
                           		</c:if>
					        </c:forEach>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="inves_ProtBox inves_ProtBoxL">
                    <div class="inves_ProtTit inves_ProtTit2">公益教育</div>
                         <div class="busine_SpotContent">
	                           <c:forEach var="historys" items="${educations }" begin="0" step="1" varStatus="itemStatus">
	                           		<c:if test="${itemStatus.index==0 }">
	                           			<div class="inves_ProtContent">
	                           		</c:if>
				                	<c:if test="${itemStatus.index>0 }">
	                           			<div class="inves_ProtContent" style="display:none">
	                           		</c:if>
		                               <ul>
		                                    <c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
							                	<ul>
		                                            <li>
		                                                 <a href="${basePath}/web/investment/businetrend?menuId=${item.menuId }&id=${item.id }">
		                                                    <h3>${item.title }</h3>
			                                          		<h5>${item.createTimeStr }</h5>
		                                                    <div class="clear"></div>
		                                                </a>
		                                            </li>
		                                        </ul>
									        </c:forEach>
		                                   <div class="clear"></div>
		                               </ul>
		                               <div class="clear"></div>
		                           </div>
						        </c:forEach>
                        </div>
                    <div class="busine_ProtFocus">
                        <ul>
                           <c:forEach var="historys" items="${educations }" begin="0" step="1" varStatus="itemStatus">
                           		<c:if test="${itemStatus.index==0 }">
                           			<li class="cur"></li>
                           		</c:if>
			                	<c:if test="${itemStatus.index>0 }">
                           			<li></li>
                           		</c:if>
					        </c:forEach>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>

            </div>
         </div>

    </div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
