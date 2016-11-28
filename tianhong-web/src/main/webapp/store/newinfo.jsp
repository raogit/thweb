<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="head/head.jsp"></jsp:include>
	<div class="content">
	    <div class="cont-in clearfix">
	        <div class="new-right">
	            <div class="new-right">
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
	                    <div class="n-r-list"> </div>
	                </div>
	            </div>
	        </div>
	        <div class="new-left">
	            <div class="n-l-top"><img src="${basePath }/images/store/n_02.jpg" alt=""></div>
	            <div class="n-l-c">
	                <div class="n-l-crumb">
	                    <div class="n-l-cleft">
	                        <a href="Default.aspx"><div class="c-home"><img src="${basePath }/images/store/n_03.png" alt=""></div></a>
	                        <a href="Default.aspx"><div class="c-h-in">首页 · <i>Home</i></div></a>
	                    </div>
	                    <div class="c-now">最新消息</div>
	                </div>
	            </div>
	
	            <div class="n-l-cont">
	                <div class="n-l-ct">最新消息</div>
	                <div class="n-l-line"></div>
	                <c:forEach var="item" items="${news.obj }" begin="0" step="1" end="3" varStatus="itemStatus">
		            	<div class="n-l-cin">
		                    <div class="cin-title"><div class="cin-tt">${item.title }</div><div class="cin-td">[${fn:substring(item.startTimeStr,0,11) }-${fn:substring(item.endTimeStr,0,11) }]</div></div>
		                    <div class="cin-cont">${item.content }</div>
		                </div>
		            </c:forEach>
	            </div>
	            <div class="cont-page">
	                <a href="${basePath }/store/newinfo?curPage=1" class="cp-a">首页</a>
	                <c:if test="${news.curPage>1 }">
		            	<a href="${basePath }/store/newinfo?curPage=${news.curPage-1}" class="cp-a">上一页</a>
		            </c:if>
	                <div class="cont-pnb">
		                <c:forEach var="item" items="${pageFoot }" begin="0" step="1" varStatus="itemStatus">
		                	<c:if test="${item == news.curPage }">
		                		<a href="${basePath }/store/newinfo?curPage=${item }" class="cp-a p-at">${item }</a>
		                	</c:if>
		                	<c:if test="${item != news.curPage }">
		                		<a href="${basePath }/store/newinfo?curPage=${item }" class="cp-a">${item }</a>
		                	</c:if>
			            </c:forEach>
	                </div>
	                <c:if test="${news.curPage<news.totalPage }">
		            	 <a href="${basePath }/store/newinfo?curPage=${news.curPage+1}" class="cp-a">下一页</a>
		            </c:if>
	                <a href="${basePath }/store/newinfo?curPage=${news.totalPage}" class="cp-a">尾页</a>
	            </div>
	            <div class="n-l-btm"><img src="${basePath }/images/store/n_12.png" alt=""></div>
	        </div>
	    </div>
	</div>
	<jsp:include page="foot/foot.jsp"></jsp:include>
</body>
</html>
