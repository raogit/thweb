<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="bodyer">
	    <div class="titleImg_content" style="background:url(../images/b_04.jpg) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(../images/b_04.jpg,sizingMethod='scale');">
	        <!-- <div class="titleImg_img"><img src="../images/b_3.png"></div> -->
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
	    <div class="bd-cont cont-C">
	        <div class="bd-cont-in">
	            <div class="bd-cont-L fl LB">
	                <div class="bd-L-title">
	                    <div class="bd-L-tch">视频中心</div>
	                    <div class="bd-L-tle"></div>
	                    <div class="bd-L-ten">Video Center</div>
	                </div>
	            </div>
	            <div class="bd-cont-V fl" id="vide-slide">
	                <div class="bd-V-sld">
	                    <div class="V-sld-n" style="width:30%"></div>
	                    <div class="V-sld-t">
	                        <div class="v-sld-tl" style="width:30%"></div>
	                        <div class="v-sld-tr" style="width:70%"></div>
	                    </div>
	                    <div class="V-sld-b"></div>
	                </div>
	                <div class="bd-V-arr arr-prev fl">
	                    <img src="../images/img/c_20.png">
	                </div>
	                <div class="bd-V-cont"  style="height: 520px;">
	                    <div class="moveBox" style="height: 520px;">
	                        <c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
				            	<div class="V-cont-in" style="background: ;"><div class="V-video">${item.path }</div></div>
					        </c:forEach>
	                    </div> 
	                </div>
	                <div class="bd-V-arr arr-next fr">
	                    <img src="../images/img/c_21.png">
	                </div>
	                <div class="clear"></div>
	
	                <div class="bd-V-txt">
	                    <div class="V-sld-b"></div>
	                    <div class="V-txt-line"></div>
	                    <div class="V-txt-in">
	                        <!-- <div class="tch">天虹微电影《礼物》OK</div>
	                        <div class="ten">Rainbow micro film "gift"</div> -->
	                    </div>
	                </div>
	
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div> 
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
		$(function(){
			var wrap = $("#vide-slide");
			var moveBox = wrap.find('.moveBox');
			var btnPrev = wrap.find('.arr-prev');
			var btnNext = wrap.find('.arr-next');
			var list = wrap.find('.V-cont-in');
			var len = list.length;
			var listW = list.outerWidth(true);
			var index = 0;
			var count = 1; 
			if(len>=1){  
				list.eq(1).animate({width:510,height:500,marginTop:0},500);
				list.eq(1).children().animate({width:490,height:480},500); 
				btnNext.click(function(){ 
					index++;
					index=index>len-2?len-2:index;
					count++;
					count=count>len-1?len-1:count; 
					go();
				});
				btnPrev.click(function(){ 
					index--;
					index=index<-1?-1:index;
					count--;
					count=count<0?0:count; 
					go();
				});
				function go(){
					 moveBox.stop().animate({marginLeft:-listW*index},500);
					 
					 list.eq(count).animate({width:510,height:500,marginTop:0},500).siblings().stop().animate({width:324,height:189,marginTop:17},500);
					 list.eq(count).children().animate({width:490,height:480},500).parent().siblings().children().stop().animate({width:308,height:144},500);
					 console.log(count);
				}
				if(len==1){
					index++;
					index=index>len-2?len-2:index;
					count++;
					count=count>len-1?len-1:count; 
					go();
				}
			}
		})
	</script>

</body>
</html>
