<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../../base/base.jsp"></jsp:include>
	<link href="${basePath}/css/richtext/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="${basePath}/css/richtext/froala_editor.css" rel="stylesheet" type="text/css">
	<link href="${basePath }/css/dtree/dtree.css" type="text/css" rel="StyleSheet" />
	<script src="${basePath }/js/My97DatePicker/WdatePicker.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/jquery.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/user/jquery.mCustomScrollbar.concat.min.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/market/news/list.js?ver=${ver}" type="text/javascript" ></script>
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
	<script src="${basePath}/js/upload/ajaxfileupload.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/market/news/detail.js?ver=${ver}" type="text/javascript" ></script>
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
		<div class="pop_cont" style="position:initial;width: 80%;height: 80%;margin: auto;overflow: auto;">
			<!--title-->
			<h3 id="pupTitle">修改</h3>
			<!--content-->
			<input type="hidden" value="0" id="popMarketId" />
			<div class="pop_cont_input">
				<input type="hidden" value="${type }" id="type" name="type" />
				<input type="hidden" value="0" id="marketNewsId" name="marketNewsId" />
				<input type="hidden" value="/upload/marketnews/picture" id="uri" name="uri" />
				<div>
					<form action="${basePath }/upload/picture" encType="multipart/form-data" method="post">
						<ul class="ulColumn2" style="text-align: left;">
							<li>
								<span class="item_name" style="width: 120px;">1上传图片：</span><input type="file" id="fileId" name="fileId"/> 
							</li>
							<li>
								<span class="item_name" style="width: 120px;">图片名称：</span><input type="text" id="picTitle" name="picTitle"/> 
							</li>
							<li>
								<span class="item_name" style="width: 120px;">图片URL：</span><input type="text" id="url" name="url"/> 
							</li>
							<li><span class="item_name" style="width: 120px;"></span> <input
								type="button" class="link_btn" onclick="upload('fileId')" value="上传"/></li>					
							<li id="bannerpicture"> </li>
						</ul>
					</form>
				</div>
				<div style="height:5px;border-bottom:2px solid #19a97b;"></div>
				<div class="btm_btn" style="height: 30px;">
					<input type="button" value="保存" style="width: 70px;height: 30px;background-color: #19a97b;" id="saveContent"/> 
					<input type="button" value="清空" style="width: 70px;height: 30px;background-color: #19a97b;" id="clearContent"/>
					<input type="button" value="关闭" style="width: 70px;height: 30px;background-color: #19a97b;" id="close_user"/>
				</div>
				<div style="height:30px;width:500px; margin: 0 auto;padding-top:5px;">
					<ul>
						<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">标题:</span> <input id="title" style="width:140px;" type="text" placeholder="请输入标题..." class="textbox" /></li>
					</ul>
				</div>
				<section id="editor">
					<div id='edit' style="margin-top: 30px;"> </div>
				</section>
				
				<div class="btm_btn" style="height: 30px;"> </div>
			
			  <script>
			      $(function(){
			          $('#edit').editable({inlineMode: false, alwaysBlank: true})
			      });
			  </script>
			</div>
			<!--bottom:operate->button-->
			
		</div>
		</section>
		<!--结束：弹出框效果-->
		
		<section>
			<section>
				<h2>
					<strong style="color: grey;"></strong>
				</h2>
				<input type="hidden" value="0" id="marketId" name="marketId" />
				<strong style="color: grey;">新闻标题:</strong>
				<input id="name" type="text" class="textbox" placeholder="新闻标题..." /> 
				<strong style="color: grey;">门店:</strong>
				<select class="select" id="marketSelect" onchange="changeSelect(this.value)" style=" width: 120px;"></select>
				<strong style="color: grey;">创建时间:</strong>
				<input class="Wdate" type="text" id="startDate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',maxDate:'#F{$dp.$D(\'endDate\')}'})" name="startTime" style="width:160px;" />-
				<input class="Wdate" type="text" id="endDate"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',minDate:'#F{$dp.$D(\'startDate\')}'})" name="endTime" style="width:160px;"/>
				<input type="button" value="查询" class="group_btn" onclick="tableData(1)" /> 
				<input type="button" value="添加" class="group_btn" onclick="add(0)" style="margin-left:20px;" /> 
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
							<th>新闻标题</th>	
							<th>图片名</th>	
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
