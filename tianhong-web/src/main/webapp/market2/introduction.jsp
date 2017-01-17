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
	            	<select id="marketName" class="store-list" name="marketName" onchange="changeMarket()">
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
	                <img src="Images/in1.jpg">
	            </div>
	        </div>    
	        <div class="inn_layda" style="background:#fdf3ed;">
	            <div class="inn_lay_con2">
	                <div class="inn_top">
	                    <h2><img src="Images/in2.png"></h2>
	                    <span>厦门汇腾天虹</span>
	                </div>
	            </div>
	            <div class="inn_lay_con3">
	                <h2>门店介绍</h2>
	                <h3>SHOP INTRODUCTION</h3>
	                <div class="inn_lay_text">
	                    <p>南山常兴天虹是天虹商场股份有限公司下属的大型分店，位于南山区桃园路86号，北临深南大道，东临南山大道、南海大道，西接前海，向南辐射到蛇口片区。</p>
	                    <p>商场现有营业面积32000平方米，百货营业时间：早上9：30至晚上22：30；超市营业时间：早上8：30至晚上22:30。经营品类主要包括：化妆品、鞋类、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材、五金灯饰、通讯器材、办公设备等商品。</p>
	                    <p>每年，商场都会进行品牌升级，现已拥有兰芝、欧莱雅、DHC、百丽、思加图、妙丽、ONLY、VERO MODA、欧时力、Five Plus、衣恋、艾维、歌力思、娜尔思、金利来、佛伦斯、比音勒芬、杰克·琼斯、马克华菲、耐克、阿迪达斯、李宁、安奈儿、丽婴房、富安娜、梦洁、黛安芬、安莉芳等数百国内外知名品牌。天虹的首家家居样板店悠乐生活于2008年隆重进驻我商场，2011年悠乐生活馆在商场五楼全新绽放，不仅为“百货＋超市”的传统经营注入新的时尚力量，更惊喜地带来了新、奇、特、优的家居精品。</p>
	                    <p>商场一直致力于保持服务领先的优势，免费提供多项便民服务，同时提供钟表维修、机器修鞋、改缝裤脚等专业服务。</p>
	                    <p>商场曾获得金鼎百货店、深圳市绿色商场、南山区纳税百强企业、深圳市十佳青年文明号、慈善公益奖等多项荣誉。</p>
	                </div>
	            </div>
	        </div>
	        <div class="inn_layda news_content">
	            <div class="inn_lay_con3">
	                <div class="inlay_top">
		                <h2>门店新闻</h2>
		                <h3>SHOP NEWS</h3>
	                    <div class="inn_parentNews">
	    	                <div class="inn_news">
	    	                    <div class="inn_news_left">
	    	                        <div class="inn_new_block">
	    	                            <h4>兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华</h4>
	    	                            <p>活动主题：兰芝“父亲节”特别优惠 活动内容：一楼兰芝本柜台购买兰芝两支男士产品，可获8折优惠。</p>
	    	                            <p>1、买满480元送抗皱精粹霜5g+透明雨伞；2、买满720元送时光锁中样3件+时尚拎包</p>
	    	                        </div>
	    	                        <div class="inn_new_more">
	    	                            <a href="javascript:;"><img src="Images/more1.jpg"></a>
	    	                        </div> 
	    	                        <div class="inn_new_date">
	    	                            <span>2016.10.22</span>
	    	                        </div>   
	    	                    </div>
	    	                    <div class="inn_news_right">
	    	                        <img src="Images/p_7.jpg">
	    	                    </div>
	    	                    <div class="clear"></div>
	    	                </div>
	    	                <div class="inn_news">
	    	                    <div class="inn_bd">
	    	                        <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	    	                        <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	    	                    </div>
	    	                    <div class="inn_bdimg">
	    	                        <div class="inn_day">16</div>
	    	                        <div class="inn_moon">
	    	                            <span>JUN</span>
	    	                            <p>2016</p>
	    	                        </div>
	    	                        <div class="clear"></div>
	    	                    </div>
	    	                    <div class="clear"></div>
	    	                </div>
	    	                <div class="inn_news">
	    	                    <div class="inn_bd inn_bdred">
	    	                        <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	    	                        <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	    	                    </div>
	    	                    <div class="inn_bdimg inn_red">
	    	                        <div class="inn_day">22</div>
	    	                        <div class="inn_moon">
	    	                            <span>JUN</span>
	    	                            <p>2016</p>
	    	                        </div>
	    	                        <div class="clear"></div>
	    	                    </div>
	    	                    <div class="clear"></div>
	    	                </div>
	                        <div class="inn_news">
	                            <div class="inn_bd inn_bdred">
	                                <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	                                <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	                            </div>
	                            <div class="inn_bdimg inn_red">
	                                <div class="inn_day">22</div>
	                                <div class="inn_moon">
	                                    <span>JUN</span>
	                                    <p>2016</p>
	                                </div>
	                                <div class="clear"></div>
	                            </div>
	                            <div class="clear"></div>
	                        </div>
	                        <div class="inn_news">
	                            <div class="inn_bd">
	                                <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	                                <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	                            </div>
	                            <div class="inn_bdimg">
	                                <div class="inn_day">16</div>
	                                <div class="inn_moon">
	                                    <span>JUN</span>
	                                    <p>2016</p>
	                                </div>
	                                <div class="clear"></div>
	                            </div>
	                            <div class="clear"></div>
	                        </div>
	                        <div class="inn_news">
	                            <div class="inn_bd inn_bdred">
	                                <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	                                <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	                            </div>
	                            <div class="inn_bdimg inn_red">
	                                <div class="inn_day">22</div>
	                                <div class="inn_moon">
	                                    <span>JUN</span>
	                                    <p>2016</p>
	                                </div>
	                                <div class="clear"></div>
	                            </div>
	                            <div class="clear"></div>
	                        </div>
	                    </div>
		                <div class="more_news">
		                    <a href="javascript:;">更多新闻</a>
		                </div>
		            </div> 
		            <div class="inn_Eject">
		            	<div class="inn_Ejcon">
		            	    <div class="inn_ejtext">
			            		<h2>兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华</h2>
			            		<p>厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p>
			            		<p>汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>
			            		<img src="images/inb.jpg">
			            	</div>
			            	<div class="inn_share">
				            	<div class="inn_date"><p>2016-3-17</p><span>分享到：</span><div class="clear"></div></div>
				            	<div class="share">
			    	    			<div class="bshare-custom"><div class="bsPromo bsPromo2"></div><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
			    	    		</div>
			    	    		 <div class="clear"></div>
			    	    	</div>		
		            	</div>
		            	<a href="javascript:;" class="in_back">返回</a>
		            </div>   
	            </div>
	        </div>
	        <div class="inn_layda news_contentactive" style="background:#fdf3ed;">
	            <div class="inn_lay_con3">
	                <div class="inlay_topVe">
		                <h2>门店活动</h2>
		                <h3>STORE EVENTS</h3>
	                    <div class="inn_parentNewsVe">
	    	                <div class="inn_newsVe">
	    	                    <div class="inn_bd">
	    	                        <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	    	                        <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	    	                    </div>
	    	                    <div class="inn_bdimg">
	    	                        <div class="inn_day">16</div>
	    	                        <div class="inn_moon">
	    	                            <span>JUN</span>
	    	                            <p>2016</p>
	    	                        </div>
	    	                        <div class="clear"></div>
	    	                    </div>
	    	                    <div class="clear"></div>
	    	                </div>
	    	                <div class="inn_newsVe">
	    	                    <div class="inn_bd inn_bdred">
	    	                        <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	    	                        <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	    	                    </div>
	    	                    <div class="inn_bdimg inn_red">
	    	                        <div class="inn_day">22</div>
	    	                        <div class="inn_moon">
	    	                            <span>JUN</span>
	    	                            <p>2016</p>
	    	                        </div>
	    	                        <div class="clear"></div>
	    	                    </div>
	    	                    <div class="clear"></div>
	    	                </div>
	    	                <div class="inn_newsVe">
	    	                    <div class="inn_bd inn_bdgreen">
	    	                        <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	    	                        <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	    	                    </div>
	    	                    <div class="inn_bdimg inn_green">
	    	                        <div class="inn_day">22</div>
	    	                        <div class="inn_moon">
	    	                            <span>JUN</span>
	    	                            <p>2016</p>
	    	                        </div>
	    	                        <div class="clear"></div>
	    	                    </div>
	    	                    <div class="clear"></div>
	    	                </div>
	                        <div class="inn_newsVe">
	                            <div class="inn_bd">
	                                <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	                                <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	                            </div>
	                            <div class="inn_bdimg">
	                                <div class="inn_day">16</div>
	                                <div class="inn_moon">
	                                    <span>JUN</span>
	                                    <p>2016</p>
	                                </div>
	                                <div class="clear"></div>
	                            </div>
	                            <div class="clear"></div>
	                        </div>
	                        <div class="inn_newsVe">
	                            <div class="inn_bd inn_bdred">
	                                <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	                                <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	                            </div>
	                            <div class="inn_bdimg inn_red">
	                                <div class="inn_day">22</div>
	                                <div class="inn_moon">
	                                    <span>JUN</span>
	                                    <p>2016</p>
	                                </div>
	                                <div class="clear"></div>
	                            </div>
	                            <div class="clear"></div>
	                        </div>
	                        <div class="inn_newsVe">
	                            <div class="inn_bd inn_bdgreen">
	                                <h4>厦门汇腾天虹：我的炫魅春色！——专柜POP涂鸦比赛</h4>
	                                <p>春天来了，我们总会幻想着许多浪漫的事情在这个美丽</p>
	                            </div>
	                            <div class="inn_bdimg inn_green">
	                                <div class="inn_day">22</div>
	                                <div class="inn_moon">
	                                    <span>JUN</span>
	                                    <p>2016</p>
	                                </div>
	                                <div class="clear"></div>
	                            </div>
	                            <div class="clear"></div>
	                        </div>
	                    </div>
		                <div class="more_newsVs">
		                    <a href="javascript:;">更多新闻</a>
		                </div>
		                <div class="inn_iphone">
		                    <h3>顾客专线：（86）755 -86052000　86052020</h3>
		                    <p>地    址：深圳市南山区桃园路86号（南山医院斜对面）</p>
		                    <p>营业时间：百货：早上9：30至晚上22：30；超市：早上8：30至晚上22:30</p>
		                </div>
		            </div>
		            <div class="inn_EjectVe">
		            	<div class="inn_Ejcon">
		            	    <div class="inn_ejtext">
			            		<h2>兰芝“父亲节”特别优惠 欧珀莱美丽嘉年华</h2>
			            		<p>厦门汇腾天虹于2003年9月12日开业，是天虹在全国开设的第9家分店，也是天虹在东南区的第一家分店。位于嘉禾路323号，北临仙岳路，南与湖滨北路交汇，商场核心商圈辐射江头、松柏等高档商圈。</p>
			            		<p>汇腾天虹“百货+超市”的经营模式将为厦门市民带来全新的一站式购物体验，经营品类主要包括：化妆品、鞋类、超市、服装、皮具箱包、钟表首饰、儿童用品、床上用品、体育用品、摄像器材等商品。</p>
			            		<img src="images/inb.jpg">
			            	</div>
			            	<div class="inn_share">
				            	<div class="inn_date"><p>2016-3-17</p><span>分享到：</span><div class="clear"></div></div>
				            	<div class="share">
			    	    			<div class="bshare-custom"><div class="bsPromo bsPromo2"></div><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到微信" class="bshare-weixin" href="javascript:void(0);"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a></div><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script><script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>
			    	    		</div>
			    	    		 <div class="clear"></div>
			    	    	</div>		
		            	</div>
		            	<a href="javascript:;" class="in_backVe">返回</a>
		            </div>   
	            </div>
	        </div>
	
	    </div>
	</div>    
	<div class="footer_mk">
	    <div class="f-cont">
	        <div class="f-c-right">
	            <a href="" class="f-c-ri"><img src="images/p_1.png" alt=""></a>
	            <a href="" class="f-c-ri fri"><img src="images/p_2.png" alt=""></a>
	            <div class="fr">技术支持：牧星策划</div>
	            <div class="f-c-wc"><img src="images/p_3.png" alt=""></div>
	        </div>
	        <div class="f-c-left">
	            <a href="">友情链接</a>
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
	        	showIn();
	        })
	        $(".in_backVe").bind("click",function(){
	        	hideIn();
	        })
	
	        function IntoNewsBlock(){
	            $(".inn_news:gt(3)").css({"display":"none"});
	            $(".inn_news:lt(3)").css({"display":"block"});
	            $(".more_news").stop(true,true).fadeIn(); 
	        }
	        function IntoNewsVsBlock(){
	            $(".inn_newsVe:gt(3)").css({"display":"none"});
	            $(".inn_newsVe:lt(3)").css({"display":"block"});
	            $(".more_newsVs").stop(true,true).fadeIn();
	        }        
	        IntoNewsBlock();
	        IntoNewsVsBlock();
	        $(".more_news").bind("click",function(){
	            IntoNewsVsBlock();
	            var blockTop = parseInt($(".news_content").offset().top) - 58;
	            $("html,body").stop().animate({scrollTop:blockTop});
	            $(".inn_news").css({"display":"block"});
	            $(".more_news").stop(true,true).fadeOut();            
	        })
	        $(".more_newsVs").bind("click",function(){
	            IntoNewsBlock();
	            $(".inn_newsVe").css({"display":"block"});
	            var blockTop = parseInt($(".news_contentactive").offset().top) - 58;
	            $("html,body").stop().animate({scrollTop:blockTop});
	            $(".more_newsVs").stop(true,true).fadeOut();
	            
	        })
	
	    })
	</script>
</body>
</html>
