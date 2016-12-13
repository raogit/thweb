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
	    <div class="titleImg_content" style="background:url(../images/b_04.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_04.jpg,sizingMethod='scale');">
	        <!-- <div class="titleImg_img"><img src="../images/b_3.png"></div> -->
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
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
	                	</c:if>
			        </c:forEach>
	            </div>
	        </div>
	    </div>
	    <div class="bd-cont cont-C">
	        <div class="bd-cont-in cinE">
	            
	            <c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
				   <div class="bd-cont-RE fr" style="background:url(${basePath}/download/png?fileName=${item.path }) no-repeat;width:305px; height:396px">
		                <div class="bd-RE">
		                    <div class="RE-in"><a href="${basePath}/download/pdf?fileName=${item.url }"><img src="../images/img/c_27.png" alt=""></a></div>
		                    <div class="RE-in"><a target="_blank" href="${basePath}/web/culture/edetails?fileName=${item.url}"><img src="../images/img/c_28.png" alt=""></a></div>
		                </div>
		            </div>
				</c:forEach>
	            <div class="bd-cont-LE fl">
	                <c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
					    <div class="bd-LE-top">
		                    <div class="bd-LE-tr fr"><img src="${basePath}/download/png?fileName=${item.path }" alt="" width="312px" height="206px"></div>
		                    <div class="bd-LE-tl fl">
		                       <%--  <div class="bd-LE-num">${item.createTimeStr }</div> --%>
		                        <div class="bd-LE-ch">《${item.title }》</div>
		                        <div class="bd-LE-txt">${item.content }</div>
		                        <a target="_blank" href="${basePath}/web/culture/edetails?fileName=${item.url}" class="bd-LE-a"><div class="bd-LE-btn b2"><img src="../images/img/c_10.png" alt=""></div></a>
		                    </div>
		                </div>
					</c:forEach>
	                <div class="bd-LE-btm">
	                    <ul class="bd-LE-list">
	                    	<c:forEach var="item" items="${pictures }" begin="1" step="1" end="4" varStatus="itemStatus">
				                <li>
		                            <div class="LE-lr fr">
		                                <div class="LE-lrt"><%-- <strong>${item.createTimeStr }</strong> --%><span>《${item.title }》</span></div>
		                                <div class="LE-lrc">${item.content }</div>
		                                <div class="LE-lrm"><a target="_blank" href="${basePath}/web/culture/edetails?fileName=${item.url}" class="bd-LE-a">查看更多</a></div>
		                            </div>
		                            <img src="${basePath}/download/png?fileName=${item.path }" alt="" class="fl" width="206px" height="134px">
		                        </li>
							</c:forEach>
	                    </ul>
	                    <!-- <div class="bd-LE-btn"><img src="../images/img/c_10.png" alt=""></div> -->
	                </div>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>


</body>
</html>
