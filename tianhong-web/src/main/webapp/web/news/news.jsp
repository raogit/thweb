<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
    <title>天虹商场</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<jsp:include page="../base.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
        <div class="news_content">
            <div class="news_contentBox">
                <div class="news_Toptit">
                    <h3>新闻头条</h3>
                    <div class="clear"></div>
                </div>
                <div class="news_model1">
                    <div class="news_bannerBox">
                        <div class="news_banner">
                            <c:forEach var="item" items="${newsHeadLine }" begin="0" step="1" end="0" varStatus="itemStatus">
			                	<img src="${basePath}/download/png?fileName=${item.picture }" style="max-width:696px;max-height:394px;" />
					        </c:forEach>
                        </div>
                        <c:forEach var="item" items="${newsHeadLine }" begin="0" step="1" end="0" varStatus="itemStatus">
			            	<div class="news_bannerText">
	                            <a href="javascript:;" class="news_bannerTit">${item.title }</a>
	                        </div>
					    </c:forEach>
                        
                        <div class="news_bannerBtn">
                            <a class="prev" href="javascript:void(0);"><img src="../images/upBtn.png"></a>
                            <a class="next" href="javascript:void(0);"><img src="../images/nextBtn.png"></a>
                        </div>
                    </div>
                    <div class="news_TopListBox">
                        <div class="news_TopList">
                            <ul>
	                            <c:forEach var="item" items="${newsHeadLine }" begin="0" step="1" end="2" varStatus="itemStatus">
				                	<li>
	                                    <a href="${basePath}/web/newscenter/detail?id=${item.id }&menuId=${menuId}">
	                                        <div class="news_TopContent">
	                                            <h3>${fn:substring(item.title,0,20) }</h3>
	                                            <%-- <i style="position: relative;font-size: 6;text-align: right;">${item.newsTimeStr }</i> --%>
	                                            <dir style="height:50px;padding-left: 0;overflow: hidden;margin: 0 0;">${fn:replace(item.content,back,basePath)}</dir>
	                                        </div>
	                                    </a>
	                                </li>
						        </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="news_model2">
                    <div class="news_AllBox">
                        <h3>全部新闻</h3>
                        <div class="news_AllTopLIst">
                            <ul>
                                <!-- <li>媒体视角</li>
                                <li>公司新闻</li> -->
                            </ul>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="news_AllLBox">
                        <div class="news_AllL">
                            <ul>
                            	<c:forEach var="item" items="${newsAll }" begin="0" step="1" varStatus="itemStatus">
				                	 <li>
	                                    <div class="news_AllLPic"><img src="${basePath}/download/png?fileName=${item.picture }" width="327px" height="185px;" /></div>
	                                    <div class="news_AllLContent">
	                                            <h5>${item.title}</h5>
	                                            <a href="${basePath}/web/newscenter/detail?id=${item.id }&menuId=${menuId}" target="_blank"><dir style="height:80px;padding-left: 0;overflow: hidden;margin: 0 0;">${fn:replace(item.content,back,basePath)}</dir></a>
	                                            <div class="news_AllFoot">
	                                                <h3>时间：${item.newsTimeStr }</h3>
	                                                <a href="${basePath}/web/newscenter/detail?id=${item.id }&menuId=${menuId}" target="_blank">查看详细>></a>
	                                                <div class="clear"></div>
	                                            </div>
	                                    </div>
	                                    <div class="clear"></div>
	                                </li>
						        </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
         </div>
    </div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
