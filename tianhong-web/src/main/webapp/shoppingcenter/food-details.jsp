<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>T-天虹官网</title>
	<jsp:include page="base.jsp"></jsp:include>
	<link href="${basePath}/css/richtext/froala_page.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
</head>

<body class="shpping" style="overflow: hidden;">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="common_parentBlock">
            <div class="common_page Foods_bg">
                <div class="Foods_block" style="border: solid 1px #252525;">
                    <div class="Foods_details" style="border: 0px solid #ccc;height: 600px;">
                        <div class="brand_info" style="width: 100%;">
                            <h2 style="background: url(images/tb1.png) no-repeat;width: 430px;">${news.title }
                                <a href="JavaScript:history.go(-1)">&gt;&gt; 返回</a>
                            </h2>
                           <!--  <div contenteditable="false" id="contentId" class="froala-element not-msie f-basic f-placeholder" spellcheck="false" data-placeholder="Type something" style="outline: 0px; overflow: auto; height: 300px;"><p><img class="fr-fir" data-fr-image-preview="false" alt="Image title" src="http://localhost:8080/th-admin/download/png?fileName=1479216956571.png" width="300"></p><p>DatoSri拿督斯里是隶属于南京乐记餐饮管理有限公司旗下甜品品牌。公司致力于甜品的研发、推广、策划。将正宗马来西亚榴莲甜品带给中国食客.</p><p>我们秉承规范的服务理念，将拿督打造成有自身特色的知名品牌。公司倡导天然、健康、时尚的饮食理念，引领简约养生的甜品文化，不断推陈出新，力求从感官到味觉，从服务到售后各方面都为拿督爱好者缔造完美体验。</p><p>拿督斯里以诚信立足市场，靠优质品质和创新服务创立品牌，以超前的经营理念和踏实的作风，本着互利互惠、诚信双赢的原则，将品牌发展壮大！</p><p>DatoSri拿督斯里是隶属于南京乐记餐饮管理有限公司旗下甜品品牌。公司致力于甜品的研发、推广、策划。将正宗马来西亚榴莲甜品带给中国食客.</p><p>我们秉承规范的服务理念，将拿督打造成有自身特色的知名品牌。公司倡导天然、健康、时尚的饮食理念，引领简约养生的甜品文化，不断推陈出新，力求从感官到味觉，从服务到售后各方面都为拿督爱好者缔造完美体验。</p><ul style="padding: 10px 0px; margin: 0px; border-top-width: 1px; border-bottom-width: 1px; border-style: solid none; border-top-color: rgb(110, 185, 43); border-bottom-color: rgb(110, 185, 43); outline: 0px; list-style: none; color: rgb(0, 0, 0); font-family: &quot;思源黑体 CN&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
  									</div> -->
                            <div class="froala-element not-msie f-basic f-placeholder" style="border: solid 0px #252525;">${news.content }</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
	 <script type="text/javascript">
       /*  $(function(){
           
            var on = 0,
                maxSize = $(".brand_img img").length;
            var showImg = function(){
                $(".brand_img img").eq(on).siblings().stop(true,true).fadeOut(500);
                $(".brand_img img").eq(on).stop(true,true).fadeIn(500);
                $(".dot span").eq(on).addClass("cursor").siblings().removeClass("cursor");
            }
            var setInt = setInterval(function(){
                on++;               
                on %= maxSize;
                showImg();
            },3500)
            $(".dot span").bind("mouseover",function(){
                on = $(this).index();
                showImg();                
            })
            $(".dot").hover(function(){
            	clearInterval(setInt);
            },function(){
            	setInt = setInterval(function(){
	                on++;               
	                on %= maxSize;
	                showImg();
	            },3500)
            })
        }) */
    </script> 

</body>
</html>
