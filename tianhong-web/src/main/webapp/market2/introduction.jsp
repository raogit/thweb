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
	<div class="inn_main">
	    <div class="inn_store">
	        <div class="inn_block">
	            <div class="store-shop inn_shop">
	            	<select id="marketName" style="width:180px;" class="store-list" name="marketName" onchange="changeMarket()">
						<c:forEach var="item" items="${list }" begin="0" step="1" varStatus="itemStatus">
							<option style="width:180px;" <c:if test="${item.id==first.id}">selected</c:if> value="${item.id }">${item.name }</option>
						</c:forEach>
					</select>
	            </div>
	            <div class="list_inb">
	                <ul>
	                    <li>门店介绍</li>
	                    <li>门店新闻</li>
	                    <li>门店活动</li>
	                </ul>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	    <div class="inn_content">
	        <div class="inn_lay_conomg">
	            <div class="inn_lay_con1">
	                <img src="${basePath}/download/png?fileName=${first.busUrl }">
	            </div>
	        </div>    
	        <div class="inn_layda" style="background:#fdf3ed;">
	            <div class="inn_lay_con2">
	                <div class="inn_top">
	                    <h2><img src="${basePath}/market2/Images/in2.png"></h2>
	                    <span>${first.name }</span>
	                </div>
	            </div>
	            <div class="inn_lay_con3">
	                <h2>门店介绍</h2>
	                <h3>SHOP INTRODUCTION</h3>
	                <div style="white-space: pre-wrap;" class="inn_lay_text">${first.introduce }</div>
	            </div>
	        </div>
	        <div class="inn_layda news_content">
	            <div class="inn_lay_con3">
	            	<c:if test="${fn:length(newsList)>0 }">
	            		<input value="${fn:length(newsList) }" type="hidden" id="newsSize"/>
						<div class="inlay_top">
			                <h2>门店新闻</h2>
			                <h3>SHOP NEWS</h3>
		                    <div class="inn_parentNews" style="height:520px;overflow:hidden;">
		                    	<c:forEach var="item" items="${newsList }" begin="0" step="1" end="0" varStatus="itemStatus">
									<div class="inn_news bigNewsDetail">
			    	                    <div class="inn_news_left">
			    	                        <div class="inn_new_block">
			    	                            <h4>${item.title }</h4>
			    	                            <div class="rcc-ilc" style="height:44px;overflow: hidden;">${item.backup1 }</div>
			    	                        </div>
			    	                        <div class="inn_new_more">
			    	                            <a href="javascript:void(0);"><img src="${basePath}/market2/Images/more1.jpg"></a>
			    	                        </div> 
			    	                        <div class="inn_new_date">
			    	                            <span>${item.createTimeStr }</span>
			    	                        </div>   
			    	                    </div>
			    	                    <div class="inn_news_right">
			    	                        <img src="${basePath}/download/png?fileName=${item.path }" style="max-width:194px;max-height:209px;">
			    	                    </div>
			    	                    <div class="clear"></div>
			    	                    <input value="${item.id }" type="hidden"/>
			    	                </div>
								</c:forEach>
		    	               <c:forEach var="item" items="${newsList }" begin="1" step="1" varStatus="itemStatus">
									<div class="inn_news minNewsDetail">
			    	                    <div class="inn_bd">
			    	                        <h4>${item.title }</h4>
			    	                        <p style="overflow: hidden;height:22px;">${item.backup1 }</p>
			    	                    </div>
			    	                    <div class="inn_bdimg">
			    	                        <div class="inn_day">${fn:substring(item.createTimeStr,8,10)}</div>
			    	                        <div class="inn_moon">
			    	                            <span>${fn:substring(item.createTimeStr,5,7)}</span>
			    	                            <p>${fn:substring(item.createTimeStr,0,4)}</p>
			    	                        </div>
			    	                        <div class="clear"></div>
			    	                    </div>
			    	                    <div class="clear"></div>
			    	                    <input value="${item.id }" type="hidden"/>
			    	                </div>
								</c:forEach>
		                    </div>
		                    <c:if test="${fn:length(newsList)>3 }">
			                    <div class="more_news">
				                    <a href="javascript:void(0);" id="moreNewsClick">更多新闻</a>
				                </div>
		                    </c:if>
			                
			            </div> 
					</c:if>
	            
	                
		            <div class="inn_Eject">
		            	<div class="inn_Ejcon">
		            	    <div class="inn_ejtext">
			            		<h2 id="newDetailTitle"></h2>
			            		<div id="newDetailContent"></div>
			            	</div>
			            	<div class="inn_share">
				            	<div class="inn_date"><p id="newsDetailTime"></p><span>分享到：</span><div class="clear"></div></div>
				            	<div class="share">
			    	    			<div class="bshare-custom"><div class="bsPromo bsPromo2"></div><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
			    	    		</div>
			    	    		 <div class="clear"></div>
			    	    	</div>		
		            	</div>
		            	<a href="javascript:void(0);" class="in_back">返回</a>
		            </div>   
	            </div>
	        </div>
	        <div class="inn_layda news_contentactive" style="background:#fdf3ed;">
	            <div class="inn_lay_con3">
	                <div class="inlay_topVe">
	                	<c:if test="${fn:length(activityList)>0 }">
	                		<input value="${fn:length(activityList) }" type="hidden" id="activitySize"/>
							<h2>门店活动</h2>
		                	<h3>STORE EVENTS</h3>
						</c:if>
	                    <div class="inn_parentNewsVe" style="height:400px;overflow: hidden;">
	                    	<c:forEach var="item" items="${activityList }" begin="0" step="1" varStatus="itemStatus">
								<div class="inn_newsVe">
		    	                    <div class="inn_bd">
		    	                        <h4>${item.title }</h4>
		    	                        <p style="height:22px;overflow: hidden;">${item.backup1 }</p>
		    	                    </div>
		    	                    <div class="inn_bdimg">
		    	                        <div class="inn_day">${fn:substring(item.createTimeStr,8,10)}</div>
		    	                        <div class="inn_moon">
		    	                            <span>${fn:substring(item.createTimeStr,5,7)}</span>
		    	                            <p>${fn:substring(item.createTimeStr,0,4)}</p>
		    	                        </div>
		    	                        <div class="clear"></div>
		    	                    </div>
		    	                    <div class="clear"></div>
		    	                    <input value="${item.id }" type="hidden"/>
		    	                </div>
							</c:forEach>
	                    </div>
	                    <c:if test="${fn:length(activityList)>3 }">
							 <div class="more_newsVs">
			                    <a href="javascript:void(0);" id="moreActivityClick">更多活动</a>
			                </div>
						</c:if>
		               
		                <div class="inn_iphone">
		                	<c:if test="${!empty first.backup1 }"><p>顾客专线：${first.backup1 }</p></c:if>
							<c:if test="${!empty first.backup2 }"><p>地&nbsp;&nbsp;&nbsp;&nbsp;址：${first.backup2 }</p></c:if>
							<c:if test="${!empty first.backup3 }"><p>营业时间：${first.backup3 }</p></c:if>
		                </div>
		            </div>
		            <div class="inn_EjectVe">
		            	<div class="inn_Ejcon">
		            	    <div class="inn_ejtext">
			            		<h2 id="activityDetailTitle"></h2>
			            		<div id="activityDetailContent"></div>
			            	</div>
			            	<div class="inn_share">
				            	<div class="inn_date"><p id="activityDetailTime"></p><span>分享到：</span><div class="clear"></div></div>
				            	<div class="share">
			    	    			<div class="bshare-custom"><div class="bsPromo bsPromo2"></div><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
			    	    		</div>
			    	    		 <div class="clear"></div>
			    	    	</div>		
		            	</div>
		            	<a href="javascript:void(0);" class="in_backVe">返回</a>
		            </div>   
	            </div>
	        </div>
	
	    </div>
	</div>    
	<div class="footer_mk">
	    <div class="f-cont">
	        <div class="f-c-left">
	            <span>版权所有:天虹商场股份有限公司</span>
	            <span>备案号:粤ICP备11065574号-3</span>
	        </div>
	    </div>
	    <div class="clear"></div>
	</div>
	<script type="text/javascript" src="${basePath}/market2/Scripts/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="${basePath}/market2/Scripts/web.js"></script>
	<script type="text/javascript">
		function changeMarket(){
			window.location.href = $("#basePath").val()+"/market/introduction?marketId="+$("#marketName option:selected").val();
		}
	    $(function(){
	        var on = 0,
	            blockTop = 0;
	        var scrollBlock = function(){
	            blockTop = $(".inn_layda").eq(on).offset().top - 10;
	            $("html,body").stop().animate({scrollTop:blockTop});
	        } 
	        $(".list_inb ul li").bind("click",function(){
	            on = $(this).index();
	            scrollBlock();
	        }) 
	        
	        //门店新闻
	        
	
	        //显示新闻内页
	        function showInner(){
	        	$(".inlay_top").stop(true,true).fadeOut();
	        	$(".inn_Eject").stop(true,true).fadeIn();
	        	var blockTop = parseInt($(".news_content").offset().top) - 58;
	        	$("html,body").stop().animate({scrollTop:blockTop});
	        }
	        //隐藏新闻内页
	        function hideInner(){
	        	$(".inn_Eject").stop(true,true).fadeOut();
	        	$(".inlay_top").stop(true,true).fadeIn()
	        	var blockTop = parseInt($(".news_content").offset().top) - 58;
	        	$("html,body").stop().animate({scrollTop:blockTop});
	        }
	
	        $(".inn_news").bind("click",function(){
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
	        	showInner();
	        })
	        $(".in_back").bind("click",function(){
	        	hideInner();
	        })
	
	        //门店活动
	        
	
	        //显示活动内页
	        function showIn(){
	        	$(".inlay_topVe").stop(true,true).fadeOut();
	        	$(".inn_EjectVe").stop(true,true).fadeIn();
	        	var blockTop = parseInt($(".news_contentactive").offset().top) - 58;
	        	$("html,body").stop().animate({scrollTop:blockTop});
	        }
	        //隐藏活动内页
	        function hideIn(){
	        	$(".inn_EjectVe").stop(true,true).fadeOut();
	        	$(".inlay_topVe").stop(true,true).fadeIn()
	        	var blockTop = parseInt($(".news_contentactive").offset().top) - 58;
	        	$("html,body").stop().animate({scrollTop:blockTop});
	        }
	
	        $(".inn_newsVe").bind("click",function(){
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
	        	showIn();
	        })
	        $(".in_backVe").bind("click",function(){
	        	hideIn();
	        })
			var newsSize = $("#newsSize").val();
	        var activitySize = $("#activitySize").val();
	        function IntoNewsBlock(){
	            //$(".inn_news:gt(3)").css({"display":"none"});
	            $(".inn_news:lt("+newsSize+")").css({"display":"block"});
	            $(".more_news").stop(true,true).fadeIn(); 
	        }
	        function IntoNewsVsBlock(){
	            //$(".inn_newsVe:gt(3)").css({"display":"none"});
	            $(".inn_newsVe:lt("+activitySize+")").css({"display":"block"});
	            $(".more_newsVs").stop(true,true).fadeIn();
	        }        
	        IntoNewsBlock();
	        IntoNewsVsBlock();
	        
	        var bigNewsDetail = $(".bigNewsDetail");
			var minNewsDetail = $(".minNewsDetail");
			var bigNewsHeight = $(bigNewsDetail).height()+40;
			var a = $(minNewsDetail).height();
			var minNewsHeight = $(minNewsDetail).height()+40;
			var n=1;
	        $(".more_news").bind("click",function(){
	            //IntoNewsVsBlock();
	            //var blockTop = parseInt($(".news_content").offset().top) - 58;
	            //$("html,body").stop().animate({scrollTop:blockTop});
	            //$(".inn_news").css({"display":"block"});
	            if(newsSize>3){
	            	var h;
	            	if((n+1)*2<Number(newsSize)){
	            		h = 520 + n*2 * 130;
	            	}else{
	            		h = 520 + (newsSize-3) * 130;
	            		$("#moreNewsClick").text("无更多新闻");
	            	}
	 				$('.inn_parentNews').height(h);	
	 				n++;
	            }
	        })
	        
			var innNewsVe = $(".inn_newsVe");
			var innNewsVeHeight = $(innNewsVe).height()+40;
			var a = $(minNewsDetail).height();
			var minNewsHeight = $(minNewsDetail).height()+40;
			var nn=1;
	        $(".more_newsVs").bind("click",function(){
	            //IntoNewsBlock();
	            //$(".inn_newsVe").css({"display":"block"});
	            //var blockTop = parseInt($(".news_contentactive").offset().top) - 58;
	            //$("html,body").stop().animate({scrollTop:blockTop});
	            //$(".more_newsVs").stop(true,true).fadeOut();
	        	 if(activitySize>3){
	        		 var h;
		            	if((nn+1)*2<Number(activitySize)){
		            		h = 400 + nn*2 * 128;
		            	}else{
		            		h = 400 + (activitySize-3) * 128;
		            		$("#moreActivityClick").text("无更多活动");
		            	}
		 				$('.inn_parentNewsVe').height(h);	
		 				nn++; 
	        	 }
	        })
	
	    })
	</script>
</body>
</html>
