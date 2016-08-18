<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
<div class="rt right-box">
	<div class="right-box-nav">
		<h1>${parentMenu.name }<em>/</em>${menu.name }</h1>
		<!-- <div class="rootle rt" id="forms">
                    <input type="text" placeholder="输入关键词搜索" class="ui-input"/>
                    <input type="submit" value="搜索"/>
                </div> -->
	</div>
	<div class="items-infor">
		<div class="items-img lt">
			<c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="status">
				<img src="${basePath}/download/png?fileName=${item.path }" />
			</c:forEach>
		</div>
		<div class="items-desc rt">
			<div class="desc-title">${content.title }</div>
			<div class="tel-number">
				<c:forEach var="item" items="${pictures }" begin="1" step="1" end="1" varStatus="status">
					<img src="${basePath}/download/png?fileName=${item.path }" />
				</c:forEach>
			</div>
			<div class="desc-text">${content.content }</div>
		</div>
		<div class="clear"></div>
	</div>
</div>
