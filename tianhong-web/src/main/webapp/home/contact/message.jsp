<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹官网</title>
	<jsp:include page="/base/base.jsp"></jsp:include>
	<link  href="${basePath}/home/css/common.css" rel="stylesheet" type="text/css">
	<script src="${basePath}/home/Scripts/jquery.min.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/Common.js?ver=${ver}"></script>
	<script src="${basePath}/home/Scripts/jQuery.pluges.js?ver=${ver}"></script>
</head>

<body>
<jsp:include page="../head/head.jsp"></jsp:include>
<div id="webbox">
    <div class="wrap padd">
        <c:import url="${basePath}/menu/contactleft?leftMenuId=${leftMenuId }"></c:import>
        <div class="rt right-box">
            <div class="right-box-nav">
                <h1>contact us<em>/</em>在线留言</h1> 
            </div>
            <div class="right-infor">
                <div class="contact-maps lt"><img src="${basePath}/images/img/img16.jpg" /></div>
                <div class="contact-content rt">
                    <div class="contact-title">
                        <h1>在线留言</h1>
                        <p>Online Message</p>
                    </div>  
                    <div class="online">
                       <form>
                        <dl>
                            <dt><label>姓名：</label><input type="text" class="user"></dt>
                            <dt><label>邮箱：</label><input type="text" class="Email"></dt>
                        </dl>
                        <dl>
                            <dd><label>联系电话：</label><input type="text" class="input-tel"></dd>
                            <dd><label>单位名称：</label><input type="text" class="input-name"></dd>
                            <dd><label>联系地址：</label><input type="text" class="input-adder"></dd>
                            <dd class="heig"><label>留言内容：</label><textarea class="textarea"></textarea></dd>
                        </dl>
                        <div class="btnInput">
                            <input type="submit" class="submit" value="提交">
                            <input type="reset" class="reset" value="重置">
                        </div>
                        </form>
                    </div> 
                </div>
            </div> 
        </div>
        <div class="clear"></div>
    </div>
</div>
<jsp:include page="../foot/foot.jsp"></jsp:include>
<script type="text/javascript">
$(function(){
    
    $("#item-menu li a.m").eq(1).addClass('mActino');  
     
})
</script>
</body>
</html>
