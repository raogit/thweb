
jQuery(document).ready(function() {	
	init();
	$("#saveContent").click(function(){
		save();
	});
	$("#clearContent").click(function(){
		clear();
	});
	
});

function init(){
	var menuId = $("#menuId").val();
	
	initRich(menuId);
	initPicture(menuId);
	initMarket();
}

function initMarket(){
	$.ajax({
        url: basePath + "/market/list",
        type: 'post',
        dataType: 'json',
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		var marketSelect = $("#marketSelect");
        		for(var i=0;i<data.length;i++){
        			var item = data[i];
        			marketSelect.append("<option value='"+item.id+"'>"+item.name+"</option>");
        			if(i==0){
        				$("#marketId").val(item.id);
        			}
        		}
        	}
        }
    });
}
function initRich(menuId){
	clear();
	$.ajax({
        url: basePath + "/content/get",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		$("#contentId").val(data.content);
            	$("#id").val(data.id);
            	$("#title").val(data.title);
            	$("#slogan").val(data.slogan);
        	}else{
        		$("#contentId").val("");
        	}
        }
    });
}
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
				html = "<div class='bannerdiv' style='height: 120px;'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><p>"+picture.title+"</p><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else if(i==data.length-1){
				html = "<div class='bannerdiv' style='height: 120px;'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><p>"+picture.title+"</p><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}else{
				html = "<div class='bannerdiv' style='height: 120px;'><div style='width: 120px;height: 70px;'><img src='"+basePath+"/download/png?fileName="+picture.path+"'/></div><p>"+picture.title+"</p><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}
			bannerpicture.append(html);
		}
	}
	
}
function save(){
	var menuId = $("#menuId").val();
	var content = $("#contentId").val();
	var title = $("#title").val();
	var slogan = $("#slogan").val();
	
	var phone = $("#phone").val();
	var address = $("#address").val();
	if(isEmpty(content)){
		alert("请填写内容");
		return ;
	}
	var id = $("#id").val();
	$.ajax({
        url: basePath + "/content/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
        	title : title,
        	slogan : slogan,
        	phone : phone,
        	address : address,
        	menuId : menuId,
        	content : content
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data==true){
        		alert("操作成功");
        	}else{
        		alert(json.obj);
        	}
        }
    });
}

function clear(){
	$("#contentId").val("");
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
        		$("#picTitle").val("");
        		initPicture(menuId);	
			} else {
				alert("操作失败");
			}
        }
    });
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