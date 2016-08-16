<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>天虹</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<jsp:include page="../base/base.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="${basePath }/css/user/style.css" />
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
	<![endif]-->
<script src="${basePath }/js/user/jquery.js"></script>
<script src="${basePath }/js/user/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
		(function($){
			$(window).load(function(){
				
				$("a[rel='load-content']").click(function(e){
					e.preventDefault();
					var url=$(this).attr("href");
					$.get(url,function(data){
						$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
						//scroll-to appended content 
						$(".content").mCustomScrollbar("scrollTo","h2:last");
					});
				});
				
				$(".content").delegate("a[href='top']","click",function(e){
					e.preventDefault();
					$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
				});
				
			});
		})(jQuery);
	</script>

</head>

<body>
	<jsp:include page="../head/head.jsp"></jsp:include>
	<jsp:include page="menu-left.jsp"></jsp:include>

	

	<section class="rt_wrap content mCustomScrollbar">
	<div class="rt_content">
		<!--开始：以下内容则可删除，仅为素材引用参考-->
		<h1
			style="color: red; font-size: 20px; font-weight: bold; text-align: center;">Example/Explanation</h1>
		<p
			style="color: red; font-size: 16px; font-weight: bold; text-align: center;">
			这里是相关常用性样式预设，具体根据内容版块调整，列表添加字段注意考虑笔记本屏幕显示；<br />此页面仅为样式参考，程序对接可移除，具体布局根据项目内容而定<br />注意保留rt_content.parent
		</p>
		<!--点击加载-->
		<script>
     $(document).ready(function(){
		$("#loading").click(function(){
			$(".loading_area").fadeIn();
             $(".loading_area").fadeOut(1500);
			});
		 });
     </script>
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
		<script>
     $(document).ready(function(){
		 //弹出文本性提示框
		 $("#showPopTxt").click(function(){
			 $(".pop_bg").fadeIn();
			 });
		 //弹出：确认按钮
		 $(".trueBtn").click(function(){
			 alert("你点击了确认！");//测试
			 $(".pop_bg").fadeOut();
			 });
		 //弹出：取消或关闭按钮
		 $(".falseBtn").click(function(){
			 alert("你点击了取消/关闭！");//测试
			 $(".pop_bg").fadeOut();
			 });
		 });
     </script>
		<section class="pop_bg">
		<div class="pop_cont">
			<!--title-->
			<h3>弹出提示标题</h3>
			<!--content-->
			<div class="pop_cont_input">
				<ul>
					<li><span>标题</span> <input type="text" placeholder="定义提示语..."
						class="textbox" /></li>
					<li><span class="ttl">城市</span> <select class="select">
							<option>选择省份</option>
					</select> <select class="select">
							<option>选择城市</option>
					</select> <select class="select">
							<option>选择区/县</option>
					</select></li>
					<li><span class="ttl">地址</span> <input type="text"
						placeholder="定义提示语..." class="textbox" /></li>
					<li><span class="ttl">地址</span> <textarea class="textarea"
							style="height: 50px; width: 80%;"></textarea></li>
				</ul>
			</div>
			<!--以pop_cont_text分界-->
			<div class="pop_cont_text">这里是文字性提示信息！</div>
			<!--bottom:operate->button-->
			<div class="btm_btn">
				<input type="button" value="确认" class="input_btn trueBtn" /> <input
					type="button" value="关闭" class="input_btn falseBtn" />
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
		<input type="text" class="textbox" placeholder="默认宽度..." /> <input
			type="text" class="textbox textbox_295" placeholder="class=295px..." />
		<input type="text" class="textbox textbox_225"
			placeholder="class=225px..." /> <select class="select">
			<option>下拉菜单</option>
			<option>菜单1</option>
		</select> <input type="button" value="组合按钮" class="group_btn" /> </section>
		<section>
		<h2>
			<strong style="color: grey;">页面标题及表格/分页（根据具体情况列入重点，切勿放置可扩展内容不定的数据）</strong>
		</h2>
		<div class="page_title">
			<h2 class="fl">例如产品详情标题</h2>
			<a class="fr top_rt_btn">右侧按钮</a>
		</div>
		<table class="table">
			<tr>
				<th>项目1</th>
				<th>项目2</th>
				<th>项目3</th>
				<th>项目4</th>
				<th>项目5</th>
				<th>项目6</th>
				<th>项目7</th>
			</tr>
			<tr>
				<td style="width: 265px;"><div class="cut_title ellipsis">265px宽·长标题字符串截取，仅适合单行截取，多行截取程序定义一下。</div></td>
				<td>内容二</td>
				<td>内容三</td>
				<td>内容四</td>
				<td>内容五</td>
				<td>内容六</td>
				<td><a href="#">表内链接</a> <a href="#" class="inner_btn">表内按钮</a>
				</td>
			</tr>
			<tr>
				<td style="width: 265px;"><div class="cut_title ellipsis">265px宽·长标题字符串截取，仅适合单行截取，多行截取程序定义一下。</div></td>
				<td>内容二</td>
				<td>内容三</td>
				<td>内容四</td>
				<td>内容五</td>
				<td>内容六</td>
				<td><a href="#">表内链接</a> <a href="#" class="inner_btn">表内按钮</a>
				</td>
			</tr>
			<tr>
				<td style="width: 265px;"><div class="cut_title ellipsis">265px宽·长标题字符串截取，仅适合单行截取，多行截取程序定义一下。</div></td>
				<td>内容二</td>
				<td>内容三</td>
				<td>内容四</td>
				<td>内容五</td>
				<td>内容六</td>
				<td><a href="#">表内链接</a> <a href="#" class="inner_btn">表内按钮</a>
				</td>
			</tr>
		</table>
		<aside class="paging"> <a>第一页</a> <a>1</a> <a>2</a> <a>3</a> <a>…</a>
		<a>1004</a> <a>最后一页</a> </aside> </section>
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
		<script>
     $(document).ready(function(){
		 //tab
		 $(".admin_tab li a").click(function(){
		  var liindex = $(".admin_tab li a").index(this);
		  $(this).addClass("active").parent().siblings().find("a").removeClass("active");
		  $(".admin_tab_cont").eq(liindex).fadeIn(150).siblings(".admin_tab_cont").hide();
		 });
		 });
     </script>
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
</body>
</html>
