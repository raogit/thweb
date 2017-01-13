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
	<link href="${basePath}/js/video/video-js.css" rel="stylesheet" type="text/css">
	<script src="${basePath}/js/video/video.js"></script>
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
	   
	    <div class="history">
	        <div class="history_title">
	            <h2>视频中心</h2>
	            <p>Video Center</p>
	        </div>
	        <div class="video_center">
	            <div class="video_center_top">
	           		<c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
						<div class="video_left">
		                    <a href="javascript:;" class="video_left_img">
		                        <img src="${basePath}/download/png?fileName=${item.path }" style="max-width:550px;max-height:346px;">
		                        <div class="playing"><img src="../images/news/ho8.png"></div>
		                        <input type="hidden" value="${item.url }" class="videoName"/>
		                    </a>
		                    <div class="video_left_text"><span>${item.title }</span><em>TIME：${item.createTimeStr }</em></div>
		                </div>
					</c:forEach>
	               
	                <div class="video_right">
	                	<c:forEach var="item" items="${pictures }" begin="1" step="1" end="4" varStatus="itemStatus">
		                	 <div class="vider_ablock">
		                        <a href="javascript:;" class="video_ablock_img">
		                            <img src="${basePath}/download/png?fileName=${item.path }"  style="max-width:270px;max-height:150px;">
		                            <div  class="playing1"><img src="../images/news/ho8.png"></div>
		                            <input type="hidden" value="${item.url }" class="videoName"/>
		                        </a>
		                        <div class="video_ablock_text"><span>${item.title }</span><em>TIME：${item.createTimeStr }</em></div>
		                    </div>
	                	</c:forEach>
	                </div>
	            </div>    
	            <div class="video_foot">
	            
	            	<c:forEach var="item" items="${pictures }" begin="5" step="1" end="7" varStatus="itemStatus">
		            	<div class="vider_fblock">
		                    <a href="javascript:;" class="video_fblock_img">
		                        <img src="${basePath}/download/png?fileName=${item.path }"  style="max-width:364px;max-height:210px;">
		                        <div class="playing2"><img src="../images/news/ho8.png"></div>
		                        <input type="hidden" value="${item.url }" class="videoName"/>
		                    </a>
		                    <div class="video_fblock_text"><span>${item.title }</span><em>TIME：${item.createTimeStr }</em></div>
		                </div>
	            	
	            	</c:forEach>
	            
	            </div>
	            <div style="clear:both"></div>
	        </div> 
	    </div>
	<!-- 视频弹框 -->
	    <div class="cen_box">
	        <div class="video_play">
	            <a href="javascript:void(0);" class="play_back"><img src="../images/news/box3.jpg"></a>
	            <iframe id="frame1" name="myFrame" src="" width="100%" height="100%" frameborder="no" border="0" scrolling=no> </iframe> 
	        </div>
	    </div>
	</div>
	<!-- 视频弹框 END-->
	<div class="Footer">
	    <div class="footer_content">
	        <div class="footer_text">Copyright © 2016 版权所有 天虹商场股份有限公司     粤ICP备11065574号-3 </div>
	        <div class="footer_ulBlock">
	            <a href="javascript:void(0);" class="footer_map"></a>
	            <div class="footer_map"></div>
	            <div class="footer_friendship"></div>
	            <div class="clear"></div>
	        </div>
	        <div style="clear:both"></div>
	    </div>
	</div>
	<script type="text/javascript">
		var basePath = $("#basePath").val();
	    $(".video_left_img").bind("mouseover",function(){
	        $(".playing").stop(true,true).fadeIn();   
	    })
	    $(".video_left_img").bind("mouseout",function(){
	        $(".playing").stop(true,true).css({"display":"none"});  
	    })
	    $(".video_left_img").bind("click",function(){
	        $(".cen_box").stop(true,true).fadeIn(); 
	        var videoName = $(this).find(".videoName")[0];
	        $("#frame1").attr("src",basePath+"/web/video/load?fileName="+$(videoName).val());
	    })
	    $(".video_ablock_img").bind("click",function(){
	        $(".cen_box").stop(true,true).fadeIn(); 
	        var videoName = $(this).find(".videoName")[0];
	        $("#frame1").attr("src",basePath+"/web/video/load?fileName="+$(videoName).val());
	    })
	    $(".video_fblock_img").bind("click",function(){
	        $(".cen_box").stop(true,true).fadeIn(); 
	        var videoName = $(this).find(".videoName")[0];
	        $("#frame1").attr("src",basePath+"/web/video/load?fileName="+$(videoName).val());
	    })
	    $(".play_back").bind("click",function(){
	        $(".cen_box").stop(true,true).css({"display":"none"});  
	    })
	    
	    // 右边4个
	    $(".video_ablock_img").bind("mouseover",function(){
	        $(this).find(".playing1").stop(true,true).fadeIn();   
	    })
	    $(".video_ablock_img").bind("mouseout",function(){
	        $(this).find(".playing1").stop(true,true).css({"display":"none"});  
	    })
	
	    var on = 0;
	    var maxImg=$(".Bomb_conten .Bomb_box").length;
	    var playFun= function(){
	            $(".Bomb_conten .Bomb_box").eq(on).stop(true,true).fadeIn().siblings().stop(true, true).fadeOut();
	        }
	    $(".video_right .vider_ablock").bind("click",function() {
	        on = $(this).index();
	        playFun();
	    });
	    $(".play_back").bind("click",function(){
	        $(".Bomb_box").stop(true,true).css({"display":"none"});  
	    })
	
	    // 底部3个
	    $(".video_fblock_img").bind("mouseover",function(){
	        $(this).find(".playing2").stop(true,true).fadeIn();   
	    })
	    $(".video_fblock_img").bind("mouseout",function(){
	        $(this).find(".playing2").stop(true,true).css({"display":"none"});  
	    })
	    var nk = 0;
	    var playFun2= function(){
	            $(".Bomb_main .B_box").eq(nk).stop(true,true).fadeIn().siblings().stop(true, true).fadeOut();
	        }
	    $(".video_foot .vider_fblock").bind("click",function() {
	        nk = $(this).index(); 
	        playFun2();
	    });
	    $(".play_back").bind("click",function(){
	        $(".B_box").stop(true,true).css({"display":"none"});  
	    })
	</script>
</body>
</html>
