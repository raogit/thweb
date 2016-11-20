<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
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
    <div class="titleImg_content" style="background:url(../images/b_2.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_2.jpg,sizingMethod='scale');">
        <div class="titleImg_img"><img src="../images/b_3.png"></div>
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
    <div class="bd-cont">
        <div class="bd-cont-in cinE">
            <div class="bd-PD-r fr">
                <div class="PD-rt">相关链接</div>
                <ul class="PD-rlt">
                	<c:forEach var="item" items="${historys }" begin="0" step="1" varStatus="itemStatus">
	                	<li><a href="${basePath}/web/culture/publicdetail?menuId=${menu.id }&id=${item.id }">${item.title }</a></li>
			        </c:forEach>
                </ul>
            </div>
            <div class="bd-PD-l fl">
                <div class="PD-lt">公益活动：${history.title } </div>
                <div class="PD-ltb">
                    <span>${history.createTimeStr }</span>
                    <span>来源：${history.backup1 }</span>
                    <span>置顶新闻</span>
                </div>
                
                
                <div class="PD-cont">
                    <div class="PD-top">${history.content }</div>
                    <div class="PD-cim"><img src="${basePath}/download/png?fileName=${history.picture }" alt="" style="width: 725px;height: 487px;"></div>
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
