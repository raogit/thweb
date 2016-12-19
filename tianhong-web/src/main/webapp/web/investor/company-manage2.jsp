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
	<link rel="stylesheet" type="text/css" href="${basePath}/web/js/jquery.mCustomScrollbar.css">
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
            <div class="inves_CompanyBox">
               <div class="inves_ComModel2">
                   <div class="inves_executBox">
                       <div class="inves_executCon">
                           <div class="inves_executTit">
                               <img src="../images/i3.png">
                           </div>
                       </div>
                       <div class="post_bt">
                           <div class="post-1">董事</div>
                           <div class="post-2"></div>
                       </div>
                       
                       <c:forEach var="item" items="${directors }" begin="0" step="1" varStatus="itemStatus">
                            <div class="post_text">
	                           <h2>${item.title }</h2>
	                           <div class="_tline"></div>
	                           <div class="post_linp"><p>${item.content }</p></div>
	                       </div>
				        </c:forEach>
                       
                       
                       <div class="post_bt">
                           <div class="post-1">监事</div>
                           <div class="post-2"></div>
                       </div>
                       
                       <c:forEach var="item" items="${supervisors }" begin="0" step="1" varStatus="itemStatus">
                            <div class="post_text">
	                           <h2>${item.title }</h2>
	                           <div class="_tline"></div>
	                           <div class="post_linp"><p>${item.content }</p></div>
	                       </div>
				        </c:forEach>
                       <div class="post_bt">
                           <div class="post-1">高级管理人员</div>
                           <div class="post-2"></div>
                       </div>
                       <c:forEach var="item" items="${director2s }" begin="0" step="1" varStatus="itemStatus">
		                	
                            <div class="post_text">
	                           <h2>${item.title }</h2>
	                           <div class="_tline"></div>
	                           <div class="post_linp"><p>${item.content }</p></div>
	                       </div>
				        </c:forEach>
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
    <div class="bg_colorBlock"></div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript" src="${basePath}/web/js/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript">
		$(function(){
			var on = 0;
	        //显示人物简介
			$(".inves_executTextFoot").bind("click",function(){
				on = $(this).index();
				$(this).parents(".inves_parentBlock").find(".inves_executTextFoot").eq(on).find(".text_content").css({"height":"424px"});
				$(".bg_colorBlock").css({"display":"block"});
			})
	        //关闭人物简介
	        $(".text_close").bind("click",function(e){
	            e.stopPropagation();
	            $(".bg_colorBlock").css({"display":"none"});
	            $(".text_content").css({"height":"0"});
	        })
	        //同级人物简介
	        $(".text_button").bind("click",function(e){
	            e.stopPropagation();
	            on++;
	            on %= $(this).parents(".inves_parentBlock").find(".inves_executTextFoot").length;
	            $(this).parents(".inves_parentBlock").find(".inves_executTextFoot").eq(on).siblings().find(".text_content").css({"height":"0"});
	            $(this).parents(".inves_parentBlock").find(".inves_executTextFoot").eq(on).find(".text_content").css({"height":"424px"});
	        })
	        $(".text_textBlock").mCustomScrollbar();
		})
	</script>
		
	
</body>
</html>
