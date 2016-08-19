<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../base/base.jsp"></jsp:include>
	<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<![endif]-->
	<link href="${basePath }/css/dtree/dtree.css" type="text/css" rel="StyleSheet" />
	<script src="${basePath }/js/My97DatePicker/WdatePicker.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/jquery.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/jquery.mCustomScrollbar.concat.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/auth-manager/menu.js?ver=${ver}" type="text/javascript" ></script>
	
</head>

<body>
	<section class="rt_wrap content mCustomScrollbar">
	<div class="rt_content">
		
		<section class="loading_area">
		<div class="loading_cont">
			<div class="loading_icon">
				<i></i><i></i><i></i><i></i><i></i>
			</div>
			<div class="loading_txt">
				<mark>数据正在加载，请稍后！</mark>
			</div>
		</div>
		</section>
		<!--结束加载-->
		<!--弹出框效果-->
		<section class="pop_bg" id="pop_user">
		<div class="pop_cont">
			<!--title-->
			<h3 id="pupTitle">修改菜单</h3>
			<!--content-->
			<input type="hidden" value="0" id="popMenuId" />
			<input type="hidden" value="0" id="popParentMenuId" />
			<div class="pop_cont_input">
				<ul>
					<li><span style="width:70px;text-align: right;" class="ttl">菜单名:</span> <input id="popName" style="width:140px;" type="text" placeholder="请输入菜单名..." class="textbox" /></li>
					<li><span style="width:70px;text-align: right;" class="ttl">英文名:</span> <input id="popEnglishName" style="width:140px;" type="text" placeholder="请输入菜单名..." class="textbox" /></li>
					<li><span style="width:70px;text-align: right;" class="ttl">link:</span><input id="popLink"  style="width:140px;" type="text" placeholder="请填写link..." class="textbox" /></li>
					<li><span style="width:70px;text-align: right;" class="ttl">url:</span><input id="popUrl"  style="width:140px;" type="text" placeholder="请填写url..." class="textbox" /></li>
				</ul>
			</div>
			<!--bottom:operate->button-->
			<div class="btm_btn">
				<input type="button" value="确认" class="input_btn trueBtn" id="confirm_user"/> <input
					type="button" value="关闭" class="input_btn falseBtn" id="close_user"/>
			</div>
		</div>
		</section>
		<!--结束：弹出框效果-->
		
		<section>
			<section>
				<h2>
					<strong style="color: grey;"></strong>
				</h2>
				<strong style="color: grey;">菜单名:</strong>
				<input id="name" type="text" class="textbox" placeholder="菜单名..." /> 
				
				<strong style="color: grey;">创建时间:</strong>
				<input class="Wdate" type="text" id="startDate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',maxDate:'#F{$dp.$D(\'endDate\')}'})" name="startTime" style="width:160px;" />-
				<input class="Wdate" type="text" id="endDate"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',minDate:'#F{$dp.$D(\'startDate\')}'})" name="endTime" style="width:160px;"/>
				<input type="button" value="查询" class="group_btn" onclick="tableData(1)" /> 
				<input type="button" value="添加" class="group_btn" onclick="addSub(0)" style="margin-left:20px;" /> 
			</section>
			<section>
				<h1></h1>
				<div class="page_title">
					<h2 class="fl">全部菜单</h2>
				</div>
				<table class="table" id="userlist">
					<thead>
						<tr>
							<th>序号</th>
							<th>level</th>
							<th>菜单名</th>	
							<th>link</th>
							<th>url</th>						
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				<aside class="paging"></aside> 
			</section>
	</div>
	</section>
	
</body>
</html>
