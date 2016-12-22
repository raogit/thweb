<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>购物中心-天虹商场|官方网站，分享生活之美</title>
<jsp:include page="base.jsp"></jsp:include>
</head>

<body class="shpping" style="overflow: hidden;">
	<jsp:include page="left.jsp"></jsp:include>
	<div class="indexK_bodyer">
		<div class="bodyer">
			<div class="common_parentBlock">
				<div class="common_page">
					<div class="About_block">
						<div class="About">
							<div class="head">
								<ul>
									<li class="current"><a href="#" class="activity">公司简介</a></li>
									<li><a href="${basePath }/web/staff/index?menuId=177" class="privilege">诚聘英才</a></li>
									<li><a href="#" class="Store">联系我们</a></li>
								</ul>
								<div class="clear"></div>
							</div>
							<div class="content">
								<div class="model">
									<div class="AboutUs_con">
										<div class="AboutUs_pic fl">
											<c:forEach var="item" items="${companyPictures }" begin="0" step="1" end="1" varStatus="itemStatus">
												<img src="${basePath}/download/png?fileName=${item.path }" width="342px" height="457px" /> 
											</c:forEach>
										</div>
										<div class="AboutUs_Text fl">${companyProfile.content }</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="model" style="display: none;">
									<div>
										<div class="clear"></div>
									</div>
								</div>
								
								
								
								<div class="model" style="display: none;">
									<div class="concact_con">
										<div class="concact_pic fl">
											<c:forEach var="item" items="${contactUsPictures }" begin="0" step="1" end="0" varStatus="itemStatus">
												<img src="${basePath}/download/png?fileName=${item.path }" width="341px" height="406px" /> 
											</c:forEach>
										</div>
										<div class="concact_Text fl">
											<div class="concact_phone">
												<div class="phone_tb fl">
													<img src="${basePath}/images/shopping/common/telephone.png">
												</div>
												<div class="phone_number fl">${contactUsContent.phone }</div>
												<div class="clear"></div>
											</div>
											<div class="addre">
												<p class="aders">地址：${contactUsContent.job }</p>
												<p class="mail">邮箱：${contactUsContent.email }</p>
											</div>
											<div class="concact_weixin">
												<p class="concact_weixinTitle">关注我们，给你更多惊喜！</p>
												<div class="concact_weixinCon">
													<div class="concact_weixinCon_1 fl">
														<c:forEach var="item" items="${contactUsPictures }" begin="1" step="1" end="1" varStatus="itemStatus">
															<img src="${basePath}/download/png?fileName=${item.path }" width="130px" height="130px" /> 
														</c:forEach>
														
														<p>虹领巾APP扫描</p>
													</div>
													<div class="concact_weixinCon_2 fl">
														<c:forEach var="item" items="${contactUsPictures }" begin="2" step="1" end="2" varStatus="itemStatus">
															<img src="${basePath}/download/png?fileName=${item.path }" width="130px" height="130px" /> 
														</c:forEach>
														<p>天虹APP扫描</p>
													</div>
													<div class="clear"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="clear"></div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${basePath}/shoppingcenter/js/resize.js"></script>
</body>
</html>
