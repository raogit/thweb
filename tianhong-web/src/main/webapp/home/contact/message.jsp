<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>天虹置业-天虹商场|官方网站，分享生活之美</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
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
                            <dt><label>姓名：</label><input type="text" class="user" id="name"></dt>
                            <dt><label>邮箱：</label><input type="text" class="Email" id="email"></dt>
                        </dl>
                        <dl>
                            <dd><label>联系电话：</label><input type="text" class="input-tel" id="phone"></dd>
                            <dd><label>单位名称：</label><input type="text" class="input-name" id="company"></dd>
                            <dd><label>联系地址：</label><input type="text" class="input-adder" id="address"></dd>
                            <dd class="heig"><label>留言内容：</label><textarea class="textarea" id="message"></textarea></dd>
                        </dl>
                        <div class="btnInput">
                            <input type="button" class="submit" value="提交" onclick="commit()">
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
function commit(){
	var name = $("#name").val();
	var email = $("#email").val();
	var phone = $("#phone").val();
	var company = $("#company").val();
	var address = $("#address").val();
	var message = $("#message").val(); 
	
	$.ajax({
        url: $("#basePath").val() + "/contact/save",
        type: 'post',
        dataType: 'json',
        data : {
        	name : name,
        	email : email,
        	phone : phone,
        	company : company,
        	address : address,
        	message : message
        },
        cache: false,
        success: function(data){
        	debugger;
        	if(data!=null&&data!=false){
        		alert("提交成功");
        	}else{
        		alert("请重试");
        	}
        }
    });
}
</script>
</body>
</html>
