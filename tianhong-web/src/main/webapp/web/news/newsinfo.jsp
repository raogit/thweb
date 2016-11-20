<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
    <title>天虹集团官网</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
        <div class="newsnav_content">
            <div class="newsnav_contentBlock">
               <div class="newsnav_aContent">
                    <a href="${basePath}" class="newsnav_aBlock icon">首页</a>
                    <a href="${basePath}/web/newscenter/index?menuId=179" class="newsnav_aBlock icon">新闻中心</a>
                    
                </div>
                <a href="" class="newsnav_aBack" onclick="javascript:history.back(-1);">返回</a>
            </div>
        </div>
        <div class="news_content">
            <div class="news_contentBox">
               <div class="newsInfo_Rcon">
                   <div class="newsInfo_Title">${news.title }</div>
                    <div class="newsInfo_TitleTop">
                        <h3>${news.newsTimeStr }</h3>
                        <h3>来源：${news.source }</h3>
                        <div class="clear"></div>
                    </div>
                    <div class="newsInfo_Content">${news.content }</div>
                    <div class="newsInfo_fx">
                       <!--  <span>分享到：</span><img src="../images/new11.png"> -->
                    </div>
               </div>
               <div class="newsInfo_Lcon">
                   <div class="newsInfoListTop">相关新闻</div>
                   <div class="newsInfo_List">
                       <ul>
                       		<c:forEach var="item" items="${newsRelation }" begin="0" step="1" end="4" varStatus="itemStatus">
			                	<li><a href="${basePath}/web/newscenter/detail?id=${item.id }&menuId=${menuId}">${fn:substring(item.title,0,20) }</a></li>
					        </c:forEach>
                       </ul>
                   </div>
               </div>
               <div class="clear"></div>
            </div>
         </div>
    </div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
