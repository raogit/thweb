jQuery(document).ready(function() {
	$(".btn").click(function() {
		is_hide();
	})
	
	
	
});
function sub(){
	var u = $("input[name=username]");
	var p = $("input[name=password]");
	if (u.val() == '' || p.val() == '') {
		$("#ts").html("用户名或密码不能为空~");
		is_show();
		return false;
	} else {
		var form = $("#formId");
		
//		jQuery(form).submit();
//		var a = document.getElementById("formId");
//		document.getElementById("formId").submit();
		
		$.ajax({
	        url: basePath + "/loginconfirm",
	        type: 'post',
	        data : {
	        	userName : u.val(),
	        	password : p.val()
	        },
	        dataType: 'json',
	        cache: false,
	        success: function(data){
	        	
	        	if(data!=null&&data!=false){
	        		location.replace(basePath+"/menu/menu");   
	        	}else{
	        		alert("用户名/密码错误");
	        	}
	        }
	    });
	}
}

window.onload = function() {
	$(".connect p").eq(0).animate({
		"left" : "0%"
	}, 600);
	$(".connect p").eq(1).animate({
		"left" : "0%"
	}, 400);
}
function is_hide() {
	$(".alert").animate({
		"top" : "-40%"
	}, 300)
}
function is_show() {
	$(".alert").show().animate({
		"top" : "45%"
	}, 300)
}