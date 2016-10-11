var curPage=1;
jQuery(document).ready(function() {
	(function($){
		$(window).load(function(){
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data);
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
		});
	})(jQuery);
	refreshTime();
	refreshPopTime();
	btn();
	tab();
	initPicture($("#menuId").val());
	tableData(curPage);
});

function initPicture(menuId){
	$.ajax({
        url: basePath + "/picture/listbymenuid",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: picture
    });
}

function picture(data){
	var bannerpicture = $("#bannerpicture");
	bannerpicture.empty();
	if(data!=null && data!="" && data!=false){
		for(var i=0;i<data.length;i++){
			var picture = data[i];
			var html;
			if(i==0){
				html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else if(i==data.length-1){
				html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else{
				html = "<div class='bannerdiv'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}
			bannerpicture.append(html);
		}
	}
}
function left(id){
	$.ajax({
        url: basePath + "/picture/left",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	initPicture($("#menuId").val());
        }
    });
}

function right(id){
	$.ajax({
        url: basePath + "/picture/right",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	initPicture($("#menuId").val());
        }
    });
}
function del(id){
	$.ajax({
        url: basePath + "/picture/delete",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id
        },
        cache: false,
        success: function(data){
        	initPicture($("#menuId").val());
        }
    });
}
function deleteObj(id){
	if(confirm("刪除将无法恢复?")){
		$.ajax({
	        url: basePath + "/web/about/history/delete",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data!=null && data){
	        		alert("删除成功!");
	        		tableData(curPage);
	        	}else{
	        		alert("删除失败!");
	        	}
	        }
	    });
	}
}
function uploadPic(fileId,type){
	var file = $("#"+fileId).val();
	if(!file){
		alert("请选择图片");
		return;
	}
	var menuId = $("#menuId").val();
	var uri = $("#uri").val();
	var title = $("#picTitle").val();
	var picUrl = $("#url").val();
	var url=basePath + uri+"?type="+type+"&menuId="+menuId+"&title="+title+"&url="+url;
	//执行上传文件操作的函数
	$.ajaxFileUpload({
        url:url,
        secureuri:false, //是否启用安全提交,默认为false
        fileElementId:fileId,
        dataType:'text',
        success:function(data,status){
        	data = data.replace(/<pre.*">/, '');
            data = data.replace("<PRE>", ''); //ajaxFileUpload会对服务器响应回来的text内容加上<pre>text</pre>前后缀
            data = data.replace("</PRE>", '');
            data = data.replace("<pre>", '');
            data = data.replace("</pre>", '');
            var reqParam = eval("(" +data+ ")");
        	if (reqParam == true) {
        		initPicture(menuId);	
			} else {
				alert("操作失败");
			}
        }
    });
}

function tableData(pageNum){
	curPage = pageNum;
	$(".loading_area").fadeIn(10);
	var title = $("#title").val();
	var startDate = $("#startDate").val();
	var endDate = $("#endDate").val();	
	var menuId = $("#menuId").val();	
	$.ajax({
        url: basePath + "/picture/page",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId,
        	pictureType : 8,
        	title : title,
        	startDate : startDate,
        	endDate : endDate,
        	curPage : pageNum
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		initTable(data);
        		initPage(data);
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}

function initTable(data){
	var userlist = $("#userlist tbody");
	userlist.empty();
	var list = data.obj;
	var totalRow = data.totalRow;
	for(var i=0;i<list.length;i++){
		var item = list[i];
		var eventTime = curentTime(item.eventTime);
		var time = curentTime(item.createTime);
		var content = "";
		if(item.content!=null && item.content!=""){
			content = item.content.substring(0,20)
		}
		var tr = "<tr>"
			+"<td>"+(i+1)+"</td>"
			+"<td>"+item.title+"</td>"
			+"<td>"+content+"</td>"
			+"<td>"+item.url+"</td>"
			+"<td>"+time+"</td>";
		var operation = "<td style='text-align: center;'><a href='javascript:edit("+item.id+")' class='inner_btn'>编辑</a><a href='javascript:deleteObj("+item.id+")' class='inner_btn'>删除</a></td>"
		var end_tr = "</tr>";
		userlist.append(tr+operation+end_tr);
	}
}

function initPage(page){
	var paging = $(".paging");
	paging.empty();
	var prePage = page.curPage-1 < 1 ? 1 : page.curPage-1;
	var nextPage = page.curPage+1 > page.totalPage ? page.totalPage : page.curPage+1;
	paging.append("<a href='javascript:void(0);' onclick='tableData(1)' ><<</a>");
	paging.append("<a href='javascript:void(0);' onclick='tableData("+prePage+")' ><</a>");
	for(var i=0;i<page.totalPage;i++){
		if((i+1) == page.curPage){
			paging.append("<a href='javascript:void(0);' onclick='tableData("+(i+1)+")' style='background: #ff99ff;'>"+(i+1)+"</a>");
		}else{
			paging.append("<a href='javascript:void(0);' onclick='tableData("+(i+1)+")' >"+(i+1)+"</a>");
		}
	}
	paging.append("<a href='javascript:void(0);' onclick='tableData("+nextPage+")' >></a>");
	paging.append("<a href='javascript:void(0);' onclick='tableData("+(page.totalPage)+")' >>></a>");
}

function edit(id){
	$("#pop").fadeIn(10);	
	$("#popHistoryId").val(id);
	$("#popTitle").val("");
	$("#picture").val("");
	$("#pdfurl").val("");
	$("#popPrice").val("");
	$("#picture").val("");
	$("#popPdf").html("");
	$("#popBuyType").val("");
	if(id<=0){
		$("#pupTitle").html("添加");
	}else{
		$("#pupTitle").html("修改");
		$.ajax({
	        url: basePath + "/picture/get",
	        type: 'post',
	        dataType: 'json',
	        data : {
	        	id : id
	        },
	        cache: false,
	        success: function(data){
	        	if(data){
	        		$("#popTitle").val(data.title);
	        		$("#popContent").val(data.content);
	        		$("#picture").val(data.path);
	        		$("#popPictureImg").attr("src",basePath+"/download/png?fileName="+data.path);
	        		$("#pdfurl").val(data.url);
	        		$("#popPdf").html(data.url);
	        		$("#popPdf").html(data.picture);
	        		$("#popBuyType").val(data.backup2);
	        		$("#eventTime").val(data.backup1);
	        	}
	        }
	    });
	}
}
function add(id){	
	refreshPopTime();
	$("#pupTitle").html("添加");
	$("#pop").fadeIn(10);	
	$("#popHistoryId").val(0);
	$("#popTitle").val("");
	$("#popBuyType").val("");
	$("#picture").val("");
	
	$("#popPictureImg").attr("src","");
	$("#pdfurl").val("");
	$("#popContent").val("");
	$("#popPdf").html("");
}
function save(){
	var id = $("#popHistoryId").val();
	var title = $("#popTitle").val();
	var picture = $("#picture").val();
	var pdfurl = $("#pdfurl").val();
	var content = $("#popContent").val();
	var menuId = $("#menuId").val();
	var eventTime = $("#eventTime").val();
	var buyType = $("#popBuyType").val();
	
	if(isEmpty(name)){
		alert("请填写内容");
		return ;
	}
	$.ajax({
        url: basePath + "/picture/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	menuId : menuId,
        	title : title,
        	pictureType : 8,
        	path : picture,
        	url : pdfurl,
        	content : content,
        	backup2 : buyType,
        	backup1 : eventTime
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=false){
        		alert("操作成功");
        		tableData(curPage);
        		$("#pop").fadeOut(10);
        	}else{
        		alert("操作失败");
        	}
        }
    });
}
function isEmpty(str){
	if(str==null || str==""){
		return true;
	}
}

function btn(){
	//弹出：确认按钮
	$("#confirm").click(function(){
		save();
	});
	//弹出：取消或关闭按钮
	$("#close").click(function(){
		 $("#pop").fadeOut(10);
	});
}

function tab(){
	//tab
	$(".admin_tab li a").click(function(){
		 var liindex = $(".admin_tab li a").index(this);
		 $(this).addClass("active").parent().siblings().find("a").removeClass("active");
		 $(".admin_tab_cont").eq(liindex).fadeIn(150).siblings(".admin_tab_cont").hide();
	});
}
function refreshTime(){
	var curDate = new Date();
	$("#startDate").val(curentTime(curDate.getTime() - 12*30*24*60*60*1000));
	$("#endDate").val(curentTime(curDate.getTime()+ 60*60*1000));
}
function refreshPopTime(){
	var curDate = new Date();
	$("#eventTime").val(curentDate(curDate.getTime()+ 60*60*1000));
}
function clear(){
	$("#contentId").html("");
}
function uploadPdf(fileId){
	var file = $("#"+fileId).val();
	if(!file){
		alert("请选择文件");
		return;
	}
	var url=basePath + "/upload/pdf";
	//执行上传文件操作的函数
	$.ajaxFileUpload({
        url:url,
        secureuri:false, //是否启用安全提交,默认为false
        fileElementId:fileId,
        dataType:'text',
        success:function(data,status){
        	data = data.replace(/<pre.*">/, '');
            data = data.replace("<PRE>", ''); //ajaxFileUpload会对服务器响应回来的text内容加上<pre>text</pre>前后缀
            data = data.replace("</PRE>", '');
            data = data.replace("<pre>", '');
            data = data.replace("</pre>", '');
            var reqParam = data;
        	if (reqParam != "" && reqParam!=false) {
        		$("#popPdf").html(reqParam);
        		$("#pdfurl").val(reqParam);
			} else {
				alert("上传失败");
			}
        }
    });
}

function uploadImg(fileId){
	var file = $("#"+fileId).val();
	if(!file){
		alert("请选择文件");
		return;
	}
	var url=basePath + "/upload/image";
	//执行上传文件操作的函数
	$.ajaxFileUpload({
        url:url,
        secureuri:false, //是否启用安全提交,默认为false
        fileElementId:fileId,
        dataType:'text',
        success:function(data,status){
        	data = data.replace(/<pre.*">/, '');
            data = data.replace("<PRE>", ''); //ajaxFileUpload会对服务器响应回来的text内容加上<pre>text</pre>前后缀
            data = data.replace("</PRE>", '');
            data = data.replace("<pre>", '');
            data = data.replace("</pre>", '');
            var reqParam = data;
        	if (reqParam != "" && reqParam!=false) {
        		$("#popPictureImg").attr("src",basePath+"/download/png?fileName="+reqParam);
        		$("#picture").val(reqParam);
			} else {
				alert("上传失败");
			}
        }
    });
}