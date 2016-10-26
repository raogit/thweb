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
            overflow: auto;
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
	<script src="${basePath}/js/upload/ajaxfileupload.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/shoppingcenter/info.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath }/js/My97DatePicker/WdatePicker.js?ver=${ver}" type="text/javascript" ></script>
</head>

<body style="overflow: auto;">
	<jsp:include page="../head/head-iframe.jsp"></jsp:include>
	<input type="hidden" value="0" id="id" name="id" />
	<input type="hidden" value="/upload/picture" id="uri" name="uri" />
	<div>
		<form action="${basePath }/upload/picture" encType="multipart/form-data" method="post">
			<ul class="ulColumn2" style="text-align: left;">
				<li>
					<span class="item_name" style="width: 120px;">上传图片：</span><input type="file" id="fileId" name="fileId"/> 
				</li>
				<li>
					<span class="item_name" style="width: 120px;">图片名称：</span><input type="text" id="picTitle" name="picTitle"/> 
				</li>
				<li>
					<span class="item_name" style="width: 120px;">图片URL：</span><input type="text" id="url" name="url"/> 
				</li>
				<li><span class="item_name" style="width: 120px;"></span> <input
					type="button" class="link_btn" onclick="upload1('fileId',1)" value="上传"/></li>					
				<li id="bannerpicture"> </li>
			</ul>
		</form>
	</div>
	<div style="height:30px;border-bottom:2px solid #19a97b;"></div>
	<!--弹出框效果-->
	<section class="pop_bg" id="pop">
		<div class="pop_cont" style="left: 20%;top:10%;position:initial;width: 80%;height: 80%;margin: auto;overflow: auto;">
			<input type="hidden" value="0" id="popNewsId" name="popNewsId" />
			<div style="height:30px;border-bottom:2px solid #19a97b;"></div>
			<div style="height:200px;width:500px; margin: 0 auto;padding-top:5px;">
				<ul>
					<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">标题:</span> <input id="popTitle" style="width:140px;" type="text" placeholder="请输入标题..." class="textbox" /></li>
					<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">来源:</span> <input id="popSource" style="width:140px;" type="text" placeholder="请输入来源..." class="textbox" /></li>
					<!-- <li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">类型:</span> <select class="select" id="popType" name="popType" style="width: 120px;">
						<option value="新闻头条">新闻头条</option>
						<option value="媒体视角">媒体视角</option>
						<option value="公司新闻">公司新闻</option>
					</select></li> -->
					<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">时间:</span> <input class="Wdate" type="text" id="popStartTime" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'en'})" name="startTime" style="width:160px;" /></li>
				</ul>
				<%-- <div id="popUpPicture">
					<form action="${basePath }/upload/image" encType="multipart/form-data" method="post">
						<input type="hidden" value="0" id="popPicture" name="picture" />
						<ul class="ulColumn2" style="text-align: left;">
							<li><span class="item_name" style="width: 120px;">上传图片：</span><input
								type="file" id="filePicId" name="filePicId" /></li>
							<li><span class="item_name" style="width: 120px;"></span> 
							<input type="button" class="link_btn" onclick="upload('filePicId')" value="上传" />
								<img id="productpicture" alt="" src="" width="100px" height="50px" style="padding-left: 10px;"></li>
						</ul>
					</form>
				</div> --%>
			</div>
			<section id="editor">
				<div id='edit' style="margin-top: 30px;"> </div>
			</section>
			<div class="btm_btn" style="margin-top: 30px;height: 30px;">
				<input type="button" value="保存" style="width: 70px;height: 30px;background-color: #19a97b;" id="saveContent"/> 
				<input type="button" value="清空" style="width: 70px;height: 30px;background-color: #19a97b;" id="clearContent"/>
				<input type="button" value="关闭" style="width: 70px;height: 30px;background-color: #19a97b;" id="close"/>
			</div>
			<div class="btm_btn" style="margin-top: 30px;height: 30px;"> </div>
			
		</div>
	</section>
	<!--结束：弹出框效果-->
	
	<div>
		<h2>
			<strong style="color: grey;"></strong>
		</h2>
		<input type="hidden" value="${menuId }" id="menuId" name="menuId" />
		<strong style="color: grey;">标题:</strong>
		<input id="title" type="text" class="textbox" placeholder="标题..." /> 
		<!-- <strong style="color: grey;">类型:</strong><select class="select" id="type" name="type" onchange="changeSelect(this.value)"  style="width: 120px;">
						<option value="">请选择..</option>
						<option value="新闻头条">新闻头条</option>
						<option value="媒体视角">媒体视角</option>
						<option value="公司新闻">公司新闻</option>
					</select> -->
		<strong style="color: grey;">创建时间:</strong>
		<input class="Wdate" type="text" id="startDate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',maxDate:'#F{$dp.$D(\'endDate\')}'})" name="startTime" style="width:160px;" />-
		<input class="Wdate" type="text" id="endDate"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'en',minDate:'#F{$dp.$D(\'startDate\')}'})" name="endTime" style="width:160px;"/>
		<input type="button" value="查询" class="group_btn" onclick="tableData(1)" /> 
		<input type="button" value="添加" class="group_btn" onclick="add(0)" style="margin-left:20px;" /> 
	</div>
	<div>
		<h1></h1>
		<div class="page_title">
			<h2 class="fl">全部菜单</h2>
		</div>
		<table class="table" id="userlist">
			<thead>
				<tr>
					<th>序号</th>
					<!-- <th>类型</th>	 -->
					<th>标题</th>	
					<th>新闻时间</th>	
					<th>创建时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<aside class="paging"></aside> 
	</div>

  <script>
      $(function(){
          $('#edit').editable({inlineMode: false, alwaysBlank: true})
      });
  </script>
</body>
</html>
