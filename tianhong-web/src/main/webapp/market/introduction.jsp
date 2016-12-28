<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹门店-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<jsp:include page="base.jsp"></jsp:include>
</head>

<body class="Intr">
	<jsp:include page="head.jsp"></jsp:include>

	<div class="c-in-cont">
		<div class="c-in-right"></div>
		<div class="c-in-left">
			<div class="c-in-lt">
				<div class="c-in-lti">
					<form action="${basePath}/market/introduction" method="post" id="formId">
						<div class="c-in-lip">
							<select id="marketName" style="width:180px;height: 25px;position:absolute;top:14px;left:15px;" name="marketName" onchange="changeMarket()">
								<c:forEach var="item" items="${list }" begin="0" step="1" varStatus="itemStatus">
									 <option style="width:180px;" <c:if test="${item.id==first.id}">selected</c:if> value="${item.id }">${item.name }</option>
								</c:forEach>
							</select>
						</div>
					</form>
					<div class="c-in-ltx fr">${first.name }</div>
				</div>
			</div>
			<div class="img_p16">
		       <!-- 多图节点（以下的图片都是写滤镜的，注意有四个图片路径） -->
		       <div class="bigImg_content">
		          <div class="bigImg_contentBlock" style="background:url(${basePath}/download/png?fileName=${first.busUrl }) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(${basePath}/download/png?fileName=${first.busUrl },sizingMethod='scale');"></div>
		          <div class="bigImg_contentBlock" style="background:url(${basePath}/download/png?fileName=${first.busUrl }) no-repeat center; background-size:cover; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(${basePath}/download/png?fileName=${first.busUrl },sizingMethod='scale');"></div>
		       </div>
		       <!-- 多图节点 -->
		    </div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="Into_content">
		<div class="Into_navBlock">
			<div class="c-in-rt">
				<div class="c-in-rti">
					<div class="c-in-ltx ltx2 fl">门店介绍</div>
					<ul class="c-in-rtr">
						<li class="c-in-rli rtr-at">门店介绍</li>
						<li class="c-in-rli">门店新闻</li>
						<li class="c-in-rli">门店活动</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="Into_contentBlock">
			<div class="bodyer_content">
				<div class="c-in-rc">
					<div class="c-in-rct rct2">
						<div class="c-rct-top">
							<img src="${basePath}/market/images/p_5.png" alt="">
						</div>
						<div class="c-rct-title">${first.name }</div>
						<div class="c-rct-line"></div>
						<div style="color: rgb(139, 123, 112);" class="c-rct-ch">门店介绍</div>
						<div class="c-rct-en">Shop introduction</div>
					</div>
					<div style="color: rgb(139, 123, 112);white-space: pre-wrap;" class="c-in-rcc">${first.introduce }</div>
				</div>
				<div class="c-in-rc">
					<div class="Into_pageBlock">
						<c:if test="${fn:length(newsList)>0 }">
							<div class="c-in-rct">
								<div class="c-rct-ch">门店新闻</div>
								<div class="c-rct-en">Shop news</div>
							</div>
							<div class="c-in-rcc">
								<c:forEach var="item" items="${newsList }" begin="0" step="1" end="0" varStatus="itemStatus">
									<div class="rcc-in">
										<div class="rcc-il">
											<div class="rcc-ilt">${item.title }</div>
											<div class="rcc-ilc" style="height:66px;overflow: hidden;">${item.backup1 }</div>
											<a href="javascript:void(0);" class="rcc-btn">Learn more<img src="${basePath}/market/images/p_8.png" alt="" class="rcc-br"></a>
											<div class="rcc-line"></div>
											<div class="rcc-time">${item.createTimeStr }</div>
										</div>
										<div class="rcc-ir">
											<img src="${basePath}/download/png?fileName=${item.path }" alt="" style="max-width:194px" >
										</div>
										<input value="${item.id }" type="hidden"/>
										
									</div>
								</c:forEach>
								
								<c:forEach var="item" items="${newsList }" begin="1" step="1" end="2" varStatus="itemStatus">
									<a href="javascript:newDetail(${item.id });" class="rcc-in rci2">
										<div class="rcc-ir2 clearfix">
											<div class="rcc-ird">${fn:substring(item.createTimeStr,8,10)}</div>
											<div class="rcc-irr">
												<div class="rcc-irm">${fn:substring(item.createTimeStr,5,7)}</div>
												<div class="rcc-iry">${fn:substring(item.createTimeStr,0,4)}</div>
											</div>
										</div>
										<div class="rcc-il ril2">
											<div class="rcc-ilt ilt2">${item.title }</div>
											<div class="rcc-ilc ilc2" style="height:22px;overflow: hidden;">${item.backup1 }</div>
										</div>
									</a> 
									<input value="${item.id }" type="hidden"/>
								</c:forEach>
	<!-- 							<div class="rcc-more">更多新闻</div> -->
							</div>
						</c:if>
						
					</div>
					<!-- 新闻内页 -->
					<div class="new_inner">
						<div class="aback">
							<a href="javascript:;">返回</a>
						</div>
						<div class="new_inmain">
							<h2 id="newDetailTitle"></h2>
							<div id="newDetailContent"></div>
							<!-- <p><img id="newDetailPicture" src="" style="max-width: 670px;"/></p> -->
							<div class="shar_main">
								<div class="share_left" id="newsDetailTime"></div>
								<div class="share_con">
									<div class="bshare-custom icon-medium">
										<a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博"
											class="bshare-sinaminiblog"></a><a title="分享到人人网"
											class="bshare-renren"></a><a title="分享到腾讯微博"
											class="bshare-qqmb"></a><a title="分享到网易微博"
											class="bshare-neteasemb"></a><a title="更多平台"
											class="bshare-more bshare-more-icon more-style-addthis"></a><!-- <span
											class="BSHARE_COUNT bshare-share-count"></span> -->
									</div>
									<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
									<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>


				</div>
				<div class="c-in-rc">
					<div class="Into_pageBlock">
						<c:if test="${fn:length(activityList)>0 }">
							<!-- 门店活动 -->
							<div class="c-in-rct">
								<div class="c-rct-ch">门店活动</div>
								<div class="c-rct-en">Shop event</div>
							</div>
						</c:if>
						
						<div class="c-in-rcc">
							<c:forEach var="item" items="${activityList }" begin="0" step="1" end="2" varStatus="itemStatus">
								<a href="javascript:activityDetail(${item.id});" class="rcc-in rci2">
									<div class="rcc-ir2 clearfix">
										<div class="rcc-ird">${fn:substring(item.createTimeStr,8,10)}</div>
										<div class="rcc-irr">
											<div class="rcc-irm">${fn:substring(item.createTimeStr,5,7)}</div>
											<div class="rcc-iry">${fn:substring(item.createTimeStr,0,4)}</div>
										</div>
									</div>
									<div class="rcc-il ril2">
										<div class="rcc-ilt ilt2">${item.title }</div>
										<div class="rcc-ilc ilc2" style="height:22px;overflow: hidden;">${item.backup1 }</div>
									</div>
								</a> 
									
							</c:forEach>
							<div class="rcc-btm" style="text-align:left;padding-left:10%;">
								<c:if test="${!empty first.backup1 }"><p>顾客专线：${first.backup1 }</p></c:if>
								<c:if test="${!empty first.backup2 }"><p>地&nbsp;&nbsp;&nbsp;&nbsp;址：${first.backup2 }</p></c:if>
								<c:if test="${!empty first.backup3 }"><p>营业时间：${first.backup3 }</p></c:if>
							</div>
						</div>
					</div>
					<!-- 新闻内页 -->
					<div class="new_inner">
						<div class="aback">
							<a href="javascript:;">返回</a>
						</div>
						<div class="new_inmain">
							<h2 id="activityDetailTitle"></h2>
							<div id="activityDetailContent"></div>
							<div class="shar_main">
								<div class="share_left" id="activityDetailTime"></div>
								<div class="share_con">
									<div class="bshare-custom icon-medium">
										<a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博"
											class="bshare-sinaminiblog"></a><a title="分享到人人网"
											class="bshare-renren"></a><a title="分享到腾讯微博"
											class="bshare-qqmb"></a><a title="分享到网易微博"
											class="bshare-neteasemb"></a><a title="更多平台"
											class="bshare-more bshare-more-icon more-style-addthis"></a><!-- <span
											class="BSHARE_COUNT bshare-share-count"></span> -->
									</div>
									<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>
									<script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="footer_mk">
		<div class="f-cont">
			<div class="f-c-right">
				<div class="fr"></div>
				<div class="f-c-wc">
					<img src="${basePath}/market/images/p_3.png" alt="">
				</div>
			</div>
			<div class="f-c-left">
				<!-- <a href="">友情链接</a> --> <span>版权所有:天虹商场股份有限公司</span> <span>备案号:粤ICP备11065574号-3</span>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<script type="text/javascript" src="${basePath}/market/Scripts/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="${basePath}/market/Scripts/web.js"></script>
	<script type="text/javascript">
	function changeMarket(){
		window.location.href = $("#basePath").val()+"/market/introduction?marketId="+$("#marketName option:selected").val();
	}
    $(function(){
        //显示内页
        var showInnerPage = function(_node){
            _node.parents(".Into_pageBlock").css({"display":"none"});
            _node.parents(".Into_pageBlock").siblings(".new_inner").stop(true,true).fadeIn();
            var scrollValut = _node.parents(".c-in-rc").offset().top - 150;
            $("html,body").stop().animate({scrollTop:scrollValut},0);
        }
        //隐藏内页
        var hideInnerPage = function(_node){
            _node.parents(".new_inner").css({"display":"none"});
            _node.parents(".new_inner").siblings(".Into_pageBlock").stop(true,true).fadeIn();
            var scrollValut = _node.parents(".c-in-rc").offset().top - 150;
            $("html,body").stop().animate({scrollTop:scrollValut},0);
        }        
        $(".rcc-in2").bind("click",function(){
            showInnerPage($(this));
        })
        
         $(".rcc-in3").bind("click",function(){
        	 var obj = this;
 			var newId = $(obj).find("input[type='hidden']").val();
 			var base = $("#basePath").val();
 			$("#activityDetailTitle").html("");	
			$("#activityDetailContent").html("");	
			$("#activityDetailPicture").attr("src","");	
			$("#activityDetailTime").html("");	
         	$.ajax({
 	         	url: base + "/market/shopnews",
 	             type: 'POST',
 	             dataType: 'json',
 	             data : {id : newId},
 	             timeout: 30000,
 	             cache: false,     
 	             success: function(data){
 	             	if(data!=null && data!=false){
 						$("#activityDetailTitle").html(data.title);	
 						$("#activityDetailContent").html(data.content);	
 						//$("#activityDetailPicture").attr("src",base+"/download/png?fileName="+data.path);	
 						$("#activityDetailTime").html(data.createTimeStr);	
 	             	}
 	             }
 	         });
            showInnerPage($(this));
        })
       
        $(".rcc-in").bind("click",function(){
			var base = $("#basePath").val();
        	var obj = this;
			var newId = $(obj).find("input[type='hidden']").val();
			$("#newDetailTitle").html("");	
			$("#newDetailContent").html("");	
			$("#newDetailPicture").attr("src","");	
			$("#newsDetailTime").html("");	
        	$.ajax({
	         	url: base + "/market/shopnews",
	             type: 'POST',
	             dataType: 'json',
	             data : {id : newId},
	             timeout: 30000,
	             cache: false,     
	             success: function(data){
	             	if(data!=null && data!=false){
						$("#newDetailTitle").html(data.title);	
						$("#newDetailContent").html(data.content);	
						//$("#newDetailPicture").attr("src",base+"/download/png?fileName="+data.path);	
						$("#newsDetailTime").html(data.createTimeStr);	
	             	}
	             }
	         });
	         showInnerPage($(this));
        })
        
        $(".aback").bind("click",function(){
            hideInnerPage($(this));
        })

        var on = 0;
        $(".c-in-rli").bind("click",function(){
            on = $(this).index();
            var scrollNum = $(".c-in-rc").eq(on).offset().top - 140;
            $("html,body").stop().animate({scrollTop:scrollNum},300);
            $(".c-in-rli").eq(on).addClass("rtr-at");
        })
        $(window).scroll(function(){
            var bodyTop = $("body,html").offset().top-200;
            if(bodyTop < 0 && bodyTop > -$(".c-in-rc").eq(1).offset().top){
                $(".c-in-rli").eq(0).addClass("rtr-at").siblings().removeClass("rtr-at");         
            }else if(bodyTop < -$(".c-in-rc").eq(1).offset().top && bodyTop > -$(".c-in-rc").eq(2).offset().top){
                $(".c-in-rli").eq(1).addClass("rtr-at").siblings().removeClass("rtr-at");                  
            }else if(bodyTop < -$(".c-in-rc").eq(2).offset().top){
                $(".c-in-rli").eq(2).addClass("rtr-at").siblings().removeClass("rtr-at");              
            }
        })
        
        /* 多图逻辑 */
        var bWidth = $(window).width()*0.42;
        var bHeight = $(window).height() - 153;
        function bigImgBlock(){
        	bWidth = $(window).width()*0.42;
        	bHeight = $(window).height() - 153;
        	$(".bigImg_content").css({"height":bHeight});
        	console.log(bWidth/bHeight)
        	if(bWidth/bHeight < 0.82){
        		$(".bigImg_contentBlock").eq(0).css({"display":"none"});
        		$(".bigImg_contentBlock").eq(1).css({"display":"block"});
        	}else{
        		$(".bigImg_contentBlock").eq(1).css({"display":"none"});
        		$(".bigImg_contentBlock").eq(0).css({"display":"block"});
        	}
        }
        bigImgBlock();
        $(window).resize(function(){
        	bigImgBlock();
        })
        /* 多图逻辑 */

    })
    
</script>
</body>
</html>
