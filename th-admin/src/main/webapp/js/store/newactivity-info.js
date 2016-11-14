
jQuery(document).ready(function() {	
	
	$("#saveContent").click(function(){
		save();
	});
	$("#clearContent").click(function(){
		clear();
	});
	initPicture($("#menuId").val());
	initSelect("categoryId");
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
        success: picture
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
        success: picture
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
        success: picture
    });
}

function upload(fileId,type){
	var file = $("#fileId").val();
	if(!file){
		alert("请选择图片");
		return;
	}
	var menuId = $("#menuId").val();
	var uri = $("#uri").val();
	var title = $("#picTitle").val();
	var picUrl = $("#url").val();
	var url=basePath + uri+"?type="+type+"&menuId="+menuId+"&title="+title+"&url="+picUrl;
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

function initSelect(id){
	$(".loading_area").fadeIn(10);
	var categoryId = $("#"+id);
	categoryId.html("");
	var menuId = $("#menuId").val();
	$.ajax({
        url: basePath + "/category/list",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=""){
        		for(var i=0; i<data.length;i++){
        			var item = data[i];
        			categoryId.append('<option value="'+item.id+'">'+item.name+'</option>');
        		}
        		initRich($("#categoryId").val());
        	}
        	$(".loading_area").fadeOut(10);
        }
    });
}

function initRich(categoryId){
	clear();
	$.ajax({
        url: basePath + "/newactivity/get",
        type: 'post',
        dataType: 'json',
        data : {
        	categoryId : categoryId
        },
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		$("#contentId").html(data.content);
            	$("#id").val(data.id);
            	$("#title").val(data.name);
        	}else{
        		$("#contentId").html("");
        	}
        }
    });
}

function save(){
	var categoryId = $("#categoryId").val();
	var content = $("#contentId").html();
	var name = $("#title").val();
	if(isEmpty(content)){
		alert("请填写内容");
		return ;
	}
	var id = $("#id").val();
	$.ajax({
          url: basePath + "/newactivity/save",
        type: 'post',
        dataType: 'json',
        data : {
        	name : name,
        	categoryId : categoryId,
        	content : content
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=false){
        		alert("操作成功");
        	}else{
        		alert(json.obj);
        	}
        }
    });
}

function clear(){
	$("#contentId").html("");
}

function changeSelect(val){
	$("#categoryId").val(val)
	$("#title").val("");
	initRich($("#categoryId").val());
}
