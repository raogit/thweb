<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div style="height:70px;background:#add; color:#FFF;">
	<dir style="width:70%;float:left;text-align:right"><label style="font-size:30px;color:#c73243;">欢迎登陆天虹后台</label></dir>
	<dir style="width:30%;float:left;"><label>您好:${sessionScope.user.userName}<a href="${basePath}/logout" style="margin-left:20px;">退出系统</a></label></dir>
</div>