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
							   		<a href="${item.link }" class="nav_liBlock current">${item.name }</a>
							   	</c:when>
							   	<c:otherwise> 
							   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
							   	</c:otherwise>
							</c:choose>
	                	</c:if>
	                	<c:if test="${item.id!=menu.id }">
	                		<c:choose>
								<c:when test="${fn:contains(item.link, 'http')}">  
							   		<a href="${item.link }" class="nav_liBlock">${item.name }</a>
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
            <div class="inves_CompanyBox">
               <div class="inves_ComModel1">
                   <div class="inves_structureTit">
                       <h3>组织架构</h3>
                       <h5>structure</h5>
                       <div class="line"></div>
                   </div>
                   <div class="inves_structureCom">
                   		<c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
		                	<img src="${basePath}/download/png?fileName=${item.path }"  width="1086px" height="720px">
				        </c:forEach>
                   </div>
               </div>
               <div class="inves_ComModel2">
                   <div class="inves_executBox">
                       <div class="inves_executCon">
                           <div class="inves_executTit">
                               <img src="../images/i3.png">
                           </div>
                           <div class="inves_executTextBox">
                                <div class="inves_executText">
                                    <div class="inves_executTextTop">
                                        <span>董事</span>
                                    </div>
                                    <div class="inves_executTextFootBox">
                                    
	                                    <c:forEach var="item" items="${directors }" begin="0" step="1" end="2" varStatus="itemStatus">
						                	<div class="inves_executTextFoot">
	                                            <div class="inves_executFootTit">
	                                                <h3>${item.title }</h3>
	                                                <div class="line"></div>
	                                            </div>
	                                            <div class="inves_executFootCon">${item.content }</div>
	                                            <a href="javascript:;" class="more"><img src="../images/i5.png"></a>
	                                        </div>
								        </c:forEach>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <div class="inves_executText">
                                    <div class="inves_executTextTop">
                                        <span>监事</span>
                                    </div>
                                    <div class="inves_executTextFootBox">
                                        <c:forEach var="item" items="${supervisors }" begin="0" step="1" end="2" varStatus="itemStatus">
						                	<div class="inves_executTextFoot">
	                                            <div class="inves_executFootTit">
	                                                <h3>${item.title }</h3>
	                                                <div class="line"></div>
	                                            </div>
	                                            <div class="inves_executFootCon">${item.content }</div>
	                                            <a href="javascript:;" class="more"><img src="../images/i5.png"></a>
	                                        </div>
								        </c:forEach>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                           </div>
                           <div class="inves_executManagerBox">
                                 <div class="inves_executManager">
                                     <div class="inves_executManagerTit">
                                        <span>董事</span>
                                     </div>
                                     <div class="inves_executManagerBox">
                                     
                                     	<c:forEach var="item" items="${director2s }" begin="0" step="1" end="5" varStatus="itemStatus">
						                	<div class="inves_executTextFoot">
	                                            <div class="inves_executFootTit">
	                                                <h3>${item.title }</h3>
	                                                <div class="line"></div>
	                                            </div>
	                                            <div class="inves_executFootCon">${item.content }</div>
	                                            <a href="javascript:;" class="more"><img src="../images/i5.png"></a>
	                                        </div>
								        </c:forEach>
                                        
                                        <div class="clear"></div>
                                    </div>
                                 </div>
                           </div>
                       </div>
                   </div>
               </div>
               <div class="inves_ComModel3">
                   <div class="inves_SystemBox">
                       <div class="inves_SystemTit">
                           <img src="../images/i22.png">
                       </div>
                       <div class="inves_SystemList2" id="inves_SystemList3">
                           <ul>
                           		<c:forEach var="item" items="${constitutions }" begin="0" step="1" varStatus="itemStatus">
			                		<li>
	                                   <div class="Con1">${item.title }</div>
	                                   <div class="Con2">${item.content }</div>
	                                   <a href="${basePath}/download/pdf?fileName=${item.url}" class="Con3">下载</a>
	                                   <div class="clear"></div>
	                               	</li>
				        		</c:forEach>
                           </ul>
                           <a href="javascript:;" class="more" id="readMoreBtn3"><img src="../images/i9.png"></a>
                       </div>
                   </div>
               </div>
               <div class="inves_ComModel3">
                   <div class="inves_SystemBox">
                       <div class="inves_SystemTit">
                           <img src="../images/i7.png">
                       </div>
                       <div class="inves_SystemList2" id="inves_SystemList2">
                           <ul>
                           		<c:forEach var="item" items="${systems }" begin="0" step="1" varStatus="itemStatus">
			                		<li>
	                                   <div class="Con1">${item.title }</div>
	                                   <div class="Con2">${item.content }</div>
	                                   <a href="${basePath}/download/pdf?fileName=${item.url}" class="Con3">下载</a>
	                                   <div class="clear"></div>
	                               	</li>
				        		</c:forEach>
                           </ul>
                           <a href="javascript:;" class="more" id="readMoreBtn2"><img src="../images/i9.png"></a>
                       </div>
                   </div>
               </div>
               
                
            </div>
         </div>
    </div>
		
	<jsp:include page="../foot/foot.jsp"></jsp:include>
</body>
</html>
