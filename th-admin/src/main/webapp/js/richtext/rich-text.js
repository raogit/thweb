
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
	
}
function initRich(menuId){
	clear();
	$.ajax({
        url: basePath + "/rich/get",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	if(data!=null && data!=""){
        		$("#contentId").html(data.content);
            	$("#id").val(data.id);
        	}else{
        		$("#contentId").html("");
        	}
        }
    });
}
function initPicture(menuId){
	var bannerpicture = $("#bannerpicture");
	bannerpicture.empty();
	$.ajax({
        url: basePath + "/picture/listbymenuid",
        type: 'post',
        dataType: 'json',
        data : {
        	menuId : menuId
        },
        cache: false,
        success: function(data){
        	debugger;
        	for(var i=0;i<data.length;i++){
        		var picture = data[i];
        		var html = "<div class='bannerdiv'><img src='"+basePath+"/download/png?fileName="+picture.path+"'></div>";
        		bannerpicture.append(html);
        	}
        	
        }
    });
}

function save(){
	var menuId = $("#menuId").val();
	var content = $("#contentId").html();
	var id = $("#id").val();
	$.ajax({
        url: basePath + "/rich/save",
        type: 'post',
        dataType: 'json',
        data : {
        	id : id,
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
	$("#contentId").html("");
}
function upload(fileId){
	var menuId = $("#menuId").val();
	var url=basePath + "/upload/picture?type=1&menuId="+menuId;
	//执行上传文件操作的函数
	$.ajaxFileUpload({
        url:url,
        secureuri:false, //是否启用安全提交,默认为false
        fileElementId:fileId,
        dataType:'text',
        success:function(data,status){
        	debugger;
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