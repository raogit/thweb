<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<input type="hidden" id="menuId" name="menuId" value="${menu.id }" />
<div class="Header H2">
    <div class="header_content">
        <a href="${basePath}/web/index" class="header_logo"><img src="images/logo.png"></a>
        <div class="header_contentBlock">
            <div class="header_ulBlock">
            	<c:forEach var="item" items="${headMenus }" begin="0" step="1" varStatus="itemStatus">
		        	<c:if test="${item.id==parentMenu.id }">
                		<a href="${basePath}${item.link }?menuId=${item.id }" class="header_liBlock current">${item.name }</a>
                	</c:if>
                	<c:if test="${item.id!=parentMenu.id }">
                		<a href="${basePath}${item.link }?menuId=${item.id }" class="header_liBlock">${item.name }</a>
                	</c:if>
		        </c:forEach>
                <!-- <a href="index.html" class="header_liBlock">首 页</a>
                <a href="aboutUs/Intro.html" class="header_liBlock">关于天虹</a>
                <a href="Business.html" class="header_liBlock">多元业务</a>
                <a href="culture/index.html" class="header_liBlock">企业文化</a>
                <a href="staff/School.html" class="header_liBlock">人力资源</a>
                <a href="business/BusineIndex.html" class="header_liBlock">招商采购</a>
                <a href="news/news.html" class="header_liBlock">新闻中心</a>
                <a href="investor/inveIndex.html" class="header_liBlock">投资者关系</a> -->
                <div style="clear:both;"></div>
            </div>
            <div class="header_rightBlock">
                <div class="header_wcWb">
                    <a href="javascript:;" class="header_wb"></a>
                    <a href="javascript:;" class="header_wc"></a>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="header_onBlock">
        <div class="header_onBlockBg"></div><!--index-->
        <div class="header_onBlockBg">
        <div class="header_onBlockIn">
        <ul class="header_onList">
            <li><a href="aboutUs/Intro.html">公司概况</a></li>
            <li><a href="Business.html">多元业务</a></li>
            <li><a href="aboutUs/History.html?p=2">发展历程</a></li>
            <li><a href="aboutUs/Strategy.html?p=3">发展战略</a></li>
            <li><a href="aboutUs/Awards.html?p=4">荣誉奖项</a></li>
            <li><a href="aboutUs/Brand.html?p=5">自有品牌</a></li>
        </ul>
    </div>
        </div><!--about-->
        <div class="header_onBlockBg">
    <div class="header_onBlockIn">
            <ul class="header_onList">
                <li><a href="Business.html">天虹小额贷</a></li>
                <li><a href="Business.html?p=1">天虹商场</a></li>
                <li><a href="Business.html?p=2">君尚百货</a></li>
                <li><a href="Business.html?p=3">购物中心</a></li>
                <li><a href="Business.html?p=4">微喔便利店</a></li>
                <li><a href="Business.html?p=5">天虹红领巾</a></li>
                <li><a href="Business.html?p=6">天虹置业</a></li>
            </ul>
        </div>
    </div><!--business多元-->
        <div class="header_onBlockBg">
            <div class="header_onBlockIn">
                <ul class="header_onList">
                    <li><a href="culture/index.html?p=0">企业文化</a></li>
                    <li><a href="culture/Trailer.html?p=1">宣传片</a></li>
                    <li><a href="culture/Ejournals.html?p=2">电子期刊</a></li>
                    <li><a href="culture/Video.html?p=3">视频中心</a></li>
                    <li><a href="culture/Public.html?p=4">社会责任</a></li>
                </ul>
            </div>
        </div><!--culture-->
        <div class="header_onBlockBg"><!--staff-->
            <div class="header_onBlockIn">
                <ul class="header_onList">
                    <li><a href="staff/School.html?p=0">天虹商学院</a></li>
                    <li><a href="staff/Talent.html?p=1">人在天虹</a></li>
                    <li><a href="staff/SocialRecruit.html?p=2">社会招聘</a></li>
                    <li><a href="staff/SchoolRecruit.html?p=3">校园招聘</a></li>
                </ul>
            </div>
        </div><!--staff-->
        <div class="header_onBlockBg"><!--business-->
            <div class="header_onBlockIn">
                <ul class="header_onList">
                    <li><a href="business/BusineIndex.html?p=0">招商采购</a></li>
                    <li><a href="business/show.html?p=1">招商中心</a></li>
                </ul>
            </div>
        </div>
        <div class="header_onBlockBg"></div><!--news-->
        <div class="header_onBlockBg"><!--investor-->
            <div class="header_onBlockIn">
                <ul class="header_onList">
                    <li><a href="investor/inveIndex.html?p=0">实时行情</a></li>
                    <li><a href="investor/inveInfo.html?p=1">基本资料</a></li>
                    <li><a href="investor/companyManage.html?p=2">公司治理</a></li>
                    <li><a href="http://www.cninfo.com.cn" target="_blank">定期报告</a></li>
                    <li><a href="http://www.cninfo.com.cn" target="_blank">临时公告</a></li>
                    <li><a href="investor/profit.html?p=5">股东回报</a></li>
                    <li><a href="investor/protect.html?p=6">宣传与保护</a></li>
                    <li><a href="investor/contact.html?p=7">互动交流</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
