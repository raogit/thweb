<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹门店-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<%String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
		request.setAttribute("path", path);
		request.setAttribute("basePath", basePath);
		request.setAttribute("ver", Math.random());
		%>
	<link rel="shortcut icon" href="${basePath}/images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="${basePath}/market/style/common.css">
	<input type="hidden" value="${basePath }" id="basePath" name="basePath" />
	<input type="hidden" value="${path }" id="path" name="path" />
	<link href="${basePath}/css/richtext/froala_page.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
</head>

<body class="Intr">
	<jsp:include page="head.jsp"></jsp:include>
	<div class="c-in-cont"></div>
	<div class="c-in-right cir2">
		<div class="Into_content">
			<div class="Into_navBlock">
				<div class="Into_navBlock">
					<div class="c-in-rt ci-rt2">
						<div class="c-in-ltx ltx2 fl">
							<span>品质管理介绍</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="man_content">
			<div class="c-in-min">
				<div class="c-in-rct rct3">
					<div class="c-rct-en c-r-en2">${content.slogan }</div>
					<div style="font-style:normal;color:#e9a171;" class="c-rct-ch">${content.title }</div>
				</div>
				<div style="color:rgb(139, 123, 112);" class="froala-element c-in-rcc">${fn:replace(content.content,back,basePath)}</div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="c-in-left">
		<div class="c-in-lt">
			<div class="c-in-lti2" style="width: 100%;">品质管理介绍</div>
		</div>
		<div class="c-in-lb">
			<c:forEach var="item" items="${pictures }" begin="0" step="1" end="0" varStatus="itemStatus">
            	<div class="c-in-lbi">
            		<img src="${basePath}/images/pz-01.png" alt="">
            	</div>
	        </c:forEach>
		</div>
	</div>
	<jsp:include page="foot.jsp"></jsp:include>
		<div class="clear"></div>
		<script type="text/javascript" src="${basePath}/market/Scripts/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="${basePath}/market/Scripts/web.js"></script>
		<script type="text/javascript">
        $(function(){
            $(".lbi-ymi").bind("mouseover",function(){
                $(this).next(".lbi-yul").stop(true,true).slideDown(300);                           
            })
            $(".lbi-ymo").bind("mouseleave",function(){
                $(this).find(".lbi-yul").stop(true,true).slideUp(300);
            })
            $(".lbi-yul li").bind("click",function(){
                var text = $(this).text();
                $(this).parents(".lbi-yul").siblings(".lbi-ymi").find("span").html(text);
                $(this).parents(".lbi-yul").stop(true,true).slideUp(300);
            })

            var page = 0;
            var showPage = function(){
                $(".c-in-lbi").eq(page).siblings().css({"display":"none"});
                $(".c-in-lbi").eq(page).stop(true,true).fadeIn();
                $(".c-in-min").eq(page).siblings().css({"display":"none"});
                $(".c-in-min").eq(page).stop(true,true).fadeIn();
                $(".c-in-lti2").eq(page).addClass("lti3").siblings().removeClass("lti3");                
                $(".c-in-ltx span").eq(page).siblings().css({"display":"none"});
                $(".c-in-ltx span").eq(page).stop(true,true).fadeIn();
            }
            showPage();
            $(".c-in-lti2").bind("click",function(){
                page = $(this).index();
                showPage();
            })
            $(".lbi-list li:even").addClass("even");
        })
        jQuery(document).ready(function() {
			var imgs  = $(".fr-fin");
			for(var i=0;i<imgs.length;i++){
				var img = imgs[i];
				var p = $(img).parent();
				var textAlign = p.css("text-align");
				//p.css("text-align","center");
			}
		});
    </script>
	
</body>