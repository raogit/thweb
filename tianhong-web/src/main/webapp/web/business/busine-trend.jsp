<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
	<c:if test="${parentMenu.id==180 }">
    	<div class="titleImg_content" style="background:url(../images/i_bg1.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/i_bg1.jpg,sizingMethod='scale');">
    		<div class="titleImg_img">
				<img src="../images/i_bg2.png">
			</div>
    	</div>
    </c:if>
    <c:if test="${parentMenu.id!=180 }">
    	<div class="titleImg_content" style="background:url(../images/b_02.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_02.jpg,sizingMethod='scale');"></div>
    </c:if>
    <div class="nav_content">
        <div class="nav_contentBlock">
			<div class="nav_aContent">
                  <a href="${basePath}" class="nav_aBlock icon">首页</a>
                  <a href="${basePath}${parentMenu.link }?menuId=${parentMenu.id }" class="nav_aBlock icon">${parentMenu.name }</a>
                  <a href="${basePath}${menu.link }?menuId=${menu.id }" class="nav_aBlock">${menu.name }</a>
             </div>
             <div class="nav_ulBlock">
              	<c:forEach var="item" items="${subMenus }" begin="0" step="1" varStatus="itemStatus">
                	<c:if test="${item.id==menu.id }">
                		<c:choose>
							<c:when test="${fn:contains(item.link, 'http')}">  
						   		<a target="_blank" href="${item.link }" class="nav_liBlock current">${item.name }</a>
						   	</c:when>
						   	<c:otherwise> 
						   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
						   	</c:otherwise>
						</c:choose>
                	</c:if>
                	<c:if test="${item.id!=menu.id }">
                		<c:choose>
							<c:when test="${fn:contains(item.link, 'http')}">  
						   		<a target="_blank" href="${item.link }" class="nav_liBlock">${item.name }</a>
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
        <div class="bd-cont-in cinE">
            <div class="bd-PD-r fr">
                <div class="PD-rt">相关问题</div>
                <ul class="PD-rlt">
	                <c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
		               	<li><a href="${basePath}/web/investment/businetrend?menuId=${item.menuId }&id=${item.id }">${item.title }</a></li>
			        </c:forEach>
                </ul>
            </div>
            <div class="bd-PD-l fl">
                <div class="PD-lt">${history.title }</div>
                <div class="PD-ltb">
                    <span>${history.createTimeStr }</span>
                    <span>来源：${history.backup1 }</span>
                </div>
                <div class="PD-cont">
                    <div>
                        <img src="${basePath}/download/png?fileName=${history.picture}" alt="" style="max-width: 725px;">
                    </div>
                    <div class="froala-element PD-btm" style="white-space:pre-wrap;">${fn:replace(history.content,back,basePath)}</div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>


</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>
<script>
    $(function(){
        $(".PD-rlt li:last").css({"border":"0"});
    })
</script>
	

</body>
</html>
