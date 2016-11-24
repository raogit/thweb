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
		        <c:forEach var="item" items="${duties }" begin="0" step="1" end="1" varStatus="itemStatus">
			       	<div class="bd-cont-RE RE2 fr" style="background:url(${basePath}/download/png?fileName=${item.path }) no-repeat">
		                <div class="bd-Pho">
		                </div>
		                <div class="bd-Ptx">
		                    <div class="bd-Pt">
		                        <div class="tnm">2015</div>
		                        <div class="tch">社会责任报告</div>
		                        <div class="ten">Social Responsibility Report</div>
		                    </div>
		                    <div class="bd-Pb">天虹股份有限公司</div>
		                </div>
		                <div class="bd-RE RE2">
		                    <a href="${basePath}/download/pdf?fileName=${item.url}"><img src="../images/img/c_27.png" alt=""></a>
		                    <a target="_blank" href="${basePath}/web/culture/edetails?fileName=${item.url}"><img src="../images/img/c_28.png" alt=""></a>
		                </div>
		            </div>
		       
		        </c:forEach>
	            
	            <div class="bd-cont-LE fl">
	            	<c:forEach var="item" items="${commonweals }" begin="0" step="1" varStatus="itemStatus">
	                	<div class="bd-LE-top">
		                    <div class="bd-LE-tr P-tr fr"><img src="${basePath}/download/png?fileName=${item.picture }" alt="" width="352px" height="235px"></div>
		                    <div class="bd-LE-tl fl">
		                        <div class="bd-LE-num n-p">公益活动</div>
		                        <div class="bd-LE-ch ch-p">项目名称：${item.title }</div>
		                        <div class="bd-LE-txt">${item.content }</div>
		                        <a href="${basePath}/web/culture/publicdetail?menuId=${menu.id }&id=${item.id }" class="bd-LE-a"><div class="bd-LE-btn b2"><img src="../images/img/c_10.png" alt=""></div></a>
		                    </div>
		                </div>
			        </c:forEach>
	                <%-- <div class="bd-LE-btm">
	                    <div class="bd-p-title">
	                        <div class="bd-LE-num n-p">员工活动</div>
	                        <div class="bd-LE-ch ch-p2">Employee activity</div>
	                    </div>
	                    <ul class="bd-LE-list P-list">
		                    <c:forEach var="item" items="${staffs }" begin="0" step="1" end="2" varStatus="itemStatus">
			                	<li>
		                            <div class="LE-lr fr">
		                                <div class="LE-lrt2">${item.title }</div>
		                                <div class="LE-lrc">${item.content }</div>
		                                <div class="LE-lrm"><a target="_blank" href="${basePath}/web/culture/edetails?fileName=${item.url}" class="bd-LE-a">查看更多</a></div>
		                            </div>
		                            <img src="${basePath}/download/png?fileName=${item.path }" alt="" class="fl" width="206px" height="134px" />
		                        </li>
					        </c:forEach>
	                    </ul>
	                    <div class="bd-LE-btn"><img src="../images/img/c_10.png" alt=""></div>
	                </div> --%>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
