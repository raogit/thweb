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
	<script src="${basePath }/js/My97DatePicker/WdatePicker.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/jquery.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/jquery.mCustomScrollbar.concat.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/list.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<link href="${basePath }/css/dtree/dtree.css" type="text/css" rel="StyleSheet" />
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
			<h3 id="pupTitle">修改用户</h3>
			<!--content-->
			<input type="hidden" value="0" id="popUserId" />
			<div class="pop_cont_input">
				<ul>
					<li><span style="width:70px;text-align: right;" class="ttl">用户名:</span> <input id="popUserName" style="width:140px;" type="text" placeholder="请输入用户名..." class="textbox" /></li>
					<li><span style="width:70px;text-align: right;" class="ttl">密码:</span> <input id="popPassword"  style="width:140px;" type="text" placeholder="请输入密码..." class="textbox" /></li>
					<li><span style="width:70px;text-align: right;" class="ttl">类型:</span> 
						<select class="select" id="popType">
							<option value="0" selected>后台用户</option>
							<option value="1">前台用户</option>
						</select> 
					</li>
					<li><span style="width:70px;text-align: right;" class="ttl">邮箱:</span><input id="popEmail"  style="width:140px;" type="text" placeholder="请输入邮箱..." class="textbox" /></li>
				</ul>
			</div>
			<!--以pop_cont_text分界-->
			<div class="pop_cont_text">这里是文字性提示信息！</div>
			<!--bottom:operate->button-->
			<div class="btm_btn">
				<input type="button" value="确认" class="input_btn trueBtn" id="confirm_user"/> <input
					type="button" value="关闭" class="input_btn falseBtn" id="close_user"/>
			</div>
		</div>
		</section>
		<!--结束：弹出框效果-->

		
		<!--弹出框效果-->
		<section class="pop_bg" id="pop_tree">
			<div class="pop_cont" style="top:0;height:530px;">
				<input type="hidden" value="0" id="treeUserId" />
				<!--title-->
				<h3>权限设置</h3>
				<div style="overflow: auto;height:420px; width: 380px;">
					<!--content-->
					<div class="pop_cont_input" id="droleid" style="float:left;overflow: auto;height:400px;width: 160px; background-color: #eae8e8;"></div>
					<!--content-->
					<div class="pop_cont_input" id="dtreeid" style="float:left;overflow: auto;height:400px;width: 180px;"></div>
				</div>
				
				<!--bottom:operate->button-->
				<div class="btm_btn">
					<input type="button" value="确认" class="input_btn trueBtn" id="confirm_tree"/> <input
						type="button" value="关闭" class="input_btn falseBtn" id="close_tree"/>
				</div>
			</div>
		</section>
		<!--结束：弹出框效果-->
		
		
		<section>
			<h2>
				<strong style="color: grey;">常用按钮（水平块元素，无区域限制）</strong>
			</h2>
			<a class="link_btn" id="loading">点击加载</a>
			<button class="link_btn" id="showPopTxt">测试弹出框</button>
			<input type="button" value="按钮input" class="link_btn" /> </section>
			<section>
				<h2>
					<strong style="color: grey;">表单样式（组合）</strong>
				</h2>
				<strong style="color: grey;">用户名:</strong>
				<input id="username" type="text" class="textbox" placeholder="用户名..." /> 
				<strong style="color: grey;">类型:</strong>
				<select class="select" id="type">
					<option value="-1" selected>请选择</option>
					<option value="1">前台用户</option>
					<option value="0">后台用户</option>
				</select> 
				<strong style="color: grey;">创建时间:</strong>
				<input class="Wdate" type="text" id="startDate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',maxDate:'#F{$dp.$D(\'endDate\')}'})" name="startTime" style="width:160px;" />-
				<input class="Wdate" type="text" id="endDate"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',minDate:'#F{$dp.$D(\'startDate\')}'})" name="endTime" style="width:160px;"/>
				<input type="button" value="查询" class="group_btn" onclick="getUser(1)" /> 
				<input type="button" value="添加" class="group_btn" onclick="showUser(0)" style="margin-left:20px;" /> 
			</section>
			<section>
				<h1></h1>
				<div class="page_title">
					<h2 class="fl">全部用户</h2>
				</div>
				<table class="table" id="userlist">
					<thead>
						<tr>
							<th>序号</th>
							<th>用户名</th>
							<th>类型</th>
							<th>邮箱</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				<aside class="paging"></aside> 
			</section>
		<section>
		<h2>
			<strong style="color: grey;">分列内容布局</strong>
		</h2>
		<ul class="ulColumn2">
			<li><span class="item_name" style="width: 120px;">商品名称：</span> <input
				type="text" class="textbox textbox_295" placeholder="文本信息提示..." /> <span
				class="errorTips">错误提示信息...</span></li>
			<li><span class="item_name" style="width: 120px;">品牌：</span> <select
				class="select">
					<option>选择品牌</option>
			</select> <span class="errorTips">错误提示信息...</span></li>
			<li><span class="item_name" style="width: 120px;">是否热销：</span> <label
				class="single_selection"><input type="radio" name="name" />推荐</label>
				<label class="single_selection"><input type="radio"
					name="name" />不推荐</label></li>
			<li><span class="item_name" style="width: 120px;">摘要：</span> <textarea
					placeholder="摘要信息" class="textarea"
					style="width: 500px; height: 100px;"></textarea></li>
			<li><span class="item_name" style="width: 120px;">上传图片：</span> <label
				class="uploadImg"> <input type="file" /> <span>上传图片</span>
			</label></li>
			<li><span class="item_name" style="width: 120px;"></span> <input
				type="submit" class="link_btn" /></li>
		</ul>
		</section>
		<!--tabStyle-->
		
		<section>
		<ul class="admin_tab">
			<li><a class="active">自定义标题</a></li>
			<li><a>自定义标题</a></li>
			<li><a>...可追加</a></li>
		</ul>
		<!--tabCont-->
		<div class="admin_tab_cont" style="display: block;">添加时，对其增加一个父级，tabContent01子项无样式，具体情况单独定义。</div>
		<div class="admin_tab_cont">tabContent02，内容根据具体数据二次单独定义，公共样式单独调用</div>
		<div class="admin_tab_cont">可追加</div>
		</section>
		<section>
		<ul class="admin_tab">
			<li><a class="active">自定义标题</a></li>
			<li><a>自定义标题</a></li>
			<li><a>...可追加</a></li>
		</ul>
		<!--tabCont-->
		<div class="admin_tab_cont" style="display: block;">
			<!--左右分栏：左侧栏目-->
			<div class="cont_col_lt mCustomScrollbar" style="height: 500px;">
				<table class="table fl">
					<tr>
						<th>角色</th>
						<th>操作</th>
					</tr>
					<tr>
						<td class="center">顶级管理员</td>
						<td class="center"><a class="inner_btn">DeathGhost</a></td>
					</tr>
					<tr>
						<td class="center">采购人员</td>
						<td class="center"><a class="inner_btn">DeathGhost</a></td>
					</tr>
				</table>
				<table class="table fl" style="margin-top: 8px;">
					<tr>
						<th>角色</th>
						<th>操作</th>
					</tr>
					<tr>
						<td class="center">顶级管理员</td>
						<td class="center"><a class="inner_btn">DeathGhost</a></td>
					</tr>
					<tr>
						<td class="center">采购人员</td>
						<td class="center"><a class="inner_btn">DeathGhost</a></td>
					</tr>
				</table>
			</div>
			<!--左右分栏：右侧栏-->
			<div class="cont_col_rt">
				<table class="table fl">
					<tr>
						<th>资源</th>
						<th>描述</th>
						<th>操作</th>
					</tr>
					<tr>
						<td class="center">测试</td>
						<td>数据信息过多（扩展性太大），不建议使用此布局，以免数据溢出。</td>
						<td class="center"><a class="inner_btn">DeathGhost</a></td>
					</tr>
					<tr>
						<td class="center">测试</td>
						<td>数据信息过多（扩展性太大），不建议使用此布局，以免数据溢出。</td>
						<td class="center"><a class="inner_btn">DeathGhost</a></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="admin_tab_cont">tabContent02，内容根据具体数据二次单独定义，公共样式单独调用</div>
		<div class="admin_tab_cont">可追加</div>
		</section>
		<!--结束：以下内容则可删除，仅为素材引用参考-->
	</div>
	</section>
	<script src="${basePath }/js/dtree/dtree.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/list-dtree.js?ver=${ver}" type="text/javascript" ></script>
	
</body>
</html>
