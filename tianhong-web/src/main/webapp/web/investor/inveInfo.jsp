<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
    <meta charset="UTF-8">
	<title>天虹商场|官方网站，分享生活之美</title>
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
        <div class="inves_content">
            <div class="inves_InfoBox">
                <div class="inves_Info">
                    <ul>
                        <li>
                            <div class="inves_InfoR">公司全称：</div>
                            <div class="inves_InfoL">${inveInfo.companyName }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">英文名称：</div>
                            <div class="inves_InfoL">${inveInfo.companyEnName }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">注册地址：</div>
                            <div class="inves_InfoL">${inveInfo.address }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">公司简称：</div>
                            <div class="inves_InfoL">${inveInfo.shortName }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">法定代表人：</div>
                            <div class="inves_InfoL">${inveInfo.legalPerson }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">公司董秘：</div>
                            <div class="inves_InfoL">${inveInfo.secretary }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">注册资本（万元）：</div>
                            <div class="inves_InfoL">${inveInfo.registered }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">行业种类：</div>
                            <div class="inves_InfoL">${inveInfo.industry }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">邮政编码：</div>
                            <div class="inves_InfoL">${inveInfo.zipCode }</div>
                            <div class="clear"></div>
                        </li>
                        <li class="bornone">
                            <div class="inves_InfoR">公司电话：</div>
                            <div class="inves_InfoL">${inveInfo.phone }</div>
                            <div class="clear"></div>
                        </li>
                    </ul>
                </div>
                <div class="inves_Info marL">
                    <ul>
                        <li>
                            <div class="inves_InfoR">公司传真：</div>
                            <div class="inves_InfoL">${inveInfo.fax }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">发行市盈率（倍）：</div>
                            <div class="inves_InfoL">${inveInfo.ipoRatio }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">公司网址：</div>
                            <div class="inves_InfoL">${inveInfo.webSite }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">上市时间：</div>
                            <div class="inves_InfoL">${inveInfo.marketTime }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">发行方式：</div>
                            <div class="inves_InfoL">${inveInfo.releaseMode }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">主承销商：</div>
                            <div class="inves_InfoL">${inveInfo.underWriter }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">招股时间：</div>
                            <div class="inves_InfoL">${inveInfo.prospectusTime }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">保荐机构：</div>
                            <div class="inves_InfoL">${inveInfo.sponsorInstitution }</div>
                            <div class="clear"></div>
                        </li>
                        <li>
                            <div class="inves_InfoR">发行数量（万股）：</div>
                            <div class="inves_InfoL">${inveInfo.issueNumber }</div>
                            <div class="clear"></div>
                        </li>
                        <li class="bornone">
                            <div class="inves_InfoR">发行价格（元）：</div>
                            <div class="inves_InfoL">${inveInfo.issuePrice }</div>
                            <div class="clear"></div>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
         </div>

    </div>
    <jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
