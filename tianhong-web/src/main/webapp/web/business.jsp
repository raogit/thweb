<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<jsp:include page="base.jsp"></jsp:include>
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
	<jsp:include page="head/head.jsp"></jsp:include>
	<div class="bodyer">
	    <div class="titleImg_content" style="background:url(../images/b_2.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_2.jpg,sizingMethod='scale');">
	        <div class="titleImg_img"><img src="${basePath}/web/images/b_3.png"></div>
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
	    <div class="bd-cont wall-busine">
	         <div class="wrap">
	             <div class="tabBody">
	                 <div class="laye"> 
	                    <div class="tree fr">
	                        <div class="lane huodai">
	                            <span><img src="${basePath}/web/images/img/nav6.png"></span>
	                            <div class="lane-cont">
	                                <div class="lane-top"><h1>${contentLoan.title }</h1><em class="close">X</em></div>
	                                <div class="lane-infor">${contentLoan.content }</div>
	                                <div class="lane-link">${contentLoan.title }：<a href="${contentLoan.address }">${contentLoan.address }</a></div>
	                            </div>
	                        </div>
	                        <div class="lane shop">
	                            <span><img src="${basePath}/web/images/img/nav1.png"></span>
	                            <div class="lane-cont">
	                                 <div class="lane-top"><h1>${contentMarket.title }</h1><em class="close">X</em></div> 
	                                 <div class="lane-infor">${contentMarket.content }</div>
	                                 <div class="lane-link">${contentMarket.title }：<a href="${contentMarket.address }">${contentMarket.address }</a></div>
	                            </div>
	                        </div>
	                        <div class="lane baihuo">
	                            <span><img src="${basePath}/web/images/img/nav2.png"></span>
	                            <div class="lane-cont">
	                                 <div class="lane-top"><h1>${contentJun.title }</h1><em class="close">X</em></div> 
	                                 <div class="lane-infor">${contentJun.content }</div>
	                                 <div class="lane-link">${contentJun.title }官网：<a href="${contentJun.address }">${contentJun.address }</a></div>
	                            </div>
	                        </div>
	                        <div class="lane gouwu">
	                            <span><img src="${basePath}/web/images/img/nav3.png"></span>
	                            <div class="lane-cont">
	                                 <div class="lane-top"><h1>${contentCenter.title }</h1><em class="close">X</em></div> 
	                                 <div class="lane-infor">${contentCenter.content }</div>
	                                 <div class="lane-link">${contentCenter.title }：<a href="${contentCenter.address }">${contentCenter.address }</a></div>
	                            </div>
	                        </div>
	                        <div class="lane weiwo">
	                            <span><img src="${basePath}/web/images/img/nav4.png"></span>
	                            <div class="lane-cont">
	                                 <div class="lane-top"><h1>${contentWin.title }</h1><em class="close">X</em></div> 
	                                 <div class="lane-infor">${contentWin.content }</div>
	                                 <div class="lane-link">${contentWin.title }：<a href="${contentWin.address }">${contentWin.address }</a></div>
	                            </div>
	                        </div>
	                        <div class="lane hongjin">
	                            <span><img src="${basePath}/web/images/img/nav5.png"></span>
	                            <div class="lane-cont">
	                                 <div class="lane-top"><h1>${contentScarf.title }</h1><em class="close">X</em></div> 
	                                 <div class="lane-infor">${contentScarf.content }</div>
	                                 <div class="lane-link">${contentScarf.title }：<a href="${contentScarf.address }">${contentScarf.address }</a></div>
	                            </div>
	                        </div>
	                        <div class="lane zhuyue">
	                            <span><img src="${basePath}/web/images/img/nav7.png"></span>
	                            <div class="lane-cont">
	                                <div class="lane-top"><h1>${contentHome.title }</h1><em class="close">X</em></div>
	                                <div class="lane-infor">${contentHome.content }</div>
	                                <div class="lane-link">${contentHome.title }：<a href="${contentHome.address }">${contentHome.address }</a></div>
	                            </div>
	                        </div>
	                    </div> 
	                 </div>
	             </div>
	             <div class="laye-cont fl">
	                <div class="bd-L-title">
	                    <div class="bd-L-tch">${content.title }</div>
	                    <div class="bd-L-tle tle2"></div>
	                    <div class="bd-L-ten ten2">${content.slogan }</div>
	                </div>
	                <div class="bd-L-cont">${content.content }</div> 
	            </div>
	            <div class="clear"></div>
	         </div>
	    </div> 
	</div>
	<jsp:include page="foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
	$(function(){
		function tabTun(){
			var tabNav = $(".tabNav");
			var tabCot = $(".tabBody");
			var index = 0 ;
			tabNav.find('a').bind('click',function(){
				index = tabNav.find('a').index(this);
				//$(this).addClass().siblings().removeClass();
				a()
			}).eq(index).trigger('click');
			function a(){
				tabCot.children().eq(index).show().siblings().hide();
			}
			tabCot.find(".lane").each(function(g){
				tabCot.find(".lane").eq(g).find('span').bind('click',function(){
				    $(this).next().fadeIn().parent().siblings().find('.lane-cont').fadeOut();
				})
			});
			tabCot.find(".close").bind('click',function(){
				$(this).parent().parent().fadeOut();
			});
	        var tOn = 0;
	        showTxt();
	        function  showTxt(){
	            //$(".lane").eq(tOn).children(".lane-cont").show().siblings().children().hide();
	            $(".lane-cont").eq(tOn).show().parents().siblings(".lane").children(".lane-cont").hide();
	        }
	        /* $(".nav_ulBlock a").bind("click",function(){
	            tOn = $(this).index();
	            showTxt();
	        }) */
	
		}
		tabTun();
	})
	</script>
	

</body>
</html>
