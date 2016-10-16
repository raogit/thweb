<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>天虹</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<jsp:include page="../base/base.jsp"></jsp:include>
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
	<script src="${basePath}/js/upload/ajaxfileupload.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/content/content-text.js?ver=${ver}" type="text/javascript" ></script>
</head>

<body style="overflow: auto;">
	<jsp:include page="../head/head-iframe.jsp"></jsp:include>
	<input type="hidden" value="${menuId}" id="menuId" name="menuId" />
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
					type="button" class="link_btn" onclick="upload('fileId',1)" value="上传"/></li>					
				<li id="bannerpicture"> </li>
			</ul>
		</form>
	</div>
	<div style="height:30px;border-bottom:2px solid #19a97b;"></div>
	<div style="height:100px;width:500px; margin: 0 auto;padding-top:5px;">
		<ul>
			<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">标题:</span> <input id="title" style="width:140px;" type="text" placeholder="请输入标题..." class="textbox" /></li>
			<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">标语:</span> <input id="slogan" style="width:240px;" type="text" placeholder="请输入标语..." class="textbox" /></li>
			<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">电话:</span> <input id="phone" style="width:140px;" type="text" placeholder="请输入电话..." class="textbox" /></li>
			<li style="text-align: left;"><span style="width:70px;text-align: left;" class="ttl">地址:</span> <input id="address" style="width:240px;" type="text" placeholder="请输入地址..." class="textbox" /></li>
		</ul>
	</div>
	<section id="editor">
		<div style="margin-top: 30px;"> 
			<textarea id="contentId" rows="20" cols="120"></textarea>
		</div>
	</section>
	<div class="btm_btn" style="margin-top: 30px;height: 30px;">
		<input type="button" value="保存" style="width: 70px;height: 30px;background-color: #19a97b;" id="saveContent"/> 
		<input type="button" value="清空" style="width: 70px;height: 30px;background-color: #19a97b;" id="clearContent"/>
	</div>
	<div class="btm_btn" style="margin-top: 30px;height: 30px;"> </div>

  <script>
      $(function(){
          $('#edit').editable({inlineMode: false, alwaysBlank: true})
      });
  </script>
</body>
</html>
