<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("ver", Math.random());
	%>
<div class="lt menu-left">
	<div class="menu-left-page">
		<p>${menu.name }</p>
<!-- 		<span>Project development</span> -->
	</div>
	<div class="menu-left-item">
		<ul id="item-menu">
			<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
				<li><a href="javascript:void(0);" class="f"><span>${item.name }</span><em></em></a>
					<dl>
						<c:forEach var="sub" items="${item.subMenus }" begin="0" step="1"  varStatus="subStatus">
							<dd>
								<a href="${basePath}${sub.link }?menuId=${sub.id}&leftMenuId=${leftMenuId }&item=${itemStatus.index }&p=${subStatus.index}">${sub.name }</a>
							</dd>
						</c:forEach>
					</dl></li>
			</c:forEach>
			<!-- <li>
                   <a href="javascript:void(0);" class="f"><span>南昌·九洲天虹广场</span><em></em></a>
                   <dl>
                       <dd><a href="../case/profile.html?item=0&p=0">项目简介</a></dd>
                       <dd><a href="../case/picture.html?item=0&p=1">项目图片</a></dd>
                       <dd><a href="../case/traffic.html?item=0&p=2">区位交通</a></dd>
                   </dl>
               </li>
               <li>
                   <a href="javascript:void(0);" class="f"><span>苏州·天虹品上中心</span><em></em></a>
                   <dl>
                       <dd><a href="../case/profile.html?item=1&p=0">项目简介</a></dd>
                       <dd><a href="../case/picture.html?item=1&p=1">项目图片</a></dd>
                       <dd><a href="../case/traffic.html?item=1&p=2">区位交通</a></dd>
                   </dl>
               </li>
               <li>
                   <a href="javascript:void(0);" class="f"><span>吉安·天虹购物中心</span><em></em></a>
                   <dl>
                       <dd><a href="../case/profile.html?item=2&p=0">项目简介</a></dd>
                       <dd><a href="../case/picture.html?item=2&p=1">项目图片</a></dd>
                       <dd><a href="../case/traffic.html?item=2&p=2">区位交通</a></dd>
                   </dl>
               </li> -->
		</ul>
	</div>
</div>
