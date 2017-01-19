<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../base/base.jsp"></jsp:include>
	
</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<div style="width:50%;margin:auto;text-align:center;">
		<div>
			<label>用户名</label><input type="text" name="username" class="username" placeholder="Username" autocomplete="off" disabled="disabled" value="${sessionScope.user.userName}"/>
		</div>
		<div>
			<label>新密码</label><input type="password" name="password" id="password" placeholder="Password" oncontextmenu="return false" onpaste="return false"/>
		</div>
		<div>
			<label>确认新密码</label><input type="password" name="passwordver" id="passwordver" placeholder="Password" oncontextmenu="return false" onpaste="return false"/>
		</div>
		<div>
			<input onclick="updatePass()" type="button" value="确认"/>
		</div>
	</div>
	<script type="text/javascript">
		function updatePass(){
			debugger;
			var password = $("#password").val();
			var passwordver = $("#passwordver").val();
			if(password != passwordver){
				alert("密码不一致");
				return;
			}
			$.ajax({
		        url: basePath + "/user/updatepass",
		        type: 'post',
		        data : {
		        	password : password
		        },
		        dataType: 'json',
		        cache: false,
		        success: function(data){
		        	if(data!=null&&data!=false){
		        		alert("修改成功");
		        		location.replace(basePath+"/logout");   
		        	}else{
		        		alert("修改失败");
		        	}
		        }
		    });
		}
	
	</script>
</body>
</html>
