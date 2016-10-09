<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="UTF-8">
	<title>天虹集团官网</title>
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
		                		<c:choose>
									<c:when test="${fn:contains(item.link, 'http')}">  
								   		<a href="${item.link }" class="nav_liBlock current">${item.name }</a>
								   	</c:when>
								   	<c:otherwise> 
								   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock current">${item.name }</a>
								   	</c:otherwise>
								</c:choose>
		                	</c:if>
		                	<c:if test="${item.id!=menu.id }">
			                	<c:choose>
									<c:when test="${fn:contains(item.link, 'http')}">  
								   		<a href="${item.link }" class="nav_liBlock">${item.name }</a>
								   	</c:when>
								   	<c:otherwise> 
								   		<a href="${basePath}${item.link }?menuId=${item.id }" class="nav_liBlock">${item.name }</a>
								   	</c:otherwise>
								</c:choose>
		                	</c:if>
				        </c:forEach>
		            </div>
	        </div>
	    </div>
	    <div class="bd-cont">
	        <div class="bd-cont-in">
	            <ul class="bd-sch-top t-top">
	                <li class="st-li li1 at">人才理念</li>
	                <li class="st-l"></li>
	                <li class="st-li li2">培养晋升</li>
	                <li class="st-l"></li>
	                <li class="st-li li3">薪酬福利</li>
	            </ul>
	            <div class="bd-sch-cont">
	                <div class="bd-sch-cin">
	                    <div class="bd-tl-cin">
	                        <div class="sch-r2 fr">
	                        <div class="bd-L-title">
	                            <div class="bd-L-tch tch2">培训中心</div>
	                            <div class="bd-L-ten ten4">training center</div>
	                            <div class="bd-L-tle tle3"></div>
	                        </div>
	                        <div class="bd-L-cont c2">
	                            <p><strong>优才计划：</strong>结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，重点强化学员的经营实践能力，以实现业务绩效的提升，最终支持组织绩效的达成。</p>
	                            <p><strong>新秀训练营：</strong>新秀动力营属于天虹梯队人才培养体系中的育才计划，培养人群为新进大学生。通过开展一系列的培训，帮助新进大学生实现校园人向职场人转变，快速融入和了解公司，掌握岗位技能、胜任岗位工作，顺利转型、度过关键期，并且清晰职业生涯发展规划，确保试用期后能顺利链接至梯队人才培养体系中。</p>
	                        </div>
	                    </div>
	                        <div class="sch-l2 fl">
	                            <div class="sch-l2-in">
	                                <img src="../images/img/s_12.jpg" alt="">
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                    <div class="bd-tl-cin">
	                        <div class="sch-l2 fr">
	                            <div class="sch-l2-in">
	                                <img src="../images/img/s_12.jpg" alt="">
	                            </div>
	                        </div>
	                        <div class="sch-r2 fl">
	                            <div class="bd-L-title">
	                                <div class="bd-L-tch tch2">培训中心</div>
	                                <div class="bd-L-ten ten4">training center</div>
	                                <div class="bd-L-tle tle3"></div>
	                            </div>
	                            <div class="bd-L-cont c2">
	                                <p><strong>优才计划：</strong>结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，重点强化学员的经营实践能力，以实现业务绩效的提升，最终支持组织绩效的达成。</p>
	                                <p><strong>新秀训练营：</strong>新秀动力营属于天虹梯队人才培养体系中的育才计划，培养人群为新进大学生。通过开展一系列的培训，帮助新进大学生实现校园人向职场人转变，快速融入和了解公司，掌握岗位技能、胜任岗位工作，顺利转型、度过关键期，并且清晰职业生涯发展规划，确保试用期后能顺利链接至梯队人才培养体系中。</p>
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-L-tch tch2">知识管理体系</div>
	                    <div class="bd-L-cont c3">
	                        <p>天虹拥有完善的知识管理系统，包含E-learnning（老大师）系统与KMS系统。E-learnning系统可实现视频资料、微课、PPT资料的上传、存储与分享，实现全体员工的线上学习与考试。KMS系统可实现文档资料的知识沉淀与共享，可推送推荐至全体员工。</p>
	                        <p>创新大赛：创新中心通过组织月度/年度竞赛，收集公司创新点子与方案、邀请评委评分点评，统计结果，奖励创新项目、后期跟进实施及推广。通过大赛的平台拉动创新点子挖掘、创新点子实施，从而形成在企业内完善的创新管理机制，并且营造良好的创新氛围。</p>
	                    </div>
	                    <div class="bd-tl-list">
	                        <ul class="bd-tl-lin">
	                            <li><div class="tl-ltx">结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力</div>
	                                <div class="tl-lbt"></div>
	                            </li>
	                            <li><div class="tl-ltx">结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力</div>
	                                <div class="tl-lbt"></div>
	                            </li>
	                            <li><div class="tl-ltx">结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力，以结合公司战略发展目标，培养公司现任中高层管理干部的战略思维、提高团队领导能力，提升经营管理水平，
	                                重点强化学员的经营实践能力</div>
	                                <div class="tl-lbt"></div>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="bd-sch-cin">
	                    <div class="bd-tl-st">
	                        <div class="ttp">
	                            <div class="t-line"></div><div class="tch">天虹员工福利</div><div class="t-line"></div>
	                            <div class="clear"></div>
	                        </div>
	                        <div class="ten">Tianhong staff salaries and benefits and Six big benefits</div>
	                    </div>
	                    <div class="bd-tl-sb">
	                        <div class="sb-txt fl">
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">完善的福利制度 .01</div>
	                                <div class="sb-tin-c">社会保险、年度体检、员工宿舍、医保
	                                    带薪假期、婚育礼金、生日派对</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">有竞争的薪酬 .02</div>
	                                <div class="sb-tin-c">固定薪酬、年终红包、项目奖金、伯乐奖金
	                                    专项奖励、等等</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">其他福利 .03</div>
	                                <div class="sb-tin-c">社团活动、年度旅游、春节嘉年华、公司周年庆祝活动、免费早餐及夜宵</div>
	                            </div>
	                        </div>
	                        <div class="sb-txt txt2 fr">
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">04. 完善的福利制度</div>
	                                <div class="sb-tin-c">社会保险、年度体检、员工宿舍、医保
	                                    带薪假期、婚育礼金、生日派对</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">05. 有竞争的薪酬</div>
	                                <div class="sb-tin-c">固定薪酬、年终红包、项目奖金、伯乐奖金
	                                    专项奖励、等等</div>
	                            </div>
	                            <div class="sb-txt-in">
	                                <div class="sb-tin-t">06. 其他福利</div>
	                                <div class="sb-tin-c">社团活动、年度旅游、春节嘉年华、公司周年庆祝活动、免费早餐及夜宵</div>
	                            </div>
	                        </div>
	                        <div class="clear"></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>
	<script>
	    $(function(){
	        $(".bd-tl-lin li:first").css({"margin-left":"0"});
	        $(".tl-lbt").bind("click",function(){
	            $(this).prev(".tl-ltx").css({"height":"auto","overflow":"visible"});
	        })
	
	        var tOn=0;
	        var showCont=function(){
	            $(".bd-sch-cin").eq(tOn).siblings().css({"display":"none"});
	            $(".bd-sch-cin").eq(tOn).stop(true,true).fadeIn();
	        }
	        showCont();
	        $(".bd-sch-top li").bind("click",function(){
	            tOn=($(this).index()+1)/2;
	            showCont();
	            $(this).addClass("at").siblings().removeClass("at");
	        })
	    })
	</script>
	
	
	
	

</body>
</html>
