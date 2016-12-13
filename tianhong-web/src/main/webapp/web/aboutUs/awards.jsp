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
		<div class="titleImg_content"
			style="background: url(../images/b_2.jpg) no-repeat center; background-size: cover; filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(. ./images/b_2.jpg, sizingMethod='scale');">
			<div class="titleImg_img">
				<img src="../images/b_3.png">
			</div>
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
		<div class="bd-cont">
			<div class="bd-cont-in inA">
				<div class="bd-cont-L LS fl">
					<div class="bd-L-title">
						<div style="color:#e9a171;" class="bd-L-tch">荣誉奖项</div>
						<div style="background:#e9a171;" class="bd-L-tle"></div>
						<div class="bd-L-ten ten3">“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</div>
					</div>
				</div>
				<div class="bd-cont-A">
					<div class="bd-V-arr arr-prev fl" style="cursor: pointer;z-index: 199;">
						<img src="../images/img/c_20.png">
					</div>
					<div class="runBox list">
						<ul class="bd-A-list">
							<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
			                	<li class="A-list-li">
									<div class="bd-A-line">
										<div class="A-dot"></div>
										<div class="A-line"></div>
									</div>
									<div class="bd-A-cont">
										<div class="A-img">
											<img src="${basePath}/download/png?fileName=${item.path }" width="242px" height="156px">
										</div>
										<div style="color:#e9a171;" class="A-txt">${item.title }</div>
									</div>
								</li>
					        </c:forEach>
					        <c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
			                	<li class="A-list-li">
									<div class="bd-A-line">
										<div class="A-dot"></div>
										<div class="A-line"></div>
									</div>
									<div class="bd-A-cont">
										<div class="A-img">
											<img src="${basePath}/download/png?fileName=${item.path }" width="242px" height="156px">
										</div>
										<div style="color:#e9a171;" class="A-txt">${item.title }</div>
									</div>
								</li>
					        </c:forEach>
						</ul>
					</div>
					<div class="bd-V-arr arr-next fr" style="cursor: pointer;">
						<img src="../images/img/c_21.png">
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>

	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
		(function($){
			$.fn.listRun = function(options){
				var defaults = {
					speed:560,     //移动速度
					loop:false,     //是否循环
					direction:'left',//方向移动
					visible:4,    //可视个数，每组为多少个
					btnPrev:'.arr-prev',  //按钮》上一页
					btnNext:'.arr-next',  //按钮》下一页 
				}
				var o = $.extend(defaults,options||{});
				return this.each(function(){
					var that = $(this),
					    mbox = $('.list',that),
					    _tul = $('ul',mbox),
					    nLi = $('li',mbox),
					    l = nLi.length,
					    v = o.visible,
					    mv = Math.ceil(l/v), 
					    w = nLi.outerWidth(true),
					    h = nLi.outerHeight(true),
					    index = 0; 
					function init(){
						nLi.eq(0).addClass('Ai'+(0+1)); 
						nLi.eq(1).addClass('Ai'+(1+1));
						nLi.eq(2).addClass('Ai'+(2+1));
						nLi.eq(3).addClass('Ai'+(3+1));
						nLi.each(function(m){
							var n = m%4;
							nLi.eq(m).addClass('Ai'+(n+1)); 
						});
						_tul.css({width:l*w}); 
					};
					init();
					
					$(o.btnPrev).bind('click',function(){
						index--;
						index=index<=0?0:index;
						go(index); 
					});
					$(o.btnNext).bind('click',function(){
						index++;
						index=index>=mv-1?mv-1:index;
						go(index);
					}); 
					function go(index){
						_tul.stop().animate({marginLeft:-index*w*v},o.speed)
					};
					    
				})
			}
		})(jQuery);
		$(function(){
			$(".bd-cont-A").listRun();
			
			
		})
	</script>


</body>
</html>
