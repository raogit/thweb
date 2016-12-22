<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>微喔便利店-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<jsp:include page="../base.jsp"></jsp:include>
	<script src="${basePath}/store/Scripts/swipe.js"></script>
	<style>
	#swipe {
		width: 100%;
		overflow: hidden;
	}
	/*定位*/
	.imgBlock {
		width: 100%;
		float: left;
		position: relative;
	}
	
	.imgBlock img {
		width: 100%;
	}
	.banner-all{width:752px;height:auto;position:relative;}
	.banner-block{width:752px;height:350px;padding-bottom:30px;position:relative;overflow: hidden;}
	.banner-block .banner-ul{width: 99999px;position:relative;}
	.banner-ul li{width: 752px;height: 350px;float: left;position: relative;}
	.banner-ul li img{width: 100%;}
	.block-dot{width: auto;position: absolute;bottom: 0px;left:50%;}
	.block-dot span{display:inline-block; float: left; width: 8px;height: 8px;margin: 0 3px; background: url(../../../images/store/a_02.png) no-repeat center;cursor: pointer;}
	.block-dot span.current{background: url(../../../images/store/a_03.png) center no-repeat;cursor: pointer;}
	</style>
</head>
<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div class="content">
		<div class="cont-in clearfix">
			<div class="new-right">
				<div class="cm-nav">
					<div class="cm-n-title">最新活动 · <i>Activities</i></div>
					<div class="cm-n-cont">
						<c:forEach var="item" items="${categorys }" begin="0" step="1" varStatus="itemStatus">
							<a href="${basePath}/store/newactivity/detail?categoryId=${item.id }&menuId=${item.menuId}"><div class="cm-n-cin">${item.name }<i>${item.enName }</i></div></a>
						</c:forEach>
					</div>
				</div>
				<%-- <div class="n-r-nav">
					<div class="n-r-top"><img src="${basePath}/images/store/n_06.png" alt=""></div>
					<div class="n-r-new">
						<img src="${basePath}/images/store/n_07.png" alt="">
						<div class="n-r-nin"><img src="${basePath}/images/store/n_13.png" alt=""></div>
					</div>
				</div> --%>
			</div>
			<div class="new-left">
				<div class="n-l-top">
					<img src="${basePath}/images/store/n_02.jpg" alt="">
				</div>
				<div class="n-l-c">
					<div class="n-l-crumb">
						<div class="n-l-cleft">
							<a href="${basePath}/store/newactivity/index?menuId=${menu.id}"><div class="c-home"><img src="${basePath}/images/store/n_03.png" alt=""></div></a>
							<a href="${basePath}/store/newactivity/index?menuId=${menu.id}"><div class="c-h-in">最新活动 · <i>Activities</i></div></a>
						</div>
						<div class="c-now">最新活动</div>
					</div>
				</div>
				<div class="n-l-cont">
					<div class="n-l-ct">最新活动</div>
					<div class="n-l-line"></div>
					<%-- <div class="a-banner">
						<div id="swipe">
							<div>
								<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
									<div class="imgBlock a-bn-in"><img src="${basePath}/download/png?fileName=${item.path }" width="752px" height="350px"/></div>
								</c:forEach>
							</div>
						</div>
						<div class="a-bn-btm">
							<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
								<div class="a-bn-dot <c:if test="${itemStatus.index==0 }">a-dat</c:if>"></div>
							</c:forEach>
						</div>
					</div> --%>
					<div class="banner-all">
	                    <div class="banner-block">
	                        <ul class="banner-ul">
	                        	<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
									<li><img style="height:350px;" src="${basePath}/download/png?fileName=${item.path }" /></li>
								</c:forEach>
	                        </ul>
	                    </div>
	                    <div class="block-dot">
	                    	<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
								<span></span>
							</c:forEach>
	                        
	                    </div>
	                </div>
					<div class="n-l-line itd-line"></div>
					<div class="a-rec">
						<div class="a-rec-title">最新活动推荐</div>
						<ul class="a-rec-cont">
							<c:forEach var="item" items="${recommends }" begin="0" step="1" varStatus="itemStatus">
								<li>
									<div style="height:177px"><img src="${basePath}/download/png?fileName=${item.picture }" alt="" style="max-width:177px;max-height:176px;"></div>
									<div class="a-rec-t"><p>${item.title }</p><p>截止时间：${item.newsTimeStr }</p></div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="n-l-btm">
					<img src="${basePath}/images/store/n_12.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
	    $(function(){
	        var swipeOb = Swipe(document.getElementById('swipe'),{auto: 3000,callback:function(){
	            var n = swipeOb.getPos();
	        }});
	    })
	    $(function(){
			var ban=0;
		    var maxImg=$(".banner-block li").length;
		    text="";
		    for(var i=maxImg;i>0;i--){
		        text +="<span></span>"
		    }
		    $(".block-dot").html(text);//将遍历到的span写在ban-block块上
		    //banner动画效果
		    var blockFun=function(){
		        var marginValue = -ban * 752;
		        $(".block-dot span").eq(ban).addClass("current").siblings().removeClass("current")
		        $(".banner-ul").stop().animate({marginLeft:marginValue});
		    }
		    blockFun();
		    //根据索引值进行判断当前图片
		    $(".block-dot span").bind("mouseover",function(){
		        ban = $(this).index();
		        blockFun();
		    })
		    var setInt=setInterval(function(){
		        ban++;
		        ban %=maxImg;
		        blockFun(); 
		    },3500)
		    $(".block-dot").hover(function(){
		        clearInterval(setInt);
		    },function(){
		        setInt=setInterval(function(){
		            ban++;
		            ban%=maxImg;
		            blockFun(); 
		        },3500)
		    })
		})
	</script>

</body>
</html>
