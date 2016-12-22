<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>购物中心-天虹商场|官方网站，分享生活之美</title>
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body class="shpping" style="overflow: hidden;">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="common_parentBlock">
			<div class="common_page">
				<div class="Serve_block">
					<div class="Serve">
						<div class="head">
							<ul >
                                <li <c:if test="${fn:contains(menu.name, '客服平台') }">class="current"</c:if>><a href="#" class="activity">客服平台</a></li>
                                <li <c:if test="${fn:contains(menu.name, '常见问题') }">class="current"</c:if>><a href="#" class="privilege">常见问题</a></li>
                                <li <c:if test="${fn:contains(menu.name, '泊车服务') }">class="current"</c:if>><a href="#" class="Store">泊车服务</a></li>
                        	</ul>
                        	<div class="clear"></div>
                    	</div>
                    	<div class="content">
	                        <div class="model1" <c:if test="${!fn:contains(menu.name, '客服平台') }">style="display: none;"</c:if>>
	                        	<div class="serve_title ">
	                        		<span class="font_c">客服平台</span>&nbsp;&nbsp;<span class="font_c2">Customer service platform</span>
	                        	</div>
	                        	<div class="serve_concentBox">
		                        	<c:forEach var="item" items="${customers }" begin="0" step="1" end="2" varStatus="itemStatus">
			                        	<div class="serve_concent fl" style="margin-right: 10px;">
		                        			<h3>${item.name }</h3>
		                        			<ul>
		                        				<c:forEach var="dev" items="${item.developHistorys }" begin="0" step="1" end="7">
 		                        					<li><a href="#">${dev.title }</a></li>
		                        				</c:forEach>
		                        			</ul>
		                        		</div>
		                        	</c:forEach>
	                        		<div class="clear"></div>
	                        	</div>
	                        </div>

	                        <div class="model1" <c:if test="${!fn:contains(menu.name, '常见问题') }">style="display: none;"</c:if>>
	                        	<div class="serve_title ">
	                        		<span class="font_c">常见问题</span>&nbsp;&nbsp;<span class="font_c2">Common problems</span>
	                        	</div>
	                        	<div class="serve_concentBox">
	                        		<div class="common_problem">
	                        			<ul>
		                        			<c:forEach var="item" items="${problems.obj }" begin="0" step="1" end="3" varStatus="itemStatus">
					                        	<li>
		                        					<div class="common_problem_list quseBtn ">
		                        						<b>${itemStatus.index+1 }</b><span>${item.title }</span>
		                        						<div class="clear"></div>
		                        					</div>
		                        					<div class="common_problem_info"><p>${item.content }</p></div>
		                        				</li>
				                        	</c:forEach>
	                        			</ul>
	                        		</div>	                        		
	                        		<div class="common_page">
	                        			<a style="float:none;" href="${basePath}/shopping/service/center?menuId=273&curPage=${problems.curPage-1}"> < </a>${problems.curPage }/${problems.totalPage }
	                        			<a style="float:none;" href="${basePath}/shopping/service/center?menuId=273&curPage=${problems.curPage+1>problems.totalPage?problems.totalPage:problems.curPage+1}"> > </a>
	                        			<div class="clear"></div>
	                        		</div>
	                        		<div class="clear"></div>
	                        	</div>
	                        </div>

	                        <div class="model1" <c:if test="${!fn:contains(menu.name, '泊车服务') }">style="display: none;"</c:if>>
	                        	<div class="serve_title ">
	                        		<span class="font_c">泊车服务</span>&nbsp;&nbsp;<span class="font_c2">Parking service</span>
	                        	</div>
	                        	<div class="serve_concentBox">
	                        		<div class="pack_seve_con">${fn:replace(parking.content,back,basePath)}</div>	                        		
	                        		<div class="clear"></div>
	                        	</div>
	                        </div>
	                   	</div>
	                </div>
	            </div>
            </div>
		</div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".common_problem li").bind('click', function() {
				if($(this).find(".common_problem_info").css("display") == "none"){
					$(this).siblings().find(".common_problem_info").stop(true,true).slideUp(300);
					$(this).find(".common_problem_info").stop(true,true).slideDown(300);
				}else{
					$(this).find(".common_problem_info").stop(true,true).slideUp(300);
				}
			});
		})
	</script>

</body>
</html>
