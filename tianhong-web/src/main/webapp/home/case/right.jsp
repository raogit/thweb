<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="/base/base.jsp"></jsp:include>
<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
<div class="rt right-box">
	<div class="right-box-nav">
		<h1>Project development / 项目楼盘</h1>
		<!--  <div class="rootle rt" id="forms">
                    <input type="text" placeholder="输入关键词搜索" class="ui-input"/>
                    <input type="submit" value=""/>
                </div> -->
	</div>
	<div class="item-list">
		<ul>
			<c:forEach var="item" items="${contents }" begin="0" step="1" end="2"  varStatus="itemStatus">
				<li><a href="${basePath}${item.menu.link }?menuId=${item.menu.id}&leftMenuId=${leftMenuId }&item=${itemStatus.index }&p=0">
					<div class="img-box">
						<c:forEach var="pic" items="${item.pictures }" begin="0" step="1" end="0" varStatus="status">
		       				<img src="${basePath}/download/png?fileName=${pic.path }" />
		       			</c:forEach></div>
					<div class="mode">在售项目</div>
					<div class="item-name">
						<h1>${item.title }</h1>
						<em></em>
					</div>
					<div class="item-infor" style="overflow: hidden; height: 150px;">${item.content }</div>
				</a></li>
			</c:forEach>
			
			<c:forEach var="item" items="${contents }" begin="0" step="1" end="2"  varStatus="itemStatus">
				<li><a href="${basePath}${item.menu.link }?menuId=${item.menu.id}&leftMenuId=${leftMenuId }&item=${itemStatus.index }&p=0">
					<div class="img-box">
						<c:forEach var="pic" items="${item.pictures }" begin="0" step="1" end="0" varStatus="status">
		       				<img src="${basePath}/download/png?fileName=${pic.path }" />
		       			</c:forEach></div>
					<div class="mode">在售项目</div>
					<div class="item-name">
						<h1>${item.title }</h1>
						<em></em>
					</div>
					<div class="item-infor" style="overflow: hidden; height: 150px;">${item.content }</div>
				</a></li>
			</c:forEach>
		</ul>
		<div class="btnButton"><span class="curr">0</span><span>1</span></div>
	</div>
</div>