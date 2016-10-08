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
	        <div class="bd-cont-in cinE">
	            <div class="bd-cont-RE RE2 fr" style="background:url(../images/img/c_29.jpg) no-repeat">
	                <div class="bd-Pho">
	                </div>
	                <div class="bd-Ptx">
	                    <div class="bd-Pt">
	                        <div class="tnm">2015</div>
	                        <div class="tch">社会责任报告</div>
	                        <div class="ten">Social Responsibility  Report</div>
	                    </div>
	                    <div class="bd-Pb">天虹股份有限公司</div>
	                </div>
	                <div class="bd-RE RE2">
	                    <div class="RE-in"><a href="#"><img src="../images/img/c_27.png" alt=""></a></div>
	                    <div class="RE-in"><a href="EDetails.html"><img src="../images/img/c_28.png" alt=""></a></div>
	                </div>
	            </div>
	            <div class="bd-cont-LE fl">
	                <div class="bd-LE-top">
	                    <div class="bd-LE-tr P-tr fr"><img src="../images/img/c_26.jpg" alt=""></div>
	                    <div class="bd-LE-tl fl">
	                        <div class="bd-LE-num n-p">公益活动</div>
	                        <div class="bd-LE-ch ch-p">项目名称：黄手环行动</div>
	                        <div class="bd-LE-txt">项目宗旨：提高阿尔茨海默病患者的生活质量，促进阿尔茨海默症相关行业的发展，增进社会对病症的了解、理解和预防，积极促进公共政策的改善应对老龄化社会挑战，大力弘扬慈孝文化。</div>
	                        <a href="PublicDetail.html?p=4" class="bd-LE-a"><div class="bd-LE-btn b2"><img src="../images/img/c_10.png" alt=""></div></a>
	                    </div>
	                </div>
	                <div class="bd-LE-top">
	                    <div class="bd-LE-tr P-tr fr"><img src="../images/img/c_26.jpg" alt=""></div>
	                    <div class="bd-LE-tl fl">
	                        <div class="bd-LE-num n-p">公益活动</div>
	                        <div class="bd-LE-ch ch-p">项目名称：黄手环行动</div>
	                        <div class="bd-LE-txt">项目宗旨：提高阿尔茨海默病患者的生活质量，促进阿尔茨海默症相关行业的发展，增进社会对病症的了解、理解和预防，积极促进公共政策的改善应对老龄化社会挑战，大力弘扬慈孝文化。</div>
	                        <a href="PublicDetail.html?p=4" class="bd-LE-a"><div class="bd-LE-btn b2"><img src="../images/img/c_10.png" alt=""></div></a>
	                    </div>
	                </div>
	                <div class="bd-LE-btm">
	                    <div class="bd-p-title">
	                        <div class="bd-LE-num n-p">员工活动</div>
	                        <div class="bd-LE-ch ch-p2">Employee activity</div>
	                    </div>
	                    <ul class="bd-LE-list P-list">
	                        <li>
	                            <div class="LE-lr fr">
	                                <div class="LE-lrt2">拔河比赛</div>
	                                <div class="LE-lrc">天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同</div>
	                                <div class="LE-lrm">查看更多</div>
	                            </div>
	                            <img src="../images/img/c_11.jpg" alt="" class="fl">
	                        </li>
	                        <li>
	                            <div class="LE-lr fr">
	                                <div class="LE-lrt2">拔河比赛</div>
	                                <div class="LE-lrc">天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同</div>
	                                <div class="LE-lrm">查看更多</div>
	                            </div>
	                            <img src="../images/img/c_11.jpg" alt="" class="fl">
	                        </li>
	                        <li>
	                            <div class="LE-lr fr">
	                                <div class="LE-lrt2">拔河比赛</div>
	                                <div class="LE-lrc">天虹商场股份有限公司（股票简称：天虹商场，股票代码：002419）是中外合资的连锁零售企业，其控股股东是中国航空工业集团下属的中国航空技术深圳有限公司。1984年成立以来，通过人本、科学的管理，专业、高效的运营，公司取得了卓越的业绩，已连续多年入围中国连锁百强企业。公司根据目标顾客需求的不同</div>
	                                <div class="LE-lrm">查看更多</div>
	                            </div>
	                            <img src="../images/img/c_11.jpg" alt="" class="fl">
	                        </li>
	                    </ul>
	                    <div class="bd-LE-btn"><img src="../images/img/c_10.png" alt=""></div>
	                </div>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	</div>
	<jsp:include page="../foot/foot.jsp"></jsp:include>

</body>
</html>
