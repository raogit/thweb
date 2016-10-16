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
    <link rel="stylesheet" type="text/css" href="${basePath }/css/web/investorstyle.css" />
	<script src="${basePath}/js/upload/ajaxfileupload.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/timer/timer.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/utils/utils.js?ver=${ver}" type="text/javascript" ></script>
	<script src="${basePath}/js/content/content-table.js?ver=${ver}" type="text/javascript" ></script>
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
	<input type="hidden" value="" id="contentId" name="contentId" />
	 <div class="inves_InfoBox">
	     <div class="inves_Info">
	         <ul>
	             <li>
	                 <div class="inves_InfoR">公司全称：</div>
	                 <div class="inves_InfoL"><input type="text" id="companyName" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">英文名称：</div>
	                 <div class="inves_InfoL"><input type="text" id="companyEnName" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">注册地址：</div>
	                 <div class="inves_InfoL"><input type="text" id="address" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">公司简称：</div>
	                 <div class="inves_InfoL"><input type="text" id="shortName" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">法定代表人：</div>
	                 <div class="inves_InfoL"><input type="text" id="legalPerson" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">公司董秘：</div>
	                 <div class="inves_InfoL"><input type="text" id="secretary" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">注册资本（万元）：</div>
	                 <div class="inves_InfoL"><input type="text" id="registered"  width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">行业种类：</div>
	                 <div class="inves_InfoL"><input type="text" id="industry" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">邮政编码：</div>
	                 <div class="inves_InfoL"><input type="text" id="zipCode" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li class="bornone">
	                 <div class="inves_InfoR">公司电话：</div>
	                 <div class="inves_InfoL"><input type="text" id="phone" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	         </ul>
	     </div>
	     <div class="inves_Info marL">
	         <ul>
	             <li>
	                 <div class="inves_InfoR">公司传真：</div>
	                 <div class="inves_InfoL"><input type="text" id="fax" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">发行市盈率（倍）：</div>
	                 <div class="inves_InfoL"><input type="text" id="ipoRatio" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">公司网址：</div>
	                 <div class="inves_InfoL"><input type="text" id="webSite" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">上市时间：</div>
	                 <div class="inves_InfoL"><input type="text" id="marketTime" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">发行方式：</div>
	                 <div class="inves_InfoL"><input type="text" id="releaseMode" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">主承销商：</div>
	                 <div class="inves_InfoL"><input type="text" id="underWriter" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">招股时间：</div>
	                 <div class="inves_InfoL"><input type="text" id="prospectusTime" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">保荐机构：</div>
	                 <div class="inves_InfoL"><input type="text" id="sponsorInstitution" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li>
	                 <div class="inves_InfoR">发行数量（万股）：</div>
	                 <div class="inves_InfoL"><input type="text" id="issueNumber" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	             <li class="bornone">
	                 <div class="inves_InfoR">发行价格（元）：</div>
	                 <div class="inves_InfoL"><input type="text" id="issuePrice" width="300px"/></div>
	                 <div class="clear"></div>
	             </li>
	         </ul>
	     </div>
	     <div class="clear"></div>
	 </div>
	<div class="btm_btn" style="margin-top: 30px;height: 30px;">
		<input type="button" value="保存" style="width: 70px;height: 30px;background-color: #19a97b;" id="saveContent"/> 
		<input type="button" value="清空" style="width: 70px;height: 30px;background-color: #19a97b;" id="clearContent"/>
	</div>
	<div class="btm_btn" style="margin-top: 30px;height: 30px;"> </div>

</body>
</html>
