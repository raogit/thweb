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
	            <c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
	            	<c:if test="${itemStatus.index==0 }">
	                	<div class="bd-cont-R4 fr" style="display:block;" id="video${item.id }">${item.path }</div>
	                </c:if>
                	<c:if test="${itemStatus.index>0 }">
	                	<div class="bd-cont-R3 fr" style="display:none;" id="video${item.id }">${item.path }</div>
	                </c:if>
		        </c:forEach>
	            <div class="bd-cont-L LT fl">
	                <div class="bd-L-title">
	                    <div class="bd-L-tch">宣传片</div>
	                    <div class="bd-L-tle"></div>
	                    <div class="bd-L-ten">Trailer</div>
	                </div>
	                <div class="bd-L-cont LT">
	                    <p><strong>企业宣传片</strong>主要是企业一种阶段性总结动态艺术化的展播方式，回望过去，放眼未来，这是传统企业宣传片内在的核心线索，随着传播观念的日渐完善和先进，传统企业宣传片千篇一律的传播方式逐渐的开始让人出现审美疲劳，影视广告公司在探寻着企业宣传片创意方式的突破，站在企业形象的高度，对企业理念和企业文化进行深度的挖掘，让企业宣传片的展现元素都依托在企业文化的精髓之上，或通过故事的形式</p>
	                </div>
	                <ul class="bd-L-Tra">
	                	<c:forEach var="item" items="${pictures }" begin="0" step="1" varStatus="itemStatus">
		                	<li><a href="javascript:changeVideo(${item.id });">${item.title }</a></li>
				        </c:forEach>
	                    <!-- <li>天虹企业形象宣传片一</li>
	                    <li>天虹企业形象宣传片二</li>
	                    <li>天虹企业形象宣传片一</li> -->
	                </ul>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	
	
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        $(".bd-L-cont.LC p").eq(0).css({"width":"420px"});
	    })
	    function changeVideo(id){
	    	var bdConts = $(".bd-cont-R3");
	    	for(var i=0;i<bdConts.length;i++){
	    		$(bdConts[i]).hide();
	    	}
	    	$("#video"+id).show();
	    }
	</script>
	

</body>
</html>
