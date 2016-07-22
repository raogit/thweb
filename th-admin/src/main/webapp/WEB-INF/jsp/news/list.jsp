<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../base/base.jsp"></jsp:include>
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
    <style>
        body {
            text-align: center;
        }
        section {
            width: 80%;
            margin: auto;
            text-align: left;
        }
    </style>
	<script src="${basePath}/js/jQuery/jquery-2.1.4.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/richtext/froala_editor.min.js"></script>
	<script src="${basePath}/js/richtext/tables.min.js"></script>
  	<script src="${basePath}/js/richtext/lists.min.js"></script>
  	<script src="${basePath}/js/richtext/colors.min.js"></script>
  	<script src="${basePath}/js/richtext/media_manager.min.js"></script>
  	<script src="${basePath}/js/richtext/font_family.min.js"></script>
  	<script src="${basePath}/js/richtext/font_size.min.js"></script>
  	<script src="${basePath}/js/richtext/block_styles.min.js"></script>
  	<script src="${basePath}/js/richtext/video.min.js"></script>
	<script src="${basePath}/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/news/list.js?ver=${ver}" type="text/javascript" ></script>
</head>

<body>
	<jsp:include page="../head/head-iframe.jsp"></jsp:include>
	<input type="hidden" value="${menuId}" id="menuId" name="menuId" />
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
		<section class="pop_bg" id="pop_obj" style="text-align: center;">
			<div class="pop_cont" style="top:0px;left: 20%;">
				<input type="hidden" value="0" id="id" name="id" />
				<div style="padding-top:10px;text-align: center;">
					<label>标题:</label><input type="text" size="40" value="" id="poptitle" name="poptitle" />
					<label>来源:</label><input type="text" size="10" value="" id="popsource" name="popsource" />
				</div>
				<div style="height:30px;border-bottom:2px solid #19a97b;"></div>
				<section id="editor">
					<div id='edit' style="margin-top: 30px;"> </div>
				</section>
				<div class="btm_btn" style="margin-top: 30px;height: 30px;">
					<input type="button" value="保存" style="width: 70px;height: 30px;background-color: #19a97b;" id="savePop"/> 
					<input type="button" value="清空" style="width: 70px;height: 30px;background-color: #19a97b;" id="clearPop"/>
					<input type="button" value="关闭" style="width: 70px;height: 30px;background-color: #19a97b;" id="closePop"/>
				</div>
				<script>
					$(function(){
						$('#edit').editable({inlineMode: false, alwaysBlank: true})
					});
				</script>
			</div>
		</section>
		<!--结束：弹出框效果-->
		<section>
			<section>
				<h2>
					<strong style="color: grey;"></strong>
				</h2>
				<strong style="color: grey;">标题:</strong>
				<input id="title" type="text" class="textbox" placeholder="标题..." /> 
				<strong style="color: grey;">来源:</strong>
				<input id="source" type="text" class="textbox" placeholder="来源..." /> 
				<strong style="color: grey;">创建时间:</strong>
				<input class="Wdate" type="text" id="startDate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',maxDate:'#F{$dp.$D(\'endDate\')}'})" name="startTime" style="width:160px;" />-
				<input class="Wdate" type="text" id="endDate"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',minDate:'#F{$dp.$D(\'startDate\')}'})" name="endTime" style="width:160px;"/>
				<input type="button" value="查询" class="group_btn" onclick="tableData(1)" /> 
				<input type="button" value="添加" class="group_btn" onclick="showPop(0)" style="margin-left:20px;" /> 
			</section>
			<section>
				<h1></h1>
				<div class="page_title">
					<h2 class="fl">全部新闻</h2>
				</div>
				<table class="table" id="datalist">
					<thead>
						<tr>
							<th>序号</th>
							<th>标题</th>	
							<th>来源</th>	
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
