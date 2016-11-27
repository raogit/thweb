var curPage= 1;
jQuery(document).ready(function() {	
	init();
	$("#saveContent").click(function(){
		save();
	});
	$("#clearContent").click(function(){
		clear();
	});
	btn();

});

function saveVideo(){
	var menuId = $("#menuId").val();
	var title = $("#title").val();
	var path = $("#picPath").val();
	
	if(isEmpty(path)){
		alert("请填写内容");
		return ;
	}
	$.ajax({
        url: basePath + "/picture/save",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId,
        	title : title,
        	path : path,
        	pictureType : 1
        },
        cache: false,
        success: function(data){
        	if(data!=null&&data!=false){
        		initPicture(menuId)
        		$("#title").val("");
        		$("#picPath").val("");
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

function init(){
	var menuId = $("#menuId").val();
	initPicture(menuId);
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
			if(data.length>1){
				if(i==0){
					html = "<div style='float: left;padding-left: 10px;'><div><iframe frameborder='0' width='400' height='250' src="+picture.path+" allowfullscreen></iframe></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
				}else if(i==data.length-1){
					html = "<div style='float: left;padding-left: 10px;'><div><iframe frameborder='0' width='400' height='250' src="+picture.path+" allowfullscreen></iframe></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
				}else{
					html = "<div style='float: left;padding-left: 10px;'><div><iframe frameborder='0' width='400' height='250' src="+picture.path+" allowfullscreen></iframe></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:left("+picture.id+");'>左移</a> | <a style='color: black;' href='javascript:right("+picture.id+");'>右移</a> | <a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
				}
			}else{
				html = "<div style='float: left;padding-left: 10px;'><div><iframe frameborder='0' width='400' height='250' src="+picture.path+" allowfullscreen></iframe></div><div style='padding-top: 10px;text-align: center;'><a style='color: black;' href='javascript:del("+picture.id+");'>删除</a></div></div";
			}
			
			bannerpicture.append(html);
		}
	}
	
}

function clear(){
	$("#contentId").html("");
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


