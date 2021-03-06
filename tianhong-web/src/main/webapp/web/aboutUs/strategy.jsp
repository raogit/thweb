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
	    <div class="bd-cont">
	        <div class="bd-cont-in inS">
	            <div class="bd-cont-L LS fl">
	                <div class="bd-L-title">
	                    <div class="bd-L-tch">战略发展</div>
	                    <div class="bd-L-tle"></div>
	                    <div class="bd-L-ten ten3">“有效益扩张”和“可持续发展”的原则，立志将公司塑造成全国一流的零售企业，与顾客分享生活之美。</div>
	                    <div class="bd-L-tb">已进驻广东、江西、湖南、福建、江苏、
	                        浙江、北京、四川共计8省/市的20个城市</div>
	                </div>
	            </div>
	            <div class="bd-cont-RS" id="maps-box">
	                <div class="RS-map maps-wrap">
	                    <img src="../images/img/map.png">
	                    <div class="area-map">
	                         <img src="../images/img/map-hn.png" alt="华南地区">
	                         <img src="../images/img/map-hz.png" alt="华中地区">
	                         <img src="../images/img/map-hb.png" alt="华北地区">
	                         <img src="../images/img/map-db.png" alt="东北地区">
	                         <img src="../images/img/map-xb.png" alt="西北地区">
	                         <img src="../images/img/map-xn.png" alt="西南地区">
	                    </div>
	                    <div class="area-wrap">
	                    <img src="../images/img/mapTouch.png" alt="锚点地图" usemap="#Map">
	                    <map name="Map" id="map-areas">
	                      <area shape="poly" coords="450,602,446,593,440,581,438,571,436,563,436,555,446,554,453,551,458,548,466,551,474,555,491,555,514,555,536,553,552,554,573,559,590,564,603,563,616,561,626,555,630,553,643,550,655,547,670,543,688,537,706,530,710,528,730,529,743,533,750,537,754,548,756,553,752,565,749,585,746,595,575,667,566,686,555,696,538,693,534,683,540,673,553,667,559,663,557,655,553,651,551,645,551,638,548,635,532,631,519,634,514,635,497,627,496,616,495,612,481,608,472,605,458,611" href="javascript:void(0);" alt="华南地区">
	                      <area shape="poly" coords="405,645,397,638,391,637,386,640,380,639,373,629,365,628,365,619,367,614,368,610,361,606,356,595,353,591,338,591,336,579,342,569,350,559,355,553,357,544,357,535,357,527,352,520,346,508,355,503,365,503,402,503,411,495,422,479,428,461,435,432,435,399,444,395,461,395,481,399,508,405,530,407,544,407,560,407,574,407,583,407,587,411,584,417,575,430,579,434,605,431,632,422,680,395,697,379,707,394,711,400,717,405,723,410,722,414,710,411,707,414,713,417,728,424,728,428,713,442,713,445,717,446,722,444,733,447,737,453,735,461,733,468,733,478,728,483,723,495,718,506,710,514,711,527,683,537,667,542,648,547,631,551,612,560,594,562,585,561,575,558,560,554,546,553,536,552,524,552,513,553,496,554,476,555,465,550,458,548,448,551,439,553,435,554,435,562,436,571,442,589,447,599,458,613,451,616,441,617,427,617,418,619,411,621,408,625,409,637,405,645" href="javascript:void(0);" alt="华中地区">
	                      <area shape="poly" coords="434,395,432,374,426,357,420,345,450,345,464,343,481,340,502,331,522,320,537,306,556,287,577,270,601,258,620,251,638,248,641,247,651,255,658,268,659,277,658,280,651,284,643,285,640,289,640,296,642,302,649,308,659,309,661,314,667,323,681,316,688,307,714,309,715,315,707,322,695,331,690,335,686,339,683,347,680,354,676,359,678,364,686,369,691,373,695,378,690,383,681,391,672,398,662,404,648,411,639,417,609,428,601,430,578,431,578,426,582,422,587,417,589,411,588,408,587,406,580,405,566,405,509,403,471,395,459,393,451,392,443,393,434,396" href="javascript:void(0);" alt="华北地区"> 
	                      <area shape="poly" coords="662,275,660,269,659,264,656,258,653,253,649,250,644,247,649,244,660,242,669,239,676,235,682,228,685,221,684,184,695,155,696,145,689,138,673,138,663,140,657,140,652,135,649,129,649,110,649,106,628,83,631,64,640,40,639,30,633,21,659,4,673,4,693,6,696,8,731,58,744,64,762,67,772,72,780,83,784,88,789,89,795,88,802,85,826,64,829,67,830,73,829,79,828,83,826,125,822,128,812,128,803,138,803,144,811,167,810,173,800,204,800,208,801,211,802,218,800,223,779,248,778,254,782,260,800,272,799,274,788,275,782,278,774,284,769,286,751,286,749,282,750,264,747,259,726,257,713,264,699,280,697,276,695,272,695,266,698,261,701,255,702,250,697,245,688,245,675,257,662,275" href="javascript:void(0);" alt="东北地区">
	                      <area shape="poly" coords="417,342,460,342,471,339,488,335,506,327,520,317,550,288,561,279,582,264,610,252,633,245,647,243,665,237,674,233,682,223,683,181,685,173,692,153,693,145,688,141,672,140,657,142,648,133,646,127,646,107,626,83,621,86,612,90,600,91,595,107,593,113,591,119,591,122,593,126,598,126,601,126,607,125,611,124,617,119,626,119,632,122,636,125,639,129,642,133,645,137,646,140,642,145,633,145,624,149,611,155,604,160,604,165,601,170,595,173,591,176,585,179,574,190,559,190,550,188,546,192,545,198,545,202,548,208,549,211,549,215,541,221,525,237,514,241,508,242,494,242,485,245,474,249,456,259,449,259,432,254,422,252,404,243,340,239,331,231,324,217,312,201,291,191,279,189,264,183,261,179,261,173,265,164,265,151,263,144,257,135,251,129,242,126,234,116,231,108,228,104,223,103,213,113,206,115,202,120,200,134,195,140,180,137,171,134,165,134,154,156,152,163,151,166,146,167,141,164,130,163,124,164,120,165,121,169,122,170,121,197,119,202,114,206,110,215,105,219,96,222,83,226,75,229,70,230,72,236,79,250,82,258,89,269,96,278,104,286,116,296,124,301,138,305,150,307,161,308,184,309,199,310,217,309,235,306,258,301,278,295,304,293,324,294,343,298,369,307,389,319,406,332,415,341" href="javascript:void(0);" alt="西北地区">
	                      <area shape="poly" coords="343,505,355,500,364,500,385,501,398,502,407,498,417,483,428,453,431,442,432,430,433,397,431,379,425,360,416,345,404,333,391,324,378,316,363,308,344,301,330,298,322,297,283,298,276,298,267,301,258,303,242,306,225,311,209,312,191,312,167,311,147,310,132,307,118,301,106,293,96,282,87,273,81,261,78,252,72,238,65,231,59,228,53,233,49,237,44,237,39,235,34,233,21,233,15,235,10,240,7,247,6,255,8,258,14,260,18,265,17,285,12,288,11,289,17,297,25,302,24,311,26,316,34,323,44,329,50,334,51,345,57,352,58,358,57,364,57,369,58,378,61,382,59,388,57,391,45,391,46,407,74,438,80,438,83,437,85,437,112,462,118,464,121,468,122,472,132,479,140,486,144,492,152,494,160,496,166,497,175,499,189,499,192,503,195,508,200,506,208,502,214,498,222,500,234,504,245,508,258,507,267,500,275,496,281,492,289,487,295,487,304,491,311,488,315,486,319,489,320,495,322,499,322,502,326,505,344,507" href="javascript:void(0);" alt="西南地区">
	                    </map>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script type="text/javascript">
		$(function(){
			var area_map = $(".area-map");
			var line = $(".RS-desc .line");
			var d_in = $(".RS-desc .d-in");
			var area = $("#map-areas area");
			var index = 0;
			area.hover(function(){
				index = area.index(this);
				area_map.find('img').eq(index).show().siblings().hide();
				line.eq(index).show().siblings().hide();
				d_in.eq(index).show().siblings().hide(); 
			});
			
			
		})
	</script>


</body>
</html>
