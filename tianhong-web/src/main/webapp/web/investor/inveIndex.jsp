<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
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
    <script type="text/javascript">
	    function changeFrameHeight(){
	        var ifm= document.getElementById("hangqing"); 
	        ifm.height=document.documentElement.clientHeight;
	        ifm.width=document.documentElement.clientWidth;
	   }
	   window.onresize=function(){  
	         changeFrameHeight();  
	    
	   } 
    </script>
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
							   		<a target="_blank" href="${item.link }" class="nav_liBlock current" target="_blank">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a target="_blank" href="${item.link }" class="nav_liBlock" target="_blank">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
			        </c:forEach>
	               <!--  <a href="index.html?p=0" class="nav_liBlock">企业文化</a>
	                <a href="Trailer.html?p=1" class="nav_liBlock">宣传片</a>
	                <a href="Ejournals.html?p=2" class="nav_liBlock">电子期刊</a>
	                <a href="Video.html?p=3" class="nav_liBlock">视频中心</a>
	                <a href="Public.html?p=4" class="nav_liBlock">社会责任</a> -->
	            </div>
	            <!-- 
                <div class="nav_ulBlock">
                    <a href="inveIndex.html?p=0" class="nav_liBlock">实时行情</a>
                    <a href="inveInfo.html?p=1" class="nav_liBlock">基本资料</a>
                    <a href="companyManage.html?p=2" class="nav_liBlock">公司治理</a>
                    <a href="http://www.cninfo.com.cn" target="_blank" class="nav_liBlock">定期报告</a>
                    <a href="http://www.cninfo.com.cn" target="_blank" class="nav_liBlock">临时公告</a>
                    <a href="profit.html?p=5" class="nav_liBlock">股东回报</a>
                    <a href="protect.html?p=6" class="nav_liBlock">宣传与保护</a>
                    <a href="contact.html?p=7" class="nav_liBlock">互动交流</a>
                </div>
                 -->
            </div>
        </div>
        <div id='hangqingdiv' style="margin: auto;width: 50%;height: 450px; overflow: hidden;">
			<iframe scrolling="no" id="hangqing" name="hangqing" scrolling="no" onload="changeFrameHeight()" frameborder="0" src="http://js.jrj.com.cn/hq/gs/gshq.html?code=002419"   ></iframe>
		</div>
		
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        $(".bd-L-cont.LC p").eq(0).css({"width":"420px"});
	    })
	    $("#hangqing").css("width","600px");
	</script>
</body>
</html>
